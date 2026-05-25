// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xpipelined_layer_processor.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XPipelined_layer_processor_CfgInitialize(XPipelined_layer_processor *InstancePtr, XPipelined_layer_processor_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XPipelined_layer_processor_Start(XPipelined_layer_processor *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPipelined_layer_processor_ReadReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_AP_CTRL) & 0x80;
    XPipelined_layer_processor_WriteReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XPipelined_layer_processor_IsDone(XPipelined_layer_processor *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPipelined_layer_processor_ReadReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XPipelined_layer_processor_IsIdle(XPipelined_layer_processor *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPipelined_layer_processor_ReadReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XPipelined_layer_processor_IsReady(XPipelined_layer_processor *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPipelined_layer_processor_ReadReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XPipelined_layer_processor_EnableAutoRestart(XPipelined_layer_processor *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPipelined_layer_processor_WriteReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XPipelined_layer_processor_DisableAutoRestart(XPipelined_layer_processor *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPipelined_layer_processor_WriteReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_AP_CTRL, 0);
}

void XPipelined_layer_processor_Set_mat_A(XPipelined_layer_processor *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPipelined_layer_processor_WriteReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_MAT_A_DATA, (u32)(Data));
    XPipelined_layer_processor_WriteReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_MAT_A_DATA + 4, (u32)(Data >> 32));
}

u64 XPipelined_layer_processor_Get_mat_A(XPipelined_layer_processor *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPipelined_layer_processor_ReadReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_MAT_A_DATA);
    Data += (u64)XPipelined_layer_processor_ReadReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_MAT_A_DATA + 4) << 32;
    return Data;
}

void XPipelined_layer_processor_Set_mat_B(XPipelined_layer_processor *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPipelined_layer_processor_WriteReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_MAT_B_DATA, (u32)(Data));
    XPipelined_layer_processor_WriteReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_MAT_B_DATA + 4, (u32)(Data >> 32));
}

u64 XPipelined_layer_processor_Get_mat_B(XPipelined_layer_processor *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPipelined_layer_processor_ReadReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_MAT_B_DATA);
    Data += (u64)XPipelined_layer_processor_ReadReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_MAT_B_DATA + 4) << 32;
    return Data;
}

void XPipelined_layer_processor_Set_mat_C(XPipelined_layer_processor *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPipelined_layer_processor_WriteReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_MAT_C_DATA, (u32)(Data));
    XPipelined_layer_processor_WriteReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_MAT_C_DATA + 4, (u32)(Data >> 32));
}

u64 XPipelined_layer_processor_Get_mat_C(XPipelined_layer_processor *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPipelined_layer_processor_ReadReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_MAT_C_DATA);
    Data += (u64)XPipelined_layer_processor_ReadReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_MAT_C_DATA + 4) << 32;
    return Data;
}

void XPipelined_layer_processor_Set_num_row_tiles(XPipelined_layer_processor *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPipelined_layer_processor_WriteReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_NUM_ROW_TILES_DATA, Data);
}

u32 XPipelined_layer_processor_Get_num_row_tiles(XPipelined_layer_processor *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPipelined_layer_processor_ReadReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_NUM_ROW_TILES_DATA);
    return Data;
}

void XPipelined_layer_processor_Set_num_depth_tiles(XPipelined_layer_processor *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPipelined_layer_processor_WriteReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_NUM_DEPTH_TILES_DATA, Data);
}

u32 XPipelined_layer_processor_Get_num_depth_tiles(XPipelined_layer_processor *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPipelined_layer_processor_ReadReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_NUM_DEPTH_TILES_DATA);
    return Data;
}

void XPipelined_layer_processor_Set_num_col_tiles(XPipelined_layer_processor *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPipelined_layer_processor_WriteReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_NUM_COL_TILES_DATA, Data);
}

u32 XPipelined_layer_processor_Get_num_col_tiles(XPipelined_layer_processor *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPipelined_layer_processor_ReadReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_NUM_COL_TILES_DATA);
    return Data;
}

void XPipelined_layer_processor_InterruptGlobalEnable(XPipelined_layer_processor *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPipelined_layer_processor_WriteReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_GIE, 1);
}

void XPipelined_layer_processor_InterruptGlobalDisable(XPipelined_layer_processor *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPipelined_layer_processor_WriteReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_GIE, 0);
}

void XPipelined_layer_processor_InterruptEnable(XPipelined_layer_processor *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPipelined_layer_processor_ReadReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_IER);
    XPipelined_layer_processor_WriteReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_IER, Register | Mask);
}

void XPipelined_layer_processor_InterruptDisable(XPipelined_layer_processor *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPipelined_layer_processor_ReadReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_IER);
    XPipelined_layer_processor_WriteReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_IER, Register & (~Mask));
}

void XPipelined_layer_processor_InterruptClear(XPipelined_layer_processor *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPipelined_layer_processor_WriteReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_ISR, Mask);
}

u32 XPipelined_layer_processor_InterruptGetEnabled(XPipelined_layer_processor *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPipelined_layer_processor_ReadReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_IER);
}

u32 XPipelined_layer_processor_InterruptGetStatus(XPipelined_layer_processor *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPipelined_layer_processor_ReadReg(InstancePtr->Control_BaseAddress, XPIPELINED_LAYER_PROCESSOR_CONTROL_ADDR_ISR);
}

