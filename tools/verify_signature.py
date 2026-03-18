import json
import hashlib

def compute_hash(data):
    return hashlib.sha256(json.dumps(data, sort_keys=True).encode()).hexdigest()

def verify(file):
    with open(file) as f:
        obj = json.load(f)
    sig = obj.get("signature")
    data = obj.get("data")
    return sig == compute_hash(data)

if __name__ == "__main__":
    print(verify("schemas/signed_export.json"))
