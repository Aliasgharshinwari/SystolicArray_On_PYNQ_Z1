# Systolic Array on PYNQ-Z1

An FPGA accelerator project for matrix multiplication on the Digilent PYNQ-Z1 board. The design combines a tiled HLS kernel, a Vivado block design, and a PYNQ notebook workflow for running the overlay from Python.

## Overview

The core accelerator is a systolic-array matrix multiply kernel implemented in Vivado HLS. It operates on packed 256-bit memory words, loads matrix tiles into on-chip buffers, computes partial products through a 16x16 systolic array, and writes the resulting output tile back to memory.

The included HLS testbench checks the hardware result against a software reference implementation and reports basic latency / throughput numbers.

## Screenshot

![Vivado block design](images/vivado_block_design.png)

## Benchmark Results

Results from the systolic array vs. PS benchmarking suite:

| Benchmark shape | Padded shape | FPGA throughput | FPGA latency | PS throughput | PS latency | Speedup |
| --- | --- | ---: | ---: | ---: | ---: | ---: |
| `32x32x32` | `32x32x32` | `1.37 GOPS` | `0.05 ms` | `0.18 GOPS` | `0.36 ms` | `7.50x` |
| `64x64x64` | `64x64x64` | `4.93 GOPS` | `0.11 ms` | `0.22 GOPS` | `2.43 ms` | `22.82x` |
| `128x128x128` | `128x128x128` | `8.15 GOPS` | `0.51 ms` | `0.08 GOPS` | `49.82 ms` | `96.86x` |
| `256x256x256` | `256x256x256` | `10.65 GOPS` | `3.15 ms` | `0.06 GOPS` | `518.03 ms` | `164.47x` |
| `512x512x512` | `512x512x512` | `11.76 GOPS` | `22.82 ms` | `0.03 GOPS` | `10633.82 ms` | `466.02x` |
| `1x784x128` | `32x800x128` | `11.22 GOPS` | `0.58 ms` | `0.06 GOPS` | `113.54 ms` | `194.35x` |
| `16x1024x128` | `32x1024x128` | `11.73 GOPS` | `0.72 ms` | `0.05 GOPS` | `175.09 ms` | `244.77x` |

## Repository Layout

- `hls_project/` — HLS source, headers, and testbench files.
- `vivado_project/` — Vivado project, generated design artifacts, and bitstreams.
- `pynq_notebooks/` — Jupyter notebook and PYNQ overlay files (`.bit`, `.hwh`, `.xclbin`).

## Getting Started

If you want to work with the design quickly, start here:

1. Open `hls_project/main.cpp`, `hls_project/main.h`, and `hls_project/tb_main.cpp` in Vitis HLS or Vivado HLS.
2. Use the provided HLS script at `hls_project/solution1/script.tcl` if you prefer a scripted flow.
3. Build or inspect the overlay from `vivado_project/SystolicArrayProj.xpr`.
4. Open `pynq_notebooks/main.ipynb` to load `design_1.bit` and exercise the accelerator on PYNQ.

## Main HLS Files

- `hls_project/main.h` — configuration constants, types, and top-level function prototype.
- `hls_project/main.cpp` — tiled read / compute / write kernel implementation.
- `hls_project/tb_main.cpp` — C++ testbench with packing, unpacking, and verification.

## Kernel Notes

- Systolic array size: `16 x 16`
- Tile size: `16 x 16`
- Input packing: `256-bit` AXI words via `vec_t`
- Output packing: `256-bit` AXI words via `vec_out_t`
- Top function: `pipelined_layer_processor`

The testbench currently uses a `32 x 64` by `64 x 32` multiply case.

## Requirements

To build or simulate the project, you will need Xilinx tooling such as:

- Vivado HLS / Vitis HLS
- Vivado Design Suite
- Python with Jupyter and the PYNQ libraries for notebook-based interaction

## Typical Workflow

1. Open `hls_project/` in HLS and run C simulation using `tb_main.cpp`.
2. Synthesize the kernel with `main.cpp` and `main.h`.
3. Open the Vivado project in `vivado_project/SystolicArrayProj.xpr` and generate or reuse the overlay bitstream.
4. Use `pynq_notebooks/main.ipynb` to load the overlay and drive the accelerator.

## Included Artifacts

- `pynq_notebooks/design_1.bit` and `pynq_notebooks/design_1.hwh` — PYNQ overlay pair.
- `pynq_notebooks/loaded.xclbin` — prebuilt overlay package.
- `vivado_project/systolic.bit` and `vivado_project/systolic.hwh` — generated bitstream and hardware handoff files.
- `hls_project/solution1/` — synthesized HLS solution outputs and reports.

## Notes

- The repository includes generated Vivado artifacts and bitstreams so the design can be inspected without rebuilding everything from scratch.
- Several paths inside generated Vivado files are absolute and may need regeneration if the project is moved to a different machine.
- The notebook currently assumes the overlay file is named `design_1.bit`.

## License

No license file is currently included. Add one if you want to publish or share the project publicly.