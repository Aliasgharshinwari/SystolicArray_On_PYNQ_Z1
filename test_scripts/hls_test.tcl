# HLS test runner for the systolic array project.
#
# Run from the repository root with:
#   vitis_hls -f test_scripts/hls_test.tcl

set script_dir [file dirname [file normalize [info script]]]
set repo_root [file normalize [file join $script_dir ..]]
set hls_dir [file join $repo_root hls_project]
set project_dir [file join $script_dir hls_test_project]

puts "=== HLS Test Runner ==="
puts "Repository root: $repo_root"
puts "HLS sources: $hls_dir"

open_project -reset $project_dir
set_top pipelined_layer_processor

add_files [file join $hls_dir main.cpp]
add_files [file join $hls_dir main.h]
add_files -tb [file join $hls_dir tb_main.cpp] \
    -cflags "-Wno-unknown-pragmas" \
    -csimflags "-Wno-unknown-pragmas"

open_solution -reset solution1
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default

source [file join $hls_dir solution1 directives.tcl]

csim_design
csynth_design
cosim_design -trace_level all

puts "=== HLS Test Complete ==="