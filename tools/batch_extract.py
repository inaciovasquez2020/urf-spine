import json, os, sys
sys.path.append(os.path.abspath("."))

from tools.extract_invariants import extract

results = []
for f in os.listdir("data/batch"):
    path = os.path.join("data/batch", f)
    with open(path) as fp:
        g = json.load(fp)
    results.append({"file": f, "invariants": extract(g)})

with open("batch_output.json","w") as out:
    json.dump(results, out, indent=2)
