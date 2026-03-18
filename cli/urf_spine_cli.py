import argparse, json
from tools.extract_invariants import extract

parser = argparse.ArgumentParser()
parser.add_argument("--input", default="data/sample_graph.json")
args = parser.parse_args()

with open(args.input) as f:
    g = json.load(f)

print(json.dumps(extract(g), indent=2))
