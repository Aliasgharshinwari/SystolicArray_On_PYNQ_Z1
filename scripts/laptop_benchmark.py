import numpy as np
import time
import matplotlib.pyplot as plt

print("--- Standard Laptop CPU Benchmarking Suite ---")
print("This script uses standard NumPy (which leverages OpenBLAS/MKL under the hood)")
print("to measure the baseline CPU performance of your development machine.\n")

# ==========================================
# 1. HARDWARE & BENCHMARK PARAMS
# ==========================================
SHAPES_TO_TEST = [
    (32, 32, 32),
    (64, 64, 64),
    (128, 128, 128),
    (256, 256, 256),
    (512, 512, 512),
    (1024, 1024, 1024),
    (2048, 2048, 2048), # Pushing larger shapes for a laptop CPU
    (1, 784, 128),      # Specific FC layer
    (16, 1024, 128)     # Batched FC layer
]

# ==========================================
# 2. BENCHMARKING LOOP
# ==========================================
results_laptop_gops = []
results_oi = []
labels = []

for shape in SHAPES_TO_TEST:
    REAL_M, REAL_K, REAL_N = shape
    
    print(f"[*] Benchmarking Shape: {REAL_M}x{REAL_K}x{REAL_N}")
    
    # We assume int8 inputs and int32 outputs for consistency with the FPGA
    bytes_transferred = (REAL_M * REAL_K * 1) + (REAL_K * REAL_N * 1) + (REAL_M * REAL_N * 4) 
    ops = 2 * REAL_M * REAL_K * REAL_N 
    operational_intensity = ops / bytes_transferred
    
    # Initialize Random Data (Using int32 for the matmul since standard NumPy dot handles 32/64-bit efficiently)
    A_sw = np.random.randint(-128, 127, size=(REAL_M, REAL_K), dtype=np.int32)
    B_sw = np.random.randint(-128, 127, size=(REAL_K, REAL_N), dtype=np.int32)
    
    # WARMUP
    _ = np.dot(A_sw, B_sw)
    
    # Scale iterations based on matrix size to avoid taking too long
    if REAL_M*REAL_K*REAL_N > 100000000:
        iterations = 5
    elif REAL_M*REAL_K*REAL_N > 10000000:
        iterations = 20
    else:
        iterations = 100
        
    start_time = time.time()
    for _ in range(iterations):
        _ = np.dot(A_sw, B_sw)
    end_time = time.time()
    
    avg_time = (end_time - start_time) / iterations
    laptop_gops = (ops / avg_time) / 1e9
    
    print(f"    Laptop CPU Throughput: {laptop_gops:.2f} GOPS ({avg_time * 1000:.2f} ms)\n")
    
    results_laptop_gops.append(laptop_gops)
    results_oi.append(operational_intensity)
    labels.append(f"{REAL_M}x{REAL_K}x{REAL_N}")

# ==========================================
# 3. PLOTTING GRAPHS
# ==========================================
print("Generating Research Graphs...")

fig, ax1 = plt.subplots(figsize=(12, 6))

x_pos = np.arange(len(labels))
width = 0.6

bars = ax1.bar(x_pos, results_laptop_gops, width, color='#55A868')

ax1.set_xticks(x_pos)
ax1.set_xticklabels(labels, rotation=45, ha='right')
ax1.set_ylabel('Throughput (GOPS)')
ax1.set_title('Laptop CPU (NumPy BLAS) Throughput Benchmark')
ax1.grid(axis='y', linestyle='--', alpha=0.7)

for bar in bars:
    height = bar.get_height()
    ax1.text(bar.get_x() + bar.get_width()/2, height + (max(results_laptop_gops)*0.02), 
             f"{height:.1f}", ha='center', va='bottom', fontweight='bold', color='#2F6A3D')

plt.tight_layout()
plt.savefig("laptop_benchmark.png", dpi=300)
plt.show()

print("Benchmarking complete! Plots saved to 'laptop_benchmark.png'.")
