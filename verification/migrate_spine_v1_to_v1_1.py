#!/usr/bin/env python3
import json, sys
from pathlib import Path

def main():
    if len(sys.argv) != 3:
        print("usage: migrate_spine_v1_to_v1_1.py <in.json> <out.json>", file=sys.stderr)
        sys.exit(2)

    inp = Path(sys.argv[1])
    outp = Path(sys.argv[2])
    cert = json.loads(inp.read_text(encoding="utf-8"))

    # v1.1.0: allow module; no structural changes required.
    # Ensure spine.version exists; do not overwrite if user set it.
    cert.setdefault("spine", {}).setdefault("version", "v1.1.0")

    outp.write_text(json.dumps(cert, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")

if __name__ == "__main__":
    main()
