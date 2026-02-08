#!/usr/bin/env python3
import json, sys
from pathlib import Path

def compose(c1: dict, c2: dict) -> dict:
    # Weakest sufficient composition: concatenate artifacts then re-SNF externally.
    out = json.loads(json.dumps(c1))
    out["evidence"]["artifacts"] = c1["evidence"]["artifacts"] + c2["evidence"]["artifacts"]
    out["hashes"]["certificate_sha256"] = ""
    return out

def main():
    if len(sys.argv) != 4:
        print("usage: compose.py <c1.json> <c2.json> <out.json>", file=sys.stderr)
        sys.exit(2)
    c1 = json.loads(Path(sys.argv[1]).read_text(encoding="utf-8"))
    c2 = json.loads(Path(sys.argv[2]).read_text(encoding="utf-8"))
    out = compose(c1, c2)
    Path(sys.argv[3]).write_text(json.dumps(out, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")

if __name__ == "__main__":
    main()
