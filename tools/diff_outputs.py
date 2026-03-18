import json, sys

with open(sys.argv[1]) as f1, open(sys.argv[2]) as f2:
    d1 = json.load(f1)
    d2 = json.load(f2)

print(d1 == d2)
