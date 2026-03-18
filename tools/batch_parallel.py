import json, os, sys
from multiprocessing import Pool
sys.path.append(os.path.abspath("."))

from tools.extract_invariants import extract

def process(f):
    path = os.path.join("data/batch", f)
    with open(path) as fp:
        g = json.load(fp)
    return {"file": f, "invariants": extract(g)}

if __name__ == "__main__":
    files = os.listdir("data/batch")
    with Pool() as p:
        results = p.map(process, files)
    with open("batch_parallel.json","w") as out:
        json.dump(results, out, indent=2)
