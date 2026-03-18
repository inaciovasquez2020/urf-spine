import json

def extract(graph):
    n = len(graph.get("nodes", []))
    m = len(graph.get("edges", []))
    return {
        "locality_radius": 1,
        "degree_bound": max(1, m // max(1, n)),
        "entropy_depth": n,
        "cycle_rank": max(0, m - n + 1),
        "spectral_gap": 1.0 / (1 + n)
    }

if __name__ == "__main__":
    with open("data/sample_graph.json") as f:
        graph = json.load(f)
    print(json.dumps(extract(graph)))
