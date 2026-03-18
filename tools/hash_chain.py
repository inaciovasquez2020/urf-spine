import hashlib, json, os

files = ["output.json", "batch_output.json"]
h = ""

for f in files:
    if os.path.exists(f):
        with open(f) as fp:
            h = hashlib.sha256((h + fp.read()).encode()).hexdigest()

with open("hash_chain.txt","w") as out:
    out.write(h)
