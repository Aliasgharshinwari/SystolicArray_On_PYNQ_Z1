set moduleName pipelined_layer_processor_Pipeline_Clear
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {pipelined_layer_processor_Pipeline_Clear}
set C_modelType { void 0 }
set C_modelArgList {
	{ tile_C_V int 32 regular {array 64 { 3 0 } 0 1 }  }
	{ tile_C_V_1 int 32 regular {array 64 { 3 0 } 0 1 }  }
	{ tile_C_V_2 int 32 regular {array 64 { 3 0 } 0 1 }  }
	{ tile_C_V_3 int 32 regular {array 64 { 3 0 } 0 1 }  }
	{ tile_C_V_4 int 32 regular {array 64 { 3 0 } 0 1 }  }
	{ tile_C_V_5 int 32 regular {array 64 { 3 0 } 0 1 }  }
	{ tile_C_V_6 int 32 regular {array 64 { 3 0 } 0 1 }  }
	{ tile_C_V_7 int 32 regular {array 64 { 3 0 } 0 1 }  }
	{ tile_C_V_8 int 32 regular {array 64 { 3 0 } 0 1 }  }
	{ tile_C_V_9 int 32 regular {array 64 { 3 0 } 0 1 }  }
	{ tile_C_V_10 int 32 regular {array 64 { 3 0 } 0 1 }  }
	{ tile_C_V_11 int 32 regular {array 64 { 3 0 } 0 1 }  }
	{ tile_C_V_12 int 32 regular {array 64 { 3 0 } 0 1 }  }
	{ tile_C_V_13 int 32 regular {array 64 { 3 0 } 0 1 }  }
	{ tile_C_V_14 int 32 regular {array 64 { 3 0 } 0 1 }  }
	{ tile_C_V_15 int 32 regular {array 64 { 3 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tile_C_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tile_C_V_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tile_C_V_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tile_C_V_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tile_C_V_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tile_C_V_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tile_C_V_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tile_C_V_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tile_C_V_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tile_C_V_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tile_C_V_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tile_C_V_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tile_C_V_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tile_C_V_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tile_C_V_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tile_C_V_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 70
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tile_C_V_address1 sc_out sc_lv 6 signal 0 } 
	{ tile_C_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ tile_C_V_we1 sc_out sc_logic 1 signal 0 } 
	{ tile_C_V_d1 sc_out sc_lv 32 signal 0 } 
	{ tile_C_V_1_address1 sc_out sc_lv 6 signal 1 } 
	{ tile_C_V_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ tile_C_V_1_we1 sc_out sc_logic 1 signal 1 } 
	{ tile_C_V_1_d1 sc_out sc_lv 32 signal 1 } 
	{ tile_C_V_2_address1 sc_out sc_lv 6 signal 2 } 
	{ tile_C_V_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ tile_C_V_2_we1 sc_out sc_logic 1 signal 2 } 
	{ tile_C_V_2_d1 sc_out sc_lv 32 signal 2 } 
	{ tile_C_V_3_address1 sc_out sc_lv 6 signal 3 } 
	{ tile_C_V_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ tile_C_V_3_we1 sc_out sc_logic 1 signal 3 } 
	{ tile_C_V_3_d1 sc_out sc_lv 32 signal 3 } 
	{ tile_C_V_4_address1 sc_out sc_lv 6 signal 4 } 
	{ tile_C_V_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ tile_C_V_4_we1 sc_out sc_logic 1 signal 4 } 
	{ tile_C_V_4_d1 sc_out sc_lv 32 signal 4 } 
	{ tile_C_V_5_address1 sc_out sc_lv 6 signal 5 } 
	{ tile_C_V_5_ce1 sc_out sc_logic 1 signal 5 } 
	{ tile_C_V_5_we1 sc_out sc_logic 1 signal 5 } 
	{ tile_C_V_5_d1 sc_out sc_lv 32 signal 5 } 
	{ tile_C_V_6_address1 sc_out sc_lv 6 signal 6 } 
	{ tile_C_V_6_ce1 sc_out sc_logic 1 signal 6 } 
	{ tile_C_V_6_we1 sc_out sc_logic 1 signal 6 } 
	{ tile_C_V_6_d1 sc_out sc_lv 32 signal 6 } 
	{ tile_C_V_7_address1 sc_out sc_lv 6 signal 7 } 
	{ tile_C_V_7_ce1 sc_out sc_logic 1 signal 7 } 
	{ tile_C_V_7_we1 sc_out sc_logic 1 signal 7 } 
	{ tile_C_V_7_d1 sc_out sc_lv 32 signal 7 } 
	{ tile_C_V_8_address1 sc_out sc_lv 6 signal 8 } 
	{ tile_C_V_8_ce1 sc_out sc_logic 1 signal 8 } 
	{ tile_C_V_8_we1 sc_out sc_logic 1 signal 8 } 
	{ tile_C_V_8_d1 sc_out sc_lv 32 signal 8 } 
	{ tile_C_V_9_address1 sc_out sc_lv 6 signal 9 } 
	{ tile_C_V_9_ce1 sc_out sc_logic 1 signal 9 } 
	{ tile_C_V_9_we1 sc_out sc_logic 1 signal 9 } 
	{ tile_C_V_9_d1 sc_out sc_lv 32 signal 9 } 
	{ tile_C_V_10_address1 sc_out sc_lv 6 signal 10 } 
	{ tile_C_V_10_ce1 sc_out sc_logic 1 signal 10 } 
	{ tile_C_V_10_we1 sc_out sc_logic 1 signal 10 } 
	{ tile_C_V_10_d1 sc_out sc_lv 32 signal 10 } 
	{ tile_C_V_11_address1 sc_out sc_lv 6 signal 11 } 
	{ tile_C_V_11_ce1 sc_out sc_logic 1 signal 11 } 
	{ tile_C_V_11_we1 sc_out sc_logic 1 signal 11 } 
	{ tile_C_V_11_d1 sc_out sc_lv 32 signal 11 } 
	{ tile_C_V_12_address1 sc_out sc_lv 6 signal 12 } 
	{ tile_C_V_12_ce1 sc_out sc_logic 1 signal 12 } 
	{ tile_C_V_12_we1 sc_out sc_logic 1 signal 12 } 
	{ tile_C_V_12_d1 sc_out sc_lv 32 signal 12 } 
	{ tile_C_V_13_address1 sc_out sc_lv 6 signal 13 } 
	{ tile_C_V_13_ce1 sc_out sc_logic 1 signal 13 } 
	{ tile_C_V_13_we1 sc_out sc_logic 1 signal 13 } 
	{ tile_C_V_13_d1 sc_out sc_lv 32 signal 13 } 
	{ tile_C_V_14_address1 sc_out sc_lv 6 signal 14 } 
	{ tile_C_V_14_ce1 sc_out sc_logic 1 signal 14 } 
	{ tile_C_V_14_we1 sc_out sc_logic 1 signal 14 } 
	{ tile_C_V_14_d1 sc_out sc_lv 32 signal 14 } 
	{ tile_C_V_15_address1 sc_out sc_lv 6 signal 15 } 
	{ tile_C_V_15_ce1 sc_out sc_logic 1 signal 15 } 
	{ tile_C_V_15_we1 sc_out sc_logic 1 signal 15 } 
	{ tile_C_V_15_d1 sc_out sc_lv 32 signal 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tile_C_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_C_V", "role": "address1" }} , 
 	{ "name": "tile_C_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V", "role": "ce1" }} , 
 	{ "name": "tile_C_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V", "role": "we1" }} , 
 	{ "name": "tile_C_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tile_C_V", "role": "d1" }} , 
 	{ "name": "tile_C_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_C_V_1", "role": "address1" }} , 
 	{ "name": "tile_C_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_1", "role": "ce1" }} , 
 	{ "name": "tile_C_V_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_1", "role": "we1" }} , 
 	{ "name": "tile_C_V_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tile_C_V_1", "role": "d1" }} , 
 	{ "name": "tile_C_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_C_V_2", "role": "address1" }} , 
 	{ "name": "tile_C_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_2", "role": "ce1" }} , 
 	{ "name": "tile_C_V_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_2", "role": "we1" }} , 
 	{ "name": "tile_C_V_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tile_C_V_2", "role": "d1" }} , 
 	{ "name": "tile_C_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_C_V_3", "role": "address1" }} , 
 	{ "name": "tile_C_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_3", "role": "ce1" }} , 
 	{ "name": "tile_C_V_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_3", "role": "we1" }} , 
 	{ "name": "tile_C_V_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tile_C_V_3", "role": "d1" }} , 
 	{ "name": "tile_C_V_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_C_V_4", "role": "address1" }} , 
 	{ "name": "tile_C_V_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_4", "role": "ce1" }} , 
 	{ "name": "tile_C_V_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_4", "role": "we1" }} , 
 	{ "name": "tile_C_V_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tile_C_V_4", "role": "d1" }} , 
 	{ "name": "tile_C_V_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_C_V_5", "role": "address1" }} , 
 	{ "name": "tile_C_V_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_5", "role": "ce1" }} , 
 	{ "name": "tile_C_V_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_5", "role": "we1" }} , 
 	{ "name": "tile_C_V_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tile_C_V_5", "role": "d1" }} , 
 	{ "name": "tile_C_V_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_C_V_6", "role": "address1" }} , 
 	{ "name": "tile_C_V_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_6", "role": "ce1" }} , 
 	{ "name": "tile_C_V_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_6", "role": "we1" }} , 
 	{ "name": "tile_C_V_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tile_C_V_6", "role": "d1" }} , 
 	{ "name": "tile_C_V_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_C_V_7", "role": "address1" }} , 
 	{ "name": "tile_C_V_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_7", "role": "ce1" }} , 
 	{ "name": "tile_C_V_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_7", "role": "we1" }} , 
 	{ "name": "tile_C_V_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tile_C_V_7", "role": "d1" }} , 
 	{ "name": "tile_C_V_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_C_V_8", "role": "address1" }} , 
 	{ "name": "tile_C_V_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_8", "role": "ce1" }} , 
 	{ "name": "tile_C_V_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_8", "role": "we1" }} , 
 	{ "name": "tile_C_V_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tile_C_V_8", "role": "d1" }} , 
 	{ "name": "tile_C_V_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_C_V_9", "role": "address1" }} , 
 	{ "name": "tile_C_V_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_9", "role": "ce1" }} , 
 	{ "name": "tile_C_V_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_9", "role": "we1" }} , 
 	{ "name": "tile_C_V_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tile_C_V_9", "role": "d1" }} , 
 	{ "name": "tile_C_V_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_C_V_10", "role": "address1" }} , 
 	{ "name": "tile_C_V_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_10", "role": "ce1" }} , 
 	{ "name": "tile_C_V_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_10", "role": "we1" }} , 
 	{ "name": "tile_C_V_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tile_C_V_10", "role": "d1" }} , 
 	{ "name": "tile_C_V_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_C_V_11", "role": "address1" }} , 
 	{ "name": "tile_C_V_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_11", "role": "ce1" }} , 
 	{ "name": "tile_C_V_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_11", "role": "we1" }} , 
 	{ "name": "tile_C_V_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tile_C_V_11", "role": "d1" }} , 
 	{ "name": "tile_C_V_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_C_V_12", "role": "address1" }} , 
 	{ "name": "tile_C_V_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_12", "role": "ce1" }} , 
 	{ "name": "tile_C_V_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_12", "role": "we1" }} , 
 	{ "name": "tile_C_V_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tile_C_V_12", "role": "d1" }} , 
 	{ "name": "tile_C_V_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_C_V_13", "role": "address1" }} , 
 	{ "name": "tile_C_V_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_13", "role": "ce1" }} , 
 	{ "name": "tile_C_V_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_13", "role": "we1" }} , 
 	{ "name": "tile_C_V_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tile_C_V_13", "role": "d1" }} , 
 	{ "name": "tile_C_V_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_C_V_14", "role": "address1" }} , 
 	{ "name": "tile_C_V_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_14", "role": "ce1" }} , 
 	{ "name": "tile_C_V_14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_14", "role": "we1" }} , 
 	{ "name": "tile_C_V_14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tile_C_V_14", "role": "d1" }} , 
 	{ "name": "tile_C_V_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_C_V_15", "role": "address1" }} , 
 	{ "name": "tile_C_V_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_15", "role": "ce1" }} , 
 	{ "name": "tile_C_V_15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_C_V_15", "role": "we1" }} , 
 	{ "name": "tile_C_V_15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tile_C_V_15", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "pipelined_layer_processor_Pipeline_Clear",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tile_C_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tile_C_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tile_C_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tile_C_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tile_C_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tile_C_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tile_C_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tile_C_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tile_C_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tile_C_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tile_C_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tile_C_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tile_C_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tile_C_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tile_C_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tile_C_V_15", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Clear", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	pipelined_layer_processor_Pipeline_Clear {
		tile_C_V {Type O LastRead -1 FirstWrite 0}
		tile_C_V_1 {Type O LastRead -1 FirstWrite 0}
		tile_C_V_2 {Type O LastRead -1 FirstWrite 0}
		tile_C_V_3 {Type O LastRead -1 FirstWrite 0}
		tile_C_V_4 {Type O LastRead -1 FirstWrite 0}
		tile_C_V_5 {Type O LastRead -1 FirstWrite 0}
		tile_C_V_6 {Type O LastRead -1 FirstWrite 0}
		tile_C_V_7 {Type O LastRead -1 FirstWrite 0}
		tile_C_V_8 {Type O LastRead -1 FirstWrite 0}
		tile_C_V_9 {Type O LastRead -1 FirstWrite 0}
		tile_C_V_10 {Type O LastRead -1 FirstWrite 0}
		tile_C_V_11 {Type O LastRead -1 FirstWrite 0}
		tile_C_V_12 {Type O LastRead -1 FirstWrite 0}
		tile_C_V_13 {Type O LastRead -1 FirstWrite 0}
		tile_C_V_14 {Type O LastRead -1 FirstWrite 0}
		tile_C_V_15 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "66", "Max" : "66"}
	, {"Name" : "Interval", "Min" : "66", "Max" : "66"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	tile_C_V { ap_memory {  { tile_C_V_address1 MemPortADDR2 1 6 }  { tile_C_V_ce1 MemPortCE2 1 1 }  { tile_C_V_we1 MemPortWE2 1 1 }  { tile_C_V_d1 MemPortDIN2 1 32 } } }
	tile_C_V_1 { ap_memory {  { tile_C_V_1_address1 MemPortADDR2 1 6 }  { tile_C_V_1_ce1 MemPortCE2 1 1 }  { tile_C_V_1_we1 MemPortWE2 1 1 }  { tile_C_V_1_d1 MemPortDIN2 1 32 } } }
	tile_C_V_2 { ap_memory {  { tile_C_V_2_address1 MemPortADDR2 1 6 }  { tile_C_V_2_ce1 MemPortCE2 1 1 }  { tile_C_V_2_we1 MemPortWE2 1 1 }  { tile_C_V_2_d1 MemPortDIN2 1 32 } } }
	tile_C_V_3 { ap_memory {  { tile_C_V_3_address1 MemPortADDR2 1 6 }  { tile_C_V_3_ce1 MemPortCE2 1 1 }  { tile_C_V_3_we1 MemPortWE2 1 1 }  { tile_C_V_3_d1 MemPortDIN2 1 32 } } }
	tile_C_V_4 { ap_memory {  { tile_C_V_4_address1 MemPortADDR2 1 6 }  { tile_C_V_4_ce1 MemPortCE2 1 1 }  { tile_C_V_4_we1 MemPortWE2 1 1 }  { tile_C_V_4_d1 MemPortDIN2 1 32 } } }
	tile_C_V_5 { ap_memory {  { tile_C_V_5_address1 MemPortADDR2 1 6 }  { tile_C_V_5_ce1 MemPortCE2 1 1 }  { tile_C_V_5_we1 MemPortWE2 1 1 }  { tile_C_V_5_d1 MemPortDIN2 1 32 } } }
	tile_C_V_6 { ap_memory {  { tile_C_V_6_address1 MemPortADDR2 1 6 }  { tile_C_V_6_ce1 MemPortCE2 1 1 }  { tile_C_V_6_we1 MemPortWE2 1 1 }  { tile_C_V_6_d1 MemPortDIN2 1 32 } } }
	tile_C_V_7 { ap_memory {  { tile_C_V_7_address1 MemPortADDR2 1 6 }  { tile_C_V_7_ce1 MemPortCE2 1 1 }  { tile_C_V_7_we1 MemPortWE2 1 1 }  { tile_C_V_7_d1 MemPortDIN2 1 32 } } }
	tile_C_V_8 { ap_memory {  { tile_C_V_8_address1 MemPortADDR2 1 6 }  { tile_C_V_8_ce1 MemPortCE2 1 1 }  { tile_C_V_8_we1 MemPortWE2 1 1 }  { tile_C_V_8_d1 MemPortDIN2 1 32 } } }
	tile_C_V_9 { ap_memory {  { tile_C_V_9_address1 MemPortADDR2 1 6 }  { tile_C_V_9_ce1 MemPortCE2 1 1 }  { tile_C_V_9_we1 MemPortWE2 1 1 }  { tile_C_V_9_d1 MemPortDIN2 1 32 } } }
	tile_C_V_10 { ap_memory {  { tile_C_V_10_address1 MemPortADDR2 1 6 }  { tile_C_V_10_ce1 MemPortCE2 1 1 }  { tile_C_V_10_we1 MemPortWE2 1 1 }  { tile_C_V_10_d1 MemPortDIN2 1 32 } } }
	tile_C_V_11 { ap_memory {  { tile_C_V_11_address1 MemPortADDR2 1 6 }  { tile_C_V_11_ce1 MemPortCE2 1 1 }  { tile_C_V_11_we1 MemPortWE2 1 1 }  { tile_C_V_11_d1 MemPortDIN2 1 32 } } }
	tile_C_V_12 { ap_memory {  { tile_C_V_12_address1 MemPortADDR2 1 6 }  { tile_C_V_12_ce1 MemPortCE2 1 1 }  { tile_C_V_12_we1 MemPortWE2 1 1 }  { tile_C_V_12_d1 MemPortDIN2 1 32 } } }
	tile_C_V_13 { ap_memory {  { tile_C_V_13_address1 MemPortADDR2 1 6 }  { tile_C_V_13_ce1 MemPortCE2 1 1 }  { tile_C_V_13_we1 MemPortWE2 1 1 }  { tile_C_V_13_d1 MemPortDIN2 1 32 } } }
	tile_C_V_14 { ap_memory {  { tile_C_V_14_address1 MemPortADDR2 1 6 }  { tile_C_V_14_ce1 MemPortCE2 1 1 }  { tile_C_V_14_we1 MemPortWE2 1 1 }  { tile_C_V_14_d1 MemPortDIN2 1 32 } } }
	tile_C_V_15 { ap_memory {  { tile_C_V_15_address1 MemPortADDR2 1 6 }  { tile_C_V_15_ce1 MemPortCE2 1 1 }  { tile_C_V_15_we1 MemPortWE2 1 1 }  { tile_C_V_15_d1 MemPortDIN2 1 32 } } }
}
