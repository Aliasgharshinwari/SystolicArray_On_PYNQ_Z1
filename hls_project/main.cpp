#include "main.h"

// =========================================================
// 1. FAST READ UNIT
// =========================================================
void read_big_tile(
    vec_t *dram_matrix,
    input_t local_buffer[TILE][TILE],
    int tile_index
) {
    #pragma HLS INLINE off

    int start_addr = tile_index * BLOCK_SIZE;

    Read_Loop: for(int i=0; i<BLOCK_SIZE; i++) {
        #pragma HLS PIPELINE II=1

        vec_t packet = dram_matrix[start_addr + i];

        Unpack: for(int k=0; k<VECTOR_WIDTH; k++) {
            #pragma HLS UNROLL
            local_buffer[i][k] = packet.range((k*8)+7, k*8);
        }
    }
}

// =========================================================
// 2. COMPUTE UNIT (With Scanning & Register Caching)
// =========================================================
void compute_systolic(
    input_t  big_tile_A[TILE][TILE],
    input_t  big_tile_B[TILE][TILE],
    output_t big_tile_C[TILE][TILE]
) {
    #pragma HLS INLINE off

    input_t h_wires[SA_SIZE][SA_SIZE + 1];
    input_t v_wires[SA_SIZE + 1][SA_SIZE];
    #pragma HLS ARRAY_PARTITION variable=h_wires dim=0 complete
    #pragma HLS ARRAY_PARTITION variable=v_wires dim=0 complete

    // Register cache prevents Memory Port II Violations
    output_t local_regs[SA_SIZE][SA_SIZE];
    #pragma HLS ARRAY_PARTITION variable=local_regs dim=0 complete

    // Scan across the 32x32 Data Tile in 16x16 chunks
    Scan_Row: for(int tr = 0; tr < TILE; tr += SA_SIZE) {
        Scan_Col: for(int tc = 0; tc < TILE; tc += SA_SIZE) {

            // CACHE LOAD
            Load_Cache_Row: for(int r=0; r<SA_SIZE; r++) {
                #pragma HLS PIPELINE II=1
                Load_Cache_Col: for(int c=0; c<SA_SIZE; c++) {
                   #pragma HLS UNROLL
                   local_regs[r][c] = big_tile_C[tr+r][tc+c];
                }
            }

            // Clear Wires
            for(int i=0; i<SA_SIZE; i++) for(int j=0; j<SA_SIZE; j++)
                #pragma HLS UNROLL
                h_wires[i][j] = v_wires[i][j] = 0;

            // COMPUTE PULSE
            Pulse: for(int k = 0; k < TILE; k++) {
                #pragma HLS PIPELINE II=1

                for(int r=0; r<SA_SIZE; r++) h_wires[r][0] = big_tile_A[tr + r][k];
                for(int c=0; c<SA_SIZE; c++) v_wires[0][c] = big_tile_B[k][tc + c];

                Grid_Row: for(int r=0; r<SA_SIZE; r++) {
                    #pragma HLS UNROLL
                    Grid_Col: for(int c=0; c<SA_SIZE; c++) {
                        #pragma HLS UNROLL

                        output_t prod = h_wires[r][c] * v_wires[r][c];
                        #pragma HLS BIND_OP variable=prod op=mul impl=dsp

                        local_regs[r][c] += prod;

                        h_wires[r][c+1] = h_wires[r][c];
                        v_wires[r+1][c] = v_wires[r][c];
                    }
                }
            }

            // CACHE STORE
            Store_Cache_Row: for(int r=0; r<SA_SIZE; r++) {
                #pragma HLS PIPELINE II=1
                Store_Cache_Col: for(int c=0; c<SA_SIZE; c++) {
                   #pragma HLS UNROLL
                   big_tile_C[tr+r][tc+c] = local_regs[r][c];
                }
            }
        }
    }
}

