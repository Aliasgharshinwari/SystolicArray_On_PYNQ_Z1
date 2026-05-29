#include <iostream>
#include <vector>
#include <stdlib.h>
#include <iomanip>
#include <chrono>
#include "main.h"

// =========================================================
// TEST CONFIGURATION
// =========================================================
// Updated for TILE = 16.
// M = 64 means 64/16 = 4 row tiles (Perfectly matches MAX_ROW_TILES 4!)
#define M 64   // Rows of A and C
#define K 64   // Cols of A, Rows of B
#define N 64   // Cols of B and C

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
            
            int element_idx = 0;
            vec_t current_packet = 0;
            int packet_idx = 0;
            
            for(int r=0; r<TILE; r++) {
                for(int c=0; c<TILE; c++) {
                    input_t val = host_2d[tr*TILE + r][tc*TILE + c];
                    int pos_in_packet = element_idx % VECTOR_WIDTH;
                    current_packet.range((pos_in_packet*8)+7, pos_in_packet*8) = val;
                    
                    element_idx++;
                    if (element_idx % VECTOR_WIDTH == 0) {
                        packed_mem[block_idx * BLOCK_SIZE + packet_idx] = current_packet;
                        packet_idx++;
                        current_packet = 0;
                    }
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
            
            int element_idx = 0;
            for(int p=0; p<output_block_len; p++) {
                vec_out_t packet = packed_mem[mem_offset + p];
                for(int v=0; v<OUTPUT_WIDTH; v++) {
                    output_t val = packet.range((v*32)+31, v*32);
                    int r = element_idx / TILE;
                    int c = element_idx % TILE;
                    host_2d[tr*TILE + r][tc*TILE + c] = val;
                    element_idx++;
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
    std::cout << "  Weight Stationary Systolic Array TB" << std::endl;
    std::cout << "  Matrix Size: " << M << "x" << K << " * " << K << "x" << N << std::endl;
    std::cout << "  Tile Size:   " << TILE << "x" << TILE << std::endl;
    std::cout << "--------------------------------------------" << std::endl;

    // 1. Allocate Host Memory
    std::vector<std::vector<input_t>>  A(M, std::vector<input_t>(K));
    std::vector<std::vector<input_t>>  B(K, std::vector<input_t>(N));
    std::vector<std::vector<output_t>> C_sw(M, std::vector<output_t>(N));
    std::vector<std::vector<output_t>> C_hw_unpacked(M, std::vector<output_t>(N));

    // 2. Initialize Data with smaller random values to prevent overflow
    std::cout << "[1/5] Initializing Data..." << std::endl;
    for(int i=0; i<M; i++) {
        for(int k=0; k<K; k++) {
            A[i][k] = (rand() % 5) + 1;
        }
    }

    for(int k=0; k<K; k++) {
        for(int j=0; j<N; j++) {
            B[k][j] = (rand() % 5) + 1;
        }
    }

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

    auto start_time = std::chrono::high_resolution_clock::now();

    // Call the new WS function
    pipelined_layer_processor_ws(
        A_hw.data(),
        B_hw.data(),
        C_hw.data(),
        M / TILE,
        K / TILE,
        N / TILE
    );

    auto end_time = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> latency = end_time - start_time;

    double total_ops = 2.0 * M * K * N;
    double throughput_gops = (total_ops / latency.count()) / 1e9;

    std::cout << "\n      --- PROFILING RESULTS ---" << std::endl;
    std::cout << "      Latency:    " << std::fixed << std::setprecision(6) << latency.count() << " seconds" << std::endl;
    std::cout << "      Throughput: " << throughput_gops << " GOPS\n" << std::endl;

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
        std::cout << "SUCCESS! Hardware output matches Software." << std::endl;
        return 0;
    } else {
        std::cout << "FAILURE: Found " << err << " mismatches." << std::endl;
        return 1;
    }
}
