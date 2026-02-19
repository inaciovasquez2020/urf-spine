#!/usr/bin/env sh
set -e
minisign -Vm "$1" -P "$(tail -n 1 certs/spine/SPINE_CERT.pub)"
