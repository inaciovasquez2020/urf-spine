import json, hashlib

with open("output.json") as f:
    data = json.load(f)

h = hashlib.sha256(json.dumps(data, sort_keys=True).encode()).hexdigest()
print("HASH:", h)
