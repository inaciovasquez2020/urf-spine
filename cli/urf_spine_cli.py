import argparse, json, os, sys
sys.path.append(os.path.abspath("."))

from tools.extract_invariants import extract

parser = argparse.ArgumentParser()
parser.add_argument("--input")
parser.add_argument("--batch", action="store_true")
parser.add_argument("--cache", action="store_true")
args = parser.parse_args()

if args.batch:
    import tools.batch_extract
else:
    with open(args.input or "data/sample_graph.json") as f:
        g = json.load(f)
    print(json.dumps(extract(g), indent=2))
