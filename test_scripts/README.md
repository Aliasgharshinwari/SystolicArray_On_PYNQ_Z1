# Test Scripts

This folder contains lightweight checks for the repository documentation.

## Available Checks

- `validate_readme.py` — verifies that `README.md` contains the screenshot, benchmark section, and the benchmark rows from the published results.
- `run_tests.sh` — convenience wrapper that runs the README validator from the repository root.

## Usage

```bash
./test_scripts/run_tests.sh
```

If the script is not executable yet, run:

```bash
chmod +x test_scripts/run_tests.sh
```