#ifndef MAIN_H
#define MAIN_H

#include <ap_int.h>

// --- CONFIGURATION ---
#define SA_SIZE 16        // Systolic Array Size (16x16 PEs)
#define TILE 16           // Memory Tile Size (32x32 Data)
#define VECTOR_WIDTH 16   // 32 Bytes per packet (256-bit interface)
#define OUTPUT_WIDTH 8    // 8 Integers per packet (256-bit interface)

#define MAX_MATRIX_SIZE 1024 // Increased to support padding
#define BLOCK_SIZE (TILE * TILE / VECTOR_WIDTH)

// --- DATA TYPES ---
typedef ap_int<8>    input_t;
typedef ap_int<32>   output_t;

// CRITICAL: 256-bit Vector types to match VECTOR_WIDTH=32
typedef ap_uint<256> vec_t;
typedef ap_uint<256> vec_out_t;

// Top Level Function Prototype
void pipelined_layer_processor(
    vec_t     *mat_A,
    vec_t     *mat_B,
    vec_out_t *mat_C,
    int num_row_tiles, int num_depth_tiles, int num_col_tiles
);

#endif
