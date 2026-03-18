import json, hashlib

with open("release_manifest.json") as f:
    manifest = json.load(f)

for file, expected in manifest.items():
    with open(file, "rb") as fp:
        actual = hashlib.sha256(fp.read()).hexdigest()
    if actual != expected:
        raise SystemExit(f"Mismatch: {file}")

print("REPRODUCIBILITY VERIFIED")
