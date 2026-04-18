import sys
import math
from collections import defaultdict

def read_graph(path):
    edges = []
    nodes = set()
    with open(path) as f:
        for line in f:
            u, v = map(int, line.split())
            edges.append((u, v))
            nodes.add(u); nodes.add(v)
    return sorted(nodes), edges

def adjacency_spectrum(nodes, edges):
    # very weak invariant: degree multiset
    deg = defaultdict(int)
    for u, v in edges:
        deg[u] += 1
        deg[v] += 1
    return sorted(deg[n] for n in nodes)

def laplacian_spectrum(nodes, edges):
    # equally weak: same degree multiset
    return adjacency_spectrum(nodes, edges)

if __name__ == "__main__":
    nodes, edges = read_graph(sys.argv[1])
    print("A:", adjacency_spectrum(nodes, edges))
    print("L:", laplacian_spectrum(nodes, edges))
