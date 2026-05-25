set moduleName write_big_tile_Pipeline_Write_Rows_Write_Cols
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
set C_modelName {write_big_tile_Pipeline_Write_Rows_Write_Cols}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 256 regular {axi_master 1}  }
	{ sext_ln111_1 int 59 regular  }
	{ local_buffer_0 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ local_buffer_1 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ local_buffer_2 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ local_buffer_3 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ local_buffer_4 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ local_buffer_5 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ local_buffer_6 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ local_buffer_7 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ local_buffer_8 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ local_buffer_9 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ local_buffer_10 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ local_buffer_11 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ local_buffer_12 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ local_buffer_13 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ local_buffer_14 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ local_buffer_15 int 32 regular {array 64 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "mat_A","offset": { "type": "dynamic","port_name": "mat_A","bundle": "control"},"direction": "READONLY"},{"cName": "mat_C","offset": { "type": "dynamic","port_name": "mat_C","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "sext_ln111_1", "interface" : "wire", "bitwidth" : 59, "direction" : "READONLY"} , 
 	{ "Name" : "local_buffer_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_buffer_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_buffer_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_buffer_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_buffer_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_buffer_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_buffer_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_buffer_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_buffer_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_buffer_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_buffer_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_buffer_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_buffer_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_buffer_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_buffer_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_buffer_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 101
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
	{ sext_ln111_1 sc_in sc_lv 59 signal 1 } 
	{ local_buffer_0_address0 sc_out sc_lv 6 signal 2 } 
	{ local_buffer_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_buffer_0_q0 sc_in sc_lv 32 signal 2 } 
	{ local_buffer_1_address0 sc_out sc_lv 6 signal 3 } 
	{ local_buffer_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ local_buffer_1_q0 sc_in sc_lv 32 signal 3 } 
	{ local_buffer_2_address0 sc_out sc_lv 6 signal 4 } 
	{ local_buffer_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_buffer_2_q0 sc_in sc_lv 32 signal 4 } 
	{ local_buffer_3_address0 sc_out sc_lv 6 signal 5 } 
	{ local_buffer_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ local_buffer_3_q0 sc_in sc_lv 32 signal 5 } 
	{ local_buffer_4_address0 sc_out sc_lv 6 signal 6 } 
	{ local_buffer_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ local_buffer_4_q0 sc_in sc_lv 32 signal 6 } 
	{ local_buffer_5_address0 sc_out sc_lv 6 signal 7 } 
	{ local_buffer_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ local_buffer_5_q0 sc_in sc_lv 32 signal 7 } 
	{ local_buffer_6_address0 sc_out sc_lv 6 signal 8 } 
	{ local_buffer_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ local_buffer_6_q0 sc_in sc_lv 32 signal 8 } 
	{ local_buffer_7_address0 sc_out sc_lv 6 signal 9 } 
	{ local_buffer_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ local_buffer_7_q0 sc_in sc_lv 32 signal 9 } 
	{ local_buffer_8_address0 sc_out sc_lv 6 signal 10 } 
	{ local_buffer_8_ce0 sc_out sc_logic 1 signal 10 } 
	{ local_buffer_8_q0 sc_in sc_lv 32 signal 10 } 
	{ local_buffer_9_address0 sc_out sc_lv 6 signal 11 } 
	{ local_buffer_9_ce0 sc_out sc_logic 1 signal 11 } 
	{ local_buffer_9_q0 sc_in sc_lv 32 signal 11 } 
	{ local_buffer_10_address0 sc_out sc_lv 6 signal 12 } 
	{ local_buffer_10_ce0 sc_out sc_logic 1 signal 12 } 
	{ local_buffer_10_q0 sc_in sc_lv 32 signal 12 } 
	{ local_buffer_11_address0 sc_out sc_lv 6 signal 13 } 
	{ local_buffer_11_ce0 sc_out sc_logic 1 signal 13 } 
	{ local_buffer_11_q0 sc_in sc_lv 32 signal 13 } 
	{ local_buffer_12_address0 sc_out sc_lv 6 signal 14 } 
	{ local_buffer_12_ce0 sc_out sc_logic 1 signal 14 } 
	{ local_buffer_12_q0 sc_in sc_lv 32 signal 14 } 
	{ local_buffer_13_address0 sc_out sc_lv 6 signal 15 } 
	{ local_buffer_13_ce0 sc_out sc_logic 1 signal 15 } 
	{ local_buffer_13_q0 sc_in sc_lv 32 signal 15 } 
	{ local_buffer_14_address0 sc_out sc_lv 6 signal 16 } 
	{ local_buffer_14_ce0 sc_out sc_logic 1 signal 16 } 
	{ local_buffer_14_q0 sc_in sc_lv 32 signal 16 } 
	{ local_buffer_15_address0 sc_out sc_lv 6 signal 17 } 
	{ local_buffer_15_ce0 sc_out sc_logic 1 signal 17 } 
	{ local_buffer_15_q0 sc_in sc_lv 32 signal 17 } 
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
 	{ "name": "sext_ln111_1", "direction": "in", "datatype": "sc_lv", "bitwidth":59, "type": "signal", "bundle":{"name": "sext_ln111_1", "role": "default" }} , 
 	{ "name": "local_buffer_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_buffer_0", "role": "address0" }} , 
 	{ "name": "local_buffer_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_0", "role": "ce0" }} , 
 	{ "name": "local_buffer_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_buffer_0", "role": "q0" }} , 
 	{ "name": "local_buffer_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_buffer_1", "role": "address0" }} , 
 	{ "name": "local_buffer_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_1", "role": "ce0" }} , 
 	{ "name": "local_buffer_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_buffer_1", "role": "q0" }} , 
 	{ "name": "local_buffer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_buffer_2", "role": "address0" }} , 
 	{ "name": "local_buffer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_2", "role": "ce0" }} , 
 	{ "name": "local_buffer_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_buffer_2", "role": "q0" }} , 
 	{ "name": "local_buffer_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_buffer_3", "role": "address0" }} , 
 	{ "name": "local_buffer_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_3", "role": "ce0" }} , 
 	{ "name": "local_buffer_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_buffer_3", "role": "q0" }} , 
 	{ "name": "local_buffer_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_buffer_4", "role": "address0" }} , 
 	{ "name": "local_buffer_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_4", "role": "ce0" }} , 
 	{ "name": "local_buffer_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_buffer_4", "role": "q0" }} , 
 	{ "name": "local_buffer_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_buffer_5", "role": "address0" }} , 
 	{ "name": "local_buffer_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_5", "role": "ce0" }} , 
 	{ "name": "local_buffer_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_buffer_5", "role": "q0" }} , 
 	{ "name": "local_buffer_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_buffer_6", "role": "address0" }} , 
 	{ "name": "local_buffer_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_6", "role": "ce0" }} , 
 	{ "name": "local_buffer_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_buffer_6", "role": "q0" }} , 
 	{ "name": "local_buffer_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_buffer_7", "role": "address0" }} , 
 	{ "name": "local_buffer_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_7", "role": "ce0" }} , 
 	{ "name": "local_buffer_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_buffer_7", "role": "q0" }} , 
 	{ "name": "local_buffer_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_buffer_8", "role": "address0" }} , 
 	{ "name": "local_buffer_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_8", "role": "ce0" }} , 
 	{ "name": "local_buffer_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_buffer_8", "role": "q0" }} , 
 	{ "name": "local_buffer_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_buffer_9", "role": "address0" }} , 
 	{ "name": "local_buffer_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_9", "role": "ce0" }} , 
 	{ "name": "local_buffer_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_buffer_9", "role": "q0" }} , 
 	{ "name": "local_buffer_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_buffer_10", "role": "address0" }} , 
 	{ "name": "local_buffer_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_10", "role": "ce0" }} , 
 	{ "name": "local_buffer_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_buffer_10", "role": "q0" }} , 
 	{ "name": "local_buffer_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_buffer_11", "role": "address0" }} , 
 	{ "name": "local_buffer_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_11", "role": "ce0" }} , 
 	{ "name": "local_buffer_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_buffer_11", "role": "q0" }} , 
 	{ "name": "local_buffer_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_buffer_12", "role": "address0" }} , 
 	{ "name": "local_buffer_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_12", "role": "ce0" }} , 
 	{ "name": "local_buffer_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_buffer_12", "role": "q0" }} , 
 	{ "name": "local_buffer_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_buffer_13", "role": "address0" }} , 
 	{ "name": "local_buffer_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_13", "role": "ce0" }} , 
 	{ "name": "local_buffer_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_buffer_13", "role": "q0" }} , 
 	{ "name": "local_buffer_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_buffer_14", "role": "address0" }} , 
 	{ "name": "local_buffer_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_14", "role": "ce0" }} , 
 	{ "name": "local_buffer_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_buffer_14", "role": "q0" }} , 
 	{ "name": "local_buffer_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_buffer_15", "role": "address0" }} , 
 	{ "name": "local_buffer_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_buffer_15", "role": "ce0" }} , 
 	{ "name": "local_buffer_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_buffer_15", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "write_big_tile_Pipeline_Write_Rows_Write_Cols",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "131", "EstimateLatencyMax" : "131",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln111_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_buffer_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_buffer_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_buffer_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_buffer_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_buffer_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_buffer_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_buffer_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_buffer_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_buffer_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_buffer_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_buffer_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_buffer_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_buffer_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_buffer_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_buffer_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_buffer_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Write_Rows_Write_Cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	write_big_tile_Pipeline_Write_Rows_Write_Cols {
		gmem0 {Type O LastRead -1 FirstWrite 2}
		sext_ln111_1 {Type I LastRead 0 FirstWrite -1}
		local_buffer_0 {Type I LastRead 0 FirstWrite -1}
		local_buffer_1 {Type I LastRead 0 FirstWrite -1}
		local_buffer_2 {Type I LastRead 0 FirstWrite -1}
		local_buffer_3 {Type I LastRead 0 FirstWrite -1}
		local_buffer_4 {Type I LastRead 0 FirstWrite -1}
		local_buffer_5 {Type I LastRead 0 FirstWrite -1}
		local_buffer_6 {Type I LastRead 0 FirstWrite -1}
		local_buffer_7 {Type I LastRead 0 FirstWrite -1}
		local_buffer_8 {Type I LastRead 0 FirstWrite -1}
		local_buffer_9 {Type I LastRead 0 FirstWrite -1}
		local_buffer_10 {Type I LastRead 0 FirstWrite -1}
		local_buffer_11 {Type I LastRead 0 FirstWrite -1}
		local_buffer_12 {Type I LastRead 0 FirstWrite -1}
		local_buffer_13 {Type I LastRead 0 FirstWrite -1}
		local_buffer_14 {Type I LastRead 0 FirstWrite -1}
		local_buffer_15 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "131", "Max" : "131"}
	, {"Name" : "Interval", "Min" : "131", "Max" : "131"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 256 }  { m_axi_gmem0_WSTRB STRB 1 32 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 256 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 9 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	sext_ln111_1 { ap_none {  { sext_ln111_1 in_data 0 59 } } }
	local_buffer_0 { ap_memory {  { local_buffer_0_address0 mem_address 1 6 }  { local_buffer_0_ce0 mem_ce 1 1 }  { local_buffer_0_q0 in_data 0 32 } } }
	local_buffer_1 { ap_memory {  { local_buffer_1_address0 mem_address 1 6 }  { local_buffer_1_ce0 mem_ce 1 1 }  { local_buffer_1_q0 in_data 0 32 } } }
	local_buffer_2 { ap_memory {  { local_buffer_2_address0 mem_address 1 6 }  { local_buffer_2_ce0 mem_ce 1 1 }  { local_buffer_2_q0 in_data 0 32 } } }
	local_buffer_3 { ap_memory {  { local_buffer_3_address0 mem_address 1 6 }  { local_buffer_3_ce0 mem_ce 1 1 }  { local_buffer_3_q0 in_data 0 32 } } }
	local_buffer_4 { ap_memory {  { local_buffer_4_address0 mem_address 1 6 }  { local_buffer_4_ce0 mem_ce 1 1 }  { local_buffer_4_q0 in_data 0 32 } } }
	local_buffer_5 { ap_memory {  { local_buffer_5_address0 mem_address 1 6 }  { local_buffer_5_ce0 mem_ce 1 1 }  { local_buffer_5_q0 in_data 0 32 } } }
	local_buffer_6 { ap_memory {  { local_buffer_6_address0 mem_address 1 6 }  { local_buffer_6_ce0 mem_ce 1 1 }  { local_buffer_6_q0 in_data 0 32 } } }
	local_buffer_7 { ap_memory {  { local_buffer_7_address0 mem_address 1 6 }  { local_buffer_7_ce0 mem_ce 1 1 }  { local_buffer_7_q0 in_data 0 32 } } }
	local_buffer_8 { ap_memory {  { local_buffer_8_address0 mem_address 1 6 }  { local_buffer_8_ce0 mem_ce 1 1 }  { local_buffer_8_q0 in_data 0 32 } } }
	local_buffer_9 { ap_memory {  { local_buffer_9_address0 mem_address 1 6 }  { local_buffer_9_ce0 mem_ce 1 1 }  { local_buffer_9_q0 in_data 0 32 } } }
	local_buffer_10 { ap_memory {  { local_buffer_10_address0 mem_address 1 6 }  { local_buffer_10_ce0 mem_ce 1 1 }  { local_buffer_10_q0 in_data 0 32 } } }
	local_buffer_11 { ap_memory {  { local_buffer_11_address0 mem_address 1 6 }  { local_buffer_11_ce0 mem_ce 1 1 }  { local_buffer_11_q0 in_data 0 32 } } }
	local_buffer_12 { ap_memory {  { local_buffer_12_address0 mem_address 1 6 }  { local_buffer_12_ce0 mem_ce 1 1 }  { local_buffer_12_q0 in_data 0 32 } } }
	local_buffer_13 { ap_memory {  { local_buffer_13_address0 mem_address 1 6 }  { local_buffer_13_ce0 mem_ce 1 1 }  { local_buffer_13_q0 in_data 0 32 } } }
	local_buffer_14 { ap_memory {  { local_buffer_14_address0 mem_address 1 6 }  { local_buffer_14_ce0 mem_ce 1 1 }  { local_buffer_14_q0 in_data 0 32 } } }
	local_buffer_15 { ap_memory {  { local_buffer_15_address0 mem_address 1 6 }  { local_buffer_15_ce0 mem_ce 1 1 }  { local_buffer_15_q0 in_data 0 32 } } }
}
