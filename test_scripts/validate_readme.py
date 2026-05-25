#!/usr/bin/env python3

from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path


EXPECTED_BENCHMARKS = [
    ("32x32x32", "32x32x32", "1.37 GOPS", "0.05 ms", "0.18 GOPS", "0.36 ms", "7.50x"),
    ("64x64x64", "64x64x64", "4.93 GOPS", "0.11 ms", "0.22 GOPS", "2.43 ms", "22.82x"),
    ("128x128x128", "128x128x128", "8.15 GOPS", "0.51 ms", "0.08 GOPS", "49.82 ms", "96.86x"),
    ("256x256x256", "256x256x256", "10.65 GOPS", "3.15 ms", "0.06 GOPS", "518.03 ms", "164.47x"),
    ("512x512x512", "512x512x512", "11.76 GOPS", "22.82 ms", "0.03 GOPS", "10633.82 ms", "466.02x"),
    ("1x784x128", "32x800x128", "11.22 GOPS", "0.58 ms", "0.06 GOPS", "113.54 ms", "194.35x"),
    ("16x1024x128", "32x1024x128", "11.73 GOPS", "0.72 ms", "0.05 GOPS", "175.09 ms", "244.77x"),
]


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Validate README content for this repository.")
    parser.add_argument("--readme", default="README.md", help="Path to the repository README.")
    parser.add_argument(
        "--image",
        default="images/vivado_block_design.png",
        help="Path to the screenshot referenced from the README.",
    )
    return parser.parse_args()


def require(condition: bool, message: str, failures: list[str]) -> None:
    if not condition:
        failures.append(message)


def main() -> int:
    args = parse_args()
    repo_root = Path(__file__).resolve().parents[1]
    readme_path = (repo_root / args.readme).resolve()
    image_path = (repo_root / args.image).resolve()

    failures: list[str] = []

    require(readme_path.exists(), f"Missing README: {readme_path}", failures)
    require(image_path.exists(), f"Missing image: {image_path}", failures)

    if readme_path.exists():
        readme_text = readme_path.read_text(encoding="utf-8")

        require("## Screenshot" in readme_text, "README is missing the Screenshot section.", failures)
        require(
            "## Benchmark Results" in readme_text,
            "README is missing the Benchmark Results section.",
            failures,
        )
        require(
            "![Vivado block design](images/vivado_block_design.png)" in readme_text,
            "README is missing the expected screenshot markdown.",
            failures,
        )

        table_rows = re.findall(r"^\| `.*?` \| `.*?` \| `.*?` \| `.*?` \| `.*?` \| `.*?` \| `.*?` \|$", readme_text, flags=re.M)
        require(
            len(table_rows) == len(EXPECTED_BENCHMARKS),
            f"Expected {len(EXPECTED_BENCHMARKS)} benchmark rows, found {len(table_rows)}.",
            failures,
        )

        for expected in EXPECTED_BENCHMARKS:
            row = "| " + " | ".join(f"`{cell}`" for cell in expected) + " |"
            require(row in readme_text, f"Missing benchmark row: {expected[0]}", failures)

    if failures:
        print("README validation failed:")
        for failure in failures:
            print(f"- {failure}")
        return 1

    print("README validation passed.")
    return 0


if __name__ == "__main__":
    sys.exit(main())