
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set mat_A__mat_C_group [add_wave_group mat_A__mat_C(axi_master) -into $cinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $mat_A__mat_C_group]
set wdata_group [add_wave_group "Write Channel" -into $mat_A__mat_C_group]
set ctrl_group [add_wave_group "Handshakes" -into $mat_A__mat_C_group]
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_BUSER -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_BID -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_BRESP -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_RRESP -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_RUSER -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_RID -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_RDATA -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_ARUSER -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_ARREGION -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_ARQOS -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_ARPROT -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_ARBURST -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_ARLEN -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_ARID -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_ARADDR -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_WUSER -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_WID -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_WSTRB -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_WDATA -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_AWUSER -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_AWREGION -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_AWQOS -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_AWPROT -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_AWBURST -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_AWLEN -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_AWID -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_AWADDR -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem0_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group [add_wave_group mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/interrupt -into $mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/s_axi_control_BRESP -into $mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/s_axi_control_BREADY -into $mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/s_axi_control_BVALID -into $mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/s_axi_control_RRESP -into $mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/s_axi_control_RDATA -into $mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/s_axi_control_RREADY -into $mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/s_axi_control_RVALID -into $mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/s_axi_control_ARREADY -into $mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/s_axi_control_ARVALID -into $mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/s_axi_control_ARADDR -into $mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/s_axi_control_WSTRB -into $mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/s_axi_control_WDATA -into $mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/s_axi_control_WREADY -into $mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/s_axi_control_WVALID -into $mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/s_axi_control_AWREADY -into $mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/s_axi_control_AWVALID -into $mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/s_axi_control_AWADDR -into $mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set mat_B_group [add_wave_group mat_B(axi_master) -into $cinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $mat_B_group]
set wdata_group [add_wave_group "Write Channel" -into $mat_B_group]
set ctrl_group [add_wave_group "Handshakes" -into $mat_B_group]
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_BUSER -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_BID -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_BRESP -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_RRESP -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_RUSER -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_RID -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_RDATA -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_ARUSER -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_ARREGION -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_ARQOS -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_ARPROT -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_ARBURST -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_ARLEN -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_ARID -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_ARADDR -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_WUSER -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_WID -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_WSTRB -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_WDATA -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_AWUSER -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_AWREGION -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_AWQOS -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_AWPROT -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_AWBURST -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_AWLEN -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_AWID -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_AWADDR -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/m_axi_gmem1_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/ap_done -into $blocksiggroup
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/ap_idle -into $blocksiggroup
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/ap_ready -into $blocksiggroup
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_pipelined_layer_processor_top/AESL_inst_pipelined_layer_processor/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_pipelined_layer_processor_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/LENGTH_gmem0 -into $tb_portdepth_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/LENGTH_gmem1 -into $tb_portdepth_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/LENGTH_mat_A -into $tb_portdepth_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/LENGTH_mat_B -into $tb_portdepth_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/LENGTH_mat_C -into $tb_portdepth_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/LENGTH_num_col_tiles -into $tb_portdepth_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/LENGTH_num_depth_tiles -into $tb_portdepth_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/LENGTH_num_row_tiles -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_mat_A__mat_C_group [add_wave_group mat_A__mat_C(axi_master) -into $tbcinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_mat_A__mat_C_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_mat_A__mat_C_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_mat_A__mat_C_group]
add_wave /apatb_pipelined_layer_processor_top/gmem0_BUSER -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_BID -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_BRESP -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_RRESP -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_RUSER -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_RID -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_RDATA -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_ARUSER -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_ARREGION -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_ARQOS -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_ARPROT -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_ARBURST -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_ARLEN -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_ARID -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_ARADDR -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_WUSER -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_WID -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_WSTRB -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_WDATA -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_AWUSER -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_AWREGION -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_AWQOS -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_AWPROT -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_AWBURST -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_AWLEN -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_AWID -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_AWADDR -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem0_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tb_mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group [add_wave_group mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return(axi_slave) -into $tbcinoutgroup]
add_wave /apatb_pipelined_layer_processor_top/control_INTERRUPT -into $tb_mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/control_BRESP -into $tb_mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/control_BREADY -into $tb_mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/control_BVALID -into $tb_mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/control_RRESP -into $tb_mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/control_RDATA -into $tb_mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/control_RREADY -into $tb_mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/control_RVALID -into $tb_mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/control_ARREADY -into $tb_mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/control_ARVALID -into $tb_mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/control_ARADDR -into $tb_mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/control_WSTRB -into $tb_mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/control_WDATA -into $tb_mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/control_WREADY -into $tb_mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/control_WVALID -into $tb_mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/control_AWREADY -into $tb_mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/control_AWVALID -into $tb_mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/control_AWADDR -into $tb_mat_A__mat_B__mat_C__num_row_tiles__num_depth_tiles__num_col_tiles__return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_mat_B_group [add_wave_group mat_B(axi_master) -into $tbcinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_mat_B_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_mat_B_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_mat_B_group]
add_wave /apatb_pipelined_layer_processor_top/gmem1_BUSER -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_BID -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_BRESP -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_RRESP -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_RUSER -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_RID -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_RDATA -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_ARUSER -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_ARREGION -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_ARQOS -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_ARPROT -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_ARBURST -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_ARLEN -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_ARID -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_ARADDR -into $rdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_WUSER -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_WID -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_WSTRB -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_WDATA -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_AWUSER -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_AWREGION -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_AWQOS -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_AWPROT -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_AWBURST -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_AWLEN -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_AWID -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_AWADDR -into $wdata_group -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_pipelined_layer_processor_top/gmem1_AWVALID -into $ctrl_group -color #ffff00 -radix hex
save_wave_config pipelined_layer_processor.wcfg
run all
quit

