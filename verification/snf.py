#!/usr/bin/env python3
import json, sys, hashlib
from pathlib import Path

def sha256_bytes(b: bytes) -> str:
    h = hashlib.sha256()
    h.update(b)
    return h.hexdigest()

def canonical_json_bytes(obj) -> bytes:
    # SNF canonical encoding: UTF-8, sorted keys, minimal separators
    return json.dumps(obj, sort_keys=True, separators=(",", ":"), ensure_ascii=False).encode("utf-8")

def merkle_root_hex(leaf_hashes_hex):
    # Deterministic Merkle over hex leaves; if odd, duplicate last (standard).
    nodes = [bytes.fromhex(x) for x in leaf_hashes_hex]
    if not nodes:
        return sha256_bytes(b"")
    while len(nodes) > 1:
        if len(nodes) % 2 == 1:
            nodes.append(nodes[-1])
        nxt = []
        for i in range(0, len(nodes), 2):
            nxt.append(hashlib.sha256(nodes[i] + nodes[i+1]).digest())
        nodes = nxt
    return nodes[0].hex()

def snf(cert: dict) -> dict:
    # Normalize ordering: sort artifacts by path, and normalize path strings.
    cert = json.loads(json.dumps(cert))  # deep copy
    artifacts = cert.get("evidence", {}).get("artifacts", [])
    artifacts = [{"path": str(a["path"]), "sha256": str(a["sha256"])} for a in artifacts]
    artifacts.sort(key=lambda x: x["path"])
    cert["evidence"]["artifacts"] = artifacts

    # Canonical merkle: leaves are sha256(path || 0x00 || sha256hex)
    leaf_hex = []
    for a in artifacts:
        leaf = (a["path"].encode("utf-8") + b"\x00" + a["sha256"].encode("utf-8"))
        leaf_hex.append(sha256_bytes(leaf))
    cert["spine"]["manifest"]["merkle_root_sha256"] = merkle_root_hex(leaf_hex)

    # Certificate hash: sha256(canonical_json_bytes(cert with empty certificate_sha256))
    cert["hashes"]["certificate_sha256"] = ""
    h = sha256_bytes(canonical_json_bytes(cert))
    cert["hashes"]["certificate_sha256"] = h
    return cert

def main():
    if len(sys.argv) != 2:
        print("usage: snf.py <certificate.json>", file=sys.stderr)
        sys.exit(2)
    p = Path(sys.argv[1])
    cert = json.loads(p.read_text(encoding="utf-8"))
    out = snf(cert)
    print(json.dumps(out, indent=2, ensure_ascii=False))

if __name__ == "__main__":
    main()
