# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1 \
    name tile_C_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tile_C_V \
    op interface \
    ports { tile_C_V_address1 { O 6 vector } tile_C_V_ce1 { O 1 bit } tile_C_V_we1 { O 1 bit } tile_C_V_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tile_C_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2 \
    name tile_C_V_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tile_C_V_1 \
    op interface \
    ports { tile_C_V_1_address1 { O 6 vector } tile_C_V_1_ce1 { O 1 bit } tile_C_V_1_we1 { O 1 bit } tile_C_V_1_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tile_C_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3 \
    name tile_C_V_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tile_C_V_2 \
    op interface \
    ports { tile_C_V_2_address1 { O 6 vector } tile_C_V_2_ce1 { O 1 bit } tile_C_V_2_we1 { O 1 bit } tile_C_V_2_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tile_C_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4 \
    name tile_C_V_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tile_C_V_3 \
    op interface \
    ports { tile_C_V_3_address1 { O 6 vector } tile_C_V_3_ce1 { O 1 bit } tile_C_V_3_we1 { O 1 bit } tile_C_V_3_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tile_C_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5 \
    name tile_C_V_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tile_C_V_4 \
    op interface \
    ports { tile_C_V_4_address1 { O 6 vector } tile_C_V_4_ce1 { O 1 bit } tile_C_V_4_we1 { O 1 bit } tile_C_V_4_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tile_C_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6 \
    name tile_C_V_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tile_C_V_5 \
    op interface \
    ports { tile_C_V_5_address1 { O 6 vector } tile_C_V_5_ce1 { O 1 bit } tile_C_V_5_we1 { O 1 bit } tile_C_V_5_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tile_C_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7 \
    name tile_C_V_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tile_C_V_6 \
    op interface \
    ports { tile_C_V_6_address1 { O 6 vector } tile_C_V_6_ce1 { O 1 bit } tile_C_V_6_we1 { O 1 bit } tile_C_V_6_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tile_C_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 8 \
    name tile_C_V_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tile_C_V_7 \
    op interface \
    ports { tile_C_V_7_address1 { O 6 vector } tile_C_V_7_ce1 { O 1 bit } tile_C_V_7_we1 { O 1 bit } tile_C_V_7_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tile_C_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 9 \
    name tile_C_V_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tile_C_V_8 \
    op interface \
    ports { tile_C_V_8_address1 { O 6 vector } tile_C_V_8_ce1 { O 1 bit } tile_C_V_8_we1 { O 1 bit } tile_C_V_8_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tile_C_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 10 \
    name tile_C_V_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tile_C_V_9 \
    op interface \
    ports { tile_C_V_9_address1 { O 6 vector } tile_C_V_9_ce1 { O 1 bit } tile_C_V_9_we1 { O 1 bit } tile_C_V_9_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tile_C_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 11 \
    name tile_C_V_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tile_C_V_10 \
    op interface \
    ports { tile_C_V_10_address1 { O 6 vector } tile_C_V_10_ce1 { O 1 bit } tile_C_V_10_we1 { O 1 bit } tile_C_V_10_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tile_C_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 12 \
    name tile_C_V_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tile_C_V_11 \
    op interface \
    ports { tile_C_V_11_address1 { O 6 vector } tile_C_V_11_ce1 { O 1 bit } tile_C_V_11_we1 { O 1 bit } tile_C_V_11_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tile_C_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 13 \
    name tile_C_V_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tile_C_V_12 \
    op interface \
    ports { tile_C_V_12_address1 { O 6 vector } tile_C_V_12_ce1 { O 1 bit } tile_C_V_12_we1 { O 1 bit } tile_C_V_12_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tile_C_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 14 \
    name tile_C_V_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tile_C_V_13 \
    op interface \
    ports { tile_C_V_13_address1 { O 6 vector } tile_C_V_13_ce1 { O 1 bit } tile_C_V_13_we1 { O 1 bit } tile_C_V_13_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tile_C_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 15 \
    name tile_C_V_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tile_C_V_14 \
    op interface \
    ports { tile_C_V_14_address1 { O 6 vector } tile_C_V_14_ce1 { O 1 bit } tile_C_V_14_we1 { O 1 bit } tile_C_V_14_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tile_C_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 16 \
    name tile_C_V_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tile_C_V_15 \
    op interface \
    ports { tile_C_V_15_address1 { O 6 vector } tile_C_V_15_ce1 { O 1 bit } tile_C_V_15_we1 { O 1 bit } tile_C_V_15_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tile_C_V_15'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName pipelined_layer_processor_flow_control_loop_pipe_sequential_init_U
set CompName pipelined_layer_processor_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix pipelined_layer_processor_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


