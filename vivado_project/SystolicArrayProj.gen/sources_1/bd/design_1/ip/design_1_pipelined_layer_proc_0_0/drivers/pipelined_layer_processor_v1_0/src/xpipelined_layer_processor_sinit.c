// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xpipelined_layer_processor.h"

extern XPipelined_layer_processor_Config XPipelined_layer_processor_ConfigTable[];

XPipelined_layer_processor_Config *XPipelined_layer_processor_LookupConfig(u16 DeviceId) {
	XPipelined_layer_processor_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XPIPELINED_LAYER_PROCESSOR_NUM_INSTANCES; Index++) {
		if (XPipelined_layer_processor_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XPipelined_layer_processor_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XPipelined_layer_processor_Initialize(XPipelined_layer_processor *InstancePtr, u16 DeviceId) {
	XPipelined_layer_processor_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XPipelined_layer_processor_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XPipelined_layer_processor_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

