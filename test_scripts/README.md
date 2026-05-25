# Test Scripts

This folder contains lightweight checks for the repository documentation.

## Available Checks

- `validate_readme.py` — verifies that `README.md` contains the screenshot, benchmark section, and the benchmark rows from the published results.
- `run_tests.sh` — convenience wrapper that runs the README validator from the repository root.
- `hls_test.tcl` — Vitis HLS batch script that opens the systolic-array kernel and runs `csim_design`, `csynth_design`, and `cosim_design`.

## Usage

```bash
./test_scripts/run_tests.sh
```

To run the HLS test script:

```bash
vitis_hls -f test_scripts/hls_test.tcl
```

If the script is not executable yet, run:

```bash
chmod +x test_scripts/run_tests.sh
```