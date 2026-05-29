#include "main.h"

// =========================================================
// 1. STREAMING READ UNIT FOR A
// =========================================================
void read_matrix_A(
    vec_t *dram_matrix,
    hls::stream<vec_t> &stream_A,
    int num_row_tiles, int num_depth_tiles, int num_col_tiles
) {
    for (int j = 0; j < num_col_tiles; j++) {
        for (int k = 0; k < num_depth_tiles; k++) {
            for (int i = 0; i < num_row_tiles; i++) {
                int tile_index = (i * num_depth_tiles) + k;
                int start_addr = tile_index * BLOCK_SIZE;
                
                Read_A_Burst: for (int p = 0; p < BLOCK_SIZE; p++) {
                    #pragma HLS PIPELINE II=1
                    stream_A.write(dram_matrix[start_addr + p]);
                }
            }
        }
    }
}

// =========================================================
// 2. STREAMING READ UNIT FOR B
// =========================================================
void read_matrix_B(
    vec_t *dram_matrix,
    hls::stream<vec_t> &stream_B,
    int num_row_tiles, int num_depth_tiles, int num_col_tiles
) {
    for (int j = 0; j < num_col_tiles; j++) {
        for (int k = 0; k < num_depth_tiles; k++) {
            int tile_index = (k * num_col_tiles) + j;
            int start_addr = tile_index * BLOCK_SIZE;
            
            Read_B_Burst: for (int p = 0; p < BLOCK_SIZE; p++) {
                #pragma HLS PIPELINE II=1
                stream_B.write(dram_matrix[start_addr + p]);
            }
        }
    }
}

// =========================================================
// 3. COMPUTE UNIT (Weight Stationary)
// =========================================================
void compute_systolic(
    hls::stream<vec_t> &stream_A,
    hls::stream<vec_t> &stream_B,
    hls::stream<vec_out_t> &stream_C,
    int num_row_tiles, int num_depth_tiles, int num_col_tiles
) {
    output_t C_buffer[MAX_ROW_TILES][TILE][TILE];
    #pragma HLS ARRAY_PARTITION variable=C_buffer dim=3 cyclic factor=8

    for (int j = 0; j < num_col_tiles; j++) {
        
        // Clear C buffer for this column
        Clear_C_Rows: for (int i = 0; i < num_row_tiles; i++) {
            Clear_C_Tr: for(int tr=0; tr<TILE; tr++) {
                for(int tc=0; tc<TILE; tc++) {
                    #pragma HLS PIPELINE II=1
                    C_buffer[i][tr][tc] = 0;
                }
            }
        }

        Depth_Loop: for (int k = 0; k < num_depth_tiles; k++) {
            
            input_t local_B[TILE][TILE];
            #pragma HLS ARRAY_PARTITION variable=local_B dim=1 cyclic factor=8
            #pragma HLS ARRAY_PARTITION variable=local_B dim=2 cyclic factor=8
            
            Load_B: for (int p = 0; p < BLOCK_SIZE; p++) {
                #pragma HLS PIPELINE II=1
                vec_t packet = stream_B.read();
                for(int v = 0; v < VECTOR_WIDTH; v++) {
                    int flat_idx = p * VECTOR_WIDTH + v;
                    int r = flat_idx / TILE;
                    int c = flat_idx % TILE;
                    local_B[r][c] = packet.range((v*8)+7, v*8);
                }
            }
            
            Row_Loop: for (int i = 0; i < num_row_tiles; i++) {
                
                input_t local_A[TILE][TILE];
                #pragma HLS ARRAY_PARTITION variable=local_A dim=1 cyclic factor=8
                #pragma HLS ARRAY_RESHAPE variable=local_A dim=2 cyclic factor=8
                
                Load_A: for (int p = 0; p < BLOCK_SIZE; p++) {
                    #pragma HLS PIPELINE II=1
                    vec_t packet = stream_A.read();
                    for(int v = 0; v < VECTOR_WIDTH; v++) {
                        int flat_idx = p * VECTOR_WIDTH + v;
                        int r = flat_idx / TILE;
                        int c = flat_idx % TILE;
                        local_A[r][c] = packet.range((v*8)+7, v*8);
                    }
                }
                
                Scan_K: for(int tk = 0; tk < TILE; tk += SA_SIZE) {
                    Scan_Col: for(int tc = 0; tc < TILE; tc += SA_SIZE) {
                        
                        // COMPUTE PULSE (Vector MACs)
                        Pulse: for(int tr = 0; tr < TILE; tr++) {
                            #pragma HLS PIPELINE II=1
                            
                            Grid_Col: for(int c=0; c<SA_SIZE; c++) {
                                #pragma HLS UNROLL
                                
                                output_t acc = C_buffer[i][tr][tc + c];
                                
                                Grid_Row: for(int r=0; r<SA_SIZE; r++) {
                                    #pragma HLS UNROLL
                                    
                                    // DSP for multiplier only, use LUTs for adders to save resources
                                    #pragma HLS BIND_OP variable=acc op=mul impl=dsp latency=3
                                    
                                    acc += local_A[tr][tk + r] * local_B[tk + r][tc + c];
                                }
                                
                                C_buffer[i][tr][tc + c] = acc;
                            }
                        }
                    }
                }
            } // end row loop
        } // end depth loop
        
        Write_C_Stream: for (int i = 0; i < num_row_tiles; i++) {
            for (int p = 0; p < OUTPUT_BLOCK_SIZE; p++) {
                #pragma HLS PIPELINE II=1
                vec_out_t packet = 0;
                for (int v = 0; v < OUTPUT_WIDTH; v++) {
                    int flat_idx = p * OUTPUT_WIDTH + v;
                    int r = flat_idx / TILE;
                    int c = flat_idx % TILE;
                    packet.range((v*32)+31, v*32) = C_buffer[i][r][c];
                }
                stream_C.write(packet);
            }
        }
        
    } // end col loop
}

