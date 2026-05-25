#include <iostream>
#include <vector>
#include <stdlib.h>
#include <iomanip>
#include <chrono> // Added for latency & throughput profiling
#include "main.h"

// =========================================================
// TEST CONFIGURATION
// =========================================================
// Define the problem size.
// NOTE: Must be multiples of TILE (32) for this basic kernel.
#define M 32   // Rows of A and C
#define K 64   // Cols of A, Rows of B
#define N 32   // Cols of B and C

// =========================================================
// HELPER: PACKING (Host 2D -> Block Layout 1D)
// =========================================================
void pack_to_block_layout(
    std::vector<std::vector<input_t>> &host_2d,
    std::vector<vec_t> &packed_mem,
    int rows, int cols
) {
    int num_row_tiles = rows / TILE;
    int num_col_tiles = cols / TILE;
    int block_idx = 0;

    for(int tr=0; tr<num_row_tiles; tr++) {
        for(int tc=0; tc<num_col_tiles; tc++) {
            for(int r=0; r<TILE; r++) {
                for(int v=0; v < (TILE / VECTOR_WIDTH); v++) {
                    vec_t packet = 0;
                    for(int k=0; k<VECTOR_WIDTH; k++) {
                        int col_offset = (v * VECTOR_WIDTH) + k;
                        input_t val = host_2d[tr*TILE + r][tc*TILE + col_offset];
                        packet.range((k*8)+7, k*8) = val;
                    }
                    int offset_in_block = (r * (TILE/VECTOR_WIDTH)) + v;
                    packed_mem[block_idx * BLOCK_SIZE + offset_in_block] = packet;
                }
            }
            block_idx++;
        }
    }
}

// =========================================================
// HELPER: UNPACKING (Block Layout 1D -> Host 2D)
// =========================================================
void unpack_from_block_layout(
    std::vector<vec_out_t> &packed_mem,
    std::vector<std::vector<output_t>> &host_2d,
    int rows, int cols
) {
    int num_row_tiles = rows / TILE;
    int num_col_tiles = cols / TILE;
    int output_block_len = (TILE * TILE / OUTPUT_WIDTH);
    int block_idx = 0;

    for(int tr=0; tr<num_row_tiles; tr++) {
        for(int tc=0; tc<num_col_tiles; tc++) {
            int mem_offset = block_idx * output_block_len;
            for(int r=0; r<TILE; r++) {
                for(int c=0; c<TILE; c+=OUTPUT_WIDTH) {
                    int pkt_idx = mem_offset + (r * (TILE/OUTPUT_WIDTH)) + (c/OUTPUT_WIDTH);
                    vec_out_t packet = packed_mem[pkt_idx];
                    for(int k=0; k<OUTPUT_WIDTH; k++) {
                        output_t val = packet.range((k*32)+31, k*32);
                        host_2d[tr*TILE + r][tc*TILE + c + k] = val;
                    }
                }
            }
            block_idx++;
        }
    }
}

// =========================================================
// MAIN TESTBENCH
// =========================================================
int main() {
    std::cout << "--------------------------------------------" << std::endl;
    std::cout << "  Systolic Array Testbench (Block Layout)" << std::endl;
    std::cout << "  Matrix Size: " << M << "x" << K << " * " << K << "x" << N << std::endl;
    std::cout << "--------------------------------------------" << std::endl;

    // 1. Allocate Host Memory
    std::vector<std::vector<input_t>>  A(M, std::vector<input_t>(K));
    std::vector<std::vector<input_t>>  B(K, std::vector<input_t>(N));
    std::vector<std::vector<output_t>> C_sw(M, std::vector<output_t>(N));
    std::vector<std::vector<output_t>> C_hw_unpacked(M, std::vector<output_t>(N));

    // 2. Initialize Data
    std::cout << "[1/5] Initializing Data..." << std::endl;
    for(int i=0; i<M; i++)
        for(int k=0; k<K; k++)
            A[i][k] = (rand() % 5) + 1;

    for(int k=0; k<K; k++)
        for(int j=0; j<N; j++)
            B[k][j] = (rand() % 5) + 1;

    // 3. Prepare Hardware Memory
    int size_A_hw = (M * K) / VECTOR_WIDTH;
    int size_B_hw = (K * N) / VECTOR_WIDTH;
    int size_C_hw = (M * N) / OUTPUT_WIDTH;

    if(size_A_hw == 0) size_A_hw = 1;
    if(size_B_hw == 0) size_B_hw = 1;
    if(size_C_hw == 0) size_C_hw = 1;

    std::vector<vec_t>     A_hw(size_A_hw);
    std::vector<vec_t>     B_hw(size_B_hw);
    std::vector<vec_out_t> C_hw(size_C_hw);

    std::cout << "[2/5] Packing Data to Block Layout..." << std::endl;
    pack_to_block_layout(A, A_hw, M, K);
    pack_to_block_layout(B, B_hw, K, N);

    // 4. Run Hardware & Profile
    std::cout << "[3/5] Running Hardware Kernel..." << std::endl;

    // Start Timer
    auto start_time = std::chrono::high_resolution_clock::now();

    pipelined_layer_processor(
        A_hw.data(),
        B_hw.data(),
        C_hw.data(),
        M / TILE,
        K / TILE,
        N / TILE
    );

    // Stop Timer
    auto end_time = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> latency = end_time - start_time;

    // Calculate Throughput
    // For Matrix Multiply C = A * B, total operations = 2 * M * K * N (Multiply + Add)
    double total_ops = 2.0 * M * K * N;
    double throughput_gops = (total_ops / latency.count()) / 1e9; // GOPS

    std::cout << "\n      --- PROFILING RESULTS ---" << std::endl;
    std::cout << "      Latency:    " << std::fixed << std::setprecision(6) << latency.count() << " seconds" << std::endl;
    std::cout << "      Throughput: " << throughput_gops << " GOPS (Giga-Operations/sec)\n" << std::endl;

    // 5. Unpack Hardware Result
    std::cout << "[4/5] Unpacking Results..." << std::endl;
    unpack_from_block_layout(C_hw, C_hw_unpacked, M, N);

    // 6. Run Software Reference & Verify
    std::cout << "[5/5] Verifying..." << std::endl;
    for(int i=0; i<M; i++) {
        for(int j=0; j<N; j++) {
            int32_t sum = 0;
            for(int k=0; k<K; k++) {
                sum += A[i][k] * B[k][j];
            }
            C_sw[i][j] = sum;
        }
    }

    int err = 0;
    for(int i=0; i<M; i++) {
        for(int j=0; j<N; j++) {
            if(C_sw[i][j] != C_hw_unpacked[i][j]) {
                if (err < 10) {
                    std::cout << "Mismatch at [" << i << "][" << j << "] "
                              << "SW: " << C_sw[i][j]
                              << " HW: " << C_hw_unpacked[i][j] << std::endl;
                }
                err++;
            }
        }
    }

    if(err == 0) {
        std::cout << "SUCCESS! Hardware matches Software." << std::endl;
        return 0;
    } else {
        std::cout << "FAILURE: Found " << err << " mismatches." << std::endl;
        return 1;
    }
}
