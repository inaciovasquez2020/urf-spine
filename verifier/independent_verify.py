import json
import hashlib
import sys

with open("output.json") as f:
    data = json.load(f)

required = [
    "locality_radius",
    "degree_bound",
    "entropy_depth",
    "cycle_rank",
    "spectral_gap"
]

for k in required:
    if k not in data:
        sys.exit(1)

if data["degree_bound"] < 1:
    sys.exit(1)

if data["entropy_depth"] < 0:
    sys.exit(1)

if data["cycle_rank"] < 0:
    sys.exit(1)

digest = hashlib.sha256(json.dumps(data, sort_keys=True).encode()).hexdigest()
print(digest)
