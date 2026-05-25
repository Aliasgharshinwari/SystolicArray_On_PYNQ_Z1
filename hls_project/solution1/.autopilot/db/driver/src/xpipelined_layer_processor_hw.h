// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of mat_A
//        bit 31~0 - mat_A[31:0] (Read/Write)
// 0x14 : Data signal of mat_A
//        bit 31~0 - mat_A[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of mat_B
//        bit 31~0 - mat_B[31:0] (Read/Write)
// 0x20 : Data signal of mat_B
//        bit 31~0 - mat_B[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of mat_C
//        bit 31~0 - mat_C[31:0] (Read/Write)
// 0x2c : Data signal of mat_C
//        bit 31~0 - mat_C[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of num_row_tiles
//        bit 31~0 - num_row_tiles[31:0] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of num_depth_tiles
//        bit 31~0 - num_depth_tiles[31:0] (Read/Write)
// 0x40 : reserved
// 0x44 : Data signal of num_col_tiles
//        bit 31~0 - num_col_tiles[31:0] (Read/Write)
// 0x48 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_AP_CTRL              0x00
#define XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_GIE                  0x04
#define XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_IER                  0x08
#define XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_ISR                  0x0c
#define XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_MAT_A_DATA           0x10
#define XPIPELINED_LAYER_PROCESSOR_CONTROL_BITS_MAT_A_DATA           64
#define XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_MAT_B_DATA           0x1c
#define XPIPELINED_LAYER_PROCESSOR_CONTROL_BITS_MAT_B_DATA           64
#define XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_MAT_C_DATA           0x28
#define XPIPELINED_LAYER_PROCESSOR_CONTROL_BITS_MAT_C_DATA           64
#define XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_NUM_ROW_TILES_DATA   0x34
#define XPIPELINED_LAYER_PROCESSOR_CONTROL_BITS_NUM_ROW_TILES_DATA   32
#define XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_NUM_DEPTH_TILES_DATA 0x3c
#define XPIPELINED_LAYER_PROCESSOR_CONTROL_BITS_NUM_DEPTH_TILES_DATA 32
#define XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_NUM_COL_TILES_DATA   0x44
#define XPIPELINED_LAYER_PROCESSOR_CONTROL_BITS_NUM_COL_TILES_DATA   32