// =========================================================
// 4. STREAMING WRITE UNIT FOR C
// =========================================================
void write_matrix_C(
    hls::stream<vec_out_t> &stream_C,
    vec_out_t *dram_matrix,
    int num_row_tiles, int num_depth_tiles, int num_col_tiles
) {
    for (int j = 0; j < num_col_tiles; j++) {
        for (int i = 0; i < num_row_tiles; i++) {
            int tile_index = (i * num_col_tiles) + j;
            int start_addr = tile_index * OUTPUT_BLOCK_SIZE;
            
            Write_C_Burst: for (int p = 0; p < OUTPUT_BLOCK_SIZE; p++) {
                #pragma HLS PIPELINE II=1
                dram_matrix[start_addr + p] = stream_C.read();
            }
        }
    }
}

// =========================================================
// 5. TOP LEVEL
// =========================================================
void pipelined_layer_processor_ws(
    vec_t     *mat_A,
    vec_t     *mat_B,
    vec_out_t *mat_C,
    int num_row_tiles, int num_depth_tiles, int num_col_tiles
) {
    #pragma HLS INTERFACE m_axi port=mat_A offset=slave bundle=gmem0 depth=4000 max_read_burst_length=64 num_read_outstanding=4
    #pragma HLS INTERFACE m_axi port=mat_B offset=slave bundle=gmem1 depth=4000 max_read_burst_length=64 num_read_outstanding=4
    #pragma HLS INTERFACE m_axi port=mat_C offset=slave bundle=gmem2 depth=4000 max_write_burst_length=64 num_write_outstanding=4

    #pragma HLS INTERFACE s_axilite port=return bundle=control
    #pragma HLS INTERFACE s_axilite port=num_row_tiles bundle=control
    #pragma HLS INTERFACE s_axilite port=num_depth_tiles bundle=control
    #pragma HLS INTERFACE s_axilite port=num_col_tiles bundle=control
    #pragma HLS INTERFACE s_axilite port=mat_A bundle=control
    #pragma HLS INTERFACE s_axilite port=mat_B bundle=control
    #pragma HLS INTERFACE s_axilite port=mat_C bundle=control

    #pragma HLS DATAFLOW

    hls::stream<vec_t> stream_A("stream_A");
    hls::stream<vec_t> stream_B("stream_B");
    hls::stream<vec_out_t> stream_C("stream_C");
    
    #pragma HLS STREAM variable=stream_A depth=64
    #pragma HLS STREAM variable=stream_B depth=64
    #pragma HLS STREAM variable=stream_C depth=64

    read_matrix_A(mat_A, stream_A, num_row_tiles, num_depth_tiles, num_col_tiles);
    read_matrix_B(mat_B, stream_B, num_row_tiles, num_depth_tiles, num_col_tiles);
    
    compute_systolic(stream_A, stream_B, stream_C, num_row_tiles, num_depth_tiles, num_col_tiles);
    
    write_matrix_C(stream_C, mat_C, num_row_tiles, num_depth_tiles, num_col_tiles);
}
