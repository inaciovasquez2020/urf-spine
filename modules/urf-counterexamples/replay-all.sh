#!/usr/bin/env bash
set -euo pipefail

./fok-wall/check.sh
./spectral-gap-wall/check.sh
./viotropic-wall/check.sh

echo "ALL COUNTEREXAMPLES VERIFIED"
