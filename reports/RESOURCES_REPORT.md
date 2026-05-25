# Resources Report (HLS / Build Logs)

Summary:
- This repository currently does not contain completed HLS synthesis/resource utilization reports (e.g., `csynth.rpt` or Vivado implementation `.rpt`) under the checked-in folders.
- What is included here:
  - `vitis_hls_log_all.xml` — consolidated Vitis HLS log (errors and warnings) copied from `hls_project`.
  - `pipelined_layer_processor_csim.log` — C-simulation log (failed link due to missing top definition in testbench build).

Why no resource `.rpt` files are present:
- The HLS flow in this workspace reported errors when attempting to run `csim_design` / `csynth_design`. See the logs above for messages like "Cannot find source file main.cpp" and link errors. Because synthesis/csynth did not complete successfully, the usual synthesis reports were not generated here.

How to generate the HLS resource reports locally:
1. Ensure Vitis HLS is installed and on your PATH (tested with Vitis HLS 2022.2 in these logs).
2. From the repository root, launch Vitis HLS and run the provided script, for example:

```bash
cd hls_project
vitis_hls -f solution1/script.tcl
```

Or run the Tcl inside Vitis HLS interactive shell:

```tcl
open_project ./
open_solution -reset solution1
csim_design
csynth_design
# After csynth finishes, check the `solution1/syn/report` and `solution1/impl/report` directories for .rpt files
```

3. After successful `csynth_design` (and optionally Vivado implementation), the following files are usually generated:
- `solution1/syn/report/<top>_csynth.rpt` — HLS synthesis report with resource usage (LUT/FF/BRAM/DSP) and timing.
- `SystolicArrayProj.runs/impl_1/.../report/*.rpt` — Vivado implementation resource/timing reports (when running implementation).

Quick troubleshooting tips (based on current logs):
- The csim log shows an undefined reference to `pipelined_layer_processor(...)` from `tb_main.cpp`. Ensure the top-level function is compiled and the symbol is visible to the testbench build.
- Verify `main.cpp` / source files are present and paths in `solution1/script.tcl` or `csynth.tcl` are correct.

If you want, I can:
- Run a script to attempt csynth here (requires Vitis HLS installed in the environment where I'm running), or
- Add an automated `Makefile` / small wrapper to run the HLS steps on a machine with Vitis HLS installed, capturing the resulting `.rpt` files and placing them under `reports/`.

Files included in `reports/`:
- `vitis_hls_log_all.xml`
- `pipelined_layer_processor_csim.log`
- `design_1_wrapper_utilization_placed.rpt` — Vivado placed utilization report (device: `xc7z020clg400-1`, generated with Vivado 2022.2 on Sun May 24 11:31:31 2026).

Key summary (from `design_1_wrapper_utilization_placed.rpt`):

- Slice LUTs: 44193 / 53200 (83.07%)
- Slice Registers: 53148 / 106400 (49.95%)
- Slices: 13251 / 13300 (99.63%)
- Block RAM Tiles (RAMB36): 140 / 140 (100%)
- DSPs (DSP48E1): 220 / 220 (100%)

Because this is a Vivado "placed" utilization report, it reflects post-place resource counts; use it to assess whether the design fits the target device and for further floorplanning or optimization.

