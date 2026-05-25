#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

python3 "$ROOT_DIR/test_scripts/validate_readme.py" --readme "$ROOT_DIR/README.md" --image "$ROOT_DIR/images/hardware_block_diagram.png"