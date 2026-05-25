// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_pipelined_layer_processor (
volatile void* mat_A,
volatile void* mat_B,
volatile void* mat_C,
int num_row_tiles,
int num_depth_tiles,
int num_col_tiles);
