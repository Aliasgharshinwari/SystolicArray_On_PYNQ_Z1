#!/usr/bin/env python3

from __future__ import annotations

from pathlib import Path

import matplotlib.pyplot as plt


DATA = [
    {"shape": "32x32x32", "fpga_gops": 1.37, "ps_gops": 0.18, "speedup": 7.50},
    {"shape": "64x64x64", "fpga_gops": 4.93, "ps_gops": 0.22, "speedup": 22.82},
    {"shape": "128x128x128", "fpga_gops": 8.15, "ps_gops": 0.08, "speedup": 96.86},
    {"shape": "256x256x256", "fpga_gops": 10.65, "ps_gops": 0.06, "speedup": 164.47},
    {"shape": "512x512x512", "fpga_gops": 11.76, "ps_gops": 0.03, "speedup": 466.02},
    {"shape": "1x784x128", "fpga_gops": 11.22, "ps_gops": 0.06, "speedup": 194.35},
    {"shape": "16x1024x128", "fpga_gops": 11.73, "ps_gops": 0.05, "speedup": 244.77},
]


def main() -> None:
    repo_root = Path(__file__).resolve().parents[1]
    output_dir = repo_root / "images"
    output_dir.mkdir(parents=True, exist_ok=True)

    shapes = [row["shape"] for row in DATA]
    fpga = [row["fpga_gops"] for row in DATA]
    ps = [row["ps_gops"] for row in DATA]
    speedup = [row["speedup"] for row in DATA]

    plt.style.use("seaborn-v0_8-whitegrid")

    # Throughput comparison
    fig, ax = plt.subplots(figsize=(12, 6.5), dpi=180)
    x = range(len(shapes))
    width = 0.35

    ax.bar([i - width / 2 for i in x], fpga, width=width, label="FPGA", color="#2563eb")
    ax.bar([i + width / 2 for i in x], ps, width=width, label="PS", color="#f97316")
    ax.set_title("FPGA vs PS Throughput")
    ax.set_ylabel("Throughput (GOPS)")
    ax.set_xticks(list(x))
    ax.set_xticklabels(shapes, rotation=20, ha="right")
    ax.legend(frameon=True)
    fig.tight_layout()
    fig.savefig(output_dir / "benchmark_throughput.png", bbox_inches="tight")
    plt.close(fig)

    # Speedup trend
    fig, ax = plt.subplots(figsize=(12, 5.5), dpi=180)
    x = range(len(shapes))
    ax.plot(list(x), speedup, marker="o", linewidth=2.5, color="#16a34a")
    ax.set_title("Speedup Across Benchmark Sizes")
    ax.set_ylabel("Speedup (x)")
    ax.set_xlabel("Benchmark Shape")
    ax.set_xticks(list(x))
    ax.set_xticklabels(shapes, rotation=20, ha="right")
    ax.grid(True, axis="y", alpha=0.35)
    fig.tight_layout()
    fig.savefig(output_dir / "benchmark_speedup.png", bbox_inches="tight")
    plt.close(fig)

    print(f"Saved charts to {output_dir}")


if __name__ == "__main__":
    main()