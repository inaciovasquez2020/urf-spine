#!/usr/bin/env python3
import json, sys, hashlib
from pathlib import Path
from jsonschema import Draft202012Validator

def sha256_bytes(b: bytes) -> str:
    h = hashlib.sha256()
    h.update(b)
    return h.hexdigest()

def canonical_json_bytes(obj) -> bytes:
    return json.dumps(obj, sort_keys=True, separators=(",", ":"), ensure_ascii=False).encode("utf-8")

def load_schema():
    schema_path = Path("spine/certificates/schema_spine_certificate.json")
    return json.loads(schema_path.read_text(encoding="utf-8"))

def verify_schema(cert: dict, schema: dict):
    v = Draft202012Validator(schema)
    errs = sorted(v.iter_errors(cert), key=lambda e: e.path)
    if errs:
        for e in errs:
            print(f"SCHEMA_ERROR: {list(e.path)}: {e.message}", file=sys.stderr)
        raise SystemExit(1)

def verify_certificate_hash(cert: dict):
    claimed = cert["hashes"]["certificate_sha256"]
    tmp = json.loads(json.dumps(cert))
    tmp["hashes"]["certificate_sha256"] = ""
    recomputed = sha256_bytes(canonical_json_bytes(tmp))
    if claimed and claimed != recomputed:
        print("HASH_ERROR: certificate_sha256 mismatch", file=sys.stderr)
        raise SystemExit(1)

def main():
    if len(sys.argv) != 2:
        print("usage: spine_verify.py <certificate.json>", file=sys.stderr)
        sys.exit(2)
    cert = json.loads(Path(sys.argv[1]).read_text(encoding="utf-8"))
    schema = load_schema()
    verify_schema(cert, schema)
    verify_certificate_hash(cert)
    print("OK")

if __name__ == "__main__":
    main()
