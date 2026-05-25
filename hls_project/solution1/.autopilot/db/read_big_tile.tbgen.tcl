set moduleName read_big_tile
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {read_big_tile}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 256 regular {axi_master 0}  }
	{ dram_matrix int 64 regular  }
	{ local_buffer_0 int 256 regular {array 2 { 3 0 } 0 1 }  }
	{ local_buffer_1 int 256 regular {array 2 { 3 0 } 0 1 }  }
	{ local_buffer_2 int 256 regular {array 2 { 3 0 } 0 1 }  }
	{ local_buffer_3 int 256 regular {array 2 { 3 0 } 0 1 }  }
	{ local_buffer_4 int 256 regular {array 2 { 3 0 } 0 1 }  }
	{ local_buffer_5 int 256 regular {array 2 { 3 0 } 0 1 }  }
	{ local_buffer_6 int 256 regular {array 2 { 3 0 } 0 1 }  }
	{ local_buffer_7 int 256 regular {array 2 { 3 0 } 0 1 }  }
	{ local_buffer_8 int 256 regular {array 2 { 3 0 } 0 1 }  }
	{ local_buffer_9 int 256 regular {array 2 { 3 0 } 0 1 }  }
	{ local_buffer_10 int 256 regular {array 2 { 3 0 } 0 1 }  }
	{ local_buffer_11 int 256 regular {array 2 { 3 0 } 0 1 }  }
	{ local_buffer_12 int 256 regular {array 2 { 3 0 } 0 1 }  }
	{ local_buffer_13 int 256 regular {array 2 { 3 0 } 0 1 }  }
	{ local_buffer_14 int 256 regular {array 2 { 3 0 } 0 1 }  }
	{ local_buffer_15 int 256 regular {array 2 { 3 0 } 0 1 }  }
	{ tile_index int 27 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "mat_A","offset": { "type": "dynamic","port_name": "mat_A","bundle": "control"},"direction": "READONLY"},{"cName": "mat_C","offset": { "type": "dynamic","port_name": "mat_C","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "dram_matrix", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "local_buffer_0", "interface" : "memory", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_buffer_1", "interface" : "memory", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_buffer_2", "interface" : "memory", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_buffer_3", "interface" : "memory", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_buffer_4", "interface" : "memory", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_buffer_5", "interface" : "memory", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_buffer_6", "interface" : "memory", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_buffer_7", "interface" : "memory", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_buffer_8", "interface" : "memory", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_buffer_9", "interface" : "memory", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_buffer_10", "interface" : "memory", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_buffer_11", "interface" : "memory", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_buffer_12", "interface" : "memory", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_buffer_13", "interface" : "memory", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_buffer_14", "interface" : "memory", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_buffer_15", "interface" : "memory", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tile_index", "interface" : "wire", "bitwidth" : 27, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 118
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ dram_matrix sc_in sc_lv 64 signal 1 } 
	{ local_buffer_0_address1 sc_out sc_lv 1 signal 2 } 
	{ local_buffer_0_ce1 sc_out sc_logic 1 signal 2 } 
	{ local_buffer_0_we1 sc_out sc_logic 1 signal 2 } 
	{ local_buffer_0_d1 sc_out sc_lv 256 signal 2 } 
	{ local_buffer_1_address1 sc_out sc_lv 1 signal 3 } 
	{ local_buffer_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ local_buffer_1_we1 sc_out sc_logic 1 signal 3 } 
	{ local_buffer_1_d1 sc_out sc_lv 256 signal 3 } 
	{ local_buffer_2_address1 sc_out sc_lv 1 signal 4 } 
	{ local_buffer_2_ce1 sc_out sc_logic 1 signal 4 } 
	{ local_buffer_2_we1 sc_out sc_logic 1 signal 4 } 
	{ local_buffer_2_d1 sc_out sc_lv 256 signal 4 } 
	{ local_buffer_3_address1 sc_out sc_lv 1 signal 5 } 
	{ local_buffer_3_ce1 sc_out sc_logic 1 signal 5 } 
	{ local_buffer_3_we1 sc_out sc_logic 1 signal 5 } 
	{ local_buffer_3_d1 sc_out sc_lv 256 signal 5 } 
	{ local_buffer_4_address1 sc_out sc_lv 1 signal 6 } 
	{ local_buffer_4_ce1 sc_out sc_logic 1 signal 6 } 
	{ local_buffer_4_we1 sc_out sc_logic 1 signal 6 } 
	{ local_buffer_4_d1 sc_out sc_lv 256 signal 6 } 
	{ local_buffer_5_address1 sc_out sc_lv 1 signal 7 } 
	{ local_buffer_5_ce1 sc_out sc_logic 1 signal 7 } 
	{ local_buffer_5_we1 sc_out sc_logic 1 signal 7 } 
	{ local_buffer_5_d1 sc_out sc_lv 256 signal 7 } 
	{ local_buffer_6_address1 sc_out sc_lv 1 signal 8 } 
	{ local_buffer_6_ce1 sc_out sc_logic 1 signal 8 } 
	{ local_buffer_6_we1 sc_out sc_logic 1 signal 8 } 
	{ local_buffer_6_d1 sc_out sc_lv 256 signal 8 } 
	{ local_buffer_7_address1 sc_out sc_lv 1 signal 9 } 
	{ local_buffer_7_ce1 sc_out sc_logic 1 signal 9 } 
	{ local_buffer_7_we1 sc_out sc_logic 1 signal 9 } 
	{ local_buffer_7_d1 sc_out sc_lv 256 signal 9 } 
	{ local_buffer_8_address1 sc_out sc_lv 1 signal 10 } 
	{ local_buffer_8_ce1 sc_out sc_logic 1 signal 10 } 
	{ local_buffer_8_we1 sc_out sc_logic 1 signal 10 } 
	{ local_buffer_8_d1 sc_out sc_lv 256 signal 10 } 
	{ local_buffer_9_address1 sc_out sc_lv 1 signal 11 } 
	{ local_buffer_9_ce1 sc_out sc_logic 1 signal 11 } 
	{ local_buffer_9_we1 sc_out sc_logic 1 signal 11 } 
	{ local_buffer_9_d1 sc_out sc_lv 256 signal 11 } 
	{ local_buffer_10_address1 sc_out sc_lv 1 signal 12 } 
	{ local_buffer_10_ce1 sc_out sc_logic 1 signal 12 } 
	{ local_buffer_10_we1 sc_out sc_logic 1 signal 12 } 
	{ local_buffer_10_d1 sc_out sc_lv 256 signal 12 } 
	{ local_buffer_11_address1 sc_out sc_lv 1 signal 13 } 
	{ local_buffer_11_ce1 sc_out sc_logic 1 signal 13 } 
	{ local_buffer_11_we1 sc_out sc_logic 1 signal 13 } 
	{ local_buffer_11_d1 sc_out sc_lv 256 signal 13 } 
	{ local_buffer_12_address1 sc_out sc_lv 1 signal 14 } 
	{ local_buffer_12_ce1 sc_out sc_logic 1 signal 14 } 
	{ local_buffer_12_we1 sc_out sc_logic 1 signal 14 } 
	{ local_buffer_12_d1 sc_out sc_lv 256 signal 14 } 
	{ local_buffer_13_address1 sc_out sc_lv 1 signal 15 } 
	{ local_buffer_13_ce1 sc_out sc_logic 1 signal 15 } 
	{ local_buffer_13_we1 sc_out sc_logic 1 signal 15 } 
	{ local_buffer_13_d1 sc_out sc_lv 256 signal 15 } 
	{ local_buffer_14_address1 sc_out sc_lv 1 signal 16 } 
	{ local_buffer_14_ce1 sc_out sc_logic 1 signal 16 } 
	{ local_buffer_14_we1 sc_out sc_logic 1 signal 16 } 
	{ local_buffer_14_d1 sc_out sc_lv 256 signal 16 } 
	{ local_buffer_15_address1 sc_out sc_lv 1 signal 17 } 
	{ local_buffer_15_ce1 sc_out sc_logic 1 signal 17 } 
	{ local_buffer_15_we1 sc_out sc_logic 1 signal 17 } 
	{ local_buffer_15_d1 sc_out sc_lv 256 signal 17 } 
	{ tile_index sc_in sc_lv 27 signal 18 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "dram_matrix", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dram_matrix", "role": "default" }} , 
 	{ "name": "local_buffer_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_0", "role": "address1" }} , 
 	{ "name": "local_buffer_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_0", "role": "ce1" }} , 
 	{ "name": "local_buffer_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_0", "role": "we1" }} , 
 	{ "name": "local_buffer_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "local_buffer_0", "role": "d1" }} , 
 	{ "name": "local_buffer_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_1", "role": "address1" }} , 
 	{ "name": "local_buffer_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_1", "role": "ce1" }} , 
 	{ "name": "local_buffer_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_1", "role": "we1" }} , 
 	{ "name": "local_buffer_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "local_buffer_1", "role": "d1" }} , 
 	{ "name": "local_buffer_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_2", "role": "address1" }} , 
 	{ "name": "local_buffer_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_2", "role": "ce1" }} , 
 	{ "name": "local_buffer_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_2", "role": "we1" }} , 
 	{ "name": "local_buffer_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "local_buffer_2", "role": "d1" }} , 
 	{ "name": "local_buffer_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_3", "role": "address1" }} , 
 	{ "name": "local_buffer_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_3", "role": "ce1" }} , 
 	{ "name": "local_buffer_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_3", "role": "we1" }} , 
 	{ "name": "local_buffer_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "local_buffer_3", "role": "d1" }} , 
 	{ "name": "local_buffer_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_4", "role": "address1" }} , 
 	{ "name": "local_buffer_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_4", "role": "ce1" }} , 
 	{ "name": "local_buffer_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_4", "role": "we1" }} , 
 	{ "name": "local_buffer_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "local_buffer_4", "role": "d1" }} , 
 	{ "name": "local_buffer_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_5", "role": "address1" }} , 
 	{ "name": "local_buffer_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_5", "role": "ce1" }} , 
 	{ "name": "local_buffer_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_5", "role": "we1" }} , 
 	{ "name": "local_buffer_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "local_buffer_5", "role": "d1" }} , 
 	{ "name": "local_buffer_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_6", "role": "address1" }} , 
 	{ "name": "local_buffer_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_6", "role": "ce1" }} , 
 	{ "name": "local_buffer_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_6", "role": "we1" }} , 
 	{ "name": "local_buffer_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "local_buffer_6", "role": "d1" }} , 
 	{ "name": "local_buffer_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_7", "role": "address1" }} , 
 	{ "name": "local_buffer_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_7", "role": "ce1" }} , 
 	{ "name": "local_buffer_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_7", "role": "we1" }} , 
 	{ "name": "local_buffer_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "local_buffer_7", "role": "d1" }} , 
 	{ "name": "local_buffer_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_8", "role": "address1" }} , 
 	{ "name": "local_buffer_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_8", "role": "ce1" }} , 
 	{ "name": "local_buffer_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_8", "role": "we1" }} , 
 	{ "name": "local_buffer_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "local_buffer_8", "role": "d1" }} , 
 	{ "name": "local_buffer_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_9", "role": "address1" }} , 
 	{ "name": "local_buffer_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_9", "role": "ce1" }} , 
 	{ "name": "local_buffer_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_9", "role": "we1" }} , 
 	{ "name": "local_buffer_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "local_buffer_9", "role": "d1" }} , 
 	{ "name": "local_buffer_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_10", "role": "address1" }} , 
 	{ "name": "local_buffer_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_10", "role": "ce1" }} , 
 	{ "name": "local_buffer_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_10", "role": "we1" }} , 
 	{ "name": "local_buffer_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "local_buffer_10", "role": "d1" }} , 
 	{ "name": "local_buffer_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_11", "role": "address1" }} , 
 	{ "name": "local_buffer_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_11", "role": "ce1" }} , 
 	{ "name": "local_buffer_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_11", "role": "we1" }} , 
 	{ "name": "local_buffer_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "local_buffer_11", "role": "d1" }} , 
 	{ "name": "local_buffer_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_12", "role": "address1" }} , 
 	{ "name": "local_buffer_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_12", "role": "ce1" }} , 
 	{ "name": "local_buffer_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_12", "role": "we1" }} , 
 	{ "name": "local_buffer_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "local_buffer_12", "role": "d1" }} , 
 	{ "name": "local_buffer_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_13", "role": "address1" }} , 
 	{ "name": "local_buffer_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_13", "role": "ce1" }} , 
 	{ "name": "local_buffer_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_13", "role": "we1" }} , 
 	{ "name": "local_buffer_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "local_buffer_13", "role": "d1" }} , 
 	{ "name": "local_buffer_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_14", "role": "address1" }} , 
 	{ "name": "local_buffer_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_14", "role": "ce1" }} , 
 	{ "name": "local_buffer_14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_14", "role": "we1" }} , 
 	{ "name": "local_buffer_14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "local_buffer_14", "role": "d1" }} , 
 	{ "name": "local_buffer_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_15", "role": "address1" }} , 
 	{ "name": "local_buffer_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_15", "role": "ce1" }} , 
 	{ "name": "local_buffer_15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_15", "role": "we1" }} , 
 	{ "name": "local_buffer_15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "local_buffer_15", "role": "d1" }} , 
 	{ "name": "tile_index", "direction": "in", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "tile_index", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "read_big_tile",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "44", "EstimateLatencyMax" : "44",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_read_big_tile_Pipeline_Read_Loop_fu_105", "Port" : "gmem0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dram_matrix", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_buffer_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_read_big_tile_Pipeline_Read_Loop_fu_105", "Port" : "local_buffer_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "local_buffer_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_read_big_tile_Pipeline_Read_Loop_fu_105", "Port" : "local_buffer_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "local_buffer_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_read_big_tile_Pipeline_Read_Loop_fu_105", "Port" : "local_buffer_2", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "local_buffer_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_read_big_tile_Pipeline_Read_Loop_fu_105", "Port" : "local_buffer_3", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "local_buffer_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_read_big_tile_Pipeline_Read_Loop_fu_105", "Port" : "local_buffer_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "local_buffer_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_read_big_tile_Pipeline_Read_Loop_fu_105", "Port" : "local_buffer_5", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "local_buffer_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_read_big_tile_Pipeline_Read_Loop_fu_105", "Port" : "local_buffer_6", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "local_buffer_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_read_big_tile_Pipeline_Read_Loop_fu_105", "Port" : "local_buffer_7", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "local_buffer_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_read_big_tile_Pipeline_Read_Loop_fu_105", "Port" : "local_buffer_8", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "local_buffer_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_read_big_tile_Pipeline_Read_Loop_fu_105", "Port" : "local_buffer_9", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "local_buffer_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_read_big_tile_Pipeline_Read_Loop_fu_105", "Port" : "local_buffer_10", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "local_buffer_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_read_big_tile_Pipeline_Read_Loop_fu_105", "Port" : "local_buffer_11", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "local_buffer_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_read_big_tile_Pipeline_Read_Loop_fu_105", "Port" : "local_buffer_12", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "local_buffer_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_read_big_tile_Pipeline_Read_Loop_fu_105", "Port" : "local_buffer_13", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "local_buffer_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_read_big_tile_Pipeline_Read_Loop_fu_105", "Port" : "local_buffer_14", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "local_buffer_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_read_big_tile_Pipeline_Read_Loop_fu_105", "Port" : "local_buffer_15", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "tile_index", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_read_big_tile_Pipeline_Read_Loop_fu_105", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "read_big_tile_Pipeline_Read_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln15_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_buffer_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_buffer_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_buffer_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_buffer_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_buffer_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_buffer_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_buffer_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_buffer_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_buffer_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_buffer_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_buffer_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_buffer_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_buffer_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_buffer_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_buffer_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_buffer_15", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Read_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_read_big_tile_Pipeline_Read_Loop_fu_105.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	read_big_tile {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		dram_matrix {Type I LastRead 0 FirstWrite -1}
		local_buffer_0 {Type O LastRead -1 FirstWrite 2}
		local_buffer_1 {Type O LastRead -1 FirstWrite 2}
		local_buffer_2 {Type O LastRead -1 FirstWrite 2}
		local_buffer_3 {Type O LastRead -1 FirstWrite 2}
		local_buffer_4 {Type O LastRead -1 FirstWrite 2}
		local_buffer_5 {Type O LastRead -1 FirstWrite 2}
		local_buffer_6 {Type O LastRead -1 FirstWrite 2}
		local_buffer_7 {Type O LastRead -1 FirstWrite 2}
		local_buffer_8 {Type O LastRead -1 FirstWrite 2}
		local_buffer_9 {Type O LastRead -1 FirstWrite 2}
		local_buffer_10 {Type O LastRead -1 FirstWrite 2}
		local_buffer_11 {Type O LastRead -1 FirstWrite 2}
		local_buffer_12 {Type O LastRead -1 FirstWrite 2}
		local_buffer_13 {Type O LastRead -1 FirstWrite 2}
		local_buffer_14 {Type O LastRead -1 FirstWrite 2}
		local_buffer_15 {Type O LastRead -1 FirstWrite 2}
		tile_index {Type I LastRead 0 FirstWrite -1}}
	read_big_tile_Pipeline_Read_Loop {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln15_2 {Type I LastRead 0 FirstWrite -1}
		local_buffer_0 {Type O LastRead -1 FirstWrite 2}
		local_buffer_1 {Type O LastRead -1 FirstWrite 2}
		local_buffer_2 {Type O LastRead -1 FirstWrite 2}
		local_buffer_3 {Type O LastRead -1 FirstWrite 2}
		local_buffer_4 {Type O LastRead -1 FirstWrite 2}
		local_buffer_5 {Type O LastRead -1 FirstWrite 2}
		local_buffer_6 {Type O LastRead -1 FirstWrite 2}
		local_buffer_7 {Type O LastRead -1 FirstWrite 2}
		local_buffer_8 {Type O LastRead -1 FirstWrite 2}
		local_buffer_9 {Type O LastRead -1 FirstWrite 2}
		local_buffer_10 {Type O LastRead -1 FirstWrite 2}
		local_buffer_11 {Type O LastRead -1 FirstWrite 2}
		local_buffer_12 {Type O LastRead -1 FirstWrite 2}
		local_buffer_13 {Type O LastRead -1 FirstWrite 2}
		local_buffer_14 {Type O LastRead -1 FirstWrite 2}
		local_buffer_15 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "44", "Max" : "44"}
	, {"Name" : "Interval", "Min" : "44", "Max" : "44"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 256 }  { m_axi_gmem0_WSTRB STRB 1 32 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 256 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 9 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	dram_matrix { ap_none {  { dram_matrix in_data 0 64 } } }
	local_buffer_0 { ap_memory {  { local_buffer_0_address1 MemPortADDR2 1 1 }  { local_buffer_0_ce1 MemPortCE2 1 1 }  { local_buffer_0_we1 MemPortWE2 1 1 }  { local_buffer_0_d1 MemPortDIN2 1 256 } } }
	local_buffer_1 { ap_memory {  { local_buffer_1_address1 MemPortADDR2 1 1 }  { local_buffer_1_ce1 MemPortCE2 1 1 }  { local_buffer_1_we1 MemPortWE2 1 1 }  { local_buffer_1_d1 MemPortDIN2 1 256 } } }
	local_buffer_2 { ap_memory {  { local_buffer_2_address1 MemPortADDR2 1 1 }  { local_buffer_2_ce1 MemPortCE2 1 1 }  { local_buffer_2_we1 MemPortWE2 1 1 }  { local_buffer_2_d1 MemPortDIN2 1 256 } } }
	local_buffer_3 { ap_memory {  { local_buffer_3_address1 MemPortADDR2 1 1 }  { local_buffer_3_ce1 MemPortCE2 1 1 }  { local_buffer_3_we1 MemPortWE2 1 1 }  { local_buffer_3_d1 MemPortDIN2 1 256 } } }
	local_buffer_4 { ap_memory {  { local_buffer_4_address1 MemPortADDR2 1 1 }  { local_buffer_4_ce1 MemPortCE2 1 1 }  { local_buffer_4_we1 MemPortWE2 1 1 }  { local_buffer_4_d1 MemPortDIN2 1 256 } } }
	local_buffer_5 { ap_memory {  { local_buffer_5_address1 MemPortADDR2 1 1 }  { local_buffer_5_ce1 MemPortCE2 1 1 }  { local_buffer_5_we1 MemPortWE2 1 1 }  { local_buffer_5_d1 MemPortDIN2 1 256 } } }
	local_buffer_6 { ap_memory {  { local_buffer_6_address1 MemPortADDR2 1 1 }  { local_buffer_6_ce1 MemPortCE2 1 1 }  { local_buffer_6_we1 MemPortWE2 1 1 }  { local_buffer_6_d1 MemPortDIN2 1 256 } } }
	local_buffer_7 { ap_memory {  { local_buffer_7_address1 MemPortADDR2 1 1 }  { local_buffer_7_ce1 MemPortCE2 1 1 }  { local_buffer_7_we1 MemPortWE2 1 1 }  { local_buffer_7_d1 MemPortDIN2 1 256 } } }
	local_buffer_8 { ap_memory {  { local_buffer_8_address1 MemPortADDR2 1 1 }  { local_buffer_8_ce1 MemPortCE2 1 1 }  { local_buffer_8_we1 MemPortWE2 1 1 }  { local_buffer_8_d1 MemPortDIN2 1 256 } } }
	local_buffer_9 { ap_memory {  { local_buffer_9_address1 MemPortADDR2 1 1 }  { local_buffer_9_ce1 MemPortCE2 1 1 }  { local_buffer_9_we1 MemPortWE2 1 1 }  { local_buffer_9_d1 MemPortDIN2 1 256 } } }
	local_buffer_10 { ap_memory {  { local_buffer_10_address1 MemPortADDR2 1 1 }  { local_buffer_10_ce1 MemPortCE2 1 1 }  { local_buffer_10_we1 MemPortWE2 1 1 }  { local_buffer_10_d1 MemPortDIN2 1 256 } } }
	local_buffer_11 { ap_memory {  { local_buffer_11_address1 MemPortADDR2 1 1 }  { local_buffer_11_ce1 MemPortCE2 1 1 }  { local_buffer_11_we1 MemPortWE2 1 1 }  { local_buffer_11_d1 MemPortDIN2 1 256 } } }
	local_buffer_12 { ap_memory {  { local_buffer_12_address1 MemPortADDR2 1 1 }  { local_buffer_12_ce1 MemPortCE2 1 1 }  { local_buffer_12_we1 MemPortWE2 1 1 }  { local_buffer_12_d1 MemPortDIN2 1 256 } } }
	local_buffer_13 { ap_memory {  { local_buffer_13_address1 MemPortADDR2 1 1 }  { local_buffer_13_ce1 MemPortCE2 1 1 }  { local_buffer_13_we1 MemPortWE2 1 1 }  { local_buffer_13_d1 MemPortDIN2 1 256 } } }
	local_buffer_14 { ap_memory {  { local_buffer_14_address1 MemPortADDR2 1 1 }  { local_buffer_14_ce1 MemPortCE2 1 1 }  { local_buffer_14_we1 MemPortWE2 1 1 }  { local_buffer_14_d1 MemPortDIN2 1 256 } } }
	local_buffer_15 { ap_memory {  { local_buffer_15_address1 MemPortADDR2 1 1 }  { local_buffer_15_ce1 MemPortCE2 1 1 }  { local_buffer_15_we1 MemPortWE2 1 1 }  { local_buffer_15_d1 MemPortDIN2 1 256 } } }
	tile_index { ap_none {  { tile_index in_data 0 27 } } }
}
