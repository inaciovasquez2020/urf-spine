#!/usr/bin/env python3
import json, subprocess, tempfile
from pathlib import Path

def run_snf(in_path: Path) -> dict:
    p = subprocess.run(["python3", "verification/snf.py", str(in_path)], check=True, capture_output=True, text=True)
    return json.loads(p.stdout)

def write_tmp(obj) -> Path:
    fd, name = tempfile.mkstemp(suffix=".json")
    Path(name).write_text(json.dumps(obj, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    return Path(name)

def compose_obj(c1, c2):
    out = json.loads(json.dumps(c1))
    out["evidence"]["artifacts"] = c1["evidence"]["artifacts"] + c2["evidence"]["artifacts"]
    out["hashes"]["certificate_sha256"] = ""
    return out

def main():
    c = json.loads(Path("examples/minimal_spine_certificate.json").read_text(encoding="utf-8"))
    A, B, C = c, c, c

    left = run_snf(write_tmp(compose_obj(compose_obj(A,B),C)))
    right = run_snf(write_tmp(compose_obj(A,compose_obj(B,C))))

    if left != right:
        raise SystemExit("ASSOC_FAIL")
    print("ASSOC_OK")

if __name__ == "__main__":
    main()
