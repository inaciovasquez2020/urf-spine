import json
import hashlib
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

def sha256_file(p: Path) -> str:
    h = hashlib.sha256()
    with p.open("rb") as f:
        for chunk in iter(lambda: f.read(8192), b""):
            h.update(chunk)
    return h.hexdigest()

def main():
    reg = ROOT / "registry" / "umo_registry.json"
    if not reg.exists():
        print("ERROR: registry/umo_registry.json not found")
        sys.exit(1)

    data = json.loads(reg.read_text())

    for item in data.get("items", []):
        cert = ROOT / item["cert_path"]
        obj  = ROOT / item["object_path"]

        if not cert.exists():
            print(f"ERROR: missing cert {cert}")
            sys.exit(1)
        if not obj.exists():
            print(f"ERROR: missing object {obj}")
            sys.exit(1)

        cert_j = json.loads(cert.read_text())
        expected = cert_j["object"]["content_hash"].replace("sha256:", "")
        actual = sha256_file(obj)

        if expected != actual:
            print(f"ERROR: hash mismatch for {item['umo_id']}")
            print(f"  expected: {expected}")
            print(f"  actual:   {actual}")
            sys.exit(1)

    print("OK: registry verified")

if __name__ == "__main__":
    main()
