import numpy as np
import time
import matplotlib.pyplot as plt
from pynq import Overlay, allocate, MMIO

print("--- Systolic Array vs. PS Benchmarking Suite ---")

# ==========================================
# 1. HARDWARE & BENCHMARK PARAMS
# ==========================================
TILE = 16
BITSTREAM = "design_1.bit"

SHAPES_TO_TEST = [
    (32, 32, 32),
    (64, 64, 64),
    (128, 128, 128),
    (256, 256, 256),
    (512, 512, 512),
    (1024, 1024, 1024),
    (1, 784, 128),   # Specific FC layer
    (16, 1024, 128)  # Batched FC layer
]

# Hardware Theoretical Peaks (For 16x16 array at 100 MHz)
# 256 MACs = 512 Ops/cycle * 100 MHz = 51.2 GOPS
PEAK_GOPS = 51.2 
# Peak Memory BW (Zynq-7000 HP port 64-bit @ 100MHz = ~800 MB/s per port, assume ~1.05 GB/s shared limits)
PEAK_BW_GBPS = 1.05 

# ==========================================
# 2. HELPER FUNCTIONS
# ==========================================
def align(dim):
    return ((dim + TILE - 1) // TILE) * TILE

def pack_to_blocked(matrix, rows, cols):
    return matrix.reshape(rows // TILE, TILE, cols // TILE, TILE) \
                 .transpose(0, 2, 1, 3).flatten()

def unpack_from_blocked(flat_array_32bit, rows, cols):
    r_tiles = rows // TILE
    c_tiles = cols // TILE
    blocked = flat_array_32bit.reshape(r_tiles, c_tiles, TILE, TILE)
    return blocked.transpose(0, 2, 1, 3).reshape(rows, cols)

def assign_reg(mmio, regs, name, value):
    if name in regs:
        mmio.write(regs[name]['address_offset'], value)
    elif name + "_1" in regs:
        mmio.write(regs[name + "_1"]['address_offset'], value)
        mmio.write(regs[name + "_2"]['address_offset'], 0)
    else:
        raise RuntimeError(f"Register '{name}' missing from IP.")

# ==========================================
# 3. BENCHMARKING LOOP
# ==========================================
print("Loading Bitstream...")
try:
    overlay = Overlay(BITSTREAM, download=True)
except Exception as e:
    print("WARNING: Could not load bitstream. Are you running this on the PYNQ board?")
    print(e)
    exit(1)

ip_name = [name for name in overlay.ip_dict.keys() if 'pipelined' in name.lower()]
if not ip_name:
    raise RuntimeError("Could not find systolic array IP in bitstream!")

# Bypass interrupt bug
ip_info = overlay.ip_dict[ip_name[0]]
systolic_ip = MMIO(ip_info['phys_addr'], ip_info['addr_range'])
registers = ip_info['registers']

results_fpga_gops = []
results_ps_gops = []
results_oi = []
labels = []

for shape in SHAPES_TO_TEST:
    REAL_M, REAL_K, REAL_N = shape
    M, K, N = align(REAL_M), align(REAL_K), align(REAL_N)
    
    print(f"\n[*] Benchmarking Shape: {REAL_M}x{REAL_K}x{REAL_N} (Padded: {M}x{K}x{N})")
    
    bytes_transferred = (M * K * 1) + (K * N * 1) + (M * N * 4) 
    ops = 2 * M * K * N 
    operational_intensity = ops / bytes_transferred
    
    buf_A = allocate(shape=(M * K,), dtype=np.int8)
    buf_B = allocate(shape=(K * N,), dtype=np.int8)
    buf_C = allocate(shape=(M * N,), dtype=np.int32)
    
    try:
        # Initialize Random Data
        A_sw = np.random.randint(-128, 127, size=(M, K), dtype=np.int8)
        B_sw = np.random.randint(-128, 127, size=(K, N), dtype=np.int8)
        
        # --- A. FPGA EXECUTION ---
        buf_A[:] = pack_to_blocked(A_sw, M, K)
        buf_B[:] = pack_to_blocked(B_sw, K, N)
        buf_A.flush()
        buf_B.flush()
        
        assign_reg(systolic_ip, registers, 'mat_A', buf_A.physical_address)
        assign_reg(systolic_ip, registers, 'mat_B', buf_B.physical_address)
        assign_reg(systolic_ip, registers, 'mat_C', buf_C.physical_address)
        assign_reg(systolic_ip, registers, 'num_row_tiles', M // TILE)
        assign_reg(systolic_ip, registers, 'num_depth_tiles', K // TILE)
        assign_reg(systolic_ip, registers, 'num_col_tiles', N // TILE)
        
        # WARMUP
        systolic_ip.write(0x00, 0x01)
        while not (systolic_ip.read(0x00) & 0x02): pass
            
        iterations = 10 if M*K*N > 1000000 else 50 # Scale iterations for large matrices
        start_time_fpga = time.time()
        for _ in range(iterations):
            systolic_ip.write(0x00, 0x01)
            while not (systolic_ip.read(0x00) & 0x02): pass
        end_time_fpga = time.time()
        
        avg_time_fpga = (end_time_fpga - start_time_fpga) / iterations
        fpga_gops = (ops / avg_time_fpga) / 1e9
        
        # --- B. PS (ARM CPU) EXECUTION ---
        # Cast to int32 to utilize ARM's optimized 32-bit math libraries
        A_ps = A_sw.astype(np.int32)
        B_ps = B_sw.astype(np.int32)
        
        # WARMUP
        _ = np.dot(A_ps, B_ps)
        
        # Scale PS iterations down severely for large matrices to avoid waiting forever
        ps_iterations = 2 if M*K*N > 1000000 else 10
        start_time_ps = time.time()
        for _ in range(ps_iterations):
            _ = np.dot(A_ps, B_ps)
        end_time_ps = time.time()
        
        avg_time_ps = (end_time_ps - start_time_ps) / ps_iterations
        ps_gops = (ops / avg_time_ps) / 1e9
        
        # --- PRINT METRICS ---
        speedup = fpga_gops / ps_gops
        print(f"    FPGA Throughput: {fpga_gops:.2f} GOPS ({avg_time_fpga * 1000:.2f} ms)")
        print(f"    PS Throughput:   {ps_gops:.2f} GOPS ({avg_time_ps * 1000:.2f} ms)")
        print(f"    Speedup:         {speedup:.2f}x")
        
        results_fpga_gops.append(fpga_gops)
        results_ps_gops.append(ps_gops)
        results_oi.append(operational_intensity)
        labels.append(f"{REAL_M}x{REAL_K}x{REAL_N}")
        
    finally:
        buf_A.close()
        buf_B.close()
        buf_C.close()

# ==========================================
# 4. PLOTTING GRAPHS
# ==========================================
print("\nGenerating Research Graphs...")

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(16, 6))

# Plot 1: Grouped Bar Chart (FPGA vs PS)
x_pos = np.arange(len(labels))
width = 0.35

bars_fpga = ax1.bar(x_pos - width/2, results_fpga_gops, width, label='FPGA (Systolic Array)', color='#4C72B0')
bars_ps = ax1.bar(x_pos + width/2, results_ps_gops, width, label='PS (ARM CPU)', color='#DD8452')

ax1.set_xticks(x_pos)
ax1.set_xticklabels(labels, rotation=45, ha='right')
ax1.set_ylabel('Throughput (GOPS)')
ax1.set_title('FPGA vs. PS Throughput Comparison')
ax1.legend()
ax1.grid(axis='y', linestyle='--', alpha=0.7)

# Add value labels for FPGA
for i, bar in enumerate(bars_fpga):
    height = bar.get_height()
    speedup = results_fpga_gops[i] / results_ps_gops[i]
    ax1.text(bar.get_x() + bar.get_width()/2, height + (max(results_fpga_gops)*0.02), 
             f"{speedup:.1f}x", ha='center', va='bottom', fontweight='bold', color='#4C72B0')

# Plot 2: Empirical Roofline Model
ax2.scatter(results_oi, results_fpga_gops, color='#4C72B0', zorder=5, s=100, label="FPGA Data")
ax2.scatter(results_oi, results_ps_gops, color='#DD8452', marker='^', zorder=5, s=100, label="PS Data")

# Draw Theoretical Rooflines (Applies to FPGA)
x_oi = np.logspace(np.log10(min(results_oi)*0.5), np.log10(max(results_oi)*2), 100)
y_compute_bound = np.full_like(x_oi, PEAK_GOPS)
y_memory_bound = x_oi * PEAK_BW_GBPS

ax2.plot(x_oi, y_compute_bound, 'k--', label=f'FPGA Peak Compute ({PEAK_GOPS} GOPS)')
ax2.plot(x_oi, y_memory_bound, 'b--', label=f'FPGA Peak Mem BW ({PEAK_BW_GBPS} GB/s)')
y_roof = np.minimum(y_compute_bound, y_memory_bound)
ax2.plot(x_oi, y_roof, 'k-', linewidth=2, alpha=0.5)

ax2.set_xscale('log')
ax2.set_yscale('log')
ax2.set_xlabel('Operational Intensity (Ops/Byte)')
ax2.set_ylabel('Performance (GOPS)')
ax2.set_title('Comparative Roofline Model')
ax2.legend()
ax2.grid(True, which="both", ls="--", alpha=0.5)

plt.tight_layout()
plt.savefig("fpga_vs_ps_benchmark.png", dpi=300)
plt.show()

print("\nBenchmarking complete! Plots saved to 'fpga_vs_ps_benchmark.png'.")