// =========================================================
// 3. WRITE UNIT
// =========================================================
void write_big_tile(
    output_t local_buffer[TILE][TILE],
    vec_out_t *dram_matrix,
    int tile_index
) {
    #pragma HLS INLINE off

    int start_addr = tile_index * (TILE * TILE / OUTPUT_WIDTH);

    Write_Rows: for(int r=0; r<TILE; r++) {
        Write_Cols: for(int c=0; c<TILE; c += OUTPUT_WIDTH) {
            #pragma HLS PIPELINE II=1

            vec_out_t packet = 0;
            Pack: for(int k=0; k<OUTPUT_WIDTH; k++) {
                #pragma HLS UNROLL
                packet.range((k*32)+31, k*32) = local_buffer[r][c + k];
            }

            int offset = (r * (TILE/OUTPUT_WIDTH)) + (c/OUTPUT_WIDTH);
            dram_matrix[start_addr + offset] = packet;
        }
    }
}

// =========================================================
// 4. TOP LEVEL
// =========================================================
void pipelined_layer_processor(
    vec_t     *mat_A,
    vec_t     *mat_B,
    vec_out_t *mat_C,
    int num_row_tiles, int num_depth_tiles, int num_col_tiles
) {
    // Depths set to 4000 to prevent Co-Sim stack overflow
    #pragma HLS INTERFACE m_axi port=mat_A offset=slave bundle=gmem0 depth=4000 max_read_burst_length=64 num_read_outstanding=4
    #pragma HLS INTERFACE m_axi port=mat_B offset=slave bundle=gmem1 depth=4000 max_read_burst_length=64 num_read_outstanding=4
    #pragma HLS INTERFACE m_axi port=mat_C offset=slave bundle=gmem0 depth=4000 max_write_burst_length=64 num_write_outstanding=4
    #pragma HLS INTERFACE s_axilite port=return bundle=control

	// 1. Explicitly assign the control port to a bundle
	    #pragma HLS INTERFACE s_axilite port=return bundle=control
	    #pragma HLS INTERFACE s_axilite port=num_row_tiles bundle=control
	    #pragma HLS INTERFACE s_axilite port=num_depth_tiles bundle=control
	    #pragma HLS INTERFACE s_axilite port=num_col_tiles bundle=control

	    // 2. Explicitly map your pointers to the SAME bundle
	    #pragma HLS INTERFACE s_axilite port=mat_A bundle=control
	    #pragma HLS INTERFACE s_axilite port=mat_B bundle=control
	    #pragma HLS INTERFACE s_axilite port=mat_C bundle=control

    input_t  tile_A[TILE][TILE];
    input_t  tile_B[TILE][TILE];
    output_t tile_C[TILE][TILE];

    #pragma HLS ARRAY_PARTITION variable=tile_A dim=1 cyclic factor=16
    #pragma HLS ARRAY_RESHAPE   variable=tile_A dim=2 cyclic factor=32
    #pragma HLS BIND_STORAGE    variable=tile_A type=ram_2p impl=bram

    #pragma HLS ARRAY_RESHAPE   variable=tile_B dim=2 cyclic factor=32
    #pragma HLS BIND_STORAGE    variable=tile_B type=ram_2p impl=bram

    #pragma HLS ARRAY_PARTITION variable=tile_C dim=2 cyclic factor=16
    #pragma HLS BIND_STORAGE    variable=tile_C type=ram_2p impl=bram

    Row_Loop: for(int i = 0; i < num_row_tiles; i++) {
        Col_Loop: for(int j = 0; j < num_col_tiles; j++) {

            // Fast Clear
            Clear: for(int r=0; r<TILE; r++) {
                #pragma HLS PIPELINE II=1
                for(int c=0; c<TILE; c++) tile_C[r][c] = 0;
            }

            Depth_Loop: for(int k = 0; k < num_depth_tiles; k++) {
                //#pragma HLS DATAFLOW

                int idx_A = (i * num_depth_tiles) + k;
                int idx_B = (k * num_col_tiles) + j;

                read_big_tile(mat_A, tile_A, idx_A);
                read_big_tile(mat_B, tile_B, idx_B);
                compute_systolic(tile_A, tile_B, tile_C);
            }

            int idx_C = (i * num_col_tiles) + j;
            write_big_tile(tile_C, mat_C, idx_C);
        }
    }
}
