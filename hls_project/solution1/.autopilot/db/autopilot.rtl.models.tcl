set SynModuleInfo {
  {SRCNAME pipelined_layer_processor_Pipeline_Clear MODELNAME pipelined_layer_processor_Pipeline_Clear RTLNAME pipelined_layer_processor_pipelined_layer_processor_Pipeline_Clear
    SUBMODULES {
      {MODELNAME pipelined_layer_processor_flow_control_loop_pipe_sequential_init RTLNAME pipelined_layer_processor_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME pipelined_layer_processor_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME read_big_tile_Pipeline_Read_Loop MODELNAME read_big_tile_Pipeline_Read_Loop RTLNAME pipelined_layer_processor_read_big_tile_Pipeline_Read_Loop}
  {SRCNAME read_big_tile MODELNAME read_big_tile RTLNAME pipelined_layer_processor_read_big_tile}
  {SRCNAME read_big_tile.1_Pipeline_Read_Loop MODELNAME read_big_tile_1_Pipeline_Read_Loop RTLNAME pipelined_layer_processor_read_big_tile_1_Pipeline_Read_Loop}
  {SRCNAME read_big_tile.1 MODELNAME read_big_tile_1 RTLNAME pipelined_layer_processor_read_big_tile_1}
  {SRCNAME compute_systolic_Pipeline_Load_Cache_Row MODELNAME compute_systolic_Pipeline_Load_Cache_Row RTLNAME pipelined_layer_processor_compute_systolic_Pipeline_Load_Cache_Row}
  {SRCNAME compute_systolic_Pipeline_Pulse MODELNAME compute_systolic_Pipeline_Pulse RTLNAME pipelined_layer_processor_compute_systolic_Pipeline_Pulse
    SUBMODULES {
      {MODELNAME pipelined_layer_processor_mac_muladd_8s_8s_32s_32_4_1 RTLNAME pipelined_layer_processor_mac_muladd_8s_8s_32s_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_systolic_Pipeline_Store_Cache_Row MODELNAME compute_systolic_Pipeline_Store_Cache_Row RTLNAME pipelined_layer_processor_compute_systolic_Pipeline_Store_Cache_Row
    SUBMODULES {
      {MODELNAME pipelined_layer_processor_mux_325_32_1_1 RTLNAME pipelined_layer_processor_mux_325_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_systolic MODELNAME compute_systolic RTLNAME pipelined_layer_processor_compute_systolic}
  {SRCNAME write_big_tile_Pipeline_Write_Rows_Write_Cols MODELNAME write_big_tile_Pipeline_Write_Rows_Write_Cols RTLNAME pipelined_layer_processor_write_big_tile_Pipeline_Write_Rows_Write_Cols}
  {SRCNAME write_big_tile MODELNAME write_big_tile RTLNAME pipelined_layer_processor_write_big_tile}
  {SRCNAME pipelined_layer_processor MODELNAME pipelined_layer_processor RTLNAME pipelined_layer_processor IS_TOP 1
    SUBMODULES {
      {MODELNAME pipelined_layer_processor_mul_32ns_32ns_64_2_1 RTLNAME pipelined_layer_processor_mul_32ns_32ns_64_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME pipelined_layer_processor_mul_27s_27s_27_1_1 RTLNAME pipelined_layer_processor_mul_27s_27s_27_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME pipelined_layer_processor_mul_25s_25s_25_1_1 RTLNAME pipelined_layer_processor_mul_25s_25s_25_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME pipelined_layer_processor_tile_A_V_RAM_2P_BRAM_1R1W RTLNAME pipelined_layer_processor_tile_A_V_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME pipelined_layer_processor_tile_B_V_RAM_2P_BRAM_1R1W RTLNAME pipelined_layer_processor_tile_B_V_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME pipelined_layer_processor_tile_C_V_RAM_2P_BRAM_1R1W RTLNAME pipelined_layer_processor_tile_C_V_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME pipelined_layer_processor_gmem0_m_axi RTLNAME pipelined_layer_processor_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME pipelined_layer_processor_gmem1_m_axi RTLNAME pipelined_layer_processor_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME pipelined_layer_processor_control_s_axi RTLNAME pipelined_layer_processor_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
