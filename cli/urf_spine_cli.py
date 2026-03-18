import json
from tools.extract_invariants import extract

def main():
    graph = {}
    data = extract(graph)
    print(json.dumps(data, indent=2))

if __name__ == "__main__":
    main()
