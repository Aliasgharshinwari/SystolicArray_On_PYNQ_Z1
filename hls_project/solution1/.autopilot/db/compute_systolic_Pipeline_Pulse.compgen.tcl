# This script segment is generated automatically by AutoPilot

set id 1101
set name pipelined_layer_processor_mac_muladd_8s_8s_32s_32_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 8
set in0_signed 1
set in1_width 8
set in1_signed 1
set in2_width 32
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 32
set arg_lists {i0 {8 1 +} i1 {8 1 +} m {16 1 +} i2 {32 1 +} p {32 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp48} LATENCY 3 ALLOW_PRAGMA 1
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


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
    id 3182 \
    name big_tile_B \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename big_tile_B \
    op interface \
    ports { big_tile_B_address0 { O 5 vector } big_tile_B_ce0 { O 1 bit } big_tile_B_q0 { I 256 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'big_tile_B'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2126 \
    name local_regs_V_1023_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1023_0_reload \
    op interface \
    ports { local_regs_V_1023_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2127 \
    name local_regs_31_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_30_promoted_reload \
    op interface \
    ports { local_regs_31_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2128 \
    name local_regs_31_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_29_promoted_reload \
    op interface \
    ports { local_regs_31_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2129 \
    name local_regs_31_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_28_promoted_reload \
    op interface \
    ports { local_regs_31_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2130 \
    name local_regs_31_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_27_promoted_reload \
    op interface \
    ports { local_regs_31_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2131 \
    name local_regs_31_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_26_promoted_reload \
    op interface \
    ports { local_regs_31_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2132 \
    name local_regs_31_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_25_promoted_reload \
    op interface \
    ports { local_regs_31_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2133 \
    name local_regs_31_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_24_promoted_reload \
    op interface \
    ports { local_regs_31_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2134 \
    name local_regs_31_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_23_promoted_reload \
    op interface \
    ports { local_regs_31_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2135 \
    name local_regs_31_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_22_promoted_reload \
    op interface \
    ports { local_regs_31_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2136 \
    name local_regs_31_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_21_promoted_reload \
    op interface \
    ports { local_regs_31_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2137 \
    name local_regs_31_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_20_promoted_reload \
    op interface \
    ports { local_regs_31_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2138 \
    name local_regs_31_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_19_promoted_reload \
    op interface \
    ports { local_regs_31_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2139 \
    name local_regs_31_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_18_promoted_reload \
    op interface \
    ports { local_regs_31_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2140 \
    name local_regs_31_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_17_promoted_reload \
    op interface \
    ports { local_regs_31_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2141 \
    name local_regs_31_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_16_promoted_reload \
    op interface \
    ports { local_regs_31_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2142 \
    name local_regs_31_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_15_promoted_reload \
    op interface \
    ports { local_regs_31_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2143 \
    name local_regs_31_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_14_promoted_reload \
    op interface \
    ports { local_regs_31_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2144 \
    name local_regs_31_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_13_promoted_reload \
    op interface \
    ports { local_regs_31_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2145 \
    name local_regs_31_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_12_promoted_reload \
    op interface \
    ports { local_regs_31_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2146 \
    name local_regs_31_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_11_promoted_reload \
    op interface \
    ports { local_regs_31_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2147 \
    name local_regs_31_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_10_promoted_reload \
    op interface \
    ports { local_regs_31_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2148 \
    name local_regs_31_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_9_promoted_reload \
    op interface \
    ports { local_regs_31_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2149 \
    name local_regs_31_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_8_promoted_reload \
    op interface \
    ports { local_regs_31_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2150 \
    name local_regs_31_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_7_promoted_reload \
    op interface \
    ports { local_regs_31_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2151 \
    name local_regs_31_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_6_promoted_reload \
    op interface \
    ports { local_regs_31_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2152 \
    name local_regs_31_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_5_promoted_reload \
    op interface \
    ports { local_regs_31_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2153 \
    name local_regs_31_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_4_promoted_reload \
    op interface \
    ports { local_regs_31_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2154 \
    name local_regs_31_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_3_promoted_reload \
    op interface \
    ports { local_regs_31_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2155 \
    name local_regs_31_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_2_promoted_reload \
    op interface \
    ports { local_regs_31_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2156 \
    name local_regs_31_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_1_promoted_reload \
    op interface \
    ports { local_regs_31_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2157 \
    name local_regs_31_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_31_0_promoted_reload \
    op interface \
    ports { local_regs_31_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2158 \
    name local_regs_30_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_31_promoted_reload \
    op interface \
    ports { local_regs_30_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2159 \
    name local_regs_30_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_30_promoted_reload \
    op interface \
    ports { local_regs_30_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2160 \
    name local_regs_30_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_29_promoted_reload \
    op interface \
    ports { local_regs_30_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2161 \
    name local_regs_30_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_28_promoted_reload \
    op interface \
    ports { local_regs_30_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2162 \
    name local_regs_30_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_27_promoted_reload \
    op interface \
    ports { local_regs_30_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2163 \
    name local_regs_30_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_26_promoted_reload \
    op interface \
    ports { local_regs_30_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2164 \
    name local_regs_30_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_25_promoted_reload \
    op interface \
    ports { local_regs_30_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2165 \
    name local_regs_30_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_24_promoted_reload \
    op interface \
    ports { local_regs_30_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2166 \
    name local_regs_30_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_23_promoted_reload \
    op interface \
    ports { local_regs_30_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2167 \
    name local_regs_30_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_22_promoted_reload \
    op interface \
    ports { local_regs_30_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2168 \
    name local_regs_30_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_21_promoted_reload \
    op interface \
    ports { local_regs_30_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2169 \
    name local_regs_30_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_20_promoted_reload \
    op interface \
    ports { local_regs_30_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2170 \
    name local_regs_30_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_19_promoted_reload \
    op interface \
    ports { local_regs_30_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2171 \
    name local_regs_30_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_18_promoted_reload \
    op interface \
    ports { local_regs_30_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2172 \
    name local_regs_30_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_17_promoted_reload \
    op interface \
    ports { local_regs_30_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2173 \
    name local_regs_30_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_16_promoted_reload \
    op interface \
    ports { local_regs_30_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2174 \
    name local_regs_30_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_15_promoted_reload \
    op interface \
    ports { local_regs_30_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2175 \
    name local_regs_30_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_14_promoted_reload \
    op interface \
    ports { local_regs_30_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2176 \
    name local_regs_30_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_13_promoted_reload \
    op interface \
    ports { local_regs_30_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2177 \
    name local_regs_30_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_12_promoted_reload \
    op interface \
    ports { local_regs_30_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2178 \
    name local_regs_30_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_11_promoted_reload \
    op interface \
    ports { local_regs_30_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2179 \
    name local_regs_30_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_10_promoted_reload \
    op interface \
    ports { local_regs_30_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2180 \
    name local_regs_30_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_9_promoted_reload \
    op interface \
    ports { local_regs_30_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2181 \
    name local_regs_30_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_8_promoted_reload \
    op interface \
    ports { local_regs_30_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2182 \
    name local_regs_30_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_7_promoted_reload \
    op interface \
    ports { local_regs_30_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2183 \
    name local_regs_30_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_6_promoted_reload \
    op interface \
    ports { local_regs_30_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2184 \
    name local_regs_30_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_5_promoted_reload \
    op interface \
    ports { local_regs_30_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2185 \
    name local_regs_30_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_4_promoted_reload \
    op interface \
    ports { local_regs_30_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2186 \
    name local_regs_30_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_3_promoted_reload \
    op interface \
    ports { local_regs_30_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2187 \
    name local_regs_30_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_2_promoted_reload \
    op interface \
    ports { local_regs_30_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2188 \
    name local_regs_30_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_1_promoted_reload \
    op interface \
    ports { local_regs_30_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2189 \
    name local_regs_30_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_30_0_promoted_reload \
    op interface \
    ports { local_regs_30_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2190 \
    name local_regs_29_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_31_promoted_reload \
    op interface \
    ports { local_regs_29_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2191 \
    name local_regs_29_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_30_promoted_reload \
    op interface \
    ports { local_regs_29_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2192 \
    name local_regs_29_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_29_promoted_reload \
    op interface \
    ports { local_regs_29_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2193 \
    name local_regs_29_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_28_promoted_reload \
    op interface \
    ports { local_regs_29_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2194 \
    name local_regs_29_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_27_promoted_reload \
    op interface \
    ports { local_regs_29_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2195 \
    name local_regs_29_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_26_promoted_reload \
    op interface \
    ports { local_regs_29_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2196 \
    name local_regs_29_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_25_promoted_reload \
    op interface \
    ports { local_regs_29_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2197 \
    name local_regs_29_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_24_promoted_reload \
    op interface \
    ports { local_regs_29_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2198 \
    name local_regs_29_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_23_promoted_reload \
    op interface \
    ports { local_regs_29_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2199 \
    name local_regs_29_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_22_promoted_reload \
    op interface \
    ports { local_regs_29_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2200 \
    name local_regs_29_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_21_promoted_reload \
    op interface \
    ports { local_regs_29_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2201 \
    name local_regs_29_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_20_promoted_reload \
    op interface \
    ports { local_regs_29_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2202 \
    name local_regs_29_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_19_promoted_reload \
    op interface \
    ports { local_regs_29_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2203 \
    name local_regs_29_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_18_promoted_reload \
    op interface \
    ports { local_regs_29_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2204 \
    name local_regs_29_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_17_promoted_reload \
    op interface \
    ports { local_regs_29_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2205 \
    name local_regs_29_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_16_promoted_reload \
    op interface \
    ports { local_regs_29_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2206 \
    name local_regs_29_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_15_promoted_reload \
    op interface \
    ports { local_regs_29_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2207 \
    name local_regs_29_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_14_promoted_reload \
    op interface \
    ports { local_regs_29_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2208 \
    name local_regs_29_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_13_promoted_reload \
    op interface \
    ports { local_regs_29_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2209 \
    name local_regs_29_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_12_promoted_reload \
    op interface \
    ports { local_regs_29_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2210 \
    name local_regs_29_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_11_promoted_reload \
    op interface \
    ports { local_regs_29_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2211 \
    name local_regs_29_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_10_promoted_reload \
    op interface \
    ports { local_regs_29_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2212 \
    name local_regs_29_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_9_promoted_reload \
    op interface \
    ports { local_regs_29_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2213 \
    name local_regs_29_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_8_promoted_reload \
    op interface \
    ports { local_regs_29_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2214 \
    name local_regs_29_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_7_promoted_reload \
    op interface \
    ports { local_regs_29_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2215 \
    name local_regs_29_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_6_promoted_reload \
    op interface \
    ports { local_regs_29_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2216 \
    name local_regs_29_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_5_promoted_reload \
    op interface \
    ports { local_regs_29_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2217 \
    name local_regs_29_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_4_promoted_reload \
    op interface \
    ports { local_regs_29_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2218 \
    name local_regs_29_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_3_promoted_reload \
    op interface \
    ports { local_regs_29_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2219 \
    name local_regs_29_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_2_promoted_reload \
    op interface \
    ports { local_regs_29_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2220 \
    name local_regs_29_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_1_promoted_reload \
    op interface \
    ports { local_regs_29_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2221 \
    name local_regs_29_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_29_0_promoted_reload \
    op interface \
    ports { local_regs_29_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2222 \
    name local_regs_28_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_31_promoted_reload \
    op interface \
    ports { local_regs_28_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2223 \
    name local_regs_28_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_30_promoted_reload \
    op interface \
    ports { local_regs_28_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2224 \
    name local_regs_28_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_29_promoted_reload \
    op interface \
    ports { local_regs_28_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2225 \
    name local_regs_28_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_28_promoted_reload \
    op interface \
    ports { local_regs_28_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2226 \
    name local_regs_28_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_27_promoted_reload \
    op interface \
    ports { local_regs_28_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2227 \
    name local_regs_28_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_26_promoted_reload \
    op interface \
    ports { local_regs_28_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2228 \
    name local_regs_28_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_25_promoted_reload \
    op interface \
    ports { local_regs_28_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2229 \
    name local_regs_28_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_24_promoted_reload \
    op interface \
    ports { local_regs_28_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2230 \
    name local_regs_28_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_23_promoted_reload \
    op interface \
    ports { local_regs_28_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2231 \
    name local_regs_28_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_22_promoted_reload \
    op interface \
    ports { local_regs_28_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2232 \
    name local_regs_28_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_21_promoted_reload \
    op interface \
    ports { local_regs_28_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2233 \
    name local_regs_28_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_20_promoted_reload \
    op interface \
    ports { local_regs_28_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2234 \
    name local_regs_28_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_19_promoted_reload \
    op interface \
    ports { local_regs_28_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2235 \
    name local_regs_28_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_18_promoted_reload \
    op interface \
    ports { local_regs_28_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2236 \
    name local_regs_28_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_17_promoted_reload \
    op interface \
    ports { local_regs_28_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2237 \
    name local_regs_28_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_16_promoted_reload \
    op interface \
    ports { local_regs_28_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2238 \
    name local_regs_28_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_15_promoted_reload \
    op interface \
    ports { local_regs_28_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2239 \
    name local_regs_28_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_14_promoted_reload \
    op interface \
    ports { local_regs_28_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2240 \
    name local_regs_28_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_13_promoted_reload \
    op interface \
    ports { local_regs_28_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2241 \
    name local_regs_28_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_12_promoted_reload \
    op interface \
    ports { local_regs_28_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2242 \
    name local_regs_28_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_11_promoted_reload \
    op interface \
    ports { local_regs_28_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2243 \
    name local_regs_28_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_10_promoted_reload \
    op interface \
    ports { local_regs_28_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2244 \
    name local_regs_28_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_9_promoted_reload \
    op interface \
    ports { local_regs_28_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2245 \
    name local_regs_28_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_8_promoted_reload \
    op interface \
    ports { local_regs_28_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2246 \
    name local_regs_28_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_7_promoted_reload \
    op interface \
    ports { local_regs_28_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2247 \
    name local_regs_28_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_6_promoted_reload \
    op interface \
    ports { local_regs_28_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2248 \
    name local_regs_28_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_5_promoted_reload \
    op interface \
    ports { local_regs_28_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2249 \
    name local_regs_28_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_4_promoted_reload \
    op interface \
    ports { local_regs_28_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2250 \
    name local_regs_28_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_3_promoted_reload \
    op interface \
    ports { local_regs_28_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2251 \
    name local_regs_28_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_2_promoted_reload \
    op interface \
    ports { local_regs_28_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2252 \
    name local_regs_28_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_1_promoted_reload \
    op interface \
    ports { local_regs_28_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2253 \
    name local_regs_28_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_28_0_promoted_reload \
    op interface \
    ports { local_regs_28_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2254 \
    name local_regs_27_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_31_promoted_reload \
    op interface \
    ports { local_regs_27_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2255 \
    name local_regs_27_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_30_promoted_reload \
    op interface \
    ports { local_regs_27_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2256 \
    name local_regs_27_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_29_promoted_reload \
    op interface \
    ports { local_regs_27_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2257 \
    name local_regs_27_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_28_promoted_reload \
    op interface \
    ports { local_regs_27_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2258 \
    name local_regs_27_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_27_promoted_reload \
    op interface \
    ports { local_regs_27_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2259 \
    name local_regs_27_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_26_promoted_reload \
    op interface \
    ports { local_regs_27_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2260 \
    name local_regs_27_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_25_promoted_reload \
    op interface \
    ports { local_regs_27_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2261 \
    name local_regs_27_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_24_promoted_reload \
    op interface \
    ports { local_regs_27_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2262 \
    name local_regs_27_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_23_promoted_reload \
    op interface \
    ports { local_regs_27_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2263 \
    name local_regs_27_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_22_promoted_reload \
    op interface \
    ports { local_regs_27_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2264 \
    name local_regs_27_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_21_promoted_reload \
    op interface \
    ports { local_regs_27_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2265 \
    name local_regs_27_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_20_promoted_reload \
    op interface \
    ports { local_regs_27_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2266 \
    name local_regs_27_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_19_promoted_reload \
    op interface \
    ports { local_regs_27_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2267 \
    name local_regs_27_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_18_promoted_reload \
    op interface \
    ports { local_regs_27_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2268 \
    name local_regs_27_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_17_promoted_reload \
    op interface \
    ports { local_regs_27_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2269 \
    name local_regs_27_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_16_promoted_reload \
    op interface \
    ports { local_regs_27_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2270 \
    name local_regs_27_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_15_promoted_reload \
    op interface \
    ports { local_regs_27_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2271 \
    name local_regs_27_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_14_promoted_reload \
    op interface \
    ports { local_regs_27_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2272 \
    name local_regs_27_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_13_promoted_reload \
    op interface \
    ports { local_regs_27_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2273 \
    name local_regs_27_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_12_promoted_reload \
    op interface \
    ports { local_regs_27_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2274 \
    name local_regs_27_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_11_promoted_reload \
    op interface \
    ports { local_regs_27_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2275 \
    name local_regs_27_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_10_promoted_reload \
    op interface \
    ports { local_regs_27_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2276 \
    name local_regs_27_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_9_promoted_reload \
    op interface \
    ports { local_regs_27_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2277 \
    name local_regs_27_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_8_promoted_reload \
    op interface \
    ports { local_regs_27_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2278 \
    name local_regs_27_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_7_promoted_reload \
    op interface \
    ports { local_regs_27_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2279 \
    name local_regs_27_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_6_promoted_reload \
    op interface \
    ports { local_regs_27_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2280 \
    name local_regs_27_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_5_promoted_reload \
    op interface \
    ports { local_regs_27_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2281 \
    name local_regs_27_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_4_promoted_reload \
    op interface \
    ports { local_regs_27_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2282 \
    name local_regs_27_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_3_promoted_reload \
    op interface \
    ports { local_regs_27_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2283 \
    name local_regs_27_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_2_promoted_reload \
    op interface \
    ports { local_regs_27_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2284 \
    name local_regs_27_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_1_promoted_reload \
    op interface \
    ports { local_regs_27_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2285 \
    name local_regs_27_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_27_0_promoted_reload \
    op interface \
    ports { local_regs_27_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2286 \
    name local_regs_26_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_31_promoted_reload \
    op interface \
    ports { local_regs_26_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2287 \
    name local_regs_26_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_30_promoted_reload \
    op interface \
    ports { local_regs_26_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2288 \
    name local_regs_26_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_29_promoted_reload \
    op interface \
    ports { local_regs_26_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2289 \
    name local_regs_26_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_28_promoted_reload \
    op interface \
    ports { local_regs_26_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2290 \
    name local_regs_26_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_27_promoted_reload \
    op interface \
    ports { local_regs_26_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2291 \
    name local_regs_26_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_26_promoted_reload \
    op interface \
    ports { local_regs_26_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2292 \
    name local_regs_26_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_25_promoted_reload \
    op interface \
    ports { local_regs_26_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2293 \
    name local_regs_26_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_24_promoted_reload \
    op interface \
    ports { local_regs_26_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2294 \
    name local_regs_26_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_23_promoted_reload \
    op interface \
    ports { local_regs_26_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2295 \
    name local_regs_26_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_22_promoted_reload \
    op interface \
    ports { local_regs_26_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2296 \
    name local_regs_26_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_21_promoted_reload \
    op interface \
    ports { local_regs_26_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2297 \
    name local_regs_26_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_20_promoted_reload \
    op interface \
    ports { local_regs_26_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2298 \
    name local_regs_26_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_19_promoted_reload \
    op interface \
    ports { local_regs_26_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2299 \
    name local_regs_26_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_18_promoted_reload \
    op interface \
    ports { local_regs_26_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2300 \
    name local_regs_26_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_17_promoted_reload \
    op interface \
    ports { local_regs_26_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2301 \
    name local_regs_26_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_16_promoted_reload \
    op interface \
    ports { local_regs_26_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2302 \
    name local_regs_26_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_15_promoted_reload \
    op interface \
    ports { local_regs_26_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2303 \
    name local_regs_26_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_14_promoted_reload \
    op interface \
    ports { local_regs_26_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2304 \
    name local_regs_26_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_13_promoted_reload \
    op interface \
    ports { local_regs_26_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2305 \
    name local_regs_26_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_12_promoted_reload \
    op interface \
    ports { local_regs_26_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2306 \
    name local_regs_26_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_11_promoted_reload \
    op interface \
    ports { local_regs_26_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2307 \
    name local_regs_26_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_10_promoted_reload \
    op interface \
    ports { local_regs_26_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2308 \
    name local_regs_26_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_9_promoted_reload \
    op interface \
    ports { local_regs_26_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2309 \
    name local_regs_26_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_8_promoted_reload \
    op interface \
    ports { local_regs_26_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2310 \
    name local_regs_26_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_7_promoted_reload \
    op interface \
    ports { local_regs_26_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2311 \
    name local_regs_26_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_6_promoted_reload \
    op interface \
    ports { local_regs_26_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2312 \
    name local_regs_26_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_5_promoted_reload \
    op interface \
    ports { local_regs_26_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2313 \
    name local_regs_26_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_4_promoted_reload \
    op interface \
    ports { local_regs_26_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2314 \
    name local_regs_26_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_3_promoted_reload \
    op interface \
    ports { local_regs_26_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2315 \
    name local_regs_26_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_2_promoted_reload \
    op interface \
    ports { local_regs_26_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2316 \
    name local_regs_26_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_1_promoted_reload \
    op interface \
    ports { local_regs_26_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2317 \
    name local_regs_26_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_26_0_promoted_reload \
    op interface \
    ports { local_regs_26_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2318 \
    name local_regs_25_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_31_promoted_reload \
    op interface \
    ports { local_regs_25_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2319 \
    name local_regs_25_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_30_promoted_reload \
    op interface \
    ports { local_regs_25_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2320 \
    name local_regs_25_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_29_promoted_reload \
    op interface \
    ports { local_regs_25_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2321 \
    name local_regs_25_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_28_promoted_reload \
    op interface \
    ports { local_regs_25_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2322 \
    name local_regs_25_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_27_promoted_reload \
    op interface \
    ports { local_regs_25_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2323 \
    name local_regs_25_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_26_promoted_reload \
    op interface \
    ports { local_regs_25_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2324 \
    name local_regs_25_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_25_promoted_reload \
    op interface \
    ports { local_regs_25_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2325 \
    name local_regs_25_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_24_promoted_reload \
    op interface \
    ports { local_regs_25_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2326 \
    name local_regs_25_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_23_promoted_reload \
    op interface \
    ports { local_regs_25_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2327 \
    name local_regs_25_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_22_promoted_reload \
    op interface \
    ports { local_regs_25_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2328 \
    name local_regs_25_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_21_promoted_reload \
    op interface \
    ports { local_regs_25_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2329 \
    name local_regs_25_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_20_promoted_reload \
    op interface \
    ports { local_regs_25_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2330 \
    name local_regs_25_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_19_promoted_reload \
    op interface \
    ports { local_regs_25_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2331 \
    name local_regs_25_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_18_promoted_reload \
    op interface \
    ports { local_regs_25_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2332 \
    name local_regs_25_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_17_promoted_reload \
    op interface \
    ports { local_regs_25_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2333 \
    name local_regs_25_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_16_promoted_reload \
    op interface \
    ports { local_regs_25_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2334 \
    name local_regs_25_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_15_promoted_reload \
    op interface \
    ports { local_regs_25_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2335 \
    name local_regs_25_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_14_promoted_reload \
    op interface \
    ports { local_regs_25_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2336 \
    name local_regs_25_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_13_promoted_reload \
    op interface \
    ports { local_regs_25_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2337 \
    name local_regs_25_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_12_promoted_reload \
    op interface \
    ports { local_regs_25_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2338 \
    name local_regs_25_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_11_promoted_reload \
    op interface \
    ports { local_regs_25_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2339 \
    name local_regs_25_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_10_promoted_reload \
    op interface \
    ports { local_regs_25_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2340 \
    name local_regs_25_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_9_promoted_reload \
    op interface \
    ports { local_regs_25_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2341 \
    name local_regs_25_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_8_promoted_reload \
    op interface \
    ports { local_regs_25_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2342 \
    name local_regs_25_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_7_promoted_reload \
    op interface \
    ports { local_regs_25_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2343 \
    name local_regs_25_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_6_promoted_reload \
    op interface \
    ports { local_regs_25_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2344 \
    name local_regs_25_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_5_promoted_reload \
    op interface \
    ports { local_regs_25_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2345 \
    name local_regs_25_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_4_promoted_reload \
    op interface \
    ports { local_regs_25_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2346 \
    name local_regs_25_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_3_promoted_reload \
    op interface \
    ports { local_regs_25_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2347 \
    name local_regs_25_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_2_promoted_reload \
    op interface \
    ports { local_regs_25_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2348 \
    name local_regs_25_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_1_promoted_reload \
    op interface \
    ports { local_regs_25_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2349 \
    name local_regs_25_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_25_0_promoted_reload \
    op interface \
    ports { local_regs_25_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2350 \
    name local_regs_24_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_31_promoted_reload \
    op interface \
    ports { local_regs_24_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2351 \
    name local_regs_24_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_30_promoted_reload \
    op interface \
    ports { local_regs_24_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2352 \
    name local_regs_24_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_29_promoted_reload \
    op interface \
    ports { local_regs_24_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2353 \
    name local_regs_24_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_28_promoted_reload \
    op interface \
    ports { local_regs_24_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2354 \
    name local_regs_24_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_27_promoted_reload \
    op interface \
    ports { local_regs_24_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2355 \
    name local_regs_24_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_26_promoted_reload \
    op interface \
    ports { local_regs_24_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2356 \
    name local_regs_24_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_25_promoted_reload \
    op interface \
    ports { local_regs_24_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2357 \
    name local_regs_24_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_24_promoted_reload \
    op interface \
    ports { local_regs_24_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2358 \
    name local_regs_24_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_23_promoted_reload \
    op interface \
    ports { local_regs_24_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2359 \
    name local_regs_24_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_22_promoted_reload \
    op interface \
    ports { local_regs_24_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2360 \
    name local_regs_24_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_21_promoted_reload \
    op interface \
    ports { local_regs_24_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2361 \
    name local_regs_24_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_20_promoted_reload \
    op interface \
    ports { local_regs_24_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2362 \
    name local_regs_24_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_19_promoted_reload \
    op interface \
    ports { local_regs_24_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2363 \
    name local_regs_24_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_18_promoted_reload \
    op interface \
    ports { local_regs_24_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2364 \
    name local_regs_24_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_17_promoted_reload \
    op interface \
    ports { local_regs_24_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2365 \
    name local_regs_24_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_16_promoted_reload \
    op interface \
    ports { local_regs_24_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2366 \
    name local_regs_24_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_15_promoted_reload \
    op interface \
    ports { local_regs_24_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2367 \
    name local_regs_24_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_14_promoted_reload \
    op interface \
    ports { local_regs_24_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2368 \
    name local_regs_24_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_13_promoted_reload \
    op interface \
    ports { local_regs_24_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2369 \
    name local_regs_24_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_12_promoted_reload \
    op interface \
    ports { local_regs_24_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2370 \
    name local_regs_24_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_11_promoted_reload \
    op interface \
    ports { local_regs_24_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2371 \
    name local_regs_24_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_10_promoted_reload \
    op interface \
    ports { local_regs_24_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2372 \
    name local_regs_24_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_9_promoted_reload \
    op interface \
    ports { local_regs_24_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2373 \
    name local_regs_24_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_8_promoted_reload \
    op interface \
    ports { local_regs_24_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2374 \
    name local_regs_24_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_7_promoted_reload \
    op interface \
    ports { local_regs_24_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2375 \
    name local_regs_24_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_6_promoted_reload \
    op interface \
    ports { local_regs_24_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2376 \
    name local_regs_24_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_5_promoted_reload \
    op interface \
    ports { local_regs_24_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2377 \
    name local_regs_24_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_4_promoted_reload \
    op interface \
    ports { local_regs_24_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2378 \
    name local_regs_24_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_3_promoted_reload \
    op interface \
    ports { local_regs_24_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2379 \
    name local_regs_24_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_2_promoted_reload \
    op interface \
    ports { local_regs_24_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2380 \
    name local_regs_24_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_1_promoted_reload \
    op interface \
    ports { local_regs_24_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2381 \
    name local_regs_24_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_24_0_promoted_reload \
    op interface \
    ports { local_regs_24_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2382 \
    name local_regs_23_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_31_promoted_reload \
    op interface \
    ports { local_regs_23_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2383 \
    name local_regs_23_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_30_promoted_reload \
    op interface \
    ports { local_regs_23_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2384 \
    name local_regs_23_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_29_promoted_reload \
    op interface \
    ports { local_regs_23_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2385 \
    name local_regs_23_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_28_promoted_reload \
    op interface \
    ports { local_regs_23_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2386 \
    name local_regs_23_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_27_promoted_reload \
    op interface \
    ports { local_regs_23_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2387 \
    name local_regs_23_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_26_promoted_reload \
    op interface \
    ports { local_regs_23_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2388 \
    name local_regs_23_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_25_promoted_reload \
    op interface \
    ports { local_regs_23_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2389 \
    name local_regs_23_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_24_promoted_reload \
    op interface \
    ports { local_regs_23_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2390 \
    name local_regs_23_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_23_promoted_reload \
    op interface \
    ports { local_regs_23_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2391 \
    name local_regs_23_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_22_promoted_reload \
    op interface \
    ports { local_regs_23_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2392 \
    name local_regs_23_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_21_promoted_reload \
    op interface \
    ports { local_regs_23_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2393 \
    name local_regs_23_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_20_promoted_reload \
    op interface \
    ports { local_regs_23_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2394 \
    name local_regs_23_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_19_promoted_reload \
    op interface \
    ports { local_regs_23_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2395 \
    name local_regs_23_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_18_promoted_reload \
    op interface \
    ports { local_regs_23_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2396 \
    name local_regs_23_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_17_promoted_reload \
    op interface \
    ports { local_regs_23_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2397 \
    name local_regs_23_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_16_promoted_reload \
    op interface \
    ports { local_regs_23_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2398 \
    name local_regs_23_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_15_promoted_reload \
    op interface \
    ports { local_regs_23_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2399 \
    name local_regs_23_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_14_promoted_reload \
    op interface \
    ports { local_regs_23_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2400 \
    name local_regs_23_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_13_promoted_reload \
    op interface \
    ports { local_regs_23_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2401 \
    name local_regs_23_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_12_promoted_reload \
    op interface \
    ports { local_regs_23_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2402 \
    name local_regs_23_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_11_promoted_reload \
    op interface \
    ports { local_regs_23_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2403 \
    name local_regs_23_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_10_promoted_reload \
    op interface \
    ports { local_regs_23_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2404 \
    name local_regs_23_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_9_promoted_reload \
    op interface \
    ports { local_regs_23_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2405 \
    name local_regs_23_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_8_promoted_reload \
    op interface \
    ports { local_regs_23_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2406 \
    name local_regs_23_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_7_promoted_reload \
    op interface \
    ports { local_regs_23_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2407 \
    name local_regs_23_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_6_promoted_reload \
    op interface \
    ports { local_regs_23_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2408 \
    name local_regs_23_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_5_promoted_reload \
    op interface \
    ports { local_regs_23_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2409 \
    name local_regs_23_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_4_promoted_reload \
    op interface \
    ports { local_regs_23_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2410 \
    name local_regs_23_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_3_promoted_reload \
    op interface \
    ports { local_regs_23_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2411 \
    name local_regs_23_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_2_promoted_reload \
    op interface \
    ports { local_regs_23_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2412 \
    name local_regs_23_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_1_promoted_reload \
    op interface \
    ports { local_regs_23_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2413 \
    name local_regs_23_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_23_0_promoted_reload \
    op interface \
    ports { local_regs_23_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2414 \
    name local_regs_22_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_31_promoted_reload \
    op interface \
    ports { local_regs_22_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2415 \
    name local_regs_22_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_30_promoted_reload \
    op interface \
    ports { local_regs_22_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2416 \
    name local_regs_22_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_29_promoted_reload \
    op interface \
    ports { local_regs_22_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2417 \
    name local_regs_22_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_28_promoted_reload \
    op interface \
    ports { local_regs_22_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2418 \
    name local_regs_22_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_27_promoted_reload \
    op interface \
    ports { local_regs_22_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2419 \
    name local_regs_22_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_26_promoted_reload \
    op interface \
    ports { local_regs_22_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2420 \
    name local_regs_22_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_25_promoted_reload \
    op interface \
    ports { local_regs_22_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2421 \
    name local_regs_22_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_24_promoted_reload \
    op interface \
    ports { local_regs_22_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2422 \
    name local_regs_22_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_23_promoted_reload \
    op interface \
    ports { local_regs_22_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2423 \
    name local_regs_22_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_22_promoted_reload \
    op interface \
    ports { local_regs_22_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2424 \
    name local_regs_22_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_21_promoted_reload \
    op interface \
    ports { local_regs_22_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2425 \
    name local_regs_22_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_20_promoted_reload \
    op interface \
    ports { local_regs_22_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2426 \
    name local_regs_22_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_19_promoted_reload \
    op interface \
    ports { local_regs_22_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2427 \
    name local_regs_22_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_18_promoted_reload \
    op interface \
    ports { local_regs_22_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2428 \
    name local_regs_22_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_17_promoted_reload \
    op interface \
    ports { local_regs_22_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2429 \
    name local_regs_22_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_16_promoted_reload \
    op interface \
    ports { local_regs_22_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2430 \
    name local_regs_22_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_15_promoted_reload \
    op interface \
    ports { local_regs_22_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2431 \
    name local_regs_22_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_14_promoted_reload \
    op interface \
    ports { local_regs_22_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2432 \
    name local_regs_22_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_13_promoted_reload \
    op interface \
    ports { local_regs_22_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2433 \
    name local_regs_22_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_12_promoted_reload \
    op interface \
    ports { local_regs_22_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2434 \
    name local_regs_22_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_11_promoted_reload \
    op interface \
    ports { local_regs_22_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2435 \
    name local_regs_22_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_10_promoted_reload \
    op interface \
    ports { local_regs_22_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2436 \
    name local_regs_22_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_9_promoted_reload \
    op interface \
    ports { local_regs_22_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2437 \
    name local_regs_22_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_8_promoted_reload \
    op interface \
    ports { local_regs_22_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2438 \
    name local_regs_22_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_7_promoted_reload \
    op interface \
    ports { local_regs_22_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2439 \
    name local_regs_22_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_6_promoted_reload \
    op interface \
    ports { local_regs_22_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2440 \
    name local_regs_22_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_5_promoted_reload \
    op interface \
    ports { local_regs_22_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2441 \
    name local_regs_22_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_4_promoted_reload \
    op interface \
    ports { local_regs_22_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2442 \
    name local_regs_22_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_3_promoted_reload \
    op interface \
    ports { local_regs_22_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2443 \
    name local_regs_22_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_2_promoted_reload \
    op interface \
    ports { local_regs_22_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2444 \
    name local_regs_22_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_1_promoted_reload \
    op interface \
    ports { local_regs_22_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2445 \
    name local_regs_22_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_22_0_promoted_reload \
    op interface \
    ports { local_regs_22_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2446 \
    name local_regs_21_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_31_promoted_reload \
    op interface \
    ports { local_regs_21_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2447 \
    name local_regs_21_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_30_promoted_reload \
    op interface \
    ports { local_regs_21_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2448 \
    name local_regs_21_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_29_promoted_reload \
    op interface \
    ports { local_regs_21_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2449 \
    name local_regs_21_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_28_promoted_reload \
    op interface \
    ports { local_regs_21_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2450 \
    name local_regs_21_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_27_promoted_reload \
    op interface \
    ports { local_regs_21_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2451 \
    name local_regs_21_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_26_promoted_reload \
    op interface \
    ports { local_regs_21_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2452 \
    name local_regs_21_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_25_promoted_reload \
    op interface \
    ports { local_regs_21_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2453 \
    name local_regs_21_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_24_promoted_reload \
    op interface \
    ports { local_regs_21_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2454 \
    name local_regs_21_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_23_promoted_reload \
    op interface \
    ports { local_regs_21_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2455 \
    name local_regs_21_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_22_promoted_reload \
    op interface \
    ports { local_regs_21_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2456 \
    name local_regs_21_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_21_promoted_reload \
    op interface \
    ports { local_regs_21_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2457 \
    name local_regs_21_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_20_promoted_reload \
    op interface \
    ports { local_regs_21_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2458 \
    name local_regs_21_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_19_promoted_reload \
    op interface \
    ports { local_regs_21_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2459 \
    name local_regs_21_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_18_promoted_reload \
    op interface \
    ports { local_regs_21_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2460 \
    name local_regs_21_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_17_promoted_reload \
    op interface \
    ports { local_regs_21_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2461 \
    name local_regs_21_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_16_promoted_reload \
    op interface \
    ports { local_regs_21_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2462 \
    name local_regs_21_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_15_promoted_reload \
    op interface \
    ports { local_regs_21_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2463 \
    name local_regs_21_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_14_promoted_reload \
    op interface \
    ports { local_regs_21_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2464 \
    name local_regs_21_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_13_promoted_reload \
    op interface \
    ports { local_regs_21_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2465 \
    name local_regs_21_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_12_promoted_reload \
    op interface \
    ports { local_regs_21_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2466 \
    name local_regs_21_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_11_promoted_reload \
    op interface \
    ports { local_regs_21_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2467 \
    name local_regs_21_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_10_promoted_reload \
    op interface \
    ports { local_regs_21_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2468 \
    name local_regs_21_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_9_promoted_reload \
    op interface \
    ports { local_regs_21_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2469 \
    name local_regs_21_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_8_promoted_reload \
    op interface \
    ports { local_regs_21_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2470 \
    name local_regs_21_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_7_promoted_reload \
    op interface \
    ports { local_regs_21_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2471 \
    name local_regs_21_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_6_promoted_reload \
    op interface \
    ports { local_regs_21_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2472 \
    name local_regs_21_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_5_promoted_reload \
    op interface \
    ports { local_regs_21_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2473 \
    name local_regs_21_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_4_promoted_reload \
    op interface \
    ports { local_regs_21_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2474 \
    name local_regs_21_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_3_promoted_reload \
    op interface \
    ports { local_regs_21_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2475 \
    name local_regs_21_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_2_promoted_reload \
    op interface \
    ports { local_regs_21_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2476 \
    name local_regs_21_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_1_promoted_reload \
    op interface \
    ports { local_regs_21_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2477 \
    name local_regs_21_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_21_0_promoted_reload \
    op interface \
    ports { local_regs_21_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2478 \
    name local_regs_20_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_31_promoted_reload \
    op interface \
    ports { local_regs_20_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2479 \
    name local_regs_20_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_30_promoted_reload \
    op interface \
    ports { local_regs_20_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2480 \
    name local_regs_20_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_29_promoted_reload \
    op interface \
    ports { local_regs_20_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2481 \
    name local_regs_20_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_28_promoted_reload \
    op interface \
    ports { local_regs_20_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2482 \
    name local_regs_20_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_27_promoted_reload \
    op interface \
    ports { local_regs_20_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2483 \
    name local_regs_20_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_26_promoted_reload \
    op interface \
    ports { local_regs_20_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2484 \
    name local_regs_20_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_25_promoted_reload \
    op interface \
    ports { local_regs_20_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2485 \
    name local_regs_20_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_24_promoted_reload \
    op interface \
    ports { local_regs_20_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2486 \
    name local_regs_20_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_23_promoted_reload \
    op interface \
    ports { local_regs_20_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2487 \
    name local_regs_20_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_22_promoted_reload \
    op interface \
    ports { local_regs_20_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2488 \
    name local_regs_20_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_21_promoted_reload \
    op interface \
    ports { local_regs_20_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2489 \
    name local_regs_20_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_20_promoted_reload \
    op interface \
    ports { local_regs_20_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2490 \
    name local_regs_20_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_19_promoted_reload \
    op interface \
    ports { local_regs_20_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2491 \
    name local_regs_20_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_18_promoted_reload \
    op interface \
    ports { local_regs_20_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2492 \
    name local_regs_20_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_17_promoted_reload \
    op interface \
    ports { local_regs_20_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2493 \
    name local_regs_20_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_16_promoted_reload \
    op interface \
    ports { local_regs_20_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2494 \
    name local_regs_20_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_15_promoted_reload \
    op interface \
    ports { local_regs_20_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2495 \
    name local_regs_20_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_14_promoted_reload \
    op interface \
    ports { local_regs_20_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2496 \
    name local_regs_20_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_13_promoted_reload \
    op interface \
    ports { local_regs_20_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2497 \
    name local_regs_20_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_12_promoted_reload \
    op interface \
    ports { local_regs_20_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2498 \
    name local_regs_20_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_11_promoted_reload \
    op interface \
    ports { local_regs_20_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2499 \
    name local_regs_20_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_10_promoted_reload \
    op interface \
    ports { local_regs_20_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2500 \
    name local_regs_20_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_9_promoted_reload \
    op interface \
    ports { local_regs_20_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2501 \
    name local_regs_20_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_8_promoted_reload \
    op interface \
    ports { local_regs_20_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2502 \
    name local_regs_20_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_7_promoted_reload \
    op interface \
    ports { local_regs_20_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2503 \
    name local_regs_20_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_6_promoted_reload \
    op interface \
    ports { local_regs_20_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2504 \
    name local_regs_20_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_5_promoted_reload \
    op interface \
    ports { local_regs_20_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2505 \
    name local_regs_20_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_4_promoted_reload \
    op interface \
    ports { local_regs_20_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2506 \
    name local_regs_20_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_3_promoted_reload \
    op interface \
    ports { local_regs_20_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2507 \
    name local_regs_20_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_2_promoted_reload \
    op interface \
    ports { local_regs_20_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2508 \
    name local_regs_20_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_1_promoted_reload \
    op interface \
    ports { local_regs_20_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2509 \
    name local_regs_20_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_20_0_promoted_reload \
    op interface \
    ports { local_regs_20_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2510 \
    name local_regs_19_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_31_promoted_reload \
    op interface \
    ports { local_regs_19_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2511 \
    name local_regs_19_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_30_promoted_reload \
    op interface \
    ports { local_regs_19_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2512 \
    name local_regs_19_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_29_promoted_reload \
    op interface \
    ports { local_regs_19_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2513 \
    name local_regs_19_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_28_promoted_reload \
    op interface \
    ports { local_regs_19_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2514 \
    name local_regs_19_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_27_promoted_reload \
    op interface \
    ports { local_regs_19_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2515 \
    name local_regs_19_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_26_promoted_reload \
    op interface \
    ports { local_regs_19_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2516 \
    name local_regs_19_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_25_promoted_reload \
    op interface \
    ports { local_regs_19_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2517 \
    name local_regs_19_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_24_promoted_reload \
    op interface \
    ports { local_regs_19_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2518 \
    name local_regs_19_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_23_promoted_reload \
    op interface \
    ports { local_regs_19_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2519 \
    name local_regs_19_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_22_promoted_reload \
    op interface \
    ports { local_regs_19_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2520 \
    name local_regs_19_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_21_promoted_reload \
    op interface \
    ports { local_regs_19_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2521 \
    name local_regs_19_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_20_promoted_reload \
    op interface \
    ports { local_regs_19_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2522 \
    name local_regs_19_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_19_promoted_reload \
    op interface \
    ports { local_regs_19_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2523 \
    name local_regs_19_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_18_promoted_reload \
    op interface \
    ports { local_regs_19_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2524 \
    name local_regs_19_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_17_promoted_reload \
    op interface \
    ports { local_regs_19_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2525 \
    name local_regs_19_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_16_promoted_reload \
    op interface \
    ports { local_regs_19_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2526 \
    name local_regs_19_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_15_promoted_reload \
    op interface \
    ports { local_regs_19_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2527 \
    name local_regs_19_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_14_promoted_reload \
    op interface \
    ports { local_regs_19_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2528 \
    name local_regs_19_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_13_promoted_reload \
    op interface \
    ports { local_regs_19_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2529 \
    name local_regs_19_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_12_promoted_reload \
    op interface \
    ports { local_regs_19_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2530 \
    name local_regs_19_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_11_promoted_reload \
    op interface \
    ports { local_regs_19_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2531 \
    name local_regs_19_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_10_promoted_reload \
    op interface \
    ports { local_regs_19_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2532 \
    name local_regs_19_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_9_promoted_reload \
    op interface \
    ports { local_regs_19_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2533 \
    name local_regs_19_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_8_promoted_reload \
    op interface \
    ports { local_regs_19_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2534 \
    name local_regs_19_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_7_promoted_reload \
    op interface \
    ports { local_regs_19_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2535 \
    name local_regs_19_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_6_promoted_reload \
    op interface \
    ports { local_regs_19_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2536 \
    name local_regs_19_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_5_promoted_reload \
    op interface \
    ports { local_regs_19_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2537 \
    name local_regs_19_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_4_promoted_reload \
    op interface \
    ports { local_regs_19_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2538 \
    name local_regs_19_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_3_promoted_reload \
    op interface \
    ports { local_regs_19_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2539 \
    name local_regs_19_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_2_promoted_reload \
    op interface \
    ports { local_regs_19_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2540 \
    name local_regs_19_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_1_promoted_reload \
    op interface \
    ports { local_regs_19_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2541 \
    name local_regs_19_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_19_0_promoted_reload \
    op interface \
    ports { local_regs_19_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2542 \
    name local_regs_18_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_31_promoted_reload \
    op interface \
    ports { local_regs_18_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2543 \
    name local_regs_18_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_30_promoted_reload \
    op interface \
    ports { local_regs_18_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2544 \
    name local_regs_18_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_29_promoted_reload \
    op interface \
    ports { local_regs_18_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2545 \
    name local_regs_18_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_28_promoted_reload \
    op interface \
    ports { local_regs_18_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2546 \
    name local_regs_18_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_27_promoted_reload \
    op interface \
    ports { local_regs_18_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2547 \
    name local_regs_18_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_26_promoted_reload \
    op interface \
    ports { local_regs_18_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2548 \
    name local_regs_18_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_25_promoted_reload \
    op interface \
    ports { local_regs_18_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2549 \
    name local_regs_18_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_24_promoted_reload \
    op interface \
    ports { local_regs_18_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2550 \
    name local_regs_18_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_23_promoted_reload \
    op interface \
    ports { local_regs_18_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2551 \
    name local_regs_18_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_22_promoted_reload \
    op interface \
    ports { local_regs_18_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2552 \
    name local_regs_18_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_21_promoted_reload \
    op interface \
    ports { local_regs_18_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2553 \
    name local_regs_18_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_20_promoted_reload \
    op interface \
    ports { local_regs_18_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2554 \
    name local_regs_18_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_19_promoted_reload \
    op interface \
    ports { local_regs_18_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2555 \
    name local_regs_18_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_18_promoted_reload \
    op interface \
    ports { local_regs_18_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2556 \
    name local_regs_18_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_17_promoted_reload \
    op interface \
    ports { local_regs_18_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2557 \
    name local_regs_18_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_16_promoted_reload \
    op interface \
    ports { local_regs_18_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2558 \
    name local_regs_18_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_15_promoted_reload \
    op interface \
    ports { local_regs_18_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2559 \
    name local_regs_18_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_14_promoted_reload \
    op interface \
    ports { local_regs_18_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2560 \
    name local_regs_18_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_13_promoted_reload \
    op interface \
    ports { local_regs_18_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2561 \
    name local_regs_18_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_12_promoted_reload \
    op interface \
    ports { local_regs_18_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2562 \
    name local_regs_18_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_11_promoted_reload \
    op interface \
    ports { local_regs_18_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2563 \
    name local_regs_18_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_10_promoted_reload \
    op interface \
    ports { local_regs_18_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2564 \
    name local_regs_18_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_9_promoted_reload \
    op interface \
    ports { local_regs_18_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2565 \
    name local_regs_18_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_8_promoted_reload \
    op interface \
    ports { local_regs_18_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2566 \
    name local_regs_18_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_7_promoted_reload \
    op interface \
    ports { local_regs_18_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2567 \
    name local_regs_18_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_6_promoted_reload \
    op interface \
    ports { local_regs_18_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2568 \
    name local_regs_18_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_5_promoted_reload \
    op interface \
    ports { local_regs_18_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2569 \
    name local_regs_18_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_4_promoted_reload \
    op interface \
    ports { local_regs_18_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2570 \
    name local_regs_18_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_3_promoted_reload \
    op interface \
    ports { local_regs_18_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2571 \
    name local_regs_18_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_2_promoted_reload \
    op interface \
    ports { local_regs_18_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2572 \
    name local_regs_18_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_1_promoted_reload \
    op interface \
    ports { local_regs_18_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2573 \
    name local_regs_18_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_18_0_promoted_reload \
    op interface \
    ports { local_regs_18_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2574 \
    name local_regs_17_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_31_promoted_reload \
    op interface \
    ports { local_regs_17_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2575 \
    name local_regs_17_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_30_promoted_reload \
    op interface \
    ports { local_regs_17_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2576 \
    name local_regs_17_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_29_promoted_reload \
    op interface \
    ports { local_regs_17_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2577 \
    name local_regs_17_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_28_promoted_reload \
    op interface \
    ports { local_regs_17_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2578 \
    name local_regs_17_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_27_promoted_reload \
    op interface \
    ports { local_regs_17_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2579 \
    name local_regs_17_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_26_promoted_reload \
    op interface \
    ports { local_regs_17_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2580 \
    name local_regs_17_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_25_promoted_reload \
    op interface \
    ports { local_regs_17_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2581 \
    name local_regs_17_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_24_promoted_reload \
    op interface \
    ports { local_regs_17_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2582 \
    name local_regs_17_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_23_promoted_reload \
    op interface \
    ports { local_regs_17_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2583 \
    name local_regs_17_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_22_promoted_reload \
    op interface \
    ports { local_regs_17_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2584 \
    name local_regs_17_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_21_promoted_reload \
    op interface \
    ports { local_regs_17_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2585 \
    name local_regs_17_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_20_promoted_reload \
    op interface \
    ports { local_regs_17_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2586 \
    name local_regs_17_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_19_promoted_reload \
    op interface \
    ports { local_regs_17_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2587 \
    name local_regs_17_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_18_promoted_reload \
    op interface \
    ports { local_regs_17_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2588 \
    name local_regs_17_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_17_promoted_reload \
    op interface \
    ports { local_regs_17_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2589 \
    name local_regs_17_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_16_promoted_reload \
    op interface \
    ports { local_regs_17_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2590 \
    name local_regs_17_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_15_promoted_reload \
    op interface \
    ports { local_regs_17_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2591 \
    name local_regs_17_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_14_promoted_reload \
    op interface \
    ports { local_regs_17_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2592 \
    name local_regs_17_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_13_promoted_reload \
    op interface \
    ports { local_regs_17_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2593 \
    name local_regs_17_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_12_promoted_reload \
    op interface \
    ports { local_regs_17_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2594 \
    name local_regs_17_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_11_promoted_reload \
    op interface \
    ports { local_regs_17_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2595 \
    name local_regs_17_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_10_promoted_reload \
    op interface \
    ports { local_regs_17_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2596 \
    name local_regs_17_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_9_promoted_reload \
    op interface \
    ports { local_regs_17_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2597 \
    name local_regs_17_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_8_promoted_reload \
    op interface \
    ports { local_regs_17_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2598 \
    name local_regs_17_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_7_promoted_reload \
    op interface \
    ports { local_regs_17_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2599 \
    name local_regs_17_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_6_promoted_reload \
    op interface \
    ports { local_regs_17_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2600 \
    name local_regs_17_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_5_promoted_reload \
    op interface \
    ports { local_regs_17_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2601 \
    name local_regs_17_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_4_promoted_reload \
    op interface \
    ports { local_regs_17_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2602 \
    name local_regs_17_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_3_promoted_reload \
    op interface \
    ports { local_regs_17_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2603 \
    name local_regs_17_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_2_promoted_reload \
    op interface \
    ports { local_regs_17_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2604 \
    name local_regs_17_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_1_promoted_reload \
    op interface \
    ports { local_regs_17_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2605 \
    name local_regs_17_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_17_0_promoted_reload \
    op interface \
    ports { local_regs_17_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2606 \
    name local_regs_16_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_31_promoted_reload \
    op interface \
    ports { local_regs_16_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2607 \
    name local_regs_16_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_30_promoted_reload \
    op interface \
    ports { local_regs_16_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2608 \
    name local_regs_16_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_29_promoted_reload \
    op interface \
    ports { local_regs_16_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2609 \
    name local_regs_16_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_28_promoted_reload \
    op interface \
    ports { local_regs_16_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2610 \
    name local_regs_16_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_27_promoted_reload \
    op interface \
    ports { local_regs_16_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2611 \
    name local_regs_16_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_26_promoted_reload \
    op interface \
    ports { local_regs_16_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2612 \
    name local_regs_16_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_25_promoted_reload \
    op interface \
    ports { local_regs_16_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2613 \
    name local_regs_16_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_24_promoted_reload \
    op interface \
    ports { local_regs_16_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2614 \
    name local_regs_16_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_23_promoted_reload \
    op interface \
    ports { local_regs_16_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2615 \
    name local_regs_16_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_22_promoted_reload \
    op interface \
    ports { local_regs_16_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2616 \
    name local_regs_16_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_21_promoted_reload \
    op interface \
    ports { local_regs_16_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2617 \
    name local_regs_16_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_20_promoted_reload \
    op interface \
    ports { local_regs_16_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2618 \
    name local_regs_16_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_19_promoted_reload \
    op interface \
    ports { local_regs_16_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2619 \
    name local_regs_16_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_18_promoted_reload \
    op interface \
    ports { local_regs_16_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2620 \
    name local_regs_16_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_17_promoted_reload \
    op interface \
    ports { local_regs_16_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2621 \
    name local_regs_16_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_16_promoted_reload \
    op interface \
    ports { local_regs_16_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2622 \
    name local_regs_16_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_15_promoted_reload \
    op interface \
    ports { local_regs_16_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2623 \
    name local_regs_16_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_14_promoted_reload \
    op interface \
    ports { local_regs_16_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2624 \
    name local_regs_16_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_13_promoted_reload \
    op interface \
    ports { local_regs_16_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2625 \
    name local_regs_16_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_12_promoted_reload \
    op interface \
    ports { local_regs_16_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2626 \
    name local_regs_16_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_11_promoted_reload \
    op interface \
    ports { local_regs_16_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2627 \
    name local_regs_16_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_10_promoted_reload \
    op interface \
    ports { local_regs_16_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2628 \
    name local_regs_16_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_9_promoted_reload \
    op interface \
    ports { local_regs_16_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2629 \
    name local_regs_16_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_8_promoted_reload \
    op interface \
    ports { local_regs_16_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2630 \
    name local_regs_16_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_7_promoted_reload \
    op interface \
    ports { local_regs_16_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2631 \
    name local_regs_16_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_6_promoted_reload \
    op interface \
    ports { local_regs_16_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2632 \
    name local_regs_16_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_5_promoted_reload \
    op interface \
    ports { local_regs_16_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2633 \
    name local_regs_16_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_4_promoted_reload \
    op interface \
    ports { local_regs_16_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2634 \
    name local_regs_16_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_3_promoted_reload \
    op interface \
    ports { local_regs_16_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2635 \
    name local_regs_16_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_2_promoted_reload \
    op interface \
    ports { local_regs_16_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2636 \
    name local_regs_16_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_1_promoted_reload \
    op interface \
    ports { local_regs_16_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2637 \
    name local_regs_16_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_16_0_promoted_reload \
    op interface \
    ports { local_regs_16_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2638 \
    name local_regs_15_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_31_promoted_reload \
    op interface \
    ports { local_regs_15_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2639 \
    name local_regs_15_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_30_promoted_reload \
    op interface \
    ports { local_regs_15_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2640 \
    name local_regs_15_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_29_promoted_reload \
    op interface \
    ports { local_regs_15_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2641 \
    name local_regs_15_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_28_promoted_reload \
    op interface \
    ports { local_regs_15_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2642 \
    name local_regs_15_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_27_promoted_reload \
    op interface \
    ports { local_regs_15_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2643 \
    name local_regs_15_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_26_promoted_reload \
    op interface \
    ports { local_regs_15_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2644 \
    name local_regs_15_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_25_promoted_reload \
    op interface \
    ports { local_regs_15_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2645 \
    name local_regs_15_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_24_promoted_reload \
    op interface \
    ports { local_regs_15_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2646 \
    name local_regs_15_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_23_promoted_reload \
    op interface \
    ports { local_regs_15_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2647 \
    name local_regs_15_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_22_promoted_reload \
    op interface \
    ports { local_regs_15_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2648 \
    name local_regs_15_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_21_promoted_reload \
    op interface \
    ports { local_regs_15_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2649 \
    name local_regs_15_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_20_promoted_reload \
    op interface \
    ports { local_regs_15_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2650 \
    name local_regs_15_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_19_promoted_reload \
    op interface \
    ports { local_regs_15_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2651 \
    name local_regs_15_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_18_promoted_reload \
    op interface \
    ports { local_regs_15_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2652 \
    name local_regs_15_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_17_promoted_reload \
    op interface \
    ports { local_regs_15_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2653 \
    name local_regs_15_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_16_promoted_reload \
    op interface \
    ports { local_regs_15_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2654 \
    name local_regs_15_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_15_promoted_reload \
    op interface \
    ports { local_regs_15_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2655 \
    name local_regs_15_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_14_promoted_reload \
    op interface \
    ports { local_regs_15_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2656 \
    name local_regs_15_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_13_promoted_reload \
    op interface \
    ports { local_regs_15_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2657 \
    name local_regs_15_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_12_promoted_reload \
    op interface \
    ports { local_regs_15_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2658 \
    name local_regs_15_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_11_promoted_reload \
    op interface \
    ports { local_regs_15_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2659 \
    name local_regs_15_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_10_promoted_reload \
    op interface \
    ports { local_regs_15_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2660 \
    name local_regs_15_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_9_promoted_reload \
    op interface \
    ports { local_regs_15_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2661 \
    name local_regs_15_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_8_promoted_reload \
    op interface \
    ports { local_regs_15_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2662 \
    name local_regs_15_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_7_promoted_reload \
    op interface \
    ports { local_regs_15_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2663 \
    name local_regs_15_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_6_promoted_reload \
    op interface \
    ports { local_regs_15_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2664 \
    name local_regs_15_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_5_promoted_reload \
    op interface \
    ports { local_regs_15_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2665 \
    name local_regs_15_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_4_promoted_reload \
    op interface \
    ports { local_regs_15_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2666 \
    name local_regs_15_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_3_promoted_reload \
    op interface \
    ports { local_regs_15_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2667 \
    name local_regs_15_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_2_promoted_reload \
    op interface \
    ports { local_regs_15_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2668 \
    name local_regs_15_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_1_promoted_reload \
    op interface \
    ports { local_regs_15_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2669 \
    name local_regs_15_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_15_0_promoted_reload \
    op interface \
    ports { local_regs_15_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2670 \
    name local_regs_14_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_31_promoted_reload \
    op interface \
    ports { local_regs_14_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2671 \
    name local_regs_14_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_30_promoted_reload \
    op interface \
    ports { local_regs_14_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2672 \
    name local_regs_14_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_29_promoted_reload \
    op interface \
    ports { local_regs_14_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2673 \
    name local_regs_14_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_28_promoted_reload \
    op interface \
    ports { local_regs_14_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2674 \
    name local_regs_14_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_27_promoted_reload \
    op interface \
    ports { local_regs_14_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2675 \
    name local_regs_14_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_26_promoted_reload \
    op interface \
    ports { local_regs_14_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2676 \
    name local_regs_14_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_25_promoted_reload \
    op interface \
    ports { local_regs_14_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2677 \
    name local_regs_14_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_24_promoted_reload \
    op interface \
    ports { local_regs_14_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2678 \
    name local_regs_14_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_23_promoted_reload \
    op interface \
    ports { local_regs_14_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2679 \
    name local_regs_14_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_22_promoted_reload \
    op interface \
    ports { local_regs_14_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2680 \
    name local_regs_14_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_21_promoted_reload \
    op interface \
    ports { local_regs_14_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2681 \
    name local_regs_14_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_20_promoted_reload \
    op interface \
    ports { local_regs_14_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2682 \
    name local_regs_14_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_19_promoted_reload \
    op interface \
    ports { local_regs_14_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2683 \
    name local_regs_14_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_18_promoted_reload \
    op interface \
    ports { local_regs_14_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2684 \
    name local_regs_14_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_17_promoted_reload \
    op interface \
    ports { local_regs_14_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2685 \
    name local_regs_14_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_16_promoted_reload \
    op interface \
    ports { local_regs_14_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2686 \
    name local_regs_14_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_15_promoted_reload \
    op interface \
    ports { local_regs_14_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2687 \
    name local_regs_14_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_14_promoted_reload \
    op interface \
    ports { local_regs_14_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2688 \
    name local_regs_14_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_13_promoted_reload \
    op interface \
    ports { local_regs_14_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2689 \
    name local_regs_14_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_12_promoted_reload \
    op interface \
    ports { local_regs_14_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2690 \
    name local_regs_14_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_11_promoted_reload \
    op interface \
    ports { local_regs_14_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2691 \
    name local_regs_14_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_10_promoted_reload \
    op interface \
    ports { local_regs_14_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2692 \
    name local_regs_14_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_9_promoted_reload \
    op interface \
    ports { local_regs_14_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2693 \
    name local_regs_14_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_8_promoted_reload \
    op interface \
    ports { local_regs_14_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2694 \
    name local_regs_14_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_7_promoted_reload \
    op interface \
    ports { local_regs_14_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2695 \
    name local_regs_14_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_6_promoted_reload \
    op interface \
    ports { local_regs_14_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2696 \
    name local_regs_14_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_5_promoted_reload \
    op interface \
    ports { local_regs_14_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2697 \
    name local_regs_14_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_4_promoted_reload \
    op interface \
    ports { local_regs_14_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2698 \
    name local_regs_14_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_3_promoted_reload \
    op interface \
    ports { local_regs_14_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2699 \
    name local_regs_14_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_2_promoted_reload \
    op interface \
    ports { local_regs_14_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2700 \
    name local_regs_14_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_1_promoted_reload \
    op interface \
    ports { local_regs_14_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2701 \
    name local_regs_14_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_14_0_promoted_reload \
    op interface \
    ports { local_regs_14_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2702 \
    name local_regs_13_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_31_promoted_reload \
    op interface \
    ports { local_regs_13_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2703 \
    name local_regs_13_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_30_promoted_reload \
    op interface \
    ports { local_regs_13_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2704 \
    name local_regs_13_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_29_promoted_reload \
    op interface \
    ports { local_regs_13_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2705 \
    name local_regs_13_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_28_promoted_reload \
    op interface \
    ports { local_regs_13_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2706 \
    name local_regs_13_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_27_promoted_reload \
    op interface \
    ports { local_regs_13_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2707 \
    name local_regs_13_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_26_promoted_reload \
    op interface \
    ports { local_regs_13_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2708 \
    name local_regs_13_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_25_promoted_reload \
    op interface \
    ports { local_regs_13_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2709 \
    name local_regs_13_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_24_promoted_reload \
    op interface \
    ports { local_regs_13_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2710 \
    name local_regs_13_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_23_promoted_reload \
    op interface \
    ports { local_regs_13_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2711 \
    name local_regs_13_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_22_promoted_reload \
    op interface \
    ports { local_regs_13_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2712 \
    name local_regs_13_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_21_promoted_reload \
    op interface \
    ports { local_regs_13_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2713 \
    name local_regs_13_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_20_promoted_reload \
    op interface \
    ports { local_regs_13_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2714 \
    name local_regs_13_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_19_promoted_reload \
    op interface \
    ports { local_regs_13_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2715 \
    name local_regs_13_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_18_promoted_reload \
    op interface \
    ports { local_regs_13_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2716 \
    name local_regs_13_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_17_promoted_reload \
    op interface \
    ports { local_regs_13_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2717 \
    name local_regs_13_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_16_promoted_reload \
    op interface \
    ports { local_regs_13_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2718 \
    name local_regs_13_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_15_promoted_reload \
    op interface \
    ports { local_regs_13_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2719 \
    name local_regs_13_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_14_promoted_reload \
    op interface \
    ports { local_regs_13_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2720 \
    name local_regs_13_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_13_promoted_reload \
    op interface \
    ports { local_regs_13_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2721 \
    name local_regs_13_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_12_promoted_reload \
    op interface \
    ports { local_regs_13_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2722 \
    name local_regs_13_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_11_promoted_reload \
    op interface \
    ports { local_regs_13_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2723 \
    name local_regs_13_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_10_promoted_reload \
    op interface \
    ports { local_regs_13_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2724 \
    name local_regs_13_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_9_promoted_reload \
    op interface \
    ports { local_regs_13_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2725 \
    name local_regs_13_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_8_promoted_reload \
    op interface \
    ports { local_regs_13_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2726 \
    name local_regs_13_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_7_promoted_reload \
    op interface \
    ports { local_regs_13_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2727 \
    name local_regs_13_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_6_promoted_reload \
    op interface \
    ports { local_regs_13_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2728 \
    name local_regs_13_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_5_promoted_reload \
    op interface \
    ports { local_regs_13_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2729 \
    name local_regs_13_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_4_promoted_reload \
    op interface \
    ports { local_regs_13_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2730 \
    name local_regs_13_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_3_promoted_reload \
    op interface \
    ports { local_regs_13_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2731 \
    name local_regs_13_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_2_promoted_reload \
    op interface \
    ports { local_regs_13_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2732 \
    name local_regs_13_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_1_promoted_reload \
    op interface \
    ports { local_regs_13_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2733 \
    name local_regs_13_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_13_0_promoted_reload \
    op interface \
    ports { local_regs_13_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2734 \
    name local_regs_12_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_31_promoted_reload \
    op interface \
    ports { local_regs_12_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2735 \
    name local_regs_12_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_30_promoted_reload \
    op interface \
    ports { local_regs_12_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2736 \
    name local_regs_12_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_29_promoted_reload \
    op interface \
    ports { local_regs_12_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2737 \
    name local_regs_12_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_28_promoted_reload \
    op interface \
    ports { local_regs_12_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2738 \
    name local_regs_12_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_27_promoted_reload \
    op interface \
    ports { local_regs_12_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2739 \
    name local_regs_12_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_26_promoted_reload \
    op interface \
    ports { local_regs_12_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2740 \
    name local_regs_12_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_25_promoted_reload \
    op interface \
    ports { local_regs_12_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2741 \
    name local_regs_12_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_24_promoted_reload \
    op interface \
    ports { local_regs_12_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2742 \
    name local_regs_12_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_23_promoted_reload \
    op interface \
    ports { local_regs_12_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2743 \
    name local_regs_12_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_22_promoted_reload \
    op interface \
    ports { local_regs_12_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2744 \
    name local_regs_12_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_21_promoted_reload \
    op interface \
    ports { local_regs_12_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2745 \
    name local_regs_12_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_20_promoted_reload \
    op interface \
    ports { local_regs_12_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2746 \
    name local_regs_12_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_19_promoted_reload \
    op interface \
    ports { local_regs_12_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2747 \
    name local_regs_12_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_18_promoted_reload \
    op interface \
    ports { local_regs_12_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2748 \
    name local_regs_12_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_17_promoted_reload \
    op interface \
    ports { local_regs_12_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2749 \
    name local_regs_12_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_16_promoted_reload \
    op interface \
    ports { local_regs_12_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2750 \
    name local_regs_12_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_15_promoted_reload \
    op interface \
    ports { local_regs_12_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2751 \
    name local_regs_12_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_14_promoted_reload \
    op interface \
    ports { local_regs_12_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2752 \
    name local_regs_12_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_13_promoted_reload \
    op interface \
    ports { local_regs_12_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2753 \
    name local_regs_12_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_12_promoted_reload \
    op interface \
    ports { local_regs_12_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2754 \
    name local_regs_12_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_11_promoted_reload \
    op interface \
    ports { local_regs_12_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2755 \
    name local_regs_12_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_10_promoted_reload \
    op interface \
    ports { local_regs_12_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2756 \
    name local_regs_12_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_9_promoted_reload \
    op interface \
    ports { local_regs_12_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2757 \
    name local_regs_12_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_8_promoted_reload \
    op interface \
    ports { local_regs_12_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2758 \
    name local_regs_12_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_7_promoted_reload \
    op interface \
    ports { local_regs_12_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2759 \
    name local_regs_12_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_6_promoted_reload \
    op interface \
    ports { local_regs_12_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2760 \
    name local_regs_12_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_5_promoted_reload \
    op interface \
    ports { local_regs_12_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2761 \
    name local_regs_12_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_4_promoted_reload \
    op interface \
    ports { local_regs_12_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2762 \
    name local_regs_12_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_3_promoted_reload \
    op interface \
    ports { local_regs_12_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2763 \
    name local_regs_12_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_2_promoted_reload \
    op interface \
    ports { local_regs_12_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2764 \
    name local_regs_12_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_1_promoted_reload \
    op interface \
    ports { local_regs_12_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2765 \
    name local_regs_12_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_12_0_promoted_reload \
    op interface \
    ports { local_regs_12_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2766 \
    name local_regs_11_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_31_promoted_reload \
    op interface \
    ports { local_regs_11_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2767 \
    name local_regs_11_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_30_promoted_reload \
    op interface \
    ports { local_regs_11_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2768 \
    name local_regs_11_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_29_promoted_reload \
    op interface \
    ports { local_regs_11_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2769 \
    name local_regs_11_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_28_promoted_reload \
    op interface \
    ports { local_regs_11_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2770 \
    name local_regs_11_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_27_promoted_reload \
    op interface \
    ports { local_regs_11_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2771 \
    name local_regs_11_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_26_promoted_reload \
    op interface \
    ports { local_regs_11_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2772 \
    name local_regs_11_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_25_promoted_reload \
    op interface \
    ports { local_regs_11_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2773 \
    name local_regs_11_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_24_promoted_reload \
    op interface \
    ports { local_regs_11_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2774 \
    name local_regs_11_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_23_promoted_reload \
    op interface \
    ports { local_regs_11_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2775 \
    name local_regs_11_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_22_promoted_reload \
    op interface \
    ports { local_regs_11_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2776 \
    name local_regs_11_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_21_promoted_reload \
    op interface \
    ports { local_regs_11_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2777 \
    name local_regs_11_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_20_promoted_reload \
    op interface \
    ports { local_regs_11_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2778 \
    name local_regs_11_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_19_promoted_reload \
    op interface \
    ports { local_regs_11_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2779 \
    name local_regs_11_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_18_promoted_reload \
    op interface \
    ports { local_regs_11_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2780 \
    name local_regs_11_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_17_promoted_reload \
    op interface \
    ports { local_regs_11_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2781 \
    name local_regs_11_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_16_promoted_reload \
    op interface \
    ports { local_regs_11_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2782 \
    name local_regs_11_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_15_promoted_reload \
    op interface \
    ports { local_regs_11_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2783 \
    name local_regs_11_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_14_promoted_reload \
    op interface \
    ports { local_regs_11_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2784 \
    name local_regs_11_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_13_promoted_reload \
    op interface \
    ports { local_regs_11_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2785 \
    name local_regs_11_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_12_promoted_reload \
    op interface \
    ports { local_regs_11_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2786 \
    name local_regs_11_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_11_promoted_reload \
    op interface \
    ports { local_regs_11_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2787 \
    name local_regs_11_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_10_promoted_reload \
    op interface \
    ports { local_regs_11_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2788 \
    name local_regs_11_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_9_promoted_reload \
    op interface \
    ports { local_regs_11_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2789 \
    name local_regs_11_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_8_promoted_reload \
    op interface \
    ports { local_regs_11_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2790 \
    name local_regs_11_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_7_promoted_reload \
    op interface \
    ports { local_regs_11_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2791 \
    name local_regs_11_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_6_promoted_reload \
    op interface \
    ports { local_regs_11_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2792 \
    name local_regs_11_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_5_promoted_reload \
    op interface \
    ports { local_regs_11_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2793 \
    name local_regs_11_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_4_promoted_reload \
    op interface \
    ports { local_regs_11_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2794 \
    name local_regs_11_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_3_promoted_reload \
    op interface \
    ports { local_regs_11_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2795 \
    name local_regs_11_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_2_promoted_reload \
    op interface \
    ports { local_regs_11_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2796 \
    name local_regs_11_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_1_promoted_reload \
    op interface \
    ports { local_regs_11_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2797 \
    name local_regs_11_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_11_0_promoted_reload \
    op interface \
    ports { local_regs_11_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2798 \
    name local_regs_10_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_31_promoted_reload \
    op interface \
    ports { local_regs_10_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2799 \
    name local_regs_10_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_30_promoted_reload \
    op interface \
    ports { local_regs_10_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2800 \
    name local_regs_10_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_29_promoted_reload \
    op interface \
    ports { local_regs_10_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2801 \
    name local_regs_10_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_28_promoted_reload \
    op interface \
    ports { local_regs_10_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2802 \
    name local_regs_10_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_27_promoted_reload \
    op interface \
    ports { local_regs_10_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2803 \
    name local_regs_10_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_26_promoted_reload \
    op interface \
    ports { local_regs_10_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2804 \
    name local_regs_10_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_25_promoted_reload \
    op interface \
    ports { local_regs_10_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2805 \
    name local_regs_10_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_24_promoted_reload \
    op interface \
    ports { local_regs_10_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2806 \
    name local_regs_10_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_23_promoted_reload \
    op interface \
    ports { local_regs_10_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2807 \
    name local_regs_10_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_22_promoted_reload \
    op interface \
    ports { local_regs_10_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2808 \
    name local_regs_10_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_21_promoted_reload \
    op interface \
    ports { local_regs_10_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2809 \
    name local_regs_10_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_20_promoted_reload \
    op interface \
    ports { local_regs_10_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2810 \
    name local_regs_10_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_19_promoted_reload \
    op interface \
    ports { local_regs_10_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2811 \
    name local_regs_10_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_18_promoted_reload \
    op interface \
    ports { local_regs_10_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2812 \
    name local_regs_10_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_17_promoted_reload \
    op interface \
    ports { local_regs_10_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2813 \
    name local_regs_10_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_16_promoted_reload \
    op interface \
    ports { local_regs_10_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2814 \
    name local_regs_10_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_15_promoted_reload \
    op interface \
    ports { local_regs_10_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2815 \
    name local_regs_10_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_14_promoted_reload \
    op interface \
    ports { local_regs_10_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2816 \
    name local_regs_10_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_13_promoted_reload \
    op interface \
    ports { local_regs_10_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2817 \
    name local_regs_10_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_12_promoted_reload \
    op interface \
    ports { local_regs_10_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2818 \
    name local_regs_10_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_11_promoted_reload \
    op interface \
    ports { local_regs_10_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2819 \
    name local_regs_10_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_10_promoted_reload \
    op interface \
    ports { local_regs_10_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2820 \
    name local_regs_10_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_9_promoted_reload \
    op interface \
    ports { local_regs_10_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2821 \
    name local_regs_10_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_8_promoted_reload \
    op interface \
    ports { local_regs_10_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2822 \
    name local_regs_10_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_7_promoted_reload \
    op interface \
    ports { local_regs_10_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2823 \
    name local_regs_10_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_6_promoted_reload \
    op interface \
    ports { local_regs_10_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2824 \
    name local_regs_10_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_5_promoted_reload \
    op interface \
    ports { local_regs_10_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2825 \
    name local_regs_10_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_4_promoted_reload \
    op interface \
    ports { local_regs_10_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2826 \
    name local_regs_10_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_3_promoted_reload \
    op interface \
    ports { local_regs_10_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2827 \
    name local_regs_10_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_2_promoted_reload \
    op interface \
    ports { local_regs_10_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2828 \
    name local_regs_10_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_1_promoted_reload \
    op interface \
    ports { local_regs_10_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2829 \
    name local_regs_10_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_10_0_promoted_reload \
    op interface \
    ports { local_regs_10_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2830 \
    name local_regs_9_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_31_promoted_reload \
    op interface \
    ports { local_regs_9_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2831 \
    name local_regs_9_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_30_promoted_reload \
    op interface \
    ports { local_regs_9_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2832 \
    name local_regs_9_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_29_promoted_reload \
    op interface \
    ports { local_regs_9_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2833 \
    name local_regs_9_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_28_promoted_reload \
    op interface \
    ports { local_regs_9_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2834 \
    name local_regs_9_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_27_promoted_reload \
    op interface \
    ports { local_regs_9_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2835 \
    name local_regs_9_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_26_promoted_reload \
    op interface \
    ports { local_regs_9_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2836 \
    name local_regs_9_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_25_promoted_reload \
    op interface \
    ports { local_regs_9_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2837 \
    name local_regs_9_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_24_promoted_reload \
    op interface \
    ports { local_regs_9_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2838 \
    name local_regs_9_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_23_promoted_reload \
    op interface \
    ports { local_regs_9_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2839 \
    name local_regs_9_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_22_promoted_reload \
    op interface \
    ports { local_regs_9_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2840 \
    name local_regs_9_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_21_promoted_reload \
    op interface \
    ports { local_regs_9_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2841 \
    name local_regs_9_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_20_promoted_reload \
    op interface \
    ports { local_regs_9_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2842 \
    name local_regs_9_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_19_promoted_reload \
    op interface \
    ports { local_regs_9_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2843 \
    name local_regs_9_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_18_promoted_reload \
    op interface \
    ports { local_regs_9_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2844 \
    name local_regs_9_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_17_promoted_reload \
    op interface \
    ports { local_regs_9_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2845 \
    name local_regs_9_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_16_promoted_reload \
    op interface \
    ports { local_regs_9_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2846 \
    name local_regs_9_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_15_promoted_reload \
    op interface \
    ports { local_regs_9_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2847 \
    name local_regs_9_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_14_promoted_reload \
    op interface \
    ports { local_regs_9_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2848 \
    name local_regs_9_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_13_promoted_reload \
    op interface \
    ports { local_regs_9_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2849 \
    name local_regs_9_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_12_promoted_reload \
    op interface \
    ports { local_regs_9_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2850 \
    name local_regs_9_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_11_promoted_reload \
    op interface \
    ports { local_regs_9_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2851 \
    name local_regs_9_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_10_promoted_reload \
    op interface \
    ports { local_regs_9_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2852 \
    name local_regs_9_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_9_promoted_reload \
    op interface \
    ports { local_regs_9_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2853 \
    name local_regs_9_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_8_promoted_reload \
    op interface \
    ports { local_regs_9_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2854 \
    name local_regs_9_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_7_promoted_reload \
    op interface \
    ports { local_regs_9_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2855 \
    name local_regs_9_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_6_promoted_reload \
    op interface \
    ports { local_regs_9_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2856 \
    name local_regs_9_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_5_promoted_reload \
    op interface \
    ports { local_regs_9_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2857 \
    name local_regs_9_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_4_promoted_reload \
    op interface \
    ports { local_regs_9_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2858 \
    name local_regs_9_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_3_promoted_reload \
    op interface \
    ports { local_regs_9_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2859 \
    name local_regs_9_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_2_promoted_reload \
    op interface \
    ports { local_regs_9_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2860 \
    name local_regs_9_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_1_promoted_reload \
    op interface \
    ports { local_regs_9_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2861 \
    name local_regs_9_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_9_0_promoted_reload \
    op interface \
    ports { local_regs_9_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2862 \
    name local_regs_8_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_31_promoted_reload \
    op interface \
    ports { local_regs_8_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2863 \
    name local_regs_8_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_30_promoted_reload \
    op interface \
    ports { local_regs_8_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2864 \
    name local_regs_8_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_29_promoted_reload \
    op interface \
    ports { local_regs_8_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2865 \
    name local_regs_8_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_28_promoted_reload \
    op interface \
    ports { local_regs_8_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2866 \
    name local_regs_8_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_27_promoted_reload \
    op interface \
    ports { local_regs_8_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2867 \
    name local_regs_8_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_26_promoted_reload \
    op interface \
    ports { local_regs_8_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2868 \
    name local_regs_8_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_25_promoted_reload \
    op interface \
    ports { local_regs_8_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2869 \
    name local_regs_8_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_24_promoted_reload \
    op interface \
    ports { local_regs_8_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2870 \
    name local_regs_8_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_23_promoted_reload \
    op interface \
    ports { local_regs_8_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2871 \
    name local_regs_8_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_22_promoted_reload \
    op interface \
    ports { local_regs_8_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2872 \
    name local_regs_8_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_21_promoted_reload \
    op interface \
    ports { local_regs_8_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2873 \
    name local_regs_8_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_20_promoted_reload \
    op interface \
    ports { local_regs_8_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2874 \
    name local_regs_8_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_19_promoted_reload \
    op interface \
    ports { local_regs_8_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2875 \
    name local_regs_8_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_18_promoted_reload \
    op interface \
    ports { local_regs_8_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2876 \
    name local_regs_8_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_17_promoted_reload \
    op interface \
    ports { local_regs_8_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2877 \
    name local_regs_8_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_16_promoted_reload \
    op interface \
    ports { local_regs_8_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2878 \
    name local_regs_8_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_15_promoted_reload \
    op interface \
    ports { local_regs_8_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2879 \
    name local_regs_8_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_14_promoted_reload \
    op interface \
    ports { local_regs_8_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2880 \
    name local_regs_8_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_13_promoted_reload \
    op interface \
    ports { local_regs_8_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2881 \
    name local_regs_8_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_12_promoted_reload \
    op interface \
    ports { local_regs_8_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2882 \
    name local_regs_8_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_11_promoted_reload \
    op interface \
    ports { local_regs_8_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2883 \
    name local_regs_8_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_10_promoted_reload \
    op interface \
    ports { local_regs_8_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2884 \
    name local_regs_8_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_9_promoted_reload \
    op interface \
    ports { local_regs_8_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2885 \
    name local_regs_8_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_8_promoted_reload \
    op interface \
    ports { local_regs_8_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2886 \
    name local_regs_8_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_7_promoted_reload \
    op interface \
    ports { local_regs_8_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2887 \
    name local_regs_8_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_6_promoted_reload \
    op interface \
    ports { local_regs_8_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2888 \
    name local_regs_8_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_5_promoted_reload \
    op interface \
    ports { local_regs_8_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2889 \
    name local_regs_8_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_4_promoted_reload \
    op interface \
    ports { local_regs_8_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2890 \
    name local_regs_8_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_3_promoted_reload \
    op interface \
    ports { local_regs_8_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2891 \
    name local_regs_8_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_2_promoted_reload \
    op interface \
    ports { local_regs_8_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2892 \
    name local_regs_8_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_1_promoted_reload \
    op interface \
    ports { local_regs_8_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2893 \
    name local_regs_8_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_8_0_promoted_reload \
    op interface \
    ports { local_regs_8_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2894 \
    name local_regs_7_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_31_promoted_reload \
    op interface \
    ports { local_regs_7_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2895 \
    name local_regs_7_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_30_promoted_reload \
    op interface \
    ports { local_regs_7_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2896 \
    name local_regs_7_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_29_promoted_reload \
    op interface \
    ports { local_regs_7_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2897 \
    name local_regs_7_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_28_promoted_reload \
    op interface \
    ports { local_regs_7_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2898 \
    name local_regs_7_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_27_promoted_reload \
    op interface \
    ports { local_regs_7_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2899 \
    name local_regs_7_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_26_promoted_reload \
    op interface \
    ports { local_regs_7_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2900 \
    name local_regs_7_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_25_promoted_reload \
    op interface \
    ports { local_regs_7_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2901 \
    name local_regs_7_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_24_promoted_reload \
    op interface \
    ports { local_regs_7_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2902 \
    name local_regs_7_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_23_promoted_reload \
    op interface \
    ports { local_regs_7_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2903 \
    name local_regs_7_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_22_promoted_reload \
    op interface \
    ports { local_regs_7_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2904 \
    name local_regs_7_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_21_promoted_reload \
    op interface \
    ports { local_regs_7_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2905 \
    name local_regs_7_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_20_promoted_reload \
    op interface \
    ports { local_regs_7_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2906 \
    name local_regs_7_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_19_promoted_reload \
    op interface \
    ports { local_regs_7_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2907 \
    name local_regs_7_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_18_promoted_reload \
    op interface \
    ports { local_regs_7_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2908 \
    name local_regs_7_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_17_promoted_reload \
    op interface \
    ports { local_regs_7_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2909 \
    name local_regs_7_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_16_promoted_reload \
    op interface \
    ports { local_regs_7_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2910 \
    name local_regs_7_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_15_promoted_reload \
    op interface \
    ports { local_regs_7_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2911 \
    name local_regs_7_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_14_promoted_reload \
    op interface \
    ports { local_regs_7_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2912 \
    name local_regs_7_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_13_promoted_reload \
    op interface \
    ports { local_regs_7_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2913 \
    name local_regs_7_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_12_promoted_reload \
    op interface \
    ports { local_regs_7_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2914 \
    name local_regs_7_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_11_promoted_reload \
    op interface \
    ports { local_regs_7_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2915 \
    name local_regs_7_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_10_promoted_reload \
    op interface \
    ports { local_regs_7_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2916 \
    name local_regs_7_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_9_promoted_reload \
    op interface \
    ports { local_regs_7_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2917 \
    name local_regs_7_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_8_promoted_reload \
    op interface \
    ports { local_regs_7_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2918 \
    name local_regs_7_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_7_promoted_reload \
    op interface \
    ports { local_regs_7_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2919 \
    name local_regs_7_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_6_promoted_reload \
    op interface \
    ports { local_regs_7_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2920 \
    name local_regs_7_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_5_promoted_reload \
    op interface \
    ports { local_regs_7_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2921 \
    name local_regs_7_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_4_promoted_reload \
    op interface \
    ports { local_regs_7_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2922 \
    name local_regs_7_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_3_promoted_reload \
    op interface \
    ports { local_regs_7_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2923 \
    name local_regs_7_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_2_promoted_reload \
    op interface \
    ports { local_regs_7_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2924 \
    name local_regs_7_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_1_promoted_reload \
    op interface \
    ports { local_regs_7_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2925 \
    name local_regs_7_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_7_0_promoted_reload \
    op interface \
    ports { local_regs_7_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2926 \
    name local_regs_6_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_31_promoted_reload \
    op interface \
    ports { local_regs_6_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2927 \
    name local_regs_6_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_30_promoted_reload \
    op interface \
    ports { local_regs_6_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2928 \
    name local_regs_6_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_29_promoted_reload \
    op interface \
    ports { local_regs_6_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2929 \
    name local_regs_6_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_28_promoted_reload \
    op interface \
    ports { local_regs_6_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2930 \
    name local_regs_6_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_27_promoted_reload \
    op interface \
    ports { local_regs_6_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2931 \
    name local_regs_6_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_26_promoted_reload \
    op interface \
    ports { local_regs_6_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2932 \
    name local_regs_6_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_25_promoted_reload \
    op interface \
    ports { local_regs_6_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2933 \
    name local_regs_6_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_24_promoted_reload \
    op interface \
    ports { local_regs_6_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2934 \
    name local_regs_6_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_23_promoted_reload \
    op interface \
    ports { local_regs_6_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2935 \
    name local_regs_6_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_22_promoted_reload \
    op interface \
    ports { local_regs_6_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2936 \
    name local_regs_6_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_21_promoted_reload \
    op interface \
    ports { local_regs_6_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2937 \
    name local_regs_6_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_20_promoted_reload \
    op interface \
    ports { local_regs_6_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2938 \
    name local_regs_6_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_19_promoted_reload \
    op interface \
    ports { local_regs_6_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2939 \
    name local_regs_6_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_18_promoted_reload \
    op interface \
    ports { local_regs_6_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2940 \
    name local_regs_6_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_17_promoted_reload \
    op interface \
    ports { local_regs_6_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2941 \
    name local_regs_6_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_16_promoted_reload \
    op interface \
    ports { local_regs_6_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2942 \
    name local_regs_6_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_15_promoted_reload \
    op interface \
    ports { local_regs_6_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2943 \
    name local_regs_6_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_14_promoted_reload \
    op interface \
    ports { local_regs_6_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2944 \
    name local_regs_6_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_13_promoted_reload \
    op interface \
    ports { local_regs_6_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2945 \
    name local_regs_6_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_12_promoted_reload \
    op interface \
    ports { local_regs_6_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2946 \
    name local_regs_6_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_11_promoted_reload \
    op interface \
    ports { local_regs_6_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2947 \
    name local_regs_6_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_10_promoted_reload \
    op interface \
    ports { local_regs_6_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2948 \
    name local_regs_6_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_9_promoted_reload \
    op interface \
    ports { local_regs_6_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2949 \
    name local_regs_6_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_8_promoted_reload \
    op interface \
    ports { local_regs_6_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2950 \
    name local_regs_6_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_7_promoted_reload \
    op interface \
    ports { local_regs_6_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2951 \
    name local_regs_6_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_6_promoted_reload \
    op interface \
    ports { local_regs_6_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2952 \
    name local_regs_6_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_5_promoted_reload \
    op interface \
    ports { local_regs_6_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2953 \
    name local_regs_6_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_4_promoted_reload \
    op interface \
    ports { local_regs_6_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2954 \
    name local_regs_6_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_3_promoted_reload \
    op interface \
    ports { local_regs_6_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2955 \
    name local_regs_6_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_2_promoted_reload \
    op interface \
    ports { local_regs_6_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2956 \
    name local_regs_6_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_1_promoted_reload \
    op interface \
    ports { local_regs_6_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2957 \
    name local_regs_6_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_6_0_promoted_reload \
    op interface \
    ports { local_regs_6_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2958 \
    name local_regs_5_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_31_promoted_reload \
    op interface \
    ports { local_regs_5_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2959 \
    name local_regs_5_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_30_promoted_reload \
    op interface \
    ports { local_regs_5_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2960 \
    name local_regs_5_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_29_promoted_reload \
    op interface \
    ports { local_regs_5_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2961 \
    name local_regs_5_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_28_promoted_reload \
    op interface \
    ports { local_regs_5_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2962 \
    name local_regs_5_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_27_promoted_reload \
    op interface \
    ports { local_regs_5_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2963 \
    name local_regs_5_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_26_promoted_reload \
    op interface \
    ports { local_regs_5_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2964 \
    name local_regs_5_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_25_promoted_reload \
    op interface \
    ports { local_regs_5_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2965 \
    name local_regs_5_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_24_promoted_reload \
    op interface \
    ports { local_regs_5_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2966 \
    name local_regs_5_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_23_promoted_reload \
    op interface \
    ports { local_regs_5_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2967 \
    name local_regs_5_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_22_promoted_reload \
    op interface \
    ports { local_regs_5_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2968 \
    name local_regs_5_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_21_promoted_reload \
    op interface \
    ports { local_regs_5_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2969 \
    name local_regs_5_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_20_promoted_reload \
    op interface \
    ports { local_regs_5_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2970 \
    name local_regs_5_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_19_promoted_reload \
    op interface \
    ports { local_regs_5_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2971 \
    name local_regs_5_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_18_promoted_reload \
    op interface \
    ports { local_regs_5_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2972 \
    name local_regs_5_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_17_promoted_reload \
    op interface \
    ports { local_regs_5_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2973 \
    name local_regs_5_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_16_promoted_reload \
    op interface \
    ports { local_regs_5_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2974 \
    name local_regs_5_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_15_promoted_reload \
    op interface \
    ports { local_regs_5_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2975 \
    name local_regs_5_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_14_promoted_reload \
    op interface \
    ports { local_regs_5_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2976 \
    name local_regs_5_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_13_promoted_reload \
    op interface \
    ports { local_regs_5_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2977 \
    name local_regs_5_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_12_promoted_reload \
    op interface \
    ports { local_regs_5_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2978 \
    name local_regs_5_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_11_promoted_reload \
    op interface \
    ports { local_regs_5_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2979 \
    name local_regs_5_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_10_promoted_reload \
    op interface \
    ports { local_regs_5_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2980 \
    name local_regs_5_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_9_promoted_reload \
    op interface \
    ports { local_regs_5_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2981 \
    name local_regs_5_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_8_promoted_reload \
    op interface \
    ports { local_regs_5_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2982 \
    name local_regs_5_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_7_promoted_reload \
    op interface \
    ports { local_regs_5_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2983 \
    name local_regs_5_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_6_promoted_reload \
    op interface \
    ports { local_regs_5_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2984 \
    name local_regs_5_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_5_promoted_reload \
    op interface \
    ports { local_regs_5_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2985 \
    name local_regs_5_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_4_promoted_reload \
    op interface \
    ports { local_regs_5_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2986 \
    name local_regs_5_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_3_promoted_reload \
    op interface \
    ports { local_regs_5_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2987 \
    name local_regs_5_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_2_promoted_reload \
    op interface \
    ports { local_regs_5_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2988 \
    name local_regs_5_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_1_promoted_reload \
    op interface \
    ports { local_regs_5_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2989 \
    name local_regs_5_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_5_0_promoted_reload \
    op interface \
    ports { local_regs_5_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2990 \
    name local_regs_4_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_31_promoted_reload \
    op interface \
    ports { local_regs_4_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2991 \
    name local_regs_4_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_30_promoted_reload \
    op interface \
    ports { local_regs_4_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2992 \
    name local_regs_4_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_29_promoted_reload \
    op interface \
    ports { local_regs_4_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2993 \
    name local_regs_4_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_28_promoted_reload \
    op interface \
    ports { local_regs_4_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2994 \
    name local_regs_4_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_27_promoted_reload \
    op interface \
    ports { local_regs_4_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2995 \
    name local_regs_4_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_26_promoted_reload \
    op interface \
    ports { local_regs_4_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2996 \
    name local_regs_4_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_25_promoted_reload \
    op interface \
    ports { local_regs_4_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2997 \
    name local_regs_4_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_24_promoted_reload \
    op interface \
    ports { local_regs_4_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2998 \
    name local_regs_4_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_23_promoted_reload \
    op interface \
    ports { local_regs_4_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2999 \
    name local_regs_4_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_22_promoted_reload \
    op interface \
    ports { local_regs_4_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3000 \
    name local_regs_4_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_21_promoted_reload \
    op interface \
    ports { local_regs_4_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3001 \
    name local_regs_4_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_20_promoted_reload \
    op interface \
    ports { local_regs_4_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3002 \
    name local_regs_4_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_19_promoted_reload \
    op interface \
    ports { local_regs_4_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3003 \
    name local_regs_4_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_18_promoted_reload \
    op interface \
    ports { local_regs_4_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3004 \
    name local_regs_4_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_17_promoted_reload \
    op interface \
    ports { local_regs_4_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3005 \
    name local_regs_4_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_16_promoted_reload \
    op interface \
    ports { local_regs_4_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3006 \
    name local_regs_4_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_15_promoted_reload \
    op interface \
    ports { local_regs_4_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3007 \
    name local_regs_4_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_14_promoted_reload \
    op interface \
    ports { local_regs_4_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3008 \
    name local_regs_4_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_13_promoted_reload \
    op interface \
    ports { local_regs_4_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3009 \
    name local_regs_4_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_12_promoted_reload \
    op interface \
    ports { local_regs_4_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3010 \
    name local_regs_4_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_11_promoted_reload \
    op interface \
    ports { local_regs_4_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3011 \
    name local_regs_4_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_10_promoted_reload \
    op interface \
    ports { local_regs_4_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3012 \
    name local_regs_4_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_9_promoted_reload \
    op interface \
    ports { local_regs_4_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3013 \
    name local_regs_4_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_8_promoted_reload \
    op interface \
    ports { local_regs_4_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3014 \
    name local_regs_4_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_7_promoted_reload \
    op interface \
    ports { local_regs_4_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3015 \
    name local_regs_4_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_6_promoted_reload \
    op interface \
    ports { local_regs_4_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3016 \
    name local_regs_4_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_5_promoted_reload \
    op interface \
    ports { local_regs_4_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3017 \
    name local_regs_4_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_4_promoted_reload \
    op interface \
    ports { local_regs_4_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3018 \
    name local_regs_4_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_3_promoted_reload \
    op interface \
    ports { local_regs_4_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3019 \
    name local_regs_4_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_2_promoted_reload \
    op interface \
    ports { local_regs_4_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3020 \
    name local_regs_4_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_1_promoted_reload \
    op interface \
    ports { local_regs_4_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3021 \
    name local_regs_4_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_4_0_promoted_reload \
    op interface \
    ports { local_regs_4_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3022 \
    name local_regs_3_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_31_promoted_reload \
    op interface \
    ports { local_regs_3_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3023 \
    name local_regs_3_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_30_promoted_reload \
    op interface \
    ports { local_regs_3_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3024 \
    name local_regs_3_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_29_promoted_reload \
    op interface \
    ports { local_regs_3_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3025 \
    name local_regs_3_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_28_promoted_reload \
    op interface \
    ports { local_regs_3_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3026 \
    name local_regs_3_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_27_promoted_reload \
    op interface \
    ports { local_regs_3_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3027 \
    name local_regs_3_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_26_promoted_reload \
    op interface \
    ports { local_regs_3_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3028 \
    name local_regs_3_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_25_promoted_reload \
    op interface \
    ports { local_regs_3_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3029 \
    name local_regs_3_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_24_promoted_reload \
    op interface \
    ports { local_regs_3_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3030 \
    name local_regs_3_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_23_promoted_reload \
    op interface \
    ports { local_regs_3_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3031 \
    name local_regs_3_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_22_promoted_reload \
    op interface \
    ports { local_regs_3_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3032 \
    name local_regs_3_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_21_promoted_reload \
    op interface \
    ports { local_regs_3_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3033 \
    name local_regs_3_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_20_promoted_reload \
    op interface \
    ports { local_regs_3_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3034 \
    name local_regs_3_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_19_promoted_reload \
    op interface \
    ports { local_regs_3_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3035 \
    name local_regs_3_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_18_promoted_reload \
    op interface \
    ports { local_regs_3_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3036 \
    name local_regs_3_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_17_promoted_reload \
    op interface \
    ports { local_regs_3_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3037 \
    name local_regs_3_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_16_promoted_reload \
    op interface \
    ports { local_regs_3_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3038 \
    name local_regs_3_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_15_promoted_reload \
    op interface \
    ports { local_regs_3_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3039 \
    name local_regs_3_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_14_promoted_reload \
    op interface \
    ports { local_regs_3_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3040 \
    name local_regs_3_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_13_promoted_reload \
    op interface \
    ports { local_regs_3_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3041 \
    name local_regs_3_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_12_promoted_reload \
    op interface \
    ports { local_regs_3_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3042 \
    name local_regs_3_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_11_promoted_reload \
    op interface \
    ports { local_regs_3_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3043 \
    name local_regs_3_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_10_promoted_reload \
    op interface \
    ports { local_regs_3_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3044 \
    name local_regs_3_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_9_promoted_reload \
    op interface \
    ports { local_regs_3_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3045 \
    name local_regs_3_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_8_promoted_reload \
    op interface \
    ports { local_regs_3_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3046 \
    name local_regs_3_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_7_promoted_reload \
    op interface \
    ports { local_regs_3_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3047 \
    name local_regs_3_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_6_promoted_reload \
    op interface \
    ports { local_regs_3_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3048 \
    name local_regs_3_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_5_promoted_reload \
    op interface \
    ports { local_regs_3_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3049 \
    name local_regs_3_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_4_promoted_reload \
    op interface \
    ports { local_regs_3_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3050 \
    name local_regs_3_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_3_promoted_reload \
    op interface \
    ports { local_regs_3_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3051 \
    name local_regs_3_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_2_promoted_reload \
    op interface \
    ports { local_regs_3_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3052 \
    name local_regs_3_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_1_promoted_reload \
    op interface \
    ports { local_regs_3_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3053 \
    name local_regs_3_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_3_0_promoted_reload \
    op interface \
    ports { local_regs_3_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3054 \
    name local_regs_2_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_31_promoted_reload \
    op interface \
    ports { local_regs_2_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3055 \
    name local_regs_2_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_30_promoted_reload \
    op interface \
    ports { local_regs_2_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3056 \
    name local_regs_2_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_29_promoted_reload \
    op interface \
    ports { local_regs_2_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3057 \
    name local_regs_2_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_28_promoted_reload \
    op interface \
    ports { local_regs_2_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3058 \
    name local_regs_2_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_27_promoted_reload \
    op interface \
    ports { local_regs_2_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3059 \
    name local_regs_2_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_26_promoted_reload \
    op interface \
    ports { local_regs_2_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3060 \
    name local_regs_2_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_25_promoted_reload \
    op interface \
    ports { local_regs_2_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3061 \
    name local_regs_2_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_24_promoted_reload \
    op interface \
    ports { local_regs_2_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3062 \
    name local_regs_2_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_23_promoted_reload \
    op interface \
    ports { local_regs_2_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3063 \
    name local_regs_2_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_22_promoted_reload \
    op interface \
    ports { local_regs_2_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3064 \
    name local_regs_2_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_21_promoted_reload \
    op interface \
    ports { local_regs_2_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3065 \
    name local_regs_2_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_20_promoted_reload \
    op interface \
    ports { local_regs_2_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3066 \
    name local_regs_2_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_19_promoted_reload \
    op interface \
    ports { local_regs_2_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3067 \
    name local_regs_2_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_18_promoted_reload \
    op interface \
    ports { local_regs_2_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3068 \
    name local_regs_2_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_17_promoted_reload \
    op interface \
    ports { local_regs_2_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3069 \
    name local_regs_2_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_16_promoted_reload \
    op interface \
    ports { local_regs_2_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3070 \
    name local_regs_2_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_15_promoted_reload \
    op interface \
    ports { local_regs_2_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3071 \
    name local_regs_2_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_14_promoted_reload \
    op interface \
    ports { local_regs_2_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3072 \
    name local_regs_2_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_13_promoted_reload \
    op interface \
    ports { local_regs_2_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3073 \
    name local_regs_2_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_12_promoted_reload \
    op interface \
    ports { local_regs_2_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3074 \
    name local_regs_2_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_11_promoted_reload \
    op interface \
    ports { local_regs_2_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3075 \
    name local_regs_2_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_10_promoted_reload \
    op interface \
    ports { local_regs_2_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3076 \
    name local_regs_2_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_9_promoted_reload \
    op interface \
    ports { local_regs_2_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3077 \
    name local_regs_2_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_8_promoted_reload \
    op interface \
    ports { local_regs_2_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3078 \
    name local_regs_2_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_7_promoted_reload \
    op interface \
    ports { local_regs_2_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3079 \
    name local_regs_2_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_6_promoted_reload \
    op interface \
    ports { local_regs_2_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3080 \
    name local_regs_2_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_5_promoted_reload \
    op interface \
    ports { local_regs_2_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3081 \
    name local_regs_2_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_4_promoted_reload \
    op interface \
    ports { local_regs_2_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3082 \
    name local_regs_2_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_3_promoted_reload \
    op interface \
    ports { local_regs_2_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3083 \
    name local_regs_2_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_2_promoted_reload \
    op interface \
    ports { local_regs_2_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3084 \
    name local_regs_2_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_1_promoted_reload \
    op interface \
    ports { local_regs_2_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3085 \
    name local_regs_2_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_2_0_promoted_reload \
    op interface \
    ports { local_regs_2_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3086 \
    name local_regs_1_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_31_promoted_reload \
    op interface \
    ports { local_regs_1_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3087 \
    name local_regs_1_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_30_promoted_reload \
    op interface \
    ports { local_regs_1_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3088 \
    name local_regs_1_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_29_promoted_reload \
    op interface \
    ports { local_regs_1_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3089 \
    name local_regs_1_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_28_promoted_reload \
    op interface \
    ports { local_regs_1_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3090 \
    name local_regs_1_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_27_promoted_reload \
    op interface \
    ports { local_regs_1_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3091 \
    name local_regs_1_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_26_promoted_reload \
    op interface \
    ports { local_regs_1_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3092 \
    name local_regs_1_25_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_25_promoted_reload \
    op interface \
    ports { local_regs_1_25_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3093 \
    name local_regs_1_24_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_24_promoted_reload \
    op interface \
    ports { local_regs_1_24_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3094 \
    name local_regs_1_23_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_23_promoted_reload \
    op interface \
    ports { local_regs_1_23_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3095 \
    name local_regs_1_22_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_22_promoted_reload \
    op interface \
    ports { local_regs_1_22_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3096 \
    name local_regs_1_21_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_21_promoted_reload \
    op interface \
    ports { local_regs_1_21_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3097 \
    name local_regs_1_20_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_20_promoted_reload \
    op interface \
    ports { local_regs_1_20_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3098 \
    name local_regs_1_19_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_19_promoted_reload \
    op interface \
    ports { local_regs_1_19_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3099 \
    name local_regs_1_18_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_18_promoted_reload \
    op interface \
    ports { local_regs_1_18_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3100 \
    name local_regs_1_17_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_17_promoted_reload \
    op interface \
    ports { local_regs_1_17_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3101 \
    name local_regs_1_16_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_16_promoted_reload \
    op interface \
    ports { local_regs_1_16_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3102 \
    name local_regs_1_15_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_15_promoted_reload \
    op interface \
    ports { local_regs_1_15_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3103 \
    name local_regs_1_14_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_14_promoted_reload \
    op interface \
    ports { local_regs_1_14_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3104 \
    name local_regs_1_13_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_13_promoted_reload \
    op interface \
    ports { local_regs_1_13_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3105 \
    name local_regs_1_12_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_12_promoted_reload \
    op interface \
    ports { local_regs_1_12_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3106 \
    name local_regs_1_11_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_11_promoted_reload \
    op interface \
    ports { local_regs_1_11_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3107 \
    name local_regs_1_10_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_10_promoted_reload \
    op interface \
    ports { local_regs_1_10_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3108 \
    name local_regs_1_9_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_9_promoted_reload \
    op interface \
    ports { local_regs_1_9_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3109 \
    name local_regs_1_8_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_8_promoted_reload \
    op interface \
    ports { local_regs_1_8_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3110 \
    name local_regs_1_7_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_7_promoted_reload \
    op interface \
    ports { local_regs_1_7_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3111 \
    name local_regs_1_6_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_6_promoted_reload \
    op interface \
    ports { local_regs_1_6_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3112 \
    name local_regs_1_5_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_5_promoted_reload \
    op interface \
    ports { local_regs_1_5_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3113 \
    name local_regs_1_4_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_4_promoted_reload \
    op interface \
    ports { local_regs_1_4_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3114 \
    name local_regs_1_3_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_3_promoted_reload \
    op interface \
    ports { local_regs_1_3_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3115 \
    name local_regs_1_2_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_2_promoted_reload \
    op interface \
    ports { local_regs_1_2_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3116 \
    name local_regs_1_1_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_1_promoted_reload \
    op interface \
    ports { local_regs_1_1_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3117 \
    name local_regs_1_0_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_1_0_promoted_reload \
    op interface \
    ports { local_regs_1_0_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3118 \
    name local_regs_0_31_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_0_31_promoted_reload \
    op interface \
    ports { local_regs_0_31_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3119 \
    name local_regs_0_30_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_0_30_promoted_reload \
    op interface \
    ports { local_regs_0_30_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3120 \
    name local_regs_0_29_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_0_29_promoted_reload \
    op interface \
    ports { local_regs_0_29_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3121 \
    name local_regs_0_28_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_0_28_promoted_reload \
    op interface \
    ports { local_regs_0_28_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3122 \
    name local_regs_0_27_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_0_27_promoted_reload \
    op interface \
    ports { local_regs_0_27_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3123 \
    name local_regs_0_26_promoted_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_0_26_promoted_reload \
    op interface \
    ports { local_regs_0_26_promoted_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3124 \
    name local_regs_V_25_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_25_0_reload \
    op interface \
    ports { local_regs_V_25_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3125 \
    name local_regs_V_24_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_24_0_reload \
    op interface \
    ports { local_regs_V_24_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3126 \
    name local_regs_V_23_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_23_0_reload \
    op interface \
    ports { local_regs_V_23_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3127 \
    name local_regs_V_22_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_22_0_reload \
    op interface \
    ports { local_regs_V_22_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3128 \
    name local_regs_V_21_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_21_0_reload \
    op interface \
    ports { local_regs_V_21_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3129 \
    name local_regs_V_20_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_20_0_reload \
    op interface \
    ports { local_regs_V_20_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3130 \
    name local_regs_V_19_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_19_0_reload \
    op interface \
    ports { local_regs_V_19_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3131 \
    name local_regs_V_18_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_18_0_reload \
    op interface \
    ports { local_regs_V_18_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3132 \
    name local_regs_V_17_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_17_0_reload \
    op interface \
    ports { local_regs_V_17_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3133 \
    name local_regs_V_16_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_16_0_reload \
    op interface \
    ports { local_regs_V_16_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3134 \
    name local_regs_V_15_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_15_0_reload \
    op interface \
    ports { local_regs_V_15_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3135 \
    name local_regs_V_14_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_14_0_reload \
    op interface \
    ports { local_regs_V_14_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3136 \
    name local_regs_V_13_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_13_0_reload \
    op interface \
    ports { local_regs_V_13_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3137 \
    name local_regs_V_12_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_12_0_reload \
    op interface \
    ports { local_regs_V_12_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3138 \
    name local_regs_V_11_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_11_0_reload \
    op interface \
    ports { local_regs_V_11_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3139 \
    name local_regs_V_10_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_10_0_reload \
    op interface \
    ports { local_regs_V_10_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3140 \
    name local_regs_V_9_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_9_0_reload \
    op interface \
    ports { local_regs_V_9_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3141 \
    name local_regs_V_8_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_8_0_reload \
    op interface \
    ports { local_regs_V_8_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3142 \
    name local_regs_V_7_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_7_0_reload \
    op interface \
    ports { local_regs_V_7_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3143 \
    name local_regs_V_6_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_6_0_reload \
    op interface \
    ports { local_regs_V_6_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3144 \
    name local_regs_V_5_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_5_0_reload \
    op interface \
    ports { local_regs_V_5_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3145 \
    name local_regs_V_4_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_4_0_reload \
    op interface \
    ports { local_regs_V_4_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3146 \
    name local_regs_V_3_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_3_0_reload \
    op interface \
    ports { local_regs_V_3_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3147 \
    name local_regs_V_2_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_2_0_reload \
    op interface \
    ports { local_regs_V_2_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3148 \
    name local_regs_V_1_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1_0_reload \
    op interface \
    ports { local_regs_V_1_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3149 \
    name local_regs_V_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_0_reload \
    op interface \
    ports { local_regs_V_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3150 \
    name big_tile_A_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_0_load \
    op interface \
    ports { big_tile_A_0_load { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3151 \
    name big_tile_A_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_1_load \
    op interface \
    ports { big_tile_A_1_load { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3152 \
    name big_tile_A_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_2_load \
    op interface \
    ports { big_tile_A_2_load { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3153 \
    name big_tile_A_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_3_load \
    op interface \
    ports { big_tile_A_3_load { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3154 \
    name big_tile_A_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_4_load \
    op interface \
    ports { big_tile_A_4_load { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3155 \
    name big_tile_A_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_5_load \
    op interface \
    ports { big_tile_A_5_load { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3156 \
    name big_tile_A_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_6_load \
    op interface \
    ports { big_tile_A_6_load { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3157 \
    name big_tile_A_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_7_load \
    op interface \
    ports { big_tile_A_7_load { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3158 \
    name big_tile_A_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_8_load \
    op interface \
    ports { big_tile_A_8_load { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3159 \
    name big_tile_A_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_9_load \
    op interface \
    ports { big_tile_A_9_load { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3160 \
    name big_tile_A_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_10_load \
    op interface \
    ports { big_tile_A_10_load { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3161 \
    name big_tile_A_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_11_load \
    op interface \
    ports { big_tile_A_11_load { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3162 \
    name big_tile_A_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_12_load \
    op interface \
    ports { big_tile_A_12_load { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3163 \
    name big_tile_A_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_13_load \
    op interface \
    ports { big_tile_A_13_load { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3164 \
    name big_tile_A_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_14_load \
    op interface \
    ports { big_tile_A_14_load { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3165 \
    name big_tile_A_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_15_load \
    op interface \
    ports { big_tile_A_15_load { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3166 \
    name big_tile_A_0_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_0_load_1 \
    op interface \
    ports { big_tile_A_0_load_1 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3167 \
    name big_tile_A_1_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_1_load_1 \
    op interface \
    ports { big_tile_A_1_load_1 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3168 \
    name big_tile_A_2_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_2_load_1 \
    op interface \
    ports { big_tile_A_2_load_1 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3169 \
    name big_tile_A_3_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_3_load_1 \
    op interface \
    ports { big_tile_A_3_load_1 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3170 \
    name big_tile_A_4_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_4_load_1 \
    op interface \
    ports { big_tile_A_4_load_1 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3171 \
    name big_tile_A_5_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_5_load_1 \
    op interface \
    ports { big_tile_A_5_load_1 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3172 \
    name big_tile_A_6_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_6_load_1 \
    op interface \
    ports { big_tile_A_6_load_1 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3173 \
    name big_tile_A_7_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_7_load_1 \
    op interface \
    ports { big_tile_A_7_load_1 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3174 \
    name big_tile_A_8_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_8_load_1 \
    op interface \
    ports { big_tile_A_8_load_1 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3175 \
    name big_tile_A_9_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_9_load_1 \
    op interface \
    ports { big_tile_A_9_load_1 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3176 \
    name big_tile_A_10_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_10_load_1 \
    op interface \
    ports { big_tile_A_10_load_1 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3177 \
    name big_tile_A_11_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_11_load_1 \
    op interface \
    ports { big_tile_A_11_load_1 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3178 \
    name big_tile_A_12_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_12_load_1 \
    op interface \
    ports { big_tile_A_12_load_1 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3179 \
    name big_tile_A_13_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_13_load_1 \
    op interface \
    ports { big_tile_A_13_load_1 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3180 \
    name big_tile_A_14_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_14_load_1 \
    op interface \
    ports { big_tile_A_14_load_1 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3181 \
    name big_tile_A_15_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_big_tile_A_15_load_1 \
    op interface \
    ports { big_tile_A_15_load_1 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3183 \
    name local_regs_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_out \
    op interface \
    ports { local_regs_V_out { O 32 vector } local_regs_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3184 \
    name local_regs_V_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1_out \
    op interface \
    ports { local_regs_V_1_out { O 32 vector } local_regs_V_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3185 \
    name local_regs_V_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_2_out \
    op interface \
    ports { local_regs_V_2_out { O 32 vector } local_regs_V_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3186 \
    name local_regs_V_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_3_out \
    op interface \
    ports { local_regs_V_3_out { O 32 vector } local_regs_V_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3187 \
    name local_regs_V_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_4_out \
    op interface \
    ports { local_regs_V_4_out { O 32 vector } local_regs_V_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3188 \
    name local_regs_V_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_5_out \
    op interface \
    ports { local_regs_V_5_out { O 32 vector } local_regs_V_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3189 \
    name local_regs_V_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_6_out \
    op interface \
    ports { local_regs_V_6_out { O 32 vector } local_regs_V_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3190 \
    name local_regs_V_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_7_out \
    op interface \
    ports { local_regs_V_7_out { O 32 vector } local_regs_V_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3191 \
    name local_regs_V_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_8_out \
    op interface \
    ports { local_regs_V_8_out { O 32 vector } local_regs_V_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3192 \
    name local_regs_V_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_9_out \
    op interface \
    ports { local_regs_V_9_out { O 32 vector } local_regs_V_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3193 \
    name local_regs_V_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_10_out \
    op interface \
    ports { local_regs_V_10_out { O 32 vector } local_regs_V_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3194 \
    name local_regs_V_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_11_out \
    op interface \
    ports { local_regs_V_11_out { O 32 vector } local_regs_V_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3195 \
    name local_regs_V_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_12_out \
    op interface \
    ports { local_regs_V_12_out { O 32 vector } local_regs_V_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3196 \
    name local_regs_V_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_13_out \
    op interface \
    ports { local_regs_V_13_out { O 32 vector } local_regs_V_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3197 \
    name local_regs_V_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_14_out \
    op interface \
    ports { local_regs_V_14_out { O 32 vector } local_regs_V_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3198 \
    name local_regs_V_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_15_out \
    op interface \
    ports { local_regs_V_15_out { O 32 vector } local_regs_V_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3199 \
    name local_regs_V_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_16_out \
    op interface \
    ports { local_regs_V_16_out { O 32 vector } local_regs_V_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3200 \
    name local_regs_V_17_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_17_out \
    op interface \
    ports { local_regs_V_17_out { O 32 vector } local_regs_V_17_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3201 \
    name local_regs_V_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_18_out \
    op interface \
    ports { local_regs_V_18_out { O 32 vector } local_regs_V_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3202 \
    name local_regs_V_19_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_19_out \
    op interface \
    ports { local_regs_V_19_out { O 32 vector } local_regs_V_19_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3203 \
    name local_regs_V_20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_20_out \
    op interface \
    ports { local_regs_V_20_out { O 32 vector } local_regs_V_20_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3204 \
    name local_regs_V_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_21_out \
    op interface \
    ports { local_regs_V_21_out { O 32 vector } local_regs_V_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3205 \
    name local_regs_V_22_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_22_out \
    op interface \
    ports { local_regs_V_22_out { O 32 vector } local_regs_V_22_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3206 \
    name local_regs_V_23_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_23_out \
    op interface \
    ports { local_regs_V_23_out { O 32 vector } local_regs_V_23_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3207 \
    name local_regs_V_24_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_24_out \
    op interface \
    ports { local_regs_V_24_out { O 32 vector } local_regs_V_24_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3208 \
    name local_regs_V_25_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_25_out \
    op interface \
    ports { local_regs_V_25_out { O 32 vector } local_regs_V_25_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3209 \
    name local_regs_V_26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_26_out \
    op interface \
    ports { local_regs_V_26_out { O 32 vector } local_regs_V_26_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3210 \
    name local_regs_V_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_27_out \
    op interface \
    ports { local_regs_V_27_out { O 32 vector } local_regs_V_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3211 \
    name local_regs_V_28_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_28_out \
    op interface \
    ports { local_regs_V_28_out { O 32 vector } local_regs_V_28_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3212 \
    name local_regs_V_29_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_29_out \
    op interface \
    ports { local_regs_V_29_out { O 32 vector } local_regs_V_29_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3213 \
    name local_regs_V_30_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_30_out \
    op interface \
    ports { local_regs_V_30_out { O 32 vector } local_regs_V_30_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3214 \
    name local_regs_V_31_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_31_out \
    op interface \
    ports { local_regs_V_31_out { O 32 vector } local_regs_V_31_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3215 \
    name local_regs_V_32_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_32_out \
    op interface \
    ports { local_regs_V_32_out { O 32 vector } local_regs_V_32_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3216 \
    name local_regs_V_33_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_33_out \
    op interface \
    ports { local_regs_V_33_out { O 32 vector } local_regs_V_33_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3217 \
    name local_regs_V_34_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_34_out \
    op interface \
    ports { local_regs_V_34_out { O 32 vector } local_regs_V_34_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3218 \
    name local_regs_V_35_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_35_out \
    op interface \
    ports { local_regs_V_35_out { O 32 vector } local_regs_V_35_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3219 \
    name local_regs_V_36_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_36_out \
    op interface \
    ports { local_regs_V_36_out { O 32 vector } local_regs_V_36_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3220 \
    name local_regs_V_37_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_37_out \
    op interface \
    ports { local_regs_V_37_out { O 32 vector } local_regs_V_37_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3221 \
    name local_regs_V_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_38_out \
    op interface \
    ports { local_regs_V_38_out { O 32 vector } local_regs_V_38_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3222 \
    name local_regs_V_39_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_39_out \
    op interface \
    ports { local_regs_V_39_out { O 32 vector } local_regs_V_39_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3223 \
    name local_regs_V_40_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_40_out \
    op interface \
    ports { local_regs_V_40_out { O 32 vector } local_regs_V_40_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3224 \
    name local_regs_V_41_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_41_out \
    op interface \
    ports { local_regs_V_41_out { O 32 vector } local_regs_V_41_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3225 \
    name local_regs_V_42_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_42_out \
    op interface \
    ports { local_regs_V_42_out { O 32 vector } local_regs_V_42_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3226 \
    name local_regs_V_43_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_43_out \
    op interface \
    ports { local_regs_V_43_out { O 32 vector } local_regs_V_43_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3227 \
    name local_regs_V_44_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_44_out \
    op interface \
    ports { local_regs_V_44_out { O 32 vector } local_regs_V_44_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3228 \
    name local_regs_V_45_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_45_out \
    op interface \
    ports { local_regs_V_45_out { O 32 vector } local_regs_V_45_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3229 \
    name local_regs_V_46_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_46_out \
    op interface \
    ports { local_regs_V_46_out { O 32 vector } local_regs_V_46_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3230 \
    name local_regs_V_47_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_47_out \
    op interface \
    ports { local_regs_V_47_out { O 32 vector } local_regs_V_47_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3231 \
    name local_regs_V_48_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_48_out \
    op interface \
    ports { local_regs_V_48_out { O 32 vector } local_regs_V_48_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3232 \
    name local_regs_V_49_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_49_out \
    op interface \
    ports { local_regs_V_49_out { O 32 vector } local_regs_V_49_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3233 \
    name local_regs_V_50_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_50_out \
    op interface \
    ports { local_regs_V_50_out { O 32 vector } local_regs_V_50_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3234 \
    name local_regs_V_51_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_51_out \
    op interface \
    ports { local_regs_V_51_out { O 32 vector } local_regs_V_51_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3235 \
    name local_regs_V_52_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_52_out \
    op interface \
    ports { local_regs_V_52_out { O 32 vector } local_regs_V_52_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3236 \
    name local_regs_V_53_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_53_out \
    op interface \
    ports { local_regs_V_53_out { O 32 vector } local_regs_V_53_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3237 \
    name local_regs_V_54_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_54_out \
    op interface \
    ports { local_regs_V_54_out { O 32 vector } local_regs_V_54_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3238 \
    name local_regs_V_55_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_55_out \
    op interface \
    ports { local_regs_V_55_out { O 32 vector } local_regs_V_55_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3239 \
    name local_regs_V_56_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_56_out \
    op interface \
    ports { local_regs_V_56_out { O 32 vector } local_regs_V_56_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3240 \
    name local_regs_V_57_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_57_out \
    op interface \
    ports { local_regs_V_57_out { O 32 vector } local_regs_V_57_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3241 \
    name local_regs_V_58_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_58_out \
    op interface \
    ports { local_regs_V_58_out { O 32 vector } local_regs_V_58_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3242 \
    name local_regs_V_59_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_59_out \
    op interface \
    ports { local_regs_V_59_out { O 32 vector } local_regs_V_59_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3243 \
    name local_regs_V_60_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_60_out \
    op interface \
    ports { local_regs_V_60_out { O 32 vector } local_regs_V_60_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3244 \
    name local_regs_V_61_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_61_out \
    op interface \
    ports { local_regs_V_61_out { O 32 vector } local_regs_V_61_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3245 \
    name local_regs_V_62_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_62_out \
    op interface \
    ports { local_regs_V_62_out { O 32 vector } local_regs_V_62_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3246 \
    name local_regs_V_63_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_63_out \
    op interface \
    ports { local_regs_V_63_out { O 32 vector } local_regs_V_63_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3247 \
    name local_regs_V_64_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_64_out \
    op interface \
    ports { local_regs_V_64_out { O 32 vector } local_regs_V_64_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3248 \
    name local_regs_V_65_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_65_out \
    op interface \
    ports { local_regs_V_65_out { O 32 vector } local_regs_V_65_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3249 \
    name local_regs_V_66_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_66_out \
    op interface \
    ports { local_regs_V_66_out { O 32 vector } local_regs_V_66_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3250 \
    name local_regs_V_67_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_67_out \
    op interface \
    ports { local_regs_V_67_out { O 32 vector } local_regs_V_67_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3251 \
    name local_regs_V_68_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_68_out \
    op interface \
    ports { local_regs_V_68_out { O 32 vector } local_regs_V_68_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3252 \
    name local_regs_V_69_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_69_out \
    op interface \
    ports { local_regs_V_69_out { O 32 vector } local_regs_V_69_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3253 \
    name local_regs_V_70_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_70_out \
    op interface \
    ports { local_regs_V_70_out { O 32 vector } local_regs_V_70_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3254 \
    name local_regs_V_71_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_71_out \
    op interface \
    ports { local_regs_V_71_out { O 32 vector } local_regs_V_71_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3255 \
    name local_regs_V_72_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_72_out \
    op interface \
    ports { local_regs_V_72_out { O 32 vector } local_regs_V_72_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3256 \
    name local_regs_V_73_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_73_out \
    op interface \
    ports { local_regs_V_73_out { O 32 vector } local_regs_V_73_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3257 \
    name local_regs_V_74_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_74_out \
    op interface \
    ports { local_regs_V_74_out { O 32 vector } local_regs_V_74_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3258 \
    name local_regs_V_75_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_75_out \
    op interface \
    ports { local_regs_V_75_out { O 32 vector } local_regs_V_75_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3259 \
    name local_regs_V_76_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_76_out \
    op interface \
    ports { local_regs_V_76_out { O 32 vector } local_regs_V_76_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3260 \
    name local_regs_V_77_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_77_out \
    op interface \
    ports { local_regs_V_77_out { O 32 vector } local_regs_V_77_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3261 \
    name local_regs_V_78_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_78_out \
    op interface \
    ports { local_regs_V_78_out { O 32 vector } local_regs_V_78_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3262 \
    name local_regs_V_79_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_79_out \
    op interface \
    ports { local_regs_V_79_out { O 32 vector } local_regs_V_79_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3263 \
    name local_regs_V_80_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_80_out \
    op interface \
    ports { local_regs_V_80_out { O 32 vector } local_regs_V_80_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3264 \
    name local_regs_V_81_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_81_out \
    op interface \
    ports { local_regs_V_81_out { O 32 vector } local_regs_V_81_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3265 \
    name local_regs_V_82_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_82_out \
    op interface \
    ports { local_regs_V_82_out { O 32 vector } local_regs_V_82_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3266 \
    name local_regs_V_83_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_83_out \
    op interface \
    ports { local_regs_V_83_out { O 32 vector } local_regs_V_83_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3267 \
    name local_regs_V_84_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_84_out \
    op interface \
    ports { local_regs_V_84_out { O 32 vector } local_regs_V_84_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3268 \
    name local_regs_V_85_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_85_out \
    op interface \
    ports { local_regs_V_85_out { O 32 vector } local_regs_V_85_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3269 \
    name local_regs_V_86_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_86_out \
    op interface \
    ports { local_regs_V_86_out { O 32 vector } local_regs_V_86_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3270 \
    name local_regs_V_87_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_87_out \
    op interface \
    ports { local_regs_V_87_out { O 32 vector } local_regs_V_87_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3271 \
    name local_regs_V_88_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_88_out \
    op interface \
    ports { local_regs_V_88_out { O 32 vector } local_regs_V_88_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3272 \
    name local_regs_V_89_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_89_out \
    op interface \
    ports { local_regs_V_89_out { O 32 vector } local_regs_V_89_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3273 \
    name local_regs_V_90_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_90_out \
    op interface \
    ports { local_regs_V_90_out { O 32 vector } local_regs_V_90_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3274 \
    name local_regs_V_91_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_91_out \
    op interface \
    ports { local_regs_V_91_out { O 32 vector } local_regs_V_91_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3275 \
    name local_regs_V_92_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_92_out \
    op interface \
    ports { local_regs_V_92_out { O 32 vector } local_regs_V_92_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3276 \
    name local_regs_V_93_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_93_out \
    op interface \
    ports { local_regs_V_93_out { O 32 vector } local_regs_V_93_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3277 \
    name local_regs_V_94_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_94_out \
    op interface \
    ports { local_regs_V_94_out { O 32 vector } local_regs_V_94_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3278 \
    name local_regs_V_95_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_95_out \
    op interface \
    ports { local_regs_V_95_out { O 32 vector } local_regs_V_95_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3279 \
    name local_regs_V_96_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_96_out \
    op interface \
    ports { local_regs_V_96_out { O 32 vector } local_regs_V_96_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3280 \
    name local_regs_V_97_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_97_out \
    op interface \
    ports { local_regs_V_97_out { O 32 vector } local_regs_V_97_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3281 \
    name local_regs_V_98_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_98_out \
    op interface \
    ports { local_regs_V_98_out { O 32 vector } local_regs_V_98_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3282 \
    name local_regs_V_99_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_99_out \
    op interface \
    ports { local_regs_V_99_out { O 32 vector } local_regs_V_99_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3283 \
    name local_regs_V_100_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_100_out \
    op interface \
    ports { local_regs_V_100_out { O 32 vector } local_regs_V_100_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3284 \
    name local_regs_V_101_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_101_out \
    op interface \
    ports { local_regs_V_101_out { O 32 vector } local_regs_V_101_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3285 \
    name local_regs_V_102_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_102_out \
    op interface \
    ports { local_regs_V_102_out { O 32 vector } local_regs_V_102_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3286 \
    name local_regs_V_103_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_103_out \
    op interface \
    ports { local_regs_V_103_out { O 32 vector } local_regs_V_103_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3287 \
    name local_regs_V_104_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_104_out \
    op interface \
    ports { local_regs_V_104_out { O 32 vector } local_regs_V_104_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3288 \
    name local_regs_V_105_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_105_out \
    op interface \
    ports { local_regs_V_105_out { O 32 vector } local_regs_V_105_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3289 \
    name local_regs_V_106_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_106_out \
    op interface \
    ports { local_regs_V_106_out { O 32 vector } local_regs_V_106_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3290 \
    name local_regs_V_107_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_107_out \
    op interface \
    ports { local_regs_V_107_out { O 32 vector } local_regs_V_107_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3291 \
    name local_regs_V_108_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_108_out \
    op interface \
    ports { local_regs_V_108_out { O 32 vector } local_regs_V_108_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3292 \
    name local_regs_V_109_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_109_out \
    op interface \
    ports { local_regs_V_109_out { O 32 vector } local_regs_V_109_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3293 \
    name local_regs_V_110_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_110_out \
    op interface \
    ports { local_regs_V_110_out { O 32 vector } local_regs_V_110_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3294 \
    name local_regs_V_111_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_111_out \
    op interface \
    ports { local_regs_V_111_out { O 32 vector } local_regs_V_111_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3295 \
    name local_regs_V_112_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_112_out \
    op interface \
    ports { local_regs_V_112_out { O 32 vector } local_regs_V_112_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3296 \
    name local_regs_V_113_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_113_out \
    op interface \
    ports { local_regs_V_113_out { O 32 vector } local_regs_V_113_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3297 \
    name local_regs_V_114_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_114_out \
    op interface \
    ports { local_regs_V_114_out { O 32 vector } local_regs_V_114_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3298 \
    name local_regs_V_115_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_115_out \
    op interface \
    ports { local_regs_V_115_out { O 32 vector } local_regs_V_115_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3299 \
    name local_regs_V_116_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_116_out \
    op interface \
    ports { local_regs_V_116_out { O 32 vector } local_regs_V_116_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3300 \
    name local_regs_V_117_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_117_out \
    op interface \
    ports { local_regs_V_117_out { O 32 vector } local_regs_V_117_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3301 \
    name local_regs_V_118_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_118_out \
    op interface \
    ports { local_regs_V_118_out { O 32 vector } local_regs_V_118_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3302 \
    name local_regs_V_119_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_119_out \
    op interface \
    ports { local_regs_V_119_out { O 32 vector } local_regs_V_119_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3303 \
    name local_regs_V_120_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_120_out \
    op interface \
    ports { local_regs_V_120_out { O 32 vector } local_regs_V_120_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3304 \
    name local_regs_V_121_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_121_out \
    op interface \
    ports { local_regs_V_121_out { O 32 vector } local_regs_V_121_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3305 \
    name local_regs_V_122_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_122_out \
    op interface \
    ports { local_regs_V_122_out { O 32 vector } local_regs_V_122_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3306 \
    name local_regs_V_123_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_123_out \
    op interface \
    ports { local_regs_V_123_out { O 32 vector } local_regs_V_123_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3307 \
    name local_regs_V_124_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_124_out \
    op interface \
    ports { local_regs_V_124_out { O 32 vector } local_regs_V_124_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3308 \
    name local_regs_V_125_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_125_out \
    op interface \
    ports { local_regs_V_125_out { O 32 vector } local_regs_V_125_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3309 \
    name local_regs_V_126_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_126_out \
    op interface \
    ports { local_regs_V_126_out { O 32 vector } local_regs_V_126_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3310 \
    name local_regs_V_127_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_127_out \
    op interface \
    ports { local_regs_V_127_out { O 32 vector } local_regs_V_127_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3311 \
    name local_regs_V_128_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_128_out \
    op interface \
    ports { local_regs_V_128_out { O 32 vector } local_regs_V_128_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3312 \
    name local_regs_V_129_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_129_out \
    op interface \
    ports { local_regs_V_129_out { O 32 vector } local_regs_V_129_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3313 \
    name local_regs_V_130_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_130_out \
    op interface \
    ports { local_regs_V_130_out { O 32 vector } local_regs_V_130_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3314 \
    name local_regs_V_131_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_131_out \
    op interface \
    ports { local_regs_V_131_out { O 32 vector } local_regs_V_131_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3315 \
    name local_regs_V_132_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_132_out \
    op interface \
    ports { local_regs_V_132_out { O 32 vector } local_regs_V_132_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3316 \
    name local_regs_V_133_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_133_out \
    op interface \
    ports { local_regs_V_133_out { O 32 vector } local_regs_V_133_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3317 \
    name local_regs_V_134_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_134_out \
    op interface \
    ports { local_regs_V_134_out { O 32 vector } local_regs_V_134_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3318 \
    name local_regs_V_135_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_135_out \
    op interface \
    ports { local_regs_V_135_out { O 32 vector } local_regs_V_135_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3319 \
    name local_regs_V_136_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_136_out \
    op interface \
    ports { local_regs_V_136_out { O 32 vector } local_regs_V_136_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3320 \
    name local_regs_V_137_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_137_out \
    op interface \
    ports { local_regs_V_137_out { O 32 vector } local_regs_V_137_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3321 \
    name local_regs_V_138_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_138_out \
    op interface \
    ports { local_regs_V_138_out { O 32 vector } local_regs_V_138_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3322 \
    name local_regs_V_139_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_139_out \
    op interface \
    ports { local_regs_V_139_out { O 32 vector } local_regs_V_139_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3323 \
    name local_regs_V_140_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_140_out \
    op interface \
    ports { local_regs_V_140_out { O 32 vector } local_regs_V_140_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3324 \
    name local_regs_V_141_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_141_out \
    op interface \
    ports { local_regs_V_141_out { O 32 vector } local_regs_V_141_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3325 \
    name local_regs_V_142_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_142_out \
    op interface \
    ports { local_regs_V_142_out { O 32 vector } local_regs_V_142_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3326 \
    name local_regs_V_143_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_143_out \
    op interface \
    ports { local_regs_V_143_out { O 32 vector } local_regs_V_143_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3327 \
    name local_regs_V_144_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_144_out \
    op interface \
    ports { local_regs_V_144_out { O 32 vector } local_regs_V_144_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3328 \
    name local_regs_V_145_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_145_out \
    op interface \
    ports { local_regs_V_145_out { O 32 vector } local_regs_V_145_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3329 \
    name local_regs_V_146_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_146_out \
    op interface \
    ports { local_regs_V_146_out { O 32 vector } local_regs_V_146_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3330 \
    name local_regs_V_147_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_147_out \
    op interface \
    ports { local_regs_V_147_out { O 32 vector } local_regs_V_147_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3331 \
    name local_regs_V_148_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_148_out \
    op interface \
    ports { local_regs_V_148_out { O 32 vector } local_regs_V_148_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3332 \
    name local_regs_V_149_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_149_out \
    op interface \
    ports { local_regs_V_149_out { O 32 vector } local_regs_V_149_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3333 \
    name local_regs_V_150_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_150_out \
    op interface \
    ports { local_regs_V_150_out { O 32 vector } local_regs_V_150_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3334 \
    name local_regs_V_151_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_151_out \
    op interface \
    ports { local_regs_V_151_out { O 32 vector } local_regs_V_151_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3335 \
    name local_regs_V_152_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_152_out \
    op interface \
    ports { local_regs_V_152_out { O 32 vector } local_regs_V_152_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3336 \
    name local_regs_V_153_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_153_out \
    op interface \
    ports { local_regs_V_153_out { O 32 vector } local_regs_V_153_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3337 \
    name local_regs_V_154_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_154_out \
    op interface \
    ports { local_regs_V_154_out { O 32 vector } local_regs_V_154_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3338 \
    name local_regs_V_155_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_155_out \
    op interface \
    ports { local_regs_V_155_out { O 32 vector } local_regs_V_155_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3339 \
    name local_regs_V_156_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_156_out \
    op interface \
    ports { local_regs_V_156_out { O 32 vector } local_regs_V_156_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3340 \
    name local_regs_V_157_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_157_out \
    op interface \
    ports { local_regs_V_157_out { O 32 vector } local_regs_V_157_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3341 \
    name local_regs_V_158_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_158_out \
    op interface \
    ports { local_regs_V_158_out { O 32 vector } local_regs_V_158_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3342 \
    name local_regs_V_159_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_159_out \
    op interface \
    ports { local_regs_V_159_out { O 32 vector } local_regs_V_159_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3343 \
    name local_regs_V_160_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_160_out \
    op interface \
    ports { local_regs_V_160_out { O 32 vector } local_regs_V_160_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3344 \
    name local_regs_V_161_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_161_out \
    op interface \
    ports { local_regs_V_161_out { O 32 vector } local_regs_V_161_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3345 \
    name local_regs_V_162_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_162_out \
    op interface \
    ports { local_regs_V_162_out { O 32 vector } local_regs_V_162_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3346 \
    name local_regs_V_163_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_163_out \
    op interface \
    ports { local_regs_V_163_out { O 32 vector } local_regs_V_163_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3347 \
    name local_regs_V_164_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_164_out \
    op interface \
    ports { local_regs_V_164_out { O 32 vector } local_regs_V_164_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3348 \
    name local_regs_V_165_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_165_out \
    op interface \
    ports { local_regs_V_165_out { O 32 vector } local_regs_V_165_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3349 \
    name local_regs_V_166_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_166_out \
    op interface \
    ports { local_regs_V_166_out { O 32 vector } local_regs_V_166_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3350 \
    name local_regs_V_167_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_167_out \
    op interface \
    ports { local_regs_V_167_out { O 32 vector } local_regs_V_167_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3351 \
    name local_regs_V_168_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_168_out \
    op interface \
    ports { local_regs_V_168_out { O 32 vector } local_regs_V_168_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3352 \
    name local_regs_V_169_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_169_out \
    op interface \
    ports { local_regs_V_169_out { O 32 vector } local_regs_V_169_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3353 \
    name local_regs_V_170_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_170_out \
    op interface \
    ports { local_regs_V_170_out { O 32 vector } local_regs_V_170_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3354 \
    name local_regs_V_171_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_171_out \
    op interface \
    ports { local_regs_V_171_out { O 32 vector } local_regs_V_171_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3355 \
    name local_regs_V_172_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_172_out \
    op interface \
    ports { local_regs_V_172_out { O 32 vector } local_regs_V_172_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3356 \
    name local_regs_V_173_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_173_out \
    op interface \
    ports { local_regs_V_173_out { O 32 vector } local_regs_V_173_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3357 \
    name local_regs_V_174_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_174_out \
    op interface \
    ports { local_regs_V_174_out { O 32 vector } local_regs_V_174_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3358 \
    name local_regs_V_175_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_175_out \
    op interface \
    ports { local_regs_V_175_out { O 32 vector } local_regs_V_175_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3359 \
    name local_regs_V_176_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_176_out \
    op interface \
    ports { local_regs_V_176_out { O 32 vector } local_regs_V_176_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3360 \
    name local_regs_V_177_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_177_out \
    op interface \
    ports { local_regs_V_177_out { O 32 vector } local_regs_V_177_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3361 \
    name local_regs_V_178_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_178_out \
    op interface \
    ports { local_regs_V_178_out { O 32 vector } local_regs_V_178_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3362 \
    name local_regs_V_179_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_179_out \
    op interface \
    ports { local_regs_V_179_out { O 32 vector } local_regs_V_179_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3363 \
    name local_regs_V_180_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_180_out \
    op interface \
    ports { local_regs_V_180_out { O 32 vector } local_regs_V_180_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3364 \
    name local_regs_V_181_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_181_out \
    op interface \
    ports { local_regs_V_181_out { O 32 vector } local_regs_V_181_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3365 \
    name local_regs_V_182_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_182_out \
    op interface \
    ports { local_regs_V_182_out { O 32 vector } local_regs_V_182_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3366 \
    name local_regs_V_183_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_183_out \
    op interface \
    ports { local_regs_V_183_out { O 32 vector } local_regs_V_183_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3367 \
    name local_regs_V_184_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_184_out \
    op interface \
    ports { local_regs_V_184_out { O 32 vector } local_regs_V_184_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3368 \
    name local_regs_V_185_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_185_out \
    op interface \
    ports { local_regs_V_185_out { O 32 vector } local_regs_V_185_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3369 \
    name local_regs_V_186_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_186_out \
    op interface \
    ports { local_regs_V_186_out { O 32 vector } local_regs_V_186_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3370 \
    name local_regs_V_187_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_187_out \
    op interface \
    ports { local_regs_V_187_out { O 32 vector } local_regs_V_187_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3371 \
    name local_regs_V_188_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_188_out \
    op interface \
    ports { local_regs_V_188_out { O 32 vector } local_regs_V_188_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3372 \
    name local_regs_V_189_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_189_out \
    op interface \
    ports { local_regs_V_189_out { O 32 vector } local_regs_V_189_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3373 \
    name local_regs_V_190_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_190_out \
    op interface \
    ports { local_regs_V_190_out { O 32 vector } local_regs_V_190_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3374 \
    name local_regs_V_191_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_191_out \
    op interface \
    ports { local_regs_V_191_out { O 32 vector } local_regs_V_191_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3375 \
    name local_regs_V_192_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_192_out \
    op interface \
    ports { local_regs_V_192_out { O 32 vector } local_regs_V_192_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3376 \
    name local_regs_V_193_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_193_out \
    op interface \
    ports { local_regs_V_193_out { O 32 vector } local_regs_V_193_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3377 \
    name local_regs_V_194_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_194_out \
    op interface \
    ports { local_regs_V_194_out { O 32 vector } local_regs_V_194_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3378 \
    name local_regs_V_195_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_195_out \
    op interface \
    ports { local_regs_V_195_out { O 32 vector } local_regs_V_195_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3379 \
    name local_regs_V_196_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_196_out \
    op interface \
    ports { local_regs_V_196_out { O 32 vector } local_regs_V_196_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3380 \
    name local_regs_V_197_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_197_out \
    op interface \
    ports { local_regs_V_197_out { O 32 vector } local_regs_V_197_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3381 \
    name local_regs_V_198_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_198_out \
    op interface \
    ports { local_regs_V_198_out { O 32 vector } local_regs_V_198_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3382 \
    name local_regs_V_199_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_199_out \
    op interface \
    ports { local_regs_V_199_out { O 32 vector } local_regs_V_199_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3383 \
    name local_regs_V_200_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_200_out \
    op interface \
    ports { local_regs_V_200_out { O 32 vector } local_regs_V_200_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3384 \
    name local_regs_V_201_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_201_out \
    op interface \
    ports { local_regs_V_201_out { O 32 vector } local_regs_V_201_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3385 \
    name local_regs_V_202_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_202_out \
    op interface \
    ports { local_regs_V_202_out { O 32 vector } local_regs_V_202_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3386 \
    name local_regs_V_203_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_203_out \
    op interface \
    ports { local_regs_V_203_out { O 32 vector } local_regs_V_203_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3387 \
    name local_regs_V_204_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_204_out \
    op interface \
    ports { local_regs_V_204_out { O 32 vector } local_regs_V_204_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3388 \
    name local_regs_V_205_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_205_out \
    op interface \
    ports { local_regs_V_205_out { O 32 vector } local_regs_V_205_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3389 \
    name local_regs_V_206_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_206_out \
    op interface \
    ports { local_regs_V_206_out { O 32 vector } local_regs_V_206_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3390 \
    name local_regs_V_207_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_207_out \
    op interface \
    ports { local_regs_V_207_out { O 32 vector } local_regs_V_207_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3391 \
    name local_regs_V_208_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_208_out \
    op interface \
    ports { local_regs_V_208_out { O 32 vector } local_regs_V_208_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3392 \
    name local_regs_V_209_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_209_out \
    op interface \
    ports { local_regs_V_209_out { O 32 vector } local_regs_V_209_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3393 \
    name local_regs_V_210_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_210_out \
    op interface \
    ports { local_regs_V_210_out { O 32 vector } local_regs_V_210_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3394 \
    name local_regs_V_211_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_211_out \
    op interface \
    ports { local_regs_V_211_out { O 32 vector } local_regs_V_211_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3395 \
    name local_regs_V_212_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_212_out \
    op interface \
    ports { local_regs_V_212_out { O 32 vector } local_regs_V_212_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3396 \
    name local_regs_V_213_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_213_out \
    op interface \
    ports { local_regs_V_213_out { O 32 vector } local_regs_V_213_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3397 \
    name local_regs_V_214_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_214_out \
    op interface \
    ports { local_regs_V_214_out { O 32 vector } local_regs_V_214_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3398 \
    name local_regs_V_215_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_215_out \
    op interface \
    ports { local_regs_V_215_out { O 32 vector } local_regs_V_215_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3399 \
    name local_regs_V_216_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_216_out \
    op interface \
    ports { local_regs_V_216_out { O 32 vector } local_regs_V_216_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3400 \
    name local_regs_V_217_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_217_out \
    op interface \
    ports { local_regs_V_217_out { O 32 vector } local_regs_V_217_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3401 \
    name local_regs_V_218_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_218_out \
    op interface \
    ports { local_regs_V_218_out { O 32 vector } local_regs_V_218_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3402 \
    name local_regs_V_219_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_219_out \
    op interface \
    ports { local_regs_V_219_out { O 32 vector } local_regs_V_219_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3403 \
    name local_regs_V_220_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_220_out \
    op interface \
    ports { local_regs_V_220_out { O 32 vector } local_regs_V_220_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3404 \
    name local_regs_V_221_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_221_out \
    op interface \
    ports { local_regs_V_221_out { O 32 vector } local_regs_V_221_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3405 \
    name local_regs_V_222_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_222_out \
    op interface \
    ports { local_regs_V_222_out { O 32 vector } local_regs_V_222_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3406 \
    name local_regs_V_223_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_223_out \
    op interface \
    ports { local_regs_V_223_out { O 32 vector } local_regs_V_223_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3407 \
    name local_regs_V_224_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_224_out \
    op interface \
    ports { local_regs_V_224_out { O 32 vector } local_regs_V_224_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3408 \
    name local_regs_V_225_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_225_out \
    op interface \
    ports { local_regs_V_225_out { O 32 vector } local_regs_V_225_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3409 \
    name local_regs_V_226_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_226_out \
    op interface \
    ports { local_regs_V_226_out { O 32 vector } local_regs_V_226_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3410 \
    name local_regs_V_227_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_227_out \
    op interface \
    ports { local_regs_V_227_out { O 32 vector } local_regs_V_227_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3411 \
    name local_regs_V_228_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_228_out \
    op interface \
    ports { local_regs_V_228_out { O 32 vector } local_regs_V_228_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3412 \
    name local_regs_V_229_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_229_out \
    op interface \
    ports { local_regs_V_229_out { O 32 vector } local_regs_V_229_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3413 \
    name local_regs_V_230_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_230_out \
    op interface \
    ports { local_regs_V_230_out { O 32 vector } local_regs_V_230_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3414 \
    name local_regs_V_231_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_231_out \
    op interface \
    ports { local_regs_V_231_out { O 32 vector } local_regs_V_231_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3415 \
    name local_regs_V_232_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_232_out \
    op interface \
    ports { local_regs_V_232_out { O 32 vector } local_regs_V_232_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3416 \
    name local_regs_V_233_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_233_out \
    op interface \
    ports { local_regs_V_233_out { O 32 vector } local_regs_V_233_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3417 \
    name local_regs_V_234_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_234_out \
    op interface \
    ports { local_regs_V_234_out { O 32 vector } local_regs_V_234_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3418 \
    name local_regs_V_235_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_235_out \
    op interface \
    ports { local_regs_V_235_out { O 32 vector } local_regs_V_235_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3419 \
    name local_regs_V_236_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_236_out \
    op interface \
    ports { local_regs_V_236_out { O 32 vector } local_regs_V_236_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3420 \
    name local_regs_V_237_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_237_out \
    op interface \
    ports { local_regs_V_237_out { O 32 vector } local_regs_V_237_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3421 \
    name local_regs_V_238_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_238_out \
    op interface \
    ports { local_regs_V_238_out { O 32 vector } local_regs_V_238_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3422 \
    name local_regs_V_239_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_239_out \
    op interface \
    ports { local_regs_V_239_out { O 32 vector } local_regs_V_239_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3423 \
    name local_regs_V_240_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_240_out \
    op interface \
    ports { local_regs_V_240_out { O 32 vector } local_regs_V_240_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3424 \
    name local_regs_V_241_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_241_out \
    op interface \
    ports { local_regs_V_241_out { O 32 vector } local_regs_V_241_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3425 \
    name local_regs_V_242_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_242_out \
    op interface \
    ports { local_regs_V_242_out { O 32 vector } local_regs_V_242_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3426 \
    name local_regs_V_243_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_243_out \
    op interface \
    ports { local_regs_V_243_out { O 32 vector } local_regs_V_243_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3427 \
    name local_regs_V_244_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_244_out \
    op interface \
    ports { local_regs_V_244_out { O 32 vector } local_regs_V_244_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3428 \
    name local_regs_V_245_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_245_out \
    op interface \
    ports { local_regs_V_245_out { O 32 vector } local_regs_V_245_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3429 \
    name local_regs_V_246_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_246_out \
    op interface \
    ports { local_regs_V_246_out { O 32 vector } local_regs_V_246_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3430 \
    name local_regs_V_247_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_247_out \
    op interface \
    ports { local_regs_V_247_out { O 32 vector } local_regs_V_247_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3431 \
    name local_regs_V_248_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_248_out \
    op interface \
    ports { local_regs_V_248_out { O 32 vector } local_regs_V_248_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3432 \
    name local_regs_V_249_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_249_out \
    op interface \
    ports { local_regs_V_249_out { O 32 vector } local_regs_V_249_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3433 \
    name local_regs_V_250_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_250_out \
    op interface \
    ports { local_regs_V_250_out { O 32 vector } local_regs_V_250_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3434 \
    name local_regs_V_251_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_251_out \
    op interface \
    ports { local_regs_V_251_out { O 32 vector } local_regs_V_251_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3435 \
    name local_regs_V_252_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_252_out \
    op interface \
    ports { local_regs_V_252_out { O 32 vector } local_regs_V_252_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3436 \
    name local_regs_V_253_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_253_out \
    op interface \
    ports { local_regs_V_253_out { O 32 vector } local_regs_V_253_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3437 \
    name local_regs_V_254_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_254_out \
    op interface \
    ports { local_regs_V_254_out { O 32 vector } local_regs_V_254_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3438 \
    name local_regs_V_255_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_255_out \
    op interface \
    ports { local_regs_V_255_out { O 32 vector } local_regs_V_255_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3439 \
    name local_regs_V_256_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_256_out \
    op interface \
    ports { local_regs_V_256_out { O 32 vector } local_regs_V_256_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3440 \
    name local_regs_V_257_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_257_out \
    op interface \
    ports { local_regs_V_257_out { O 32 vector } local_regs_V_257_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3441 \
    name local_regs_V_258_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_258_out \
    op interface \
    ports { local_regs_V_258_out { O 32 vector } local_regs_V_258_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3442 \
    name local_regs_V_259_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_259_out \
    op interface \
    ports { local_regs_V_259_out { O 32 vector } local_regs_V_259_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3443 \
    name local_regs_V_260_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_260_out \
    op interface \
    ports { local_regs_V_260_out { O 32 vector } local_regs_V_260_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3444 \
    name local_regs_V_261_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_261_out \
    op interface \
    ports { local_regs_V_261_out { O 32 vector } local_regs_V_261_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3445 \
    name local_regs_V_262_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_262_out \
    op interface \
    ports { local_regs_V_262_out { O 32 vector } local_regs_V_262_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3446 \
    name local_regs_V_263_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_263_out \
    op interface \
    ports { local_regs_V_263_out { O 32 vector } local_regs_V_263_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3447 \
    name local_regs_V_264_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_264_out \
    op interface \
    ports { local_regs_V_264_out { O 32 vector } local_regs_V_264_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3448 \
    name local_regs_V_265_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_265_out \
    op interface \
    ports { local_regs_V_265_out { O 32 vector } local_regs_V_265_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3449 \
    name local_regs_V_266_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_266_out \
    op interface \
    ports { local_regs_V_266_out { O 32 vector } local_regs_V_266_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3450 \
    name local_regs_V_267_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_267_out \
    op interface \
    ports { local_regs_V_267_out { O 32 vector } local_regs_V_267_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3451 \
    name local_regs_V_268_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_268_out \
    op interface \
    ports { local_regs_V_268_out { O 32 vector } local_regs_V_268_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3452 \
    name local_regs_V_269_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_269_out \
    op interface \
    ports { local_regs_V_269_out { O 32 vector } local_regs_V_269_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3453 \
    name local_regs_V_270_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_270_out \
    op interface \
    ports { local_regs_V_270_out { O 32 vector } local_regs_V_270_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3454 \
    name local_regs_V_271_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_271_out \
    op interface \
    ports { local_regs_V_271_out { O 32 vector } local_regs_V_271_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3455 \
    name local_regs_V_272_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_272_out \
    op interface \
    ports { local_regs_V_272_out { O 32 vector } local_regs_V_272_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3456 \
    name local_regs_V_273_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_273_out \
    op interface \
    ports { local_regs_V_273_out { O 32 vector } local_regs_V_273_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3457 \
    name local_regs_V_274_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_274_out \
    op interface \
    ports { local_regs_V_274_out { O 32 vector } local_regs_V_274_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3458 \
    name local_regs_V_275_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_275_out \
    op interface \
    ports { local_regs_V_275_out { O 32 vector } local_regs_V_275_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3459 \
    name local_regs_V_276_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_276_out \
    op interface \
    ports { local_regs_V_276_out { O 32 vector } local_regs_V_276_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3460 \
    name local_regs_V_277_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_277_out \
    op interface \
    ports { local_regs_V_277_out { O 32 vector } local_regs_V_277_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3461 \
    name local_regs_V_278_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_278_out \
    op interface \
    ports { local_regs_V_278_out { O 32 vector } local_regs_V_278_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3462 \
    name local_regs_V_279_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_279_out \
    op interface \
    ports { local_regs_V_279_out { O 32 vector } local_regs_V_279_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3463 \
    name local_regs_V_280_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_280_out \
    op interface \
    ports { local_regs_V_280_out { O 32 vector } local_regs_V_280_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3464 \
    name local_regs_V_281_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_281_out \
    op interface \
    ports { local_regs_V_281_out { O 32 vector } local_regs_V_281_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3465 \
    name local_regs_V_282_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_282_out \
    op interface \
    ports { local_regs_V_282_out { O 32 vector } local_regs_V_282_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3466 \
    name local_regs_V_283_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_283_out \
    op interface \
    ports { local_regs_V_283_out { O 32 vector } local_regs_V_283_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3467 \
    name local_regs_V_284_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_284_out \
    op interface \
    ports { local_regs_V_284_out { O 32 vector } local_regs_V_284_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3468 \
    name local_regs_V_285_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_285_out \
    op interface \
    ports { local_regs_V_285_out { O 32 vector } local_regs_V_285_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3469 \
    name local_regs_V_286_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_286_out \
    op interface \
    ports { local_regs_V_286_out { O 32 vector } local_regs_V_286_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3470 \
    name local_regs_V_287_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_287_out \
    op interface \
    ports { local_regs_V_287_out { O 32 vector } local_regs_V_287_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3471 \
    name local_regs_V_288_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_288_out \
    op interface \
    ports { local_regs_V_288_out { O 32 vector } local_regs_V_288_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3472 \
    name local_regs_V_289_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_289_out \
    op interface \
    ports { local_regs_V_289_out { O 32 vector } local_regs_V_289_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3473 \
    name local_regs_V_290_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_290_out \
    op interface \
    ports { local_regs_V_290_out { O 32 vector } local_regs_V_290_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3474 \
    name local_regs_V_291_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_291_out \
    op interface \
    ports { local_regs_V_291_out { O 32 vector } local_regs_V_291_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3475 \
    name local_regs_V_292_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_292_out \
    op interface \
    ports { local_regs_V_292_out { O 32 vector } local_regs_V_292_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3476 \
    name local_regs_V_293_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_293_out \
    op interface \
    ports { local_regs_V_293_out { O 32 vector } local_regs_V_293_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3477 \
    name local_regs_V_294_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_294_out \
    op interface \
    ports { local_regs_V_294_out { O 32 vector } local_regs_V_294_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3478 \
    name local_regs_V_295_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_295_out \
    op interface \
    ports { local_regs_V_295_out { O 32 vector } local_regs_V_295_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3479 \
    name local_regs_V_296_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_296_out \
    op interface \
    ports { local_regs_V_296_out { O 32 vector } local_regs_V_296_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3480 \
    name local_regs_V_297_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_297_out \
    op interface \
    ports { local_regs_V_297_out { O 32 vector } local_regs_V_297_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3481 \
    name local_regs_V_298_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_298_out \
    op interface \
    ports { local_regs_V_298_out { O 32 vector } local_regs_V_298_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3482 \
    name local_regs_V_299_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_299_out \
    op interface \
    ports { local_regs_V_299_out { O 32 vector } local_regs_V_299_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3483 \
    name local_regs_V_300_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_300_out \
    op interface \
    ports { local_regs_V_300_out { O 32 vector } local_regs_V_300_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3484 \
    name local_regs_V_301_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_301_out \
    op interface \
    ports { local_regs_V_301_out { O 32 vector } local_regs_V_301_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3485 \
    name local_regs_V_302_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_302_out \
    op interface \
    ports { local_regs_V_302_out { O 32 vector } local_regs_V_302_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3486 \
    name local_regs_V_303_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_303_out \
    op interface \
    ports { local_regs_V_303_out { O 32 vector } local_regs_V_303_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3487 \
    name local_regs_V_304_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_304_out \
    op interface \
    ports { local_regs_V_304_out { O 32 vector } local_regs_V_304_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3488 \
    name local_regs_V_305_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_305_out \
    op interface \
    ports { local_regs_V_305_out { O 32 vector } local_regs_V_305_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3489 \
    name local_regs_V_306_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_306_out \
    op interface \
    ports { local_regs_V_306_out { O 32 vector } local_regs_V_306_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3490 \
    name local_regs_V_307_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_307_out \
    op interface \
    ports { local_regs_V_307_out { O 32 vector } local_regs_V_307_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3491 \
    name local_regs_V_308_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_308_out \
    op interface \
    ports { local_regs_V_308_out { O 32 vector } local_regs_V_308_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3492 \
    name local_regs_V_309_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_309_out \
    op interface \
    ports { local_regs_V_309_out { O 32 vector } local_regs_V_309_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3493 \
    name local_regs_V_310_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_310_out \
    op interface \
    ports { local_regs_V_310_out { O 32 vector } local_regs_V_310_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3494 \
    name local_regs_V_311_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_311_out \
    op interface \
    ports { local_regs_V_311_out { O 32 vector } local_regs_V_311_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3495 \
    name local_regs_V_312_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_312_out \
    op interface \
    ports { local_regs_V_312_out { O 32 vector } local_regs_V_312_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3496 \
    name local_regs_V_313_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_313_out \
    op interface \
    ports { local_regs_V_313_out { O 32 vector } local_regs_V_313_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3497 \
    name local_regs_V_314_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_314_out \
    op interface \
    ports { local_regs_V_314_out { O 32 vector } local_regs_V_314_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3498 \
    name local_regs_V_315_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_315_out \
    op interface \
    ports { local_regs_V_315_out { O 32 vector } local_regs_V_315_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3499 \
    name local_regs_V_316_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_316_out \
    op interface \
    ports { local_regs_V_316_out { O 32 vector } local_regs_V_316_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3500 \
    name local_regs_V_317_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_317_out \
    op interface \
    ports { local_regs_V_317_out { O 32 vector } local_regs_V_317_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3501 \
    name local_regs_V_318_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_318_out \
    op interface \
    ports { local_regs_V_318_out { O 32 vector } local_regs_V_318_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3502 \
    name local_regs_V_319_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_319_out \
    op interface \
    ports { local_regs_V_319_out { O 32 vector } local_regs_V_319_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3503 \
    name local_regs_V_320_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_320_out \
    op interface \
    ports { local_regs_V_320_out { O 32 vector } local_regs_V_320_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3504 \
    name local_regs_V_321_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_321_out \
    op interface \
    ports { local_regs_V_321_out { O 32 vector } local_regs_V_321_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3505 \
    name local_regs_V_322_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_322_out \
    op interface \
    ports { local_regs_V_322_out { O 32 vector } local_regs_V_322_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3506 \
    name local_regs_V_323_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_323_out \
    op interface \
    ports { local_regs_V_323_out { O 32 vector } local_regs_V_323_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3507 \
    name local_regs_V_324_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_324_out \
    op interface \
    ports { local_regs_V_324_out { O 32 vector } local_regs_V_324_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3508 \
    name local_regs_V_325_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_325_out \
    op interface \
    ports { local_regs_V_325_out { O 32 vector } local_regs_V_325_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3509 \
    name local_regs_V_326_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_326_out \
    op interface \
    ports { local_regs_V_326_out { O 32 vector } local_regs_V_326_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3510 \
    name local_regs_V_327_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_327_out \
    op interface \
    ports { local_regs_V_327_out { O 32 vector } local_regs_V_327_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3511 \
    name local_regs_V_328_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_328_out \
    op interface \
    ports { local_regs_V_328_out { O 32 vector } local_regs_V_328_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3512 \
    name local_regs_V_329_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_329_out \
    op interface \
    ports { local_regs_V_329_out { O 32 vector } local_regs_V_329_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3513 \
    name local_regs_V_330_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_330_out \
    op interface \
    ports { local_regs_V_330_out { O 32 vector } local_regs_V_330_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3514 \
    name local_regs_V_331_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_331_out \
    op interface \
    ports { local_regs_V_331_out { O 32 vector } local_regs_V_331_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3515 \
    name local_regs_V_332_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_332_out \
    op interface \
    ports { local_regs_V_332_out { O 32 vector } local_regs_V_332_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3516 \
    name local_regs_V_333_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_333_out \
    op interface \
    ports { local_regs_V_333_out { O 32 vector } local_regs_V_333_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3517 \
    name local_regs_V_334_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_334_out \
    op interface \
    ports { local_regs_V_334_out { O 32 vector } local_regs_V_334_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3518 \
    name local_regs_V_335_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_335_out \
    op interface \
    ports { local_regs_V_335_out { O 32 vector } local_regs_V_335_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3519 \
    name local_regs_V_336_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_336_out \
    op interface \
    ports { local_regs_V_336_out { O 32 vector } local_regs_V_336_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3520 \
    name local_regs_V_337_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_337_out \
    op interface \
    ports { local_regs_V_337_out { O 32 vector } local_regs_V_337_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3521 \
    name local_regs_V_338_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_338_out \
    op interface \
    ports { local_regs_V_338_out { O 32 vector } local_regs_V_338_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3522 \
    name local_regs_V_339_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_339_out \
    op interface \
    ports { local_regs_V_339_out { O 32 vector } local_regs_V_339_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3523 \
    name local_regs_V_340_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_340_out \
    op interface \
    ports { local_regs_V_340_out { O 32 vector } local_regs_V_340_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3524 \
    name local_regs_V_341_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_341_out \
    op interface \
    ports { local_regs_V_341_out { O 32 vector } local_regs_V_341_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3525 \
    name local_regs_V_342_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_342_out \
    op interface \
    ports { local_regs_V_342_out { O 32 vector } local_regs_V_342_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3526 \
    name local_regs_V_343_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_343_out \
    op interface \
    ports { local_regs_V_343_out { O 32 vector } local_regs_V_343_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3527 \
    name local_regs_V_344_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_344_out \
    op interface \
    ports { local_regs_V_344_out { O 32 vector } local_regs_V_344_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3528 \
    name local_regs_V_345_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_345_out \
    op interface \
    ports { local_regs_V_345_out { O 32 vector } local_regs_V_345_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3529 \
    name local_regs_V_346_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_346_out \
    op interface \
    ports { local_regs_V_346_out { O 32 vector } local_regs_V_346_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3530 \
    name local_regs_V_347_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_347_out \
    op interface \
    ports { local_regs_V_347_out { O 32 vector } local_regs_V_347_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3531 \
    name local_regs_V_348_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_348_out \
    op interface \
    ports { local_regs_V_348_out { O 32 vector } local_regs_V_348_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3532 \
    name local_regs_V_349_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_349_out \
    op interface \
    ports { local_regs_V_349_out { O 32 vector } local_regs_V_349_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3533 \
    name local_regs_V_350_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_350_out \
    op interface \
    ports { local_regs_V_350_out { O 32 vector } local_regs_V_350_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3534 \
    name local_regs_V_351_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_351_out \
    op interface \
    ports { local_regs_V_351_out { O 32 vector } local_regs_V_351_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3535 \
    name local_regs_V_352_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_352_out \
    op interface \
    ports { local_regs_V_352_out { O 32 vector } local_regs_V_352_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3536 \
    name local_regs_V_353_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_353_out \
    op interface \
    ports { local_regs_V_353_out { O 32 vector } local_regs_V_353_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3537 \
    name local_regs_V_354_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_354_out \
    op interface \
    ports { local_regs_V_354_out { O 32 vector } local_regs_V_354_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3538 \
    name local_regs_V_355_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_355_out \
    op interface \
    ports { local_regs_V_355_out { O 32 vector } local_regs_V_355_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3539 \
    name local_regs_V_356_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_356_out \
    op interface \
    ports { local_regs_V_356_out { O 32 vector } local_regs_V_356_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3540 \
    name local_regs_V_357_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_357_out \
    op interface \
    ports { local_regs_V_357_out { O 32 vector } local_regs_V_357_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3541 \
    name local_regs_V_358_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_358_out \
    op interface \
    ports { local_regs_V_358_out { O 32 vector } local_regs_V_358_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3542 \
    name local_regs_V_359_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_359_out \
    op interface \
    ports { local_regs_V_359_out { O 32 vector } local_regs_V_359_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3543 \
    name local_regs_V_360_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_360_out \
    op interface \
    ports { local_regs_V_360_out { O 32 vector } local_regs_V_360_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3544 \
    name local_regs_V_361_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_361_out \
    op interface \
    ports { local_regs_V_361_out { O 32 vector } local_regs_V_361_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3545 \
    name local_regs_V_362_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_362_out \
    op interface \
    ports { local_regs_V_362_out { O 32 vector } local_regs_V_362_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3546 \
    name local_regs_V_363_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_363_out \
    op interface \
    ports { local_regs_V_363_out { O 32 vector } local_regs_V_363_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3547 \
    name local_regs_V_364_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_364_out \
    op interface \
    ports { local_regs_V_364_out { O 32 vector } local_regs_V_364_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3548 \
    name local_regs_V_365_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_365_out \
    op interface \
    ports { local_regs_V_365_out { O 32 vector } local_regs_V_365_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3549 \
    name local_regs_V_366_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_366_out \
    op interface \
    ports { local_regs_V_366_out { O 32 vector } local_regs_V_366_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3550 \
    name local_regs_V_367_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_367_out \
    op interface \
    ports { local_regs_V_367_out { O 32 vector } local_regs_V_367_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3551 \
    name local_regs_V_368_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_368_out \
    op interface \
    ports { local_regs_V_368_out { O 32 vector } local_regs_V_368_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3552 \
    name local_regs_V_369_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_369_out \
    op interface \
    ports { local_regs_V_369_out { O 32 vector } local_regs_V_369_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3553 \
    name local_regs_V_370_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_370_out \
    op interface \
    ports { local_regs_V_370_out { O 32 vector } local_regs_V_370_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3554 \
    name local_regs_V_371_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_371_out \
    op interface \
    ports { local_regs_V_371_out { O 32 vector } local_regs_V_371_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3555 \
    name local_regs_V_372_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_372_out \
    op interface \
    ports { local_regs_V_372_out { O 32 vector } local_regs_V_372_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3556 \
    name local_regs_V_373_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_373_out \
    op interface \
    ports { local_regs_V_373_out { O 32 vector } local_regs_V_373_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3557 \
    name local_regs_V_374_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_374_out \
    op interface \
    ports { local_regs_V_374_out { O 32 vector } local_regs_V_374_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3558 \
    name local_regs_V_375_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_375_out \
    op interface \
    ports { local_regs_V_375_out { O 32 vector } local_regs_V_375_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3559 \
    name local_regs_V_376_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_376_out \
    op interface \
    ports { local_regs_V_376_out { O 32 vector } local_regs_V_376_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3560 \
    name local_regs_V_377_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_377_out \
    op interface \
    ports { local_regs_V_377_out { O 32 vector } local_regs_V_377_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3561 \
    name local_regs_V_378_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_378_out \
    op interface \
    ports { local_regs_V_378_out { O 32 vector } local_regs_V_378_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3562 \
    name local_regs_V_379_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_379_out \
    op interface \
    ports { local_regs_V_379_out { O 32 vector } local_regs_V_379_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3563 \
    name local_regs_V_380_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_380_out \
    op interface \
    ports { local_regs_V_380_out { O 32 vector } local_regs_V_380_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3564 \
    name local_regs_V_381_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_381_out \
    op interface \
    ports { local_regs_V_381_out { O 32 vector } local_regs_V_381_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3565 \
    name local_regs_V_382_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_382_out \
    op interface \
    ports { local_regs_V_382_out { O 32 vector } local_regs_V_382_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3566 \
    name local_regs_V_383_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_383_out \
    op interface \
    ports { local_regs_V_383_out { O 32 vector } local_regs_V_383_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3567 \
    name local_regs_V_384_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_384_out \
    op interface \
    ports { local_regs_V_384_out { O 32 vector } local_regs_V_384_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3568 \
    name local_regs_V_385_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_385_out \
    op interface \
    ports { local_regs_V_385_out { O 32 vector } local_regs_V_385_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3569 \
    name local_regs_V_386_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_386_out \
    op interface \
    ports { local_regs_V_386_out { O 32 vector } local_regs_V_386_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3570 \
    name local_regs_V_387_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_387_out \
    op interface \
    ports { local_regs_V_387_out { O 32 vector } local_regs_V_387_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3571 \
    name local_regs_V_388_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_388_out \
    op interface \
    ports { local_regs_V_388_out { O 32 vector } local_regs_V_388_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3572 \
    name local_regs_V_389_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_389_out \
    op interface \
    ports { local_regs_V_389_out { O 32 vector } local_regs_V_389_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3573 \
    name local_regs_V_390_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_390_out \
    op interface \
    ports { local_regs_V_390_out { O 32 vector } local_regs_V_390_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3574 \
    name local_regs_V_391_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_391_out \
    op interface \
    ports { local_regs_V_391_out { O 32 vector } local_regs_V_391_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3575 \
    name local_regs_V_392_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_392_out \
    op interface \
    ports { local_regs_V_392_out { O 32 vector } local_regs_V_392_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3576 \
    name local_regs_V_393_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_393_out \
    op interface \
    ports { local_regs_V_393_out { O 32 vector } local_regs_V_393_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3577 \
    name local_regs_V_394_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_394_out \
    op interface \
    ports { local_regs_V_394_out { O 32 vector } local_regs_V_394_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3578 \
    name local_regs_V_395_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_395_out \
    op interface \
    ports { local_regs_V_395_out { O 32 vector } local_regs_V_395_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3579 \
    name local_regs_V_396_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_396_out \
    op interface \
    ports { local_regs_V_396_out { O 32 vector } local_regs_V_396_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3580 \
    name local_regs_V_397_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_397_out \
    op interface \
    ports { local_regs_V_397_out { O 32 vector } local_regs_V_397_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3581 \
    name local_regs_V_398_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_398_out \
    op interface \
    ports { local_regs_V_398_out { O 32 vector } local_regs_V_398_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3582 \
    name local_regs_V_399_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_399_out \
    op interface \
    ports { local_regs_V_399_out { O 32 vector } local_regs_V_399_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3583 \
    name local_regs_V_400_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_400_out \
    op interface \
    ports { local_regs_V_400_out { O 32 vector } local_regs_V_400_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3584 \
    name local_regs_V_401_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_401_out \
    op interface \
    ports { local_regs_V_401_out { O 32 vector } local_regs_V_401_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3585 \
    name local_regs_V_402_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_402_out \
    op interface \
    ports { local_regs_V_402_out { O 32 vector } local_regs_V_402_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3586 \
    name local_regs_V_403_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_403_out \
    op interface \
    ports { local_regs_V_403_out { O 32 vector } local_regs_V_403_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3587 \
    name local_regs_V_404_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_404_out \
    op interface \
    ports { local_regs_V_404_out { O 32 vector } local_regs_V_404_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3588 \
    name local_regs_V_405_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_405_out \
    op interface \
    ports { local_regs_V_405_out { O 32 vector } local_regs_V_405_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3589 \
    name local_regs_V_406_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_406_out \
    op interface \
    ports { local_regs_V_406_out { O 32 vector } local_regs_V_406_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3590 \
    name local_regs_V_407_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_407_out \
    op interface \
    ports { local_regs_V_407_out { O 32 vector } local_regs_V_407_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3591 \
    name local_regs_V_408_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_408_out \
    op interface \
    ports { local_regs_V_408_out { O 32 vector } local_regs_V_408_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3592 \
    name local_regs_V_409_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_409_out \
    op interface \
    ports { local_regs_V_409_out { O 32 vector } local_regs_V_409_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3593 \
    name local_regs_V_410_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_410_out \
    op interface \
    ports { local_regs_V_410_out { O 32 vector } local_regs_V_410_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3594 \
    name local_regs_V_411_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_411_out \
    op interface \
    ports { local_regs_V_411_out { O 32 vector } local_regs_V_411_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3595 \
    name local_regs_V_412_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_412_out \
    op interface \
    ports { local_regs_V_412_out { O 32 vector } local_regs_V_412_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3596 \
    name local_regs_V_413_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_413_out \
    op interface \
    ports { local_regs_V_413_out { O 32 vector } local_regs_V_413_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3597 \
    name local_regs_V_414_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_414_out \
    op interface \
    ports { local_regs_V_414_out { O 32 vector } local_regs_V_414_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3598 \
    name local_regs_V_415_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_415_out \
    op interface \
    ports { local_regs_V_415_out { O 32 vector } local_regs_V_415_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3599 \
    name local_regs_V_416_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_416_out \
    op interface \
    ports { local_regs_V_416_out { O 32 vector } local_regs_V_416_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3600 \
    name local_regs_V_417_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_417_out \
    op interface \
    ports { local_regs_V_417_out { O 32 vector } local_regs_V_417_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3601 \
    name local_regs_V_418_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_418_out \
    op interface \
    ports { local_regs_V_418_out { O 32 vector } local_regs_V_418_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3602 \
    name local_regs_V_419_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_419_out \
    op interface \
    ports { local_regs_V_419_out { O 32 vector } local_regs_V_419_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3603 \
    name local_regs_V_420_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_420_out \
    op interface \
    ports { local_regs_V_420_out { O 32 vector } local_regs_V_420_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3604 \
    name local_regs_V_421_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_421_out \
    op interface \
    ports { local_regs_V_421_out { O 32 vector } local_regs_V_421_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3605 \
    name local_regs_V_422_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_422_out \
    op interface \
    ports { local_regs_V_422_out { O 32 vector } local_regs_V_422_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3606 \
    name local_regs_V_423_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_423_out \
    op interface \
    ports { local_regs_V_423_out { O 32 vector } local_regs_V_423_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3607 \
    name local_regs_V_424_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_424_out \
    op interface \
    ports { local_regs_V_424_out { O 32 vector } local_regs_V_424_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3608 \
    name local_regs_V_425_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_425_out \
    op interface \
    ports { local_regs_V_425_out { O 32 vector } local_regs_V_425_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3609 \
    name local_regs_V_426_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_426_out \
    op interface \
    ports { local_regs_V_426_out { O 32 vector } local_regs_V_426_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3610 \
    name local_regs_V_427_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_427_out \
    op interface \
    ports { local_regs_V_427_out { O 32 vector } local_regs_V_427_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3611 \
    name local_regs_V_428_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_428_out \
    op interface \
    ports { local_regs_V_428_out { O 32 vector } local_regs_V_428_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3612 \
    name local_regs_V_429_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_429_out \
    op interface \
    ports { local_regs_V_429_out { O 32 vector } local_regs_V_429_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3613 \
    name local_regs_V_430_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_430_out \
    op interface \
    ports { local_regs_V_430_out { O 32 vector } local_regs_V_430_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3614 \
    name local_regs_V_431_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_431_out \
    op interface \
    ports { local_regs_V_431_out { O 32 vector } local_regs_V_431_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3615 \
    name local_regs_V_432_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_432_out \
    op interface \
    ports { local_regs_V_432_out { O 32 vector } local_regs_V_432_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3616 \
    name local_regs_V_433_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_433_out \
    op interface \
    ports { local_regs_V_433_out { O 32 vector } local_regs_V_433_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3617 \
    name local_regs_V_434_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_434_out \
    op interface \
    ports { local_regs_V_434_out { O 32 vector } local_regs_V_434_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3618 \
    name local_regs_V_435_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_435_out \
    op interface \
    ports { local_regs_V_435_out { O 32 vector } local_regs_V_435_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3619 \
    name local_regs_V_436_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_436_out \
    op interface \
    ports { local_regs_V_436_out { O 32 vector } local_regs_V_436_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3620 \
    name local_regs_V_437_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_437_out \
    op interface \
    ports { local_regs_V_437_out { O 32 vector } local_regs_V_437_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3621 \
    name local_regs_V_438_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_438_out \
    op interface \
    ports { local_regs_V_438_out { O 32 vector } local_regs_V_438_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3622 \
    name local_regs_V_439_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_439_out \
    op interface \
    ports { local_regs_V_439_out { O 32 vector } local_regs_V_439_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3623 \
    name local_regs_V_440_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_440_out \
    op interface \
    ports { local_regs_V_440_out { O 32 vector } local_regs_V_440_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3624 \
    name local_regs_V_441_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_441_out \
    op interface \
    ports { local_regs_V_441_out { O 32 vector } local_regs_V_441_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3625 \
    name local_regs_V_442_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_442_out \
    op interface \
    ports { local_regs_V_442_out { O 32 vector } local_regs_V_442_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3626 \
    name local_regs_V_443_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_443_out \
    op interface \
    ports { local_regs_V_443_out { O 32 vector } local_regs_V_443_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3627 \
    name local_regs_V_444_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_444_out \
    op interface \
    ports { local_regs_V_444_out { O 32 vector } local_regs_V_444_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3628 \
    name local_regs_V_445_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_445_out \
    op interface \
    ports { local_regs_V_445_out { O 32 vector } local_regs_V_445_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3629 \
    name local_regs_V_446_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_446_out \
    op interface \
    ports { local_regs_V_446_out { O 32 vector } local_regs_V_446_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3630 \
    name local_regs_V_447_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_447_out \
    op interface \
    ports { local_regs_V_447_out { O 32 vector } local_regs_V_447_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3631 \
    name local_regs_V_448_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_448_out \
    op interface \
    ports { local_regs_V_448_out { O 32 vector } local_regs_V_448_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3632 \
    name local_regs_V_449_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_449_out \
    op interface \
    ports { local_regs_V_449_out { O 32 vector } local_regs_V_449_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3633 \
    name local_regs_V_450_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_450_out \
    op interface \
    ports { local_regs_V_450_out { O 32 vector } local_regs_V_450_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3634 \
    name local_regs_V_451_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_451_out \
    op interface \
    ports { local_regs_V_451_out { O 32 vector } local_regs_V_451_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3635 \
    name local_regs_V_452_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_452_out \
    op interface \
    ports { local_regs_V_452_out { O 32 vector } local_regs_V_452_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3636 \
    name local_regs_V_453_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_453_out \
    op interface \
    ports { local_regs_V_453_out { O 32 vector } local_regs_V_453_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3637 \
    name local_regs_V_454_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_454_out \
    op interface \
    ports { local_regs_V_454_out { O 32 vector } local_regs_V_454_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3638 \
    name local_regs_V_455_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_455_out \
    op interface \
    ports { local_regs_V_455_out { O 32 vector } local_regs_V_455_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3639 \
    name local_regs_V_456_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_456_out \
    op interface \
    ports { local_regs_V_456_out { O 32 vector } local_regs_V_456_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3640 \
    name local_regs_V_457_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_457_out \
    op interface \
    ports { local_regs_V_457_out { O 32 vector } local_regs_V_457_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3641 \
    name local_regs_V_458_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_458_out \
    op interface \
    ports { local_regs_V_458_out { O 32 vector } local_regs_V_458_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3642 \
    name local_regs_V_459_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_459_out \
    op interface \
    ports { local_regs_V_459_out { O 32 vector } local_regs_V_459_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3643 \
    name local_regs_V_460_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_460_out \
    op interface \
    ports { local_regs_V_460_out { O 32 vector } local_regs_V_460_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3644 \
    name local_regs_V_461_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_461_out \
    op interface \
    ports { local_regs_V_461_out { O 32 vector } local_regs_V_461_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3645 \
    name local_regs_V_462_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_462_out \
    op interface \
    ports { local_regs_V_462_out { O 32 vector } local_regs_V_462_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3646 \
    name local_regs_V_463_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_463_out \
    op interface \
    ports { local_regs_V_463_out { O 32 vector } local_regs_V_463_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3647 \
    name local_regs_V_464_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_464_out \
    op interface \
    ports { local_regs_V_464_out { O 32 vector } local_regs_V_464_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3648 \
    name local_regs_V_465_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_465_out \
    op interface \
    ports { local_regs_V_465_out { O 32 vector } local_regs_V_465_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3649 \
    name local_regs_V_466_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_466_out \
    op interface \
    ports { local_regs_V_466_out { O 32 vector } local_regs_V_466_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3650 \
    name local_regs_V_467_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_467_out \
    op interface \
    ports { local_regs_V_467_out { O 32 vector } local_regs_V_467_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3651 \
    name local_regs_V_468_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_468_out \
    op interface \
    ports { local_regs_V_468_out { O 32 vector } local_regs_V_468_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3652 \
    name local_regs_V_469_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_469_out \
    op interface \
    ports { local_regs_V_469_out { O 32 vector } local_regs_V_469_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3653 \
    name local_regs_V_470_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_470_out \
    op interface \
    ports { local_regs_V_470_out { O 32 vector } local_regs_V_470_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3654 \
    name local_regs_V_471_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_471_out \
    op interface \
    ports { local_regs_V_471_out { O 32 vector } local_regs_V_471_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3655 \
    name local_regs_V_472_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_472_out \
    op interface \
    ports { local_regs_V_472_out { O 32 vector } local_regs_V_472_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3656 \
    name local_regs_V_473_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_473_out \
    op interface \
    ports { local_regs_V_473_out { O 32 vector } local_regs_V_473_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3657 \
    name local_regs_V_474_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_474_out \
    op interface \
    ports { local_regs_V_474_out { O 32 vector } local_regs_V_474_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3658 \
    name local_regs_V_475_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_475_out \
    op interface \
    ports { local_regs_V_475_out { O 32 vector } local_regs_V_475_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3659 \
    name local_regs_V_476_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_476_out \
    op interface \
    ports { local_regs_V_476_out { O 32 vector } local_regs_V_476_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3660 \
    name local_regs_V_477_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_477_out \
    op interface \
    ports { local_regs_V_477_out { O 32 vector } local_regs_V_477_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3661 \
    name local_regs_V_478_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_478_out \
    op interface \
    ports { local_regs_V_478_out { O 32 vector } local_regs_V_478_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3662 \
    name local_regs_V_479_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_479_out \
    op interface \
    ports { local_regs_V_479_out { O 32 vector } local_regs_V_479_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3663 \
    name local_regs_V_480_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_480_out \
    op interface \
    ports { local_regs_V_480_out { O 32 vector } local_regs_V_480_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3664 \
    name local_regs_V_481_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_481_out \
    op interface \
    ports { local_regs_V_481_out { O 32 vector } local_regs_V_481_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3665 \
    name local_regs_V_482_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_482_out \
    op interface \
    ports { local_regs_V_482_out { O 32 vector } local_regs_V_482_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3666 \
    name local_regs_V_483_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_483_out \
    op interface \
    ports { local_regs_V_483_out { O 32 vector } local_regs_V_483_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3667 \
    name local_regs_V_484_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_484_out \
    op interface \
    ports { local_regs_V_484_out { O 32 vector } local_regs_V_484_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3668 \
    name local_regs_V_485_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_485_out \
    op interface \
    ports { local_regs_V_485_out { O 32 vector } local_regs_V_485_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3669 \
    name local_regs_V_486_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_486_out \
    op interface \
    ports { local_regs_V_486_out { O 32 vector } local_regs_V_486_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3670 \
    name local_regs_V_487_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_487_out \
    op interface \
    ports { local_regs_V_487_out { O 32 vector } local_regs_V_487_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3671 \
    name local_regs_V_488_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_488_out \
    op interface \
    ports { local_regs_V_488_out { O 32 vector } local_regs_V_488_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3672 \
    name local_regs_V_489_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_489_out \
    op interface \
    ports { local_regs_V_489_out { O 32 vector } local_regs_V_489_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3673 \
    name local_regs_V_490_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_490_out \
    op interface \
    ports { local_regs_V_490_out { O 32 vector } local_regs_V_490_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3674 \
    name local_regs_V_491_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_491_out \
    op interface \
    ports { local_regs_V_491_out { O 32 vector } local_regs_V_491_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3675 \
    name local_regs_V_492_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_492_out \
    op interface \
    ports { local_regs_V_492_out { O 32 vector } local_regs_V_492_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3676 \
    name local_regs_V_493_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_493_out \
    op interface \
    ports { local_regs_V_493_out { O 32 vector } local_regs_V_493_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3677 \
    name local_regs_V_494_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_494_out \
    op interface \
    ports { local_regs_V_494_out { O 32 vector } local_regs_V_494_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3678 \
    name local_regs_V_495_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_495_out \
    op interface \
    ports { local_regs_V_495_out { O 32 vector } local_regs_V_495_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3679 \
    name local_regs_V_496_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_496_out \
    op interface \
    ports { local_regs_V_496_out { O 32 vector } local_regs_V_496_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3680 \
    name local_regs_V_497_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_497_out \
    op interface \
    ports { local_regs_V_497_out { O 32 vector } local_regs_V_497_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3681 \
    name local_regs_V_498_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_498_out \
    op interface \
    ports { local_regs_V_498_out { O 32 vector } local_regs_V_498_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3682 \
    name local_regs_V_499_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_499_out \
    op interface \
    ports { local_regs_V_499_out { O 32 vector } local_regs_V_499_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3683 \
    name local_regs_V_500_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_500_out \
    op interface \
    ports { local_regs_V_500_out { O 32 vector } local_regs_V_500_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3684 \
    name local_regs_V_501_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_501_out \
    op interface \
    ports { local_regs_V_501_out { O 32 vector } local_regs_V_501_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3685 \
    name local_regs_V_502_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_502_out \
    op interface \
    ports { local_regs_V_502_out { O 32 vector } local_regs_V_502_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3686 \
    name local_regs_V_503_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_503_out \
    op interface \
    ports { local_regs_V_503_out { O 32 vector } local_regs_V_503_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3687 \
    name local_regs_V_504_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_504_out \
    op interface \
    ports { local_regs_V_504_out { O 32 vector } local_regs_V_504_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3688 \
    name local_regs_V_505_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_505_out \
    op interface \
    ports { local_regs_V_505_out { O 32 vector } local_regs_V_505_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3689 \
    name local_regs_V_506_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_506_out \
    op interface \
    ports { local_regs_V_506_out { O 32 vector } local_regs_V_506_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3690 \
    name local_regs_V_507_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_507_out \
    op interface \
    ports { local_regs_V_507_out { O 32 vector } local_regs_V_507_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3691 \
    name local_regs_V_508_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_508_out \
    op interface \
    ports { local_regs_V_508_out { O 32 vector } local_regs_V_508_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3692 \
    name local_regs_V_509_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_509_out \
    op interface \
    ports { local_regs_V_509_out { O 32 vector } local_regs_V_509_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3693 \
    name local_regs_V_510_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_510_out \
    op interface \
    ports { local_regs_V_510_out { O 32 vector } local_regs_V_510_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3694 \
    name local_regs_V_511_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_511_out \
    op interface \
    ports { local_regs_V_511_out { O 32 vector } local_regs_V_511_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3695 \
    name local_regs_V_512_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_512_out \
    op interface \
    ports { local_regs_V_512_out { O 32 vector } local_regs_V_512_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3696 \
    name local_regs_V_513_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_513_out \
    op interface \
    ports { local_regs_V_513_out { O 32 vector } local_regs_V_513_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3697 \
    name local_regs_V_514_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_514_out \
    op interface \
    ports { local_regs_V_514_out { O 32 vector } local_regs_V_514_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3698 \
    name local_regs_V_515_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_515_out \
    op interface \
    ports { local_regs_V_515_out { O 32 vector } local_regs_V_515_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3699 \
    name local_regs_V_516_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_516_out \
    op interface \
    ports { local_regs_V_516_out { O 32 vector } local_regs_V_516_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3700 \
    name local_regs_V_517_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_517_out \
    op interface \
    ports { local_regs_V_517_out { O 32 vector } local_regs_V_517_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3701 \
    name local_regs_V_518_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_518_out \
    op interface \
    ports { local_regs_V_518_out { O 32 vector } local_regs_V_518_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3702 \
    name local_regs_V_519_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_519_out \
    op interface \
    ports { local_regs_V_519_out { O 32 vector } local_regs_V_519_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3703 \
    name local_regs_V_520_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_520_out \
    op interface \
    ports { local_regs_V_520_out { O 32 vector } local_regs_V_520_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3704 \
    name local_regs_V_521_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_521_out \
    op interface \
    ports { local_regs_V_521_out { O 32 vector } local_regs_V_521_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3705 \
    name local_regs_V_522_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_522_out \
    op interface \
    ports { local_regs_V_522_out { O 32 vector } local_regs_V_522_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3706 \
    name local_regs_V_523_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_523_out \
    op interface \
    ports { local_regs_V_523_out { O 32 vector } local_regs_V_523_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3707 \
    name local_regs_V_524_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_524_out \
    op interface \
    ports { local_regs_V_524_out { O 32 vector } local_regs_V_524_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3708 \
    name local_regs_V_525_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_525_out \
    op interface \
    ports { local_regs_V_525_out { O 32 vector } local_regs_V_525_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3709 \
    name local_regs_V_526_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_526_out \
    op interface \
    ports { local_regs_V_526_out { O 32 vector } local_regs_V_526_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3710 \
    name local_regs_V_527_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_527_out \
    op interface \
    ports { local_regs_V_527_out { O 32 vector } local_regs_V_527_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3711 \
    name local_regs_V_528_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_528_out \
    op interface \
    ports { local_regs_V_528_out { O 32 vector } local_regs_V_528_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3712 \
    name local_regs_V_529_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_529_out \
    op interface \
    ports { local_regs_V_529_out { O 32 vector } local_regs_V_529_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3713 \
    name local_regs_V_530_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_530_out \
    op interface \
    ports { local_regs_V_530_out { O 32 vector } local_regs_V_530_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3714 \
    name local_regs_V_531_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_531_out \
    op interface \
    ports { local_regs_V_531_out { O 32 vector } local_regs_V_531_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3715 \
    name local_regs_V_532_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_532_out \
    op interface \
    ports { local_regs_V_532_out { O 32 vector } local_regs_V_532_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3716 \
    name local_regs_V_533_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_533_out \
    op interface \
    ports { local_regs_V_533_out { O 32 vector } local_regs_V_533_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3717 \
    name local_regs_V_534_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_534_out \
    op interface \
    ports { local_regs_V_534_out { O 32 vector } local_regs_V_534_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3718 \
    name local_regs_V_535_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_535_out \
    op interface \
    ports { local_regs_V_535_out { O 32 vector } local_regs_V_535_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3719 \
    name local_regs_V_536_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_536_out \
    op interface \
    ports { local_regs_V_536_out { O 32 vector } local_regs_V_536_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3720 \
    name local_regs_V_537_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_537_out \
    op interface \
    ports { local_regs_V_537_out { O 32 vector } local_regs_V_537_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3721 \
    name local_regs_V_538_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_538_out \
    op interface \
    ports { local_regs_V_538_out { O 32 vector } local_regs_V_538_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3722 \
    name local_regs_V_539_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_539_out \
    op interface \
    ports { local_regs_V_539_out { O 32 vector } local_regs_V_539_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3723 \
    name local_regs_V_540_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_540_out \
    op interface \
    ports { local_regs_V_540_out { O 32 vector } local_regs_V_540_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3724 \
    name local_regs_V_541_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_541_out \
    op interface \
    ports { local_regs_V_541_out { O 32 vector } local_regs_V_541_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3725 \
    name local_regs_V_542_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_542_out \
    op interface \
    ports { local_regs_V_542_out { O 32 vector } local_regs_V_542_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3726 \
    name local_regs_V_543_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_543_out \
    op interface \
    ports { local_regs_V_543_out { O 32 vector } local_regs_V_543_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3727 \
    name local_regs_V_544_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_544_out \
    op interface \
    ports { local_regs_V_544_out { O 32 vector } local_regs_V_544_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3728 \
    name local_regs_V_545_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_545_out \
    op interface \
    ports { local_regs_V_545_out { O 32 vector } local_regs_V_545_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3729 \
    name local_regs_V_546_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_546_out \
    op interface \
    ports { local_regs_V_546_out { O 32 vector } local_regs_V_546_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3730 \
    name local_regs_V_547_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_547_out \
    op interface \
    ports { local_regs_V_547_out { O 32 vector } local_regs_V_547_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3731 \
    name local_regs_V_548_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_548_out \
    op interface \
    ports { local_regs_V_548_out { O 32 vector } local_regs_V_548_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3732 \
    name local_regs_V_549_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_549_out \
    op interface \
    ports { local_regs_V_549_out { O 32 vector } local_regs_V_549_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3733 \
    name local_regs_V_550_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_550_out \
    op interface \
    ports { local_regs_V_550_out { O 32 vector } local_regs_V_550_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3734 \
    name local_regs_V_551_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_551_out \
    op interface \
    ports { local_regs_V_551_out { O 32 vector } local_regs_V_551_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3735 \
    name local_regs_V_552_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_552_out \
    op interface \
    ports { local_regs_V_552_out { O 32 vector } local_regs_V_552_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3736 \
    name local_regs_V_553_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_553_out \
    op interface \
    ports { local_regs_V_553_out { O 32 vector } local_regs_V_553_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3737 \
    name local_regs_V_554_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_554_out \
    op interface \
    ports { local_regs_V_554_out { O 32 vector } local_regs_V_554_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3738 \
    name local_regs_V_555_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_555_out \
    op interface \
    ports { local_regs_V_555_out { O 32 vector } local_regs_V_555_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3739 \
    name local_regs_V_556_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_556_out \
    op interface \
    ports { local_regs_V_556_out { O 32 vector } local_regs_V_556_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3740 \
    name local_regs_V_557_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_557_out \
    op interface \
    ports { local_regs_V_557_out { O 32 vector } local_regs_V_557_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3741 \
    name local_regs_V_558_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_558_out \
    op interface \
    ports { local_regs_V_558_out { O 32 vector } local_regs_V_558_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3742 \
    name local_regs_V_559_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_559_out \
    op interface \
    ports { local_regs_V_559_out { O 32 vector } local_regs_V_559_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3743 \
    name local_regs_V_560_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_560_out \
    op interface \
    ports { local_regs_V_560_out { O 32 vector } local_regs_V_560_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3744 \
    name local_regs_V_561_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_561_out \
    op interface \
    ports { local_regs_V_561_out { O 32 vector } local_regs_V_561_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3745 \
    name local_regs_V_562_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_562_out \
    op interface \
    ports { local_regs_V_562_out { O 32 vector } local_regs_V_562_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3746 \
    name local_regs_V_563_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_563_out \
    op interface \
    ports { local_regs_V_563_out { O 32 vector } local_regs_V_563_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3747 \
    name local_regs_V_564_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_564_out \
    op interface \
    ports { local_regs_V_564_out { O 32 vector } local_regs_V_564_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3748 \
    name local_regs_V_565_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_565_out \
    op interface \
    ports { local_regs_V_565_out { O 32 vector } local_regs_V_565_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3749 \
    name local_regs_V_566_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_566_out \
    op interface \
    ports { local_regs_V_566_out { O 32 vector } local_regs_V_566_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3750 \
    name local_regs_V_567_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_567_out \
    op interface \
    ports { local_regs_V_567_out { O 32 vector } local_regs_V_567_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3751 \
    name local_regs_V_568_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_568_out \
    op interface \
    ports { local_regs_V_568_out { O 32 vector } local_regs_V_568_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3752 \
    name local_regs_V_569_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_569_out \
    op interface \
    ports { local_regs_V_569_out { O 32 vector } local_regs_V_569_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3753 \
    name local_regs_V_570_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_570_out \
    op interface \
    ports { local_regs_V_570_out { O 32 vector } local_regs_V_570_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3754 \
    name local_regs_V_571_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_571_out \
    op interface \
    ports { local_regs_V_571_out { O 32 vector } local_regs_V_571_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3755 \
    name local_regs_V_572_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_572_out \
    op interface \
    ports { local_regs_V_572_out { O 32 vector } local_regs_V_572_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3756 \
    name local_regs_V_573_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_573_out \
    op interface \
    ports { local_regs_V_573_out { O 32 vector } local_regs_V_573_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3757 \
    name local_regs_V_574_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_574_out \
    op interface \
    ports { local_regs_V_574_out { O 32 vector } local_regs_V_574_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3758 \
    name local_regs_V_575_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_575_out \
    op interface \
    ports { local_regs_V_575_out { O 32 vector } local_regs_V_575_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3759 \
    name local_regs_V_576_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_576_out \
    op interface \
    ports { local_regs_V_576_out { O 32 vector } local_regs_V_576_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3760 \
    name local_regs_V_577_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_577_out \
    op interface \
    ports { local_regs_V_577_out { O 32 vector } local_regs_V_577_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3761 \
    name local_regs_V_578_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_578_out \
    op interface \
    ports { local_regs_V_578_out { O 32 vector } local_regs_V_578_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3762 \
    name local_regs_V_579_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_579_out \
    op interface \
    ports { local_regs_V_579_out { O 32 vector } local_regs_V_579_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3763 \
    name local_regs_V_580_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_580_out \
    op interface \
    ports { local_regs_V_580_out { O 32 vector } local_regs_V_580_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3764 \
    name local_regs_V_581_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_581_out \
    op interface \
    ports { local_regs_V_581_out { O 32 vector } local_regs_V_581_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3765 \
    name local_regs_V_582_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_582_out \
    op interface \
    ports { local_regs_V_582_out { O 32 vector } local_regs_V_582_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3766 \
    name local_regs_V_583_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_583_out \
    op interface \
    ports { local_regs_V_583_out { O 32 vector } local_regs_V_583_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3767 \
    name local_regs_V_584_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_584_out \
    op interface \
    ports { local_regs_V_584_out { O 32 vector } local_regs_V_584_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3768 \
    name local_regs_V_585_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_585_out \
    op interface \
    ports { local_regs_V_585_out { O 32 vector } local_regs_V_585_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3769 \
    name local_regs_V_586_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_586_out \
    op interface \
    ports { local_regs_V_586_out { O 32 vector } local_regs_V_586_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3770 \
    name local_regs_V_587_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_587_out \
    op interface \
    ports { local_regs_V_587_out { O 32 vector } local_regs_V_587_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3771 \
    name local_regs_V_588_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_588_out \
    op interface \
    ports { local_regs_V_588_out { O 32 vector } local_regs_V_588_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3772 \
    name local_regs_V_589_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_589_out \
    op interface \
    ports { local_regs_V_589_out { O 32 vector } local_regs_V_589_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3773 \
    name local_regs_V_590_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_590_out \
    op interface \
    ports { local_regs_V_590_out { O 32 vector } local_regs_V_590_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3774 \
    name local_regs_V_591_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_591_out \
    op interface \
    ports { local_regs_V_591_out { O 32 vector } local_regs_V_591_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3775 \
    name local_regs_V_592_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_592_out \
    op interface \
    ports { local_regs_V_592_out { O 32 vector } local_regs_V_592_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3776 \
    name local_regs_V_593_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_593_out \
    op interface \
    ports { local_regs_V_593_out { O 32 vector } local_regs_V_593_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3777 \
    name local_regs_V_594_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_594_out \
    op interface \
    ports { local_regs_V_594_out { O 32 vector } local_regs_V_594_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3778 \
    name local_regs_V_595_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_595_out \
    op interface \
    ports { local_regs_V_595_out { O 32 vector } local_regs_V_595_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3779 \
    name local_regs_V_596_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_596_out \
    op interface \
    ports { local_regs_V_596_out { O 32 vector } local_regs_V_596_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3780 \
    name local_regs_V_597_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_597_out \
    op interface \
    ports { local_regs_V_597_out { O 32 vector } local_regs_V_597_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3781 \
    name local_regs_V_598_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_598_out \
    op interface \
    ports { local_regs_V_598_out { O 32 vector } local_regs_V_598_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3782 \
    name local_regs_V_599_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_599_out \
    op interface \
    ports { local_regs_V_599_out { O 32 vector } local_regs_V_599_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3783 \
    name local_regs_V_600_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_600_out \
    op interface \
    ports { local_regs_V_600_out { O 32 vector } local_regs_V_600_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3784 \
    name local_regs_V_601_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_601_out \
    op interface \
    ports { local_regs_V_601_out { O 32 vector } local_regs_V_601_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3785 \
    name local_regs_V_602_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_602_out \
    op interface \
    ports { local_regs_V_602_out { O 32 vector } local_regs_V_602_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3786 \
    name local_regs_V_603_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_603_out \
    op interface \
    ports { local_regs_V_603_out { O 32 vector } local_regs_V_603_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3787 \
    name local_regs_V_604_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_604_out \
    op interface \
    ports { local_regs_V_604_out { O 32 vector } local_regs_V_604_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3788 \
    name local_regs_V_605_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_605_out \
    op interface \
    ports { local_regs_V_605_out { O 32 vector } local_regs_V_605_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3789 \
    name local_regs_V_606_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_606_out \
    op interface \
    ports { local_regs_V_606_out { O 32 vector } local_regs_V_606_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3790 \
    name local_regs_V_607_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_607_out \
    op interface \
    ports { local_regs_V_607_out { O 32 vector } local_regs_V_607_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3791 \
    name local_regs_V_608_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_608_out \
    op interface \
    ports { local_regs_V_608_out { O 32 vector } local_regs_V_608_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3792 \
    name local_regs_V_609_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_609_out \
    op interface \
    ports { local_regs_V_609_out { O 32 vector } local_regs_V_609_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3793 \
    name local_regs_V_610_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_610_out \
    op interface \
    ports { local_regs_V_610_out { O 32 vector } local_regs_V_610_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3794 \
    name local_regs_V_611_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_611_out \
    op interface \
    ports { local_regs_V_611_out { O 32 vector } local_regs_V_611_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3795 \
    name local_regs_V_612_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_612_out \
    op interface \
    ports { local_regs_V_612_out { O 32 vector } local_regs_V_612_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3796 \
    name local_regs_V_613_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_613_out \
    op interface \
    ports { local_regs_V_613_out { O 32 vector } local_regs_V_613_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3797 \
    name local_regs_V_614_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_614_out \
    op interface \
    ports { local_regs_V_614_out { O 32 vector } local_regs_V_614_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3798 \
    name local_regs_V_615_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_615_out \
    op interface \
    ports { local_regs_V_615_out { O 32 vector } local_regs_V_615_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3799 \
    name local_regs_V_616_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_616_out \
    op interface \
    ports { local_regs_V_616_out { O 32 vector } local_regs_V_616_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3800 \
    name local_regs_V_617_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_617_out \
    op interface \
    ports { local_regs_V_617_out { O 32 vector } local_regs_V_617_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3801 \
    name local_regs_V_618_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_618_out \
    op interface \
    ports { local_regs_V_618_out { O 32 vector } local_regs_V_618_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3802 \
    name local_regs_V_619_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_619_out \
    op interface \
    ports { local_regs_V_619_out { O 32 vector } local_regs_V_619_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3803 \
    name local_regs_V_620_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_620_out \
    op interface \
    ports { local_regs_V_620_out { O 32 vector } local_regs_V_620_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3804 \
    name local_regs_V_621_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_621_out \
    op interface \
    ports { local_regs_V_621_out { O 32 vector } local_regs_V_621_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3805 \
    name local_regs_V_622_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_622_out \
    op interface \
    ports { local_regs_V_622_out { O 32 vector } local_regs_V_622_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3806 \
    name local_regs_V_623_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_623_out \
    op interface \
    ports { local_regs_V_623_out { O 32 vector } local_regs_V_623_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3807 \
    name local_regs_V_624_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_624_out \
    op interface \
    ports { local_regs_V_624_out { O 32 vector } local_regs_V_624_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3808 \
    name local_regs_V_625_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_625_out \
    op interface \
    ports { local_regs_V_625_out { O 32 vector } local_regs_V_625_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3809 \
    name local_regs_V_626_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_626_out \
    op interface \
    ports { local_regs_V_626_out { O 32 vector } local_regs_V_626_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3810 \
    name local_regs_V_627_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_627_out \
    op interface \
    ports { local_regs_V_627_out { O 32 vector } local_regs_V_627_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3811 \
    name local_regs_V_628_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_628_out \
    op interface \
    ports { local_regs_V_628_out { O 32 vector } local_regs_V_628_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3812 \
    name local_regs_V_629_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_629_out \
    op interface \
    ports { local_regs_V_629_out { O 32 vector } local_regs_V_629_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3813 \
    name local_regs_V_630_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_630_out \
    op interface \
    ports { local_regs_V_630_out { O 32 vector } local_regs_V_630_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3814 \
    name local_regs_V_631_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_631_out \
    op interface \
    ports { local_regs_V_631_out { O 32 vector } local_regs_V_631_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3815 \
    name local_regs_V_632_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_632_out \
    op interface \
    ports { local_regs_V_632_out { O 32 vector } local_regs_V_632_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3816 \
    name local_regs_V_633_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_633_out \
    op interface \
    ports { local_regs_V_633_out { O 32 vector } local_regs_V_633_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3817 \
    name local_regs_V_634_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_634_out \
    op interface \
    ports { local_regs_V_634_out { O 32 vector } local_regs_V_634_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3818 \
    name local_regs_V_635_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_635_out \
    op interface \
    ports { local_regs_V_635_out { O 32 vector } local_regs_V_635_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3819 \
    name local_regs_V_636_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_636_out \
    op interface \
    ports { local_regs_V_636_out { O 32 vector } local_regs_V_636_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3820 \
    name local_regs_V_637_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_637_out \
    op interface \
    ports { local_regs_V_637_out { O 32 vector } local_regs_V_637_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3821 \
    name local_regs_V_638_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_638_out \
    op interface \
    ports { local_regs_V_638_out { O 32 vector } local_regs_V_638_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3822 \
    name local_regs_V_639_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_639_out \
    op interface \
    ports { local_regs_V_639_out { O 32 vector } local_regs_V_639_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3823 \
    name local_regs_V_640_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_640_out \
    op interface \
    ports { local_regs_V_640_out { O 32 vector } local_regs_V_640_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3824 \
    name local_regs_V_641_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_641_out \
    op interface \
    ports { local_regs_V_641_out { O 32 vector } local_regs_V_641_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3825 \
    name local_regs_V_642_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_642_out \
    op interface \
    ports { local_regs_V_642_out { O 32 vector } local_regs_V_642_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3826 \
    name local_regs_V_643_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_643_out \
    op interface \
    ports { local_regs_V_643_out { O 32 vector } local_regs_V_643_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3827 \
    name local_regs_V_644_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_644_out \
    op interface \
    ports { local_regs_V_644_out { O 32 vector } local_regs_V_644_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3828 \
    name local_regs_V_645_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_645_out \
    op interface \
    ports { local_regs_V_645_out { O 32 vector } local_regs_V_645_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3829 \
    name local_regs_V_646_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_646_out \
    op interface \
    ports { local_regs_V_646_out { O 32 vector } local_regs_V_646_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3830 \
    name local_regs_V_647_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_647_out \
    op interface \
    ports { local_regs_V_647_out { O 32 vector } local_regs_V_647_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3831 \
    name local_regs_V_648_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_648_out \
    op interface \
    ports { local_regs_V_648_out { O 32 vector } local_regs_V_648_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3832 \
    name local_regs_V_649_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_649_out \
    op interface \
    ports { local_regs_V_649_out { O 32 vector } local_regs_V_649_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3833 \
    name local_regs_V_650_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_650_out \
    op interface \
    ports { local_regs_V_650_out { O 32 vector } local_regs_V_650_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3834 \
    name local_regs_V_651_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_651_out \
    op interface \
    ports { local_regs_V_651_out { O 32 vector } local_regs_V_651_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3835 \
    name local_regs_V_652_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_652_out \
    op interface \
    ports { local_regs_V_652_out { O 32 vector } local_regs_V_652_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3836 \
    name local_regs_V_653_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_653_out \
    op interface \
    ports { local_regs_V_653_out { O 32 vector } local_regs_V_653_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3837 \
    name local_regs_V_654_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_654_out \
    op interface \
    ports { local_regs_V_654_out { O 32 vector } local_regs_V_654_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3838 \
    name local_regs_V_655_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_655_out \
    op interface \
    ports { local_regs_V_655_out { O 32 vector } local_regs_V_655_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3839 \
    name local_regs_V_656_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_656_out \
    op interface \
    ports { local_regs_V_656_out { O 32 vector } local_regs_V_656_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3840 \
    name local_regs_V_657_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_657_out \
    op interface \
    ports { local_regs_V_657_out { O 32 vector } local_regs_V_657_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3841 \
    name local_regs_V_658_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_658_out \
    op interface \
    ports { local_regs_V_658_out { O 32 vector } local_regs_V_658_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3842 \
    name local_regs_V_659_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_659_out \
    op interface \
    ports { local_regs_V_659_out { O 32 vector } local_regs_V_659_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3843 \
    name local_regs_V_660_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_660_out \
    op interface \
    ports { local_regs_V_660_out { O 32 vector } local_regs_V_660_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3844 \
    name local_regs_V_661_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_661_out \
    op interface \
    ports { local_regs_V_661_out { O 32 vector } local_regs_V_661_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3845 \
    name local_regs_V_662_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_662_out \
    op interface \
    ports { local_regs_V_662_out { O 32 vector } local_regs_V_662_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3846 \
    name local_regs_V_663_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_663_out \
    op interface \
    ports { local_regs_V_663_out { O 32 vector } local_regs_V_663_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3847 \
    name local_regs_V_664_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_664_out \
    op interface \
    ports { local_regs_V_664_out { O 32 vector } local_regs_V_664_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3848 \
    name local_regs_V_665_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_665_out \
    op interface \
    ports { local_regs_V_665_out { O 32 vector } local_regs_V_665_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3849 \
    name local_regs_V_666_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_666_out \
    op interface \
    ports { local_regs_V_666_out { O 32 vector } local_regs_V_666_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3850 \
    name local_regs_V_667_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_667_out \
    op interface \
    ports { local_regs_V_667_out { O 32 vector } local_regs_V_667_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3851 \
    name local_regs_V_668_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_668_out \
    op interface \
    ports { local_regs_V_668_out { O 32 vector } local_regs_V_668_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3852 \
    name local_regs_V_669_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_669_out \
    op interface \
    ports { local_regs_V_669_out { O 32 vector } local_regs_V_669_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3853 \
    name local_regs_V_670_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_670_out \
    op interface \
    ports { local_regs_V_670_out { O 32 vector } local_regs_V_670_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3854 \
    name local_regs_V_671_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_671_out \
    op interface \
    ports { local_regs_V_671_out { O 32 vector } local_regs_V_671_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3855 \
    name local_regs_V_672_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_672_out \
    op interface \
    ports { local_regs_V_672_out { O 32 vector } local_regs_V_672_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3856 \
    name local_regs_V_673_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_673_out \
    op interface \
    ports { local_regs_V_673_out { O 32 vector } local_regs_V_673_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3857 \
    name local_regs_V_674_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_674_out \
    op interface \
    ports { local_regs_V_674_out { O 32 vector } local_regs_V_674_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3858 \
    name local_regs_V_675_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_675_out \
    op interface \
    ports { local_regs_V_675_out { O 32 vector } local_regs_V_675_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3859 \
    name local_regs_V_676_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_676_out \
    op interface \
    ports { local_regs_V_676_out { O 32 vector } local_regs_V_676_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3860 \
    name local_regs_V_677_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_677_out \
    op interface \
    ports { local_regs_V_677_out { O 32 vector } local_regs_V_677_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3861 \
    name local_regs_V_678_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_678_out \
    op interface \
    ports { local_regs_V_678_out { O 32 vector } local_regs_V_678_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3862 \
    name local_regs_V_679_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_679_out \
    op interface \
    ports { local_regs_V_679_out { O 32 vector } local_regs_V_679_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3863 \
    name local_regs_V_680_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_680_out \
    op interface \
    ports { local_regs_V_680_out { O 32 vector } local_regs_V_680_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3864 \
    name local_regs_V_681_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_681_out \
    op interface \
    ports { local_regs_V_681_out { O 32 vector } local_regs_V_681_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3865 \
    name local_regs_V_682_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_682_out \
    op interface \
    ports { local_regs_V_682_out { O 32 vector } local_regs_V_682_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3866 \
    name local_regs_V_683_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_683_out \
    op interface \
    ports { local_regs_V_683_out { O 32 vector } local_regs_V_683_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3867 \
    name local_regs_V_684_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_684_out \
    op interface \
    ports { local_regs_V_684_out { O 32 vector } local_regs_V_684_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3868 \
    name local_regs_V_685_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_685_out \
    op interface \
    ports { local_regs_V_685_out { O 32 vector } local_regs_V_685_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3869 \
    name local_regs_V_686_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_686_out \
    op interface \
    ports { local_regs_V_686_out { O 32 vector } local_regs_V_686_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3870 \
    name local_regs_V_687_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_687_out \
    op interface \
    ports { local_regs_V_687_out { O 32 vector } local_regs_V_687_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3871 \
    name local_regs_V_688_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_688_out \
    op interface \
    ports { local_regs_V_688_out { O 32 vector } local_regs_V_688_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3872 \
    name local_regs_V_689_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_689_out \
    op interface \
    ports { local_regs_V_689_out { O 32 vector } local_regs_V_689_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3873 \
    name local_regs_V_690_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_690_out \
    op interface \
    ports { local_regs_V_690_out { O 32 vector } local_regs_V_690_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3874 \
    name local_regs_V_691_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_691_out \
    op interface \
    ports { local_regs_V_691_out { O 32 vector } local_regs_V_691_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3875 \
    name local_regs_V_692_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_692_out \
    op interface \
    ports { local_regs_V_692_out { O 32 vector } local_regs_V_692_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3876 \
    name local_regs_V_693_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_693_out \
    op interface \
    ports { local_regs_V_693_out { O 32 vector } local_regs_V_693_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3877 \
    name local_regs_V_694_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_694_out \
    op interface \
    ports { local_regs_V_694_out { O 32 vector } local_regs_V_694_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3878 \
    name local_regs_V_695_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_695_out \
    op interface \
    ports { local_regs_V_695_out { O 32 vector } local_regs_V_695_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3879 \
    name local_regs_V_696_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_696_out \
    op interface \
    ports { local_regs_V_696_out { O 32 vector } local_regs_V_696_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3880 \
    name local_regs_V_697_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_697_out \
    op interface \
    ports { local_regs_V_697_out { O 32 vector } local_regs_V_697_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3881 \
    name local_regs_V_698_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_698_out \
    op interface \
    ports { local_regs_V_698_out { O 32 vector } local_regs_V_698_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3882 \
    name local_regs_V_699_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_699_out \
    op interface \
    ports { local_regs_V_699_out { O 32 vector } local_regs_V_699_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3883 \
    name local_regs_V_700_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_700_out \
    op interface \
    ports { local_regs_V_700_out { O 32 vector } local_regs_V_700_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3884 \
    name local_regs_V_701_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_701_out \
    op interface \
    ports { local_regs_V_701_out { O 32 vector } local_regs_V_701_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3885 \
    name local_regs_V_702_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_702_out \
    op interface \
    ports { local_regs_V_702_out { O 32 vector } local_regs_V_702_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3886 \
    name local_regs_V_703_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_703_out \
    op interface \
    ports { local_regs_V_703_out { O 32 vector } local_regs_V_703_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3887 \
    name local_regs_V_704_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_704_out \
    op interface \
    ports { local_regs_V_704_out { O 32 vector } local_regs_V_704_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3888 \
    name local_regs_V_705_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_705_out \
    op interface \
    ports { local_regs_V_705_out { O 32 vector } local_regs_V_705_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3889 \
    name local_regs_V_706_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_706_out \
    op interface \
    ports { local_regs_V_706_out { O 32 vector } local_regs_V_706_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3890 \
    name local_regs_V_707_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_707_out \
    op interface \
    ports { local_regs_V_707_out { O 32 vector } local_regs_V_707_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3891 \
    name local_regs_V_708_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_708_out \
    op interface \
    ports { local_regs_V_708_out { O 32 vector } local_regs_V_708_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3892 \
    name local_regs_V_709_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_709_out \
    op interface \
    ports { local_regs_V_709_out { O 32 vector } local_regs_V_709_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3893 \
    name local_regs_V_710_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_710_out \
    op interface \
    ports { local_regs_V_710_out { O 32 vector } local_regs_V_710_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3894 \
    name local_regs_V_711_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_711_out \
    op interface \
    ports { local_regs_V_711_out { O 32 vector } local_regs_V_711_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3895 \
    name local_regs_V_712_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_712_out \
    op interface \
    ports { local_regs_V_712_out { O 32 vector } local_regs_V_712_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3896 \
    name local_regs_V_713_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_713_out \
    op interface \
    ports { local_regs_V_713_out { O 32 vector } local_regs_V_713_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3897 \
    name local_regs_V_714_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_714_out \
    op interface \
    ports { local_regs_V_714_out { O 32 vector } local_regs_V_714_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3898 \
    name local_regs_V_715_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_715_out \
    op interface \
    ports { local_regs_V_715_out { O 32 vector } local_regs_V_715_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3899 \
    name local_regs_V_716_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_716_out \
    op interface \
    ports { local_regs_V_716_out { O 32 vector } local_regs_V_716_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3900 \
    name local_regs_V_717_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_717_out \
    op interface \
    ports { local_regs_V_717_out { O 32 vector } local_regs_V_717_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3901 \
    name local_regs_V_718_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_718_out \
    op interface \
    ports { local_regs_V_718_out { O 32 vector } local_regs_V_718_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3902 \
    name local_regs_V_719_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_719_out \
    op interface \
    ports { local_regs_V_719_out { O 32 vector } local_regs_V_719_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3903 \
    name local_regs_V_720_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_720_out \
    op interface \
    ports { local_regs_V_720_out { O 32 vector } local_regs_V_720_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3904 \
    name local_regs_V_721_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_721_out \
    op interface \
    ports { local_regs_V_721_out { O 32 vector } local_regs_V_721_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3905 \
    name local_regs_V_722_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_722_out \
    op interface \
    ports { local_regs_V_722_out { O 32 vector } local_regs_V_722_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3906 \
    name local_regs_V_723_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_723_out \
    op interface \
    ports { local_regs_V_723_out { O 32 vector } local_regs_V_723_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3907 \
    name local_regs_V_724_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_724_out \
    op interface \
    ports { local_regs_V_724_out { O 32 vector } local_regs_V_724_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3908 \
    name local_regs_V_725_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_725_out \
    op interface \
    ports { local_regs_V_725_out { O 32 vector } local_regs_V_725_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3909 \
    name local_regs_V_726_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_726_out \
    op interface \
    ports { local_regs_V_726_out { O 32 vector } local_regs_V_726_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3910 \
    name local_regs_V_727_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_727_out \
    op interface \
    ports { local_regs_V_727_out { O 32 vector } local_regs_V_727_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3911 \
    name local_regs_V_728_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_728_out \
    op interface \
    ports { local_regs_V_728_out { O 32 vector } local_regs_V_728_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3912 \
    name local_regs_V_729_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_729_out \
    op interface \
    ports { local_regs_V_729_out { O 32 vector } local_regs_V_729_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3913 \
    name local_regs_V_730_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_730_out \
    op interface \
    ports { local_regs_V_730_out { O 32 vector } local_regs_V_730_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3914 \
    name local_regs_V_731_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_731_out \
    op interface \
    ports { local_regs_V_731_out { O 32 vector } local_regs_V_731_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3915 \
    name local_regs_V_732_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_732_out \
    op interface \
    ports { local_regs_V_732_out { O 32 vector } local_regs_V_732_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3916 \
    name local_regs_V_733_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_733_out \
    op interface \
    ports { local_regs_V_733_out { O 32 vector } local_regs_V_733_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3917 \
    name local_regs_V_734_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_734_out \
    op interface \
    ports { local_regs_V_734_out { O 32 vector } local_regs_V_734_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3918 \
    name local_regs_V_735_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_735_out \
    op interface \
    ports { local_regs_V_735_out { O 32 vector } local_regs_V_735_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3919 \
    name local_regs_V_736_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_736_out \
    op interface \
    ports { local_regs_V_736_out { O 32 vector } local_regs_V_736_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3920 \
    name local_regs_V_737_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_737_out \
    op interface \
    ports { local_regs_V_737_out { O 32 vector } local_regs_V_737_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3921 \
    name local_regs_V_738_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_738_out \
    op interface \
    ports { local_regs_V_738_out { O 32 vector } local_regs_V_738_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3922 \
    name local_regs_V_739_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_739_out \
    op interface \
    ports { local_regs_V_739_out { O 32 vector } local_regs_V_739_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3923 \
    name local_regs_V_740_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_740_out \
    op interface \
    ports { local_regs_V_740_out { O 32 vector } local_regs_V_740_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3924 \
    name local_regs_V_741_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_741_out \
    op interface \
    ports { local_regs_V_741_out { O 32 vector } local_regs_V_741_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3925 \
    name local_regs_V_742_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_742_out \
    op interface \
    ports { local_regs_V_742_out { O 32 vector } local_regs_V_742_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3926 \
    name local_regs_V_743_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_743_out \
    op interface \
    ports { local_regs_V_743_out { O 32 vector } local_regs_V_743_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3927 \
    name local_regs_V_744_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_744_out \
    op interface \
    ports { local_regs_V_744_out { O 32 vector } local_regs_V_744_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3928 \
    name local_regs_V_745_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_745_out \
    op interface \
    ports { local_regs_V_745_out { O 32 vector } local_regs_V_745_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3929 \
    name local_regs_V_746_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_746_out \
    op interface \
    ports { local_regs_V_746_out { O 32 vector } local_regs_V_746_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3930 \
    name local_regs_V_747_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_747_out \
    op interface \
    ports { local_regs_V_747_out { O 32 vector } local_regs_V_747_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3931 \
    name local_regs_V_748_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_748_out \
    op interface \
    ports { local_regs_V_748_out { O 32 vector } local_regs_V_748_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3932 \
    name local_regs_V_749_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_749_out \
    op interface \
    ports { local_regs_V_749_out { O 32 vector } local_regs_V_749_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3933 \
    name local_regs_V_750_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_750_out \
    op interface \
    ports { local_regs_V_750_out { O 32 vector } local_regs_V_750_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3934 \
    name local_regs_V_751_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_751_out \
    op interface \
    ports { local_regs_V_751_out { O 32 vector } local_regs_V_751_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3935 \
    name local_regs_V_752_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_752_out \
    op interface \
    ports { local_regs_V_752_out { O 32 vector } local_regs_V_752_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3936 \
    name local_regs_V_753_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_753_out \
    op interface \
    ports { local_regs_V_753_out { O 32 vector } local_regs_V_753_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3937 \
    name local_regs_V_754_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_754_out \
    op interface \
    ports { local_regs_V_754_out { O 32 vector } local_regs_V_754_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3938 \
    name local_regs_V_755_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_755_out \
    op interface \
    ports { local_regs_V_755_out { O 32 vector } local_regs_V_755_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3939 \
    name local_regs_V_756_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_756_out \
    op interface \
    ports { local_regs_V_756_out { O 32 vector } local_regs_V_756_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3940 \
    name local_regs_V_757_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_757_out \
    op interface \
    ports { local_regs_V_757_out { O 32 vector } local_regs_V_757_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3941 \
    name local_regs_V_758_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_758_out \
    op interface \
    ports { local_regs_V_758_out { O 32 vector } local_regs_V_758_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3942 \
    name local_regs_V_759_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_759_out \
    op interface \
    ports { local_regs_V_759_out { O 32 vector } local_regs_V_759_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3943 \
    name local_regs_V_760_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_760_out \
    op interface \
    ports { local_regs_V_760_out { O 32 vector } local_regs_V_760_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3944 \
    name local_regs_V_761_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_761_out \
    op interface \
    ports { local_regs_V_761_out { O 32 vector } local_regs_V_761_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3945 \
    name local_regs_V_762_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_762_out \
    op interface \
    ports { local_regs_V_762_out { O 32 vector } local_regs_V_762_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3946 \
    name local_regs_V_763_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_763_out \
    op interface \
    ports { local_regs_V_763_out { O 32 vector } local_regs_V_763_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3947 \
    name local_regs_V_764_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_764_out \
    op interface \
    ports { local_regs_V_764_out { O 32 vector } local_regs_V_764_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3948 \
    name local_regs_V_765_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_765_out \
    op interface \
    ports { local_regs_V_765_out { O 32 vector } local_regs_V_765_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3949 \
    name local_regs_V_766_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_766_out \
    op interface \
    ports { local_regs_V_766_out { O 32 vector } local_regs_V_766_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3950 \
    name local_regs_V_767_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_767_out \
    op interface \
    ports { local_regs_V_767_out { O 32 vector } local_regs_V_767_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3951 \
    name local_regs_V_768_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_768_out \
    op interface \
    ports { local_regs_V_768_out { O 32 vector } local_regs_V_768_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3952 \
    name local_regs_V_769_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_769_out \
    op interface \
    ports { local_regs_V_769_out { O 32 vector } local_regs_V_769_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3953 \
    name local_regs_V_770_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_770_out \
    op interface \
    ports { local_regs_V_770_out { O 32 vector } local_regs_V_770_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3954 \
    name local_regs_V_771_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_771_out \
    op interface \
    ports { local_regs_V_771_out { O 32 vector } local_regs_V_771_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3955 \
    name local_regs_V_772_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_772_out \
    op interface \
    ports { local_regs_V_772_out { O 32 vector } local_regs_V_772_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3956 \
    name local_regs_V_773_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_773_out \
    op interface \
    ports { local_regs_V_773_out { O 32 vector } local_regs_V_773_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3957 \
    name local_regs_V_774_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_774_out \
    op interface \
    ports { local_regs_V_774_out { O 32 vector } local_regs_V_774_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3958 \
    name local_regs_V_775_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_775_out \
    op interface \
    ports { local_regs_V_775_out { O 32 vector } local_regs_V_775_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3959 \
    name local_regs_V_776_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_776_out \
    op interface \
    ports { local_regs_V_776_out { O 32 vector } local_regs_V_776_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3960 \
    name local_regs_V_777_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_777_out \
    op interface \
    ports { local_regs_V_777_out { O 32 vector } local_regs_V_777_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3961 \
    name local_regs_V_778_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_778_out \
    op interface \
    ports { local_regs_V_778_out { O 32 vector } local_regs_V_778_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3962 \
    name local_regs_V_779_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_779_out \
    op interface \
    ports { local_regs_V_779_out { O 32 vector } local_regs_V_779_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3963 \
    name local_regs_V_780_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_780_out \
    op interface \
    ports { local_regs_V_780_out { O 32 vector } local_regs_V_780_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3964 \
    name local_regs_V_781_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_781_out \
    op interface \
    ports { local_regs_V_781_out { O 32 vector } local_regs_V_781_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3965 \
    name local_regs_V_782_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_782_out \
    op interface \
    ports { local_regs_V_782_out { O 32 vector } local_regs_V_782_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3966 \
    name local_regs_V_783_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_783_out \
    op interface \
    ports { local_regs_V_783_out { O 32 vector } local_regs_V_783_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3967 \
    name local_regs_V_784_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_784_out \
    op interface \
    ports { local_regs_V_784_out { O 32 vector } local_regs_V_784_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3968 \
    name local_regs_V_785_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_785_out \
    op interface \
    ports { local_regs_V_785_out { O 32 vector } local_regs_V_785_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3969 \
    name local_regs_V_786_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_786_out \
    op interface \
    ports { local_regs_V_786_out { O 32 vector } local_regs_V_786_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3970 \
    name local_regs_V_787_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_787_out \
    op interface \
    ports { local_regs_V_787_out { O 32 vector } local_regs_V_787_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3971 \
    name local_regs_V_788_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_788_out \
    op interface \
    ports { local_regs_V_788_out { O 32 vector } local_regs_V_788_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3972 \
    name local_regs_V_789_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_789_out \
    op interface \
    ports { local_regs_V_789_out { O 32 vector } local_regs_V_789_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3973 \
    name local_regs_V_790_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_790_out \
    op interface \
    ports { local_regs_V_790_out { O 32 vector } local_regs_V_790_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3974 \
    name local_regs_V_791_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_791_out \
    op interface \
    ports { local_regs_V_791_out { O 32 vector } local_regs_V_791_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3975 \
    name local_regs_V_792_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_792_out \
    op interface \
    ports { local_regs_V_792_out { O 32 vector } local_regs_V_792_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3976 \
    name local_regs_V_793_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_793_out \
    op interface \
    ports { local_regs_V_793_out { O 32 vector } local_regs_V_793_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3977 \
    name local_regs_V_794_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_794_out \
    op interface \
    ports { local_regs_V_794_out { O 32 vector } local_regs_V_794_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3978 \
    name local_regs_V_795_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_795_out \
    op interface \
    ports { local_regs_V_795_out { O 32 vector } local_regs_V_795_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3979 \
    name local_regs_V_796_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_796_out \
    op interface \
    ports { local_regs_V_796_out { O 32 vector } local_regs_V_796_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3980 \
    name local_regs_V_797_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_797_out \
    op interface \
    ports { local_regs_V_797_out { O 32 vector } local_regs_V_797_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3981 \
    name local_regs_V_798_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_798_out \
    op interface \
    ports { local_regs_V_798_out { O 32 vector } local_regs_V_798_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3982 \
    name local_regs_V_799_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_799_out \
    op interface \
    ports { local_regs_V_799_out { O 32 vector } local_regs_V_799_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3983 \
    name local_regs_V_800_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_800_out \
    op interface \
    ports { local_regs_V_800_out { O 32 vector } local_regs_V_800_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3984 \
    name local_regs_V_801_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_801_out \
    op interface \
    ports { local_regs_V_801_out { O 32 vector } local_regs_V_801_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3985 \
    name local_regs_V_802_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_802_out \
    op interface \
    ports { local_regs_V_802_out { O 32 vector } local_regs_V_802_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3986 \
    name local_regs_V_803_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_803_out \
    op interface \
    ports { local_regs_V_803_out { O 32 vector } local_regs_V_803_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3987 \
    name local_regs_V_804_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_804_out \
    op interface \
    ports { local_regs_V_804_out { O 32 vector } local_regs_V_804_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3988 \
    name local_regs_V_805_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_805_out \
    op interface \
    ports { local_regs_V_805_out { O 32 vector } local_regs_V_805_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3989 \
    name local_regs_V_806_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_806_out \
    op interface \
    ports { local_regs_V_806_out { O 32 vector } local_regs_V_806_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3990 \
    name local_regs_V_807_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_807_out \
    op interface \
    ports { local_regs_V_807_out { O 32 vector } local_regs_V_807_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3991 \
    name local_regs_V_808_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_808_out \
    op interface \
    ports { local_regs_V_808_out { O 32 vector } local_regs_V_808_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3992 \
    name local_regs_V_809_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_809_out \
    op interface \
    ports { local_regs_V_809_out { O 32 vector } local_regs_V_809_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3993 \
    name local_regs_V_810_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_810_out \
    op interface \
    ports { local_regs_V_810_out { O 32 vector } local_regs_V_810_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3994 \
    name local_regs_V_811_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_811_out \
    op interface \
    ports { local_regs_V_811_out { O 32 vector } local_regs_V_811_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3995 \
    name local_regs_V_812_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_812_out \
    op interface \
    ports { local_regs_V_812_out { O 32 vector } local_regs_V_812_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3996 \
    name local_regs_V_813_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_813_out \
    op interface \
    ports { local_regs_V_813_out { O 32 vector } local_regs_V_813_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3997 \
    name local_regs_V_814_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_814_out \
    op interface \
    ports { local_regs_V_814_out { O 32 vector } local_regs_V_814_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3998 \
    name local_regs_V_815_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_815_out \
    op interface \
    ports { local_regs_V_815_out { O 32 vector } local_regs_V_815_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3999 \
    name local_regs_V_816_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_816_out \
    op interface \
    ports { local_regs_V_816_out { O 32 vector } local_regs_V_816_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4000 \
    name local_regs_V_817_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_817_out \
    op interface \
    ports { local_regs_V_817_out { O 32 vector } local_regs_V_817_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4001 \
    name local_regs_V_818_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_818_out \
    op interface \
    ports { local_regs_V_818_out { O 32 vector } local_regs_V_818_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4002 \
    name local_regs_V_819_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_819_out \
    op interface \
    ports { local_regs_V_819_out { O 32 vector } local_regs_V_819_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4003 \
    name local_regs_V_820_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_820_out \
    op interface \
    ports { local_regs_V_820_out { O 32 vector } local_regs_V_820_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4004 \
    name local_regs_V_821_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_821_out \
    op interface \
    ports { local_regs_V_821_out { O 32 vector } local_regs_V_821_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4005 \
    name local_regs_V_822_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_822_out \
    op interface \
    ports { local_regs_V_822_out { O 32 vector } local_regs_V_822_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4006 \
    name local_regs_V_823_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_823_out \
    op interface \
    ports { local_regs_V_823_out { O 32 vector } local_regs_V_823_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4007 \
    name local_regs_V_824_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_824_out \
    op interface \
    ports { local_regs_V_824_out { O 32 vector } local_regs_V_824_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4008 \
    name local_regs_V_825_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_825_out \
    op interface \
    ports { local_regs_V_825_out { O 32 vector } local_regs_V_825_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4009 \
    name local_regs_V_826_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_826_out \
    op interface \
    ports { local_regs_V_826_out { O 32 vector } local_regs_V_826_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4010 \
    name local_regs_V_827_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_827_out \
    op interface \
    ports { local_regs_V_827_out { O 32 vector } local_regs_V_827_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4011 \
    name local_regs_V_828_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_828_out \
    op interface \
    ports { local_regs_V_828_out { O 32 vector } local_regs_V_828_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4012 \
    name local_regs_V_829_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_829_out \
    op interface \
    ports { local_regs_V_829_out { O 32 vector } local_regs_V_829_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4013 \
    name local_regs_V_830_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_830_out \
    op interface \
    ports { local_regs_V_830_out { O 32 vector } local_regs_V_830_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4014 \
    name local_regs_V_831_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_831_out \
    op interface \
    ports { local_regs_V_831_out { O 32 vector } local_regs_V_831_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4015 \
    name local_regs_V_832_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_832_out \
    op interface \
    ports { local_regs_V_832_out { O 32 vector } local_regs_V_832_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4016 \
    name local_regs_V_833_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_833_out \
    op interface \
    ports { local_regs_V_833_out { O 32 vector } local_regs_V_833_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4017 \
    name local_regs_V_834_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_834_out \
    op interface \
    ports { local_regs_V_834_out { O 32 vector } local_regs_V_834_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4018 \
    name local_regs_V_835_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_835_out \
    op interface \
    ports { local_regs_V_835_out { O 32 vector } local_regs_V_835_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4019 \
    name local_regs_V_836_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_836_out \
    op interface \
    ports { local_regs_V_836_out { O 32 vector } local_regs_V_836_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4020 \
    name local_regs_V_837_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_837_out \
    op interface \
    ports { local_regs_V_837_out { O 32 vector } local_regs_V_837_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4021 \
    name local_regs_V_838_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_838_out \
    op interface \
    ports { local_regs_V_838_out { O 32 vector } local_regs_V_838_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4022 \
    name local_regs_V_839_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_839_out \
    op interface \
    ports { local_regs_V_839_out { O 32 vector } local_regs_V_839_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4023 \
    name local_regs_V_840_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_840_out \
    op interface \
    ports { local_regs_V_840_out { O 32 vector } local_regs_V_840_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4024 \
    name local_regs_V_841_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_841_out \
    op interface \
    ports { local_regs_V_841_out { O 32 vector } local_regs_V_841_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4025 \
    name local_regs_V_842_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_842_out \
    op interface \
    ports { local_regs_V_842_out { O 32 vector } local_regs_V_842_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4026 \
    name local_regs_V_843_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_843_out \
    op interface \
    ports { local_regs_V_843_out { O 32 vector } local_regs_V_843_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4027 \
    name local_regs_V_844_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_844_out \
    op interface \
    ports { local_regs_V_844_out { O 32 vector } local_regs_V_844_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4028 \
    name local_regs_V_845_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_845_out \
    op interface \
    ports { local_regs_V_845_out { O 32 vector } local_regs_V_845_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4029 \
    name local_regs_V_846_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_846_out \
    op interface \
    ports { local_regs_V_846_out { O 32 vector } local_regs_V_846_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4030 \
    name local_regs_V_847_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_847_out \
    op interface \
    ports { local_regs_V_847_out { O 32 vector } local_regs_V_847_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4031 \
    name local_regs_V_848_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_848_out \
    op interface \
    ports { local_regs_V_848_out { O 32 vector } local_regs_V_848_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4032 \
    name local_regs_V_849_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_849_out \
    op interface \
    ports { local_regs_V_849_out { O 32 vector } local_regs_V_849_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4033 \
    name local_regs_V_850_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_850_out \
    op interface \
    ports { local_regs_V_850_out { O 32 vector } local_regs_V_850_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4034 \
    name local_regs_V_851_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_851_out \
    op interface \
    ports { local_regs_V_851_out { O 32 vector } local_regs_V_851_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4035 \
    name local_regs_V_852_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_852_out \
    op interface \
    ports { local_regs_V_852_out { O 32 vector } local_regs_V_852_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4036 \
    name local_regs_V_853_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_853_out \
    op interface \
    ports { local_regs_V_853_out { O 32 vector } local_regs_V_853_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4037 \
    name local_regs_V_854_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_854_out \
    op interface \
    ports { local_regs_V_854_out { O 32 vector } local_regs_V_854_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4038 \
    name local_regs_V_855_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_855_out \
    op interface \
    ports { local_regs_V_855_out { O 32 vector } local_regs_V_855_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4039 \
    name local_regs_V_856_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_856_out \
    op interface \
    ports { local_regs_V_856_out { O 32 vector } local_regs_V_856_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4040 \
    name local_regs_V_857_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_857_out \
    op interface \
    ports { local_regs_V_857_out { O 32 vector } local_regs_V_857_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4041 \
    name local_regs_V_858_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_858_out \
    op interface \
    ports { local_regs_V_858_out { O 32 vector } local_regs_V_858_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4042 \
    name local_regs_V_859_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_859_out \
    op interface \
    ports { local_regs_V_859_out { O 32 vector } local_regs_V_859_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4043 \
    name local_regs_V_860_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_860_out \
    op interface \
    ports { local_regs_V_860_out { O 32 vector } local_regs_V_860_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4044 \
    name local_regs_V_861_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_861_out \
    op interface \
    ports { local_regs_V_861_out { O 32 vector } local_regs_V_861_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4045 \
    name local_regs_V_862_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_862_out \
    op interface \
    ports { local_regs_V_862_out { O 32 vector } local_regs_V_862_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4046 \
    name local_regs_V_863_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_863_out \
    op interface \
    ports { local_regs_V_863_out { O 32 vector } local_regs_V_863_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4047 \
    name local_regs_V_864_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_864_out \
    op interface \
    ports { local_regs_V_864_out { O 32 vector } local_regs_V_864_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4048 \
    name local_regs_V_865_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_865_out \
    op interface \
    ports { local_regs_V_865_out { O 32 vector } local_regs_V_865_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4049 \
    name local_regs_V_866_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_866_out \
    op interface \
    ports { local_regs_V_866_out { O 32 vector } local_regs_V_866_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4050 \
    name local_regs_V_867_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_867_out \
    op interface \
    ports { local_regs_V_867_out { O 32 vector } local_regs_V_867_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4051 \
    name local_regs_V_868_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_868_out \
    op interface \
    ports { local_regs_V_868_out { O 32 vector } local_regs_V_868_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4052 \
    name local_regs_V_869_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_869_out \
    op interface \
    ports { local_regs_V_869_out { O 32 vector } local_regs_V_869_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4053 \
    name local_regs_V_870_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_870_out \
    op interface \
    ports { local_regs_V_870_out { O 32 vector } local_regs_V_870_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4054 \
    name local_regs_V_871_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_871_out \
    op interface \
    ports { local_regs_V_871_out { O 32 vector } local_regs_V_871_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4055 \
    name local_regs_V_872_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_872_out \
    op interface \
    ports { local_regs_V_872_out { O 32 vector } local_regs_V_872_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4056 \
    name local_regs_V_873_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_873_out \
    op interface \
    ports { local_regs_V_873_out { O 32 vector } local_regs_V_873_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4057 \
    name local_regs_V_874_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_874_out \
    op interface \
    ports { local_regs_V_874_out { O 32 vector } local_regs_V_874_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4058 \
    name local_regs_V_875_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_875_out \
    op interface \
    ports { local_regs_V_875_out { O 32 vector } local_regs_V_875_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4059 \
    name local_regs_V_876_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_876_out \
    op interface \
    ports { local_regs_V_876_out { O 32 vector } local_regs_V_876_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4060 \
    name local_regs_V_877_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_877_out \
    op interface \
    ports { local_regs_V_877_out { O 32 vector } local_regs_V_877_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4061 \
    name local_regs_V_878_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_878_out \
    op interface \
    ports { local_regs_V_878_out { O 32 vector } local_regs_V_878_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4062 \
    name local_regs_V_879_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_879_out \
    op interface \
    ports { local_regs_V_879_out { O 32 vector } local_regs_V_879_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4063 \
    name local_regs_V_880_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_880_out \
    op interface \
    ports { local_regs_V_880_out { O 32 vector } local_regs_V_880_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4064 \
    name local_regs_V_881_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_881_out \
    op interface \
    ports { local_regs_V_881_out { O 32 vector } local_regs_V_881_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4065 \
    name local_regs_V_882_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_882_out \
    op interface \
    ports { local_regs_V_882_out { O 32 vector } local_regs_V_882_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4066 \
    name local_regs_V_883_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_883_out \
    op interface \
    ports { local_regs_V_883_out { O 32 vector } local_regs_V_883_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4067 \
    name local_regs_V_884_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_884_out \
    op interface \
    ports { local_regs_V_884_out { O 32 vector } local_regs_V_884_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4068 \
    name local_regs_V_885_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_885_out \
    op interface \
    ports { local_regs_V_885_out { O 32 vector } local_regs_V_885_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4069 \
    name local_regs_V_886_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_886_out \
    op interface \
    ports { local_regs_V_886_out { O 32 vector } local_regs_V_886_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4070 \
    name local_regs_V_887_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_887_out \
    op interface \
    ports { local_regs_V_887_out { O 32 vector } local_regs_V_887_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4071 \
    name local_regs_V_888_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_888_out \
    op interface \
    ports { local_regs_V_888_out { O 32 vector } local_regs_V_888_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4072 \
    name local_regs_V_889_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_889_out \
    op interface \
    ports { local_regs_V_889_out { O 32 vector } local_regs_V_889_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4073 \
    name local_regs_V_890_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_890_out \
    op interface \
    ports { local_regs_V_890_out { O 32 vector } local_regs_V_890_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4074 \
    name local_regs_V_891_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_891_out \
    op interface \
    ports { local_regs_V_891_out { O 32 vector } local_regs_V_891_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4075 \
    name local_regs_V_892_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_892_out \
    op interface \
    ports { local_regs_V_892_out { O 32 vector } local_regs_V_892_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4076 \
    name local_regs_V_893_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_893_out \
    op interface \
    ports { local_regs_V_893_out { O 32 vector } local_regs_V_893_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4077 \
    name local_regs_V_894_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_894_out \
    op interface \
    ports { local_regs_V_894_out { O 32 vector } local_regs_V_894_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4078 \
    name local_regs_V_895_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_895_out \
    op interface \
    ports { local_regs_V_895_out { O 32 vector } local_regs_V_895_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4079 \
    name local_regs_V_896_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_896_out \
    op interface \
    ports { local_regs_V_896_out { O 32 vector } local_regs_V_896_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4080 \
    name local_regs_V_897_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_897_out \
    op interface \
    ports { local_regs_V_897_out { O 32 vector } local_regs_V_897_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4081 \
    name local_regs_V_898_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_898_out \
    op interface \
    ports { local_regs_V_898_out { O 32 vector } local_regs_V_898_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4082 \
    name local_regs_V_899_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_899_out \
    op interface \
    ports { local_regs_V_899_out { O 32 vector } local_regs_V_899_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4083 \
    name local_regs_V_900_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_900_out \
    op interface \
    ports { local_regs_V_900_out { O 32 vector } local_regs_V_900_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4084 \
    name local_regs_V_901_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_901_out \
    op interface \
    ports { local_regs_V_901_out { O 32 vector } local_regs_V_901_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4085 \
    name local_regs_V_902_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_902_out \
    op interface \
    ports { local_regs_V_902_out { O 32 vector } local_regs_V_902_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4086 \
    name local_regs_V_903_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_903_out \
    op interface \
    ports { local_regs_V_903_out { O 32 vector } local_regs_V_903_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4087 \
    name local_regs_V_904_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_904_out \
    op interface \
    ports { local_regs_V_904_out { O 32 vector } local_regs_V_904_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4088 \
    name local_regs_V_905_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_905_out \
    op interface \
    ports { local_regs_V_905_out { O 32 vector } local_regs_V_905_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4089 \
    name local_regs_V_906_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_906_out \
    op interface \
    ports { local_regs_V_906_out { O 32 vector } local_regs_V_906_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4090 \
    name local_regs_V_907_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_907_out \
    op interface \
    ports { local_regs_V_907_out { O 32 vector } local_regs_V_907_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4091 \
    name local_regs_V_908_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_908_out \
    op interface \
    ports { local_regs_V_908_out { O 32 vector } local_regs_V_908_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4092 \
    name local_regs_V_909_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_909_out \
    op interface \
    ports { local_regs_V_909_out { O 32 vector } local_regs_V_909_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4093 \
    name local_regs_V_910_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_910_out \
    op interface \
    ports { local_regs_V_910_out { O 32 vector } local_regs_V_910_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4094 \
    name local_regs_V_911_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_911_out \
    op interface \
    ports { local_regs_V_911_out { O 32 vector } local_regs_V_911_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4095 \
    name local_regs_V_912_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_912_out \
    op interface \
    ports { local_regs_V_912_out { O 32 vector } local_regs_V_912_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4096 \
    name local_regs_V_913_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_913_out \
    op interface \
    ports { local_regs_V_913_out { O 32 vector } local_regs_V_913_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4097 \
    name local_regs_V_914_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_914_out \
    op interface \
    ports { local_regs_V_914_out { O 32 vector } local_regs_V_914_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4098 \
    name local_regs_V_915_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_915_out \
    op interface \
    ports { local_regs_V_915_out { O 32 vector } local_regs_V_915_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4099 \
    name local_regs_V_916_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_916_out \
    op interface \
    ports { local_regs_V_916_out { O 32 vector } local_regs_V_916_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4100 \
    name local_regs_V_917_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_917_out \
    op interface \
    ports { local_regs_V_917_out { O 32 vector } local_regs_V_917_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4101 \
    name local_regs_V_918_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_918_out \
    op interface \
    ports { local_regs_V_918_out { O 32 vector } local_regs_V_918_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4102 \
    name local_regs_V_919_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_919_out \
    op interface \
    ports { local_regs_V_919_out { O 32 vector } local_regs_V_919_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4103 \
    name local_regs_V_920_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_920_out \
    op interface \
    ports { local_regs_V_920_out { O 32 vector } local_regs_V_920_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4104 \
    name local_regs_V_921_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_921_out \
    op interface \
    ports { local_regs_V_921_out { O 32 vector } local_regs_V_921_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4105 \
    name local_regs_V_922_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_922_out \
    op interface \
    ports { local_regs_V_922_out { O 32 vector } local_regs_V_922_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4106 \
    name local_regs_V_923_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_923_out \
    op interface \
    ports { local_regs_V_923_out { O 32 vector } local_regs_V_923_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4107 \
    name local_regs_V_924_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_924_out \
    op interface \
    ports { local_regs_V_924_out { O 32 vector } local_regs_V_924_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4108 \
    name local_regs_V_925_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_925_out \
    op interface \
    ports { local_regs_V_925_out { O 32 vector } local_regs_V_925_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4109 \
    name local_regs_V_926_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_926_out \
    op interface \
    ports { local_regs_V_926_out { O 32 vector } local_regs_V_926_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4110 \
    name local_regs_V_927_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_927_out \
    op interface \
    ports { local_regs_V_927_out { O 32 vector } local_regs_V_927_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4111 \
    name local_regs_V_928_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_928_out \
    op interface \
    ports { local_regs_V_928_out { O 32 vector } local_regs_V_928_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4112 \
    name local_regs_V_929_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_929_out \
    op interface \
    ports { local_regs_V_929_out { O 32 vector } local_regs_V_929_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4113 \
    name local_regs_V_930_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_930_out \
    op interface \
    ports { local_regs_V_930_out { O 32 vector } local_regs_V_930_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4114 \
    name local_regs_V_931_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_931_out \
    op interface \
    ports { local_regs_V_931_out { O 32 vector } local_regs_V_931_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4115 \
    name local_regs_V_932_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_932_out \
    op interface \
    ports { local_regs_V_932_out { O 32 vector } local_regs_V_932_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4116 \
    name local_regs_V_933_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_933_out \
    op interface \
    ports { local_regs_V_933_out { O 32 vector } local_regs_V_933_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4117 \
    name local_regs_V_934_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_934_out \
    op interface \
    ports { local_regs_V_934_out { O 32 vector } local_regs_V_934_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4118 \
    name local_regs_V_935_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_935_out \
    op interface \
    ports { local_regs_V_935_out { O 32 vector } local_regs_V_935_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4119 \
    name local_regs_V_936_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_936_out \
    op interface \
    ports { local_regs_V_936_out { O 32 vector } local_regs_V_936_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4120 \
    name local_regs_V_937_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_937_out \
    op interface \
    ports { local_regs_V_937_out { O 32 vector } local_regs_V_937_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4121 \
    name local_regs_V_938_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_938_out \
    op interface \
    ports { local_regs_V_938_out { O 32 vector } local_regs_V_938_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4122 \
    name local_regs_V_939_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_939_out \
    op interface \
    ports { local_regs_V_939_out { O 32 vector } local_regs_V_939_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4123 \
    name local_regs_V_940_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_940_out \
    op interface \
    ports { local_regs_V_940_out { O 32 vector } local_regs_V_940_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4124 \
    name local_regs_V_941_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_941_out \
    op interface \
    ports { local_regs_V_941_out { O 32 vector } local_regs_V_941_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4125 \
    name local_regs_V_942_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_942_out \
    op interface \
    ports { local_regs_V_942_out { O 32 vector } local_regs_V_942_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4126 \
    name local_regs_V_943_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_943_out \
    op interface \
    ports { local_regs_V_943_out { O 32 vector } local_regs_V_943_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4127 \
    name local_regs_V_944_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_944_out \
    op interface \
    ports { local_regs_V_944_out { O 32 vector } local_regs_V_944_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4128 \
    name local_regs_V_945_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_945_out \
    op interface \
    ports { local_regs_V_945_out { O 32 vector } local_regs_V_945_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4129 \
    name local_regs_V_946_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_946_out \
    op interface \
    ports { local_regs_V_946_out { O 32 vector } local_regs_V_946_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4130 \
    name local_regs_V_947_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_947_out \
    op interface \
    ports { local_regs_V_947_out { O 32 vector } local_regs_V_947_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4131 \
    name local_regs_V_948_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_948_out \
    op interface \
    ports { local_regs_V_948_out { O 32 vector } local_regs_V_948_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4132 \
    name local_regs_V_949_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_949_out \
    op interface \
    ports { local_regs_V_949_out { O 32 vector } local_regs_V_949_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4133 \
    name local_regs_V_950_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_950_out \
    op interface \
    ports { local_regs_V_950_out { O 32 vector } local_regs_V_950_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4134 \
    name local_regs_V_951_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_951_out \
    op interface \
    ports { local_regs_V_951_out { O 32 vector } local_regs_V_951_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4135 \
    name local_regs_V_952_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_952_out \
    op interface \
    ports { local_regs_V_952_out { O 32 vector } local_regs_V_952_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4136 \
    name local_regs_V_953_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_953_out \
    op interface \
    ports { local_regs_V_953_out { O 32 vector } local_regs_V_953_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4137 \
    name local_regs_V_954_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_954_out \
    op interface \
    ports { local_regs_V_954_out { O 32 vector } local_regs_V_954_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4138 \
    name local_regs_V_955_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_955_out \
    op interface \
    ports { local_regs_V_955_out { O 32 vector } local_regs_V_955_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4139 \
    name local_regs_V_956_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_956_out \
    op interface \
    ports { local_regs_V_956_out { O 32 vector } local_regs_V_956_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4140 \
    name local_regs_V_957_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_957_out \
    op interface \
    ports { local_regs_V_957_out { O 32 vector } local_regs_V_957_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4141 \
    name local_regs_V_958_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_958_out \
    op interface \
    ports { local_regs_V_958_out { O 32 vector } local_regs_V_958_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4142 \
    name local_regs_V_959_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_959_out \
    op interface \
    ports { local_regs_V_959_out { O 32 vector } local_regs_V_959_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4143 \
    name local_regs_V_960_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_960_out \
    op interface \
    ports { local_regs_V_960_out { O 32 vector } local_regs_V_960_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4144 \
    name local_regs_V_961_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_961_out \
    op interface \
    ports { local_regs_V_961_out { O 32 vector } local_regs_V_961_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4145 \
    name local_regs_V_962_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_962_out \
    op interface \
    ports { local_regs_V_962_out { O 32 vector } local_regs_V_962_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4146 \
    name local_regs_V_963_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_963_out \
    op interface \
    ports { local_regs_V_963_out { O 32 vector } local_regs_V_963_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4147 \
    name local_regs_V_964_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_964_out \
    op interface \
    ports { local_regs_V_964_out { O 32 vector } local_regs_V_964_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4148 \
    name local_regs_V_965_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_965_out \
    op interface \
    ports { local_regs_V_965_out { O 32 vector } local_regs_V_965_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4149 \
    name local_regs_V_966_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_966_out \
    op interface \
    ports { local_regs_V_966_out { O 32 vector } local_regs_V_966_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4150 \
    name local_regs_V_967_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_967_out \
    op interface \
    ports { local_regs_V_967_out { O 32 vector } local_regs_V_967_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4151 \
    name local_regs_V_968_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_968_out \
    op interface \
    ports { local_regs_V_968_out { O 32 vector } local_regs_V_968_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4152 \
    name local_regs_V_969_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_969_out \
    op interface \
    ports { local_regs_V_969_out { O 32 vector } local_regs_V_969_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4153 \
    name local_regs_V_970_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_970_out \
    op interface \
    ports { local_regs_V_970_out { O 32 vector } local_regs_V_970_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4154 \
    name local_regs_V_971_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_971_out \
    op interface \
    ports { local_regs_V_971_out { O 32 vector } local_regs_V_971_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4155 \
    name local_regs_V_972_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_972_out \
    op interface \
    ports { local_regs_V_972_out { O 32 vector } local_regs_V_972_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4156 \
    name local_regs_V_973_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_973_out \
    op interface \
    ports { local_regs_V_973_out { O 32 vector } local_regs_V_973_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4157 \
    name local_regs_V_974_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_974_out \
    op interface \
    ports { local_regs_V_974_out { O 32 vector } local_regs_V_974_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4158 \
    name local_regs_V_975_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_975_out \
    op interface \
    ports { local_regs_V_975_out { O 32 vector } local_regs_V_975_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4159 \
    name local_regs_V_976_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_976_out \
    op interface \
    ports { local_regs_V_976_out { O 32 vector } local_regs_V_976_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4160 \
    name local_regs_V_977_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_977_out \
    op interface \
    ports { local_regs_V_977_out { O 32 vector } local_regs_V_977_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4161 \
    name local_regs_V_978_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_978_out \
    op interface \
    ports { local_regs_V_978_out { O 32 vector } local_regs_V_978_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4162 \
    name local_regs_V_979_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_979_out \
    op interface \
    ports { local_regs_V_979_out { O 32 vector } local_regs_V_979_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4163 \
    name local_regs_V_980_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_980_out \
    op interface \
    ports { local_regs_V_980_out { O 32 vector } local_regs_V_980_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4164 \
    name local_regs_V_981_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_981_out \
    op interface \
    ports { local_regs_V_981_out { O 32 vector } local_regs_V_981_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4165 \
    name local_regs_V_982_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_982_out \
    op interface \
    ports { local_regs_V_982_out { O 32 vector } local_regs_V_982_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4166 \
    name local_regs_V_983_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_983_out \
    op interface \
    ports { local_regs_V_983_out { O 32 vector } local_regs_V_983_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4167 \
    name local_regs_V_984_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_984_out \
    op interface \
    ports { local_regs_V_984_out { O 32 vector } local_regs_V_984_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4168 \
    name local_regs_V_985_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_985_out \
    op interface \
    ports { local_regs_V_985_out { O 32 vector } local_regs_V_985_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4169 \
    name local_regs_V_986_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_986_out \
    op interface \
    ports { local_regs_V_986_out { O 32 vector } local_regs_V_986_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4170 \
    name local_regs_V_987_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_987_out \
    op interface \
    ports { local_regs_V_987_out { O 32 vector } local_regs_V_987_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4171 \
    name local_regs_V_988_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_988_out \
    op interface \
    ports { local_regs_V_988_out { O 32 vector } local_regs_V_988_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4172 \
    name local_regs_V_989_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_989_out \
    op interface \
    ports { local_regs_V_989_out { O 32 vector } local_regs_V_989_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4173 \
    name local_regs_V_990_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_990_out \
    op interface \
    ports { local_regs_V_990_out { O 32 vector } local_regs_V_990_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4174 \
    name local_regs_V_991_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_991_out \
    op interface \
    ports { local_regs_V_991_out { O 32 vector } local_regs_V_991_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4175 \
    name local_regs_V_992_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_992_out \
    op interface \
    ports { local_regs_V_992_out { O 32 vector } local_regs_V_992_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4176 \
    name local_regs_V_993_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_993_out \
    op interface \
    ports { local_regs_V_993_out { O 32 vector } local_regs_V_993_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4177 \
    name local_regs_V_994_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_994_out \
    op interface \
    ports { local_regs_V_994_out { O 32 vector } local_regs_V_994_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4178 \
    name local_regs_V_995_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_995_out \
    op interface \
    ports { local_regs_V_995_out { O 32 vector } local_regs_V_995_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4179 \
    name local_regs_V_996_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_996_out \
    op interface \
    ports { local_regs_V_996_out { O 32 vector } local_regs_V_996_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4180 \
    name local_regs_V_997_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_997_out \
    op interface \
    ports { local_regs_V_997_out { O 32 vector } local_regs_V_997_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4181 \
    name local_regs_V_998_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_998_out \
    op interface \
    ports { local_regs_V_998_out { O 32 vector } local_regs_V_998_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4182 \
    name local_regs_V_999_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_999_out \
    op interface \
    ports { local_regs_V_999_out { O 32 vector } local_regs_V_999_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4183 \
    name local_regs_V_1000_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1000_out \
    op interface \
    ports { local_regs_V_1000_out { O 32 vector } local_regs_V_1000_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4184 \
    name local_regs_V_1001_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1001_out \
    op interface \
    ports { local_regs_V_1001_out { O 32 vector } local_regs_V_1001_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4185 \
    name local_regs_V_1002_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1002_out \
    op interface \
    ports { local_regs_V_1002_out { O 32 vector } local_regs_V_1002_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4186 \
    name local_regs_V_1003_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1003_out \
    op interface \
    ports { local_regs_V_1003_out { O 32 vector } local_regs_V_1003_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4187 \
    name local_regs_V_1004_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1004_out \
    op interface \
    ports { local_regs_V_1004_out { O 32 vector } local_regs_V_1004_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4188 \
    name local_regs_V_1005_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1005_out \
    op interface \
    ports { local_regs_V_1005_out { O 32 vector } local_regs_V_1005_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4189 \
    name local_regs_V_1006_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1006_out \
    op interface \
    ports { local_regs_V_1006_out { O 32 vector } local_regs_V_1006_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4190 \
    name local_regs_V_1007_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1007_out \
    op interface \
    ports { local_regs_V_1007_out { O 32 vector } local_regs_V_1007_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4191 \
    name local_regs_V_1008_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1008_out \
    op interface \
    ports { local_regs_V_1008_out { O 32 vector } local_regs_V_1008_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4192 \
    name local_regs_V_1009_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1009_out \
    op interface \
    ports { local_regs_V_1009_out { O 32 vector } local_regs_V_1009_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4193 \
    name local_regs_V_1010_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1010_out \
    op interface \
    ports { local_regs_V_1010_out { O 32 vector } local_regs_V_1010_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4194 \
    name local_regs_V_1011_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1011_out \
    op interface \
    ports { local_regs_V_1011_out { O 32 vector } local_regs_V_1011_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4195 \
    name local_regs_V_1012_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1012_out \
    op interface \
    ports { local_regs_V_1012_out { O 32 vector } local_regs_V_1012_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4196 \
    name local_regs_V_1013_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1013_out \
    op interface \
    ports { local_regs_V_1013_out { O 32 vector } local_regs_V_1013_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4197 \
    name local_regs_V_1014_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1014_out \
    op interface \
    ports { local_regs_V_1014_out { O 32 vector } local_regs_V_1014_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4198 \
    name local_regs_V_1015_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1015_out \
    op interface \
    ports { local_regs_V_1015_out { O 32 vector } local_regs_V_1015_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4199 \
    name local_regs_V_1016_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1016_out \
    op interface \
    ports { local_regs_V_1016_out { O 32 vector } local_regs_V_1016_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4200 \
    name local_regs_V_1017_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1017_out \
    op interface \
    ports { local_regs_V_1017_out { O 32 vector } local_regs_V_1017_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4201 \
    name local_regs_V_1018_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1018_out \
    op interface \
    ports { local_regs_V_1018_out { O 32 vector } local_regs_V_1018_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4202 \
    name local_regs_V_1019_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1019_out \
    op interface \
    ports { local_regs_V_1019_out { O 32 vector } local_regs_V_1019_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4203 \
    name local_regs_V_1020_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1020_out \
    op interface \
    ports { local_regs_V_1020_out { O 32 vector } local_regs_V_1020_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4204 \
    name local_regs_V_1021_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1021_out \
    op interface \
    ports { local_regs_V_1021_out { O 32 vector } local_regs_V_1021_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4205 \
    name local_regs_V_1022_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1022_out \
    op interface \
    ports { local_regs_V_1022_out { O 32 vector } local_regs_V_1022_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4206 \
    name local_regs_V_1023_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_regs_V_1023_out \
    op interface \
    ports { local_regs_V_1023_out { O 32 vector } local_regs_V_1023_out_ap_vld { O 1 bit } } \
} "
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


