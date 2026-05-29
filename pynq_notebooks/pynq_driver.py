import numpy as np
from pynq import Overlay, allocate
import time

print("--- Systolic Array PYNQ Driver ---")

# Must match the HLS configuration
TILE = 16
# Change these dimensions to benchmark larger sizes (e.g., 256x256 * 256x256)
REAL_M, REAL_K, REAL_N = 128, 128, 128 

def align(dim):
    return ((dim + TILE - 1) // TILE) * TILE

M, K, N = align(REAL_M), align(REAL_K), align(REAL_N)

# ==========================================
# 1. LOAD BITSTREAM
# ==========================================
print("Loading Bitstream...")
try:
    overlay = Overlay("design_1.bit", download=True)
except Exception as e:
    print("WARNING: Could not load bitstream. Are you running this on the PYNQ board?")
    print(e)
    exit(1)

# Autodetect the IP name from the Vivado block design
ip_name = [name for name in overlay.ip_dict.keys() if 'pipelined' in name.lower()]
if not ip_name:
    raise RuntimeError("Could not find systolic array IP in bitstream!")

# Bypass PYNQ's automatic IP interrupt driver (which crashes with KeyError: '')
# by manually mapping the IP memory space using MMIO.
ip_info = overlay.ip_dict[ip_name[0]]
systolic_ip = pynq.MMIO(ip_info['phys_addr'], ip_info['addr_range'])
registers = ip_info['registers']

# ==========================================
# 2. ALLOCATE MEMORY
# ==========================================
print(f"Allocating CMA Memory for {M}x{K} * {K}x{N}...")
buf_A = allocate(shape=(M * K,), dtype=np.int8)
buf_B = allocate(shape=(K * N,), dtype=np.int8)
buf_C = allocate(shape=(M * N,), dtype=np.int32)

# ==========================================
# 3. PREPARE TEST DATA
# ==========================================
A_sw = np.zeros((M, K), dtype=np.int8)
B_sw = np.zeros((K, N), dtype=np.int8)

# Fill A with random values and B with identity matrix to make it easy to verify
A_sw[:REAL_M, :REAL_K] = np.random.randint(1, 5, size=(REAL_M, REAL_K))
for i in range(min(REAL_K, REAL_N)):
    B_sw[i, i] = 1

def pack_to_blocked(matrix, rows, cols):
    """
    Reshapes a 2D matrix into the TILE x TILE blocked memory layout expected by the hardware.
    The flatten() operation naturally packs 8-bit elements sequentially in row-major order,
    which perfectly aligns with the hardware's 256-bit AXI bursts.
    """
    return matrix.reshape(rows // TILE, TILE, cols // TILE, TILE) \
                 .transpose(0, 2, 1, 3).flatten()

def unpack_from_blocked(flat_array, rows, cols):
    """
    Unpacks the hardware's TILE x TILE flat blocked memory back into a standard 2D numpy matrix.
    """
    r_tiles = rows // TILE
    c_tiles = cols // TILE
    blocked = flat_array.reshape(r_tiles, c_tiles, TILE, TILE)
    return blocked.transpose(0, 2, 1, 3).reshape(rows, cols)

print("Packing Data and Flushing Caches...")
buf_A[:] = pack_to_blocked(A_sw, M, K)
buf_B[:] = pack_to_blocked(B_sw, K, N)
buf_A.flush()
buf_B.flush()

# ==========================================
# 4. CONFIGURE AND RUN HARDWARE
# ==========================================
def assign_reg(mmio, regs, name, value):
    if name in regs:
        offset = regs[name]['address_offset']
        mmio.write(offset, value)
    elif name + "_1" in regs:
        offset_1 = regs[name + "_1"]['address_offset']
        mmio.write(offset_1, value)
        offset_2 = regs[name + "_2"]['address_offset']
        mmio.write(offset_2, 0) # Upper 32-bits (unused on 32-bit Zynq)
    else:
        raise RuntimeError(f"FATAL: Register '{name}' not found!")

print("Configuring Registers...")
assign_reg(systolic_ip, registers, 'mat_A', buf_A.physical_address)
assign_reg(systolic_ip, registers, 'mat_B', buf_B.physical_address)
assign_reg(systolic_ip, registers, 'mat_C', buf_C.physical_address)

assign_reg(systolic_ip, registers, 'num_row_tiles', M // TILE)
assign_reg(systolic_ip, registers, 'num_depth_tiles', K // TILE)
assign_reg(systolic_ip, registers, 'num_col_tiles', N // TILE)

print("Starting FPGA execution...")
start_time = time.time()

# Trigger ap_start (Bit 0)
systolic_ip.write(0x00, 0x01)

# Wait for ap_done (Bit 1)
while not (systolic_ip.read(0x00) & 0x02):
    if time.time() - start_time > 5.0:
        raise RuntimeError("TIMEOUT! FPGA is stuck.")

hw_time = time.time() - start_time
print(f"FPGA Execution Time: {hw_time * 1000:.4f} ms")

# Calculate Application-Level GOPS
macs = 2 * REAL_M * REAL_N * REAL_K
gops = (macs / hw_time) / 1e9
print(f"Hardware Throughput (including PYNQ overhead): {gops:.4f} GOPS")

buf_C.invalidate()

# ==========================================
# 5. VERIFY RESULTS
# ==========================================
C_hw_flat = np.array(buf_C)
C_hw_2d = unpack_from_blocked(C_hw_flat, M, N)

# Software Ground Truth
C_sw_real = np.dot(A_sw[:REAL_M, :REAL_K].astype(np.int32), 
                   B_sw[:REAL_K, :REAL_N].astype(np.int32))

C_hw_real = C_hw_2d[:REAL_M, :REAL_N]

errors = np.sum(C_sw_real != C_hw_real)
print(f"\nTotal Mismatches: {errors}")

if errors == 0:
    print("SUCCESS! Hardware matches Software.")
else:
    print("FAILED! Hardware output differs.")
    print("Expected:")
    print(C_sw_real[:5, :5])
    print("Actual:")
    print(C_hw_real[:5, :5])

# Clean up CMA memory
buf_A.close()
buf_B.close()
buf_C.close()
