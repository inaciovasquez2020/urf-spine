#!/bin/bash
set -e
python3 tools/extract_invariants.py > output.json
pytest
