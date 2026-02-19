#!/usr/bin/env sh
set -e

KEY_ID="RWRYSQOcAPcPGowy2ls9e2xh9XL4UP/o5nvmERf6VVP4ssYOIGGvAl2L"

for f in certs/examples/*.json; do
  minisign -Vm "$f" -P "$KEY_ID"
done

echo "URF minimal-obstruction certification signatures verified."
