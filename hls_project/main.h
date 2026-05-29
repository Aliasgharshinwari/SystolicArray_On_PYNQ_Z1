#ifndef MAIN_H
#define MAIN_H

#include <ap_int.h>
#include <hls_stream.h>

// --- CONFIGURATION FOR PYNQ-Z1 ---
#define SA_SIZE 16        // 256 MACs (Uses DSPs + LUTs)
#define TILE 16           
#define MAX_ROW_TILES 16  // Buffer size for Weight Stationary C accumulation
#define VECTOR_WIDTH 32   // 32 elements per 256-bit packet
#define OUTPUT_WIDTH 8    // 8 elements per 256-bit packet

#define BLOCK_SIZE (TILE * TILE / VECTOR_WIDTH)
#define OUTPUT_BLOCK_SIZE (TILE * TILE / OUTPUT_WIDTH)

// --- DATA TYPES ---
typedef ap_int<8>    input_t;
typedef ap_int<32>   output_t;

typedef ap_uint<256> vec_t;
typedef ap_uint<256> vec_out_t;

// Top Level Function Prototype
void pipelined_layer_processor_ws(
    vec_t     *mat_A,
    vec_t     *mat_B,
    vec_out_t *mat_C,
    int num_row_tiles, int num_depth_tiles, int num_col_tiles
);
#endif
