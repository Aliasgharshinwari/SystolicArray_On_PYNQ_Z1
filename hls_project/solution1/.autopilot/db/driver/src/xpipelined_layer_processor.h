// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XPIPELINED_LAYER_PROCESSOR_H
#define XPIPELINED_LAYER_PROCESSOR_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xpipelined_layer_processor_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XPipelined_layer_processor_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XPipelined_layer_processor;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XPipelined_layer_processor_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XPipelined_layer_processor_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XPipelined_layer_processor_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XPipelined_layer_processor_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XPipelined_layer_processor_Initialize(XPipelined_layer_processor *InstancePtr, u16 DeviceId);
XPipelined_layer_processor_Config* XPipelined_layer_processor_LookupConfig(u16 DeviceId);
int XPipelined_layer_processor_CfgInitialize(XPipelined_layer_processor *InstancePtr, XPipelined_layer_processor_Config *ConfigPtr);
#else
int XPipelined_layer_processor_Initialize(XPipelined_layer_processor *InstancePtr, const char* InstanceName);
int XPipelined_layer_processor_Release(XPipelined_layer_processor *InstancePtr);
#endif

void XPipelined_layer_processor_Start(XPipelined_layer_processor *InstancePtr);
u32 XPipelined_layer_processor_IsDone(XPipelined_layer_processor *InstancePtr);
u32 XPipelined_layer_processor_IsIdle(XPipelined_layer_processor *InstancePtr);
u32 XPipelined_layer_processor_IsReady(XPipelined_layer_processor *InstancePtr);
void XPipelined_layer_processor_EnableAutoRestart(XPipelined_layer_processor *InstancePtr);
void XPipelined_layer_processor_DisableAutoRestart(XPipelined_layer_processor *InstancePtr);

void XPipelined_layer_processor_Set_mat_A(XPipelined_layer_processor *InstancePtr, u64 Data);
u64 XPipelined_layer_processor_Get_mat_A(XPipelined_layer_processor *InstancePtr);
void XPipelined_layer_processor_Set_mat_B(XPipelined_layer_processor *InstancePtr, u64 Data);
u64 XPipelined_layer_processor_Get_mat_B(XPipelined_layer_processor *InstancePtr);
void XPipelined_layer_processor_Set_mat_C(XPipelined_layer_processor *InstancePtr, u64 Data);
u64 XPipelined_layer_processor_Get_mat_C(XPipelined_layer_processor *InstancePtr);
void XPipelined_layer_processor_Set_num_row_tiles(XPipelined_layer_processor *InstancePtr, u32 Data);
u32 XPipelined_layer_processor_Get_num_row_tiles(XPipelined_layer_processor *InstancePtr);
void XPipelined_layer_processor_Set_num_depth_tiles(XPipelined_layer_processor *InstancePtr, u32 Data);
u32 XPipelined_layer_processor_Get_num_depth_tiles(XPipelined_layer_processor *InstancePtr);
void XPipelined_layer_processor_Set_num_col_tiles(XPipelined_layer_processor *InstancePtr, u32 Data);
u32 XPipelined_layer_processor_Get_num_col_tiles(XPipelined_layer_processor *InstancePtr);

void XPipelined_layer_processor_InterruptGlobalEnable(XPipelined_layer_processor *InstancePtr);
void XPipelined_layer_processor_InterruptGlobalDisable(XPipelined_layer_processor *InstancePtr);
void XPipelined_layer_processor_InterruptEnable(XPipelined_layer_processor *InstancePtr, u32 Mask);
void XPipelined_layer_processor_InterruptDisable(XPipelined_layer_processor *InstancePtr, u32 Mask);
void XPipelined_layer_processor_InterruptClear(XPipelined_layer_processor *InstancePtr, u32 Mask);
u32 XPipelined_layer_processor_InterruptGetEnabled(XPipelined_layer_processor *InstancePtr);
u32 XPipelined_layer_processor_InterruptGetStatus(XPipelined_layer_processor *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
