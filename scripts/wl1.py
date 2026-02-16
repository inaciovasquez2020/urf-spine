import networkx as nx
import sys
from collections import Counter

def wl1_colors(G, rounds=10):
    colors = {v: 0 for v in G.nodes()}
    for _ in range(rounds):
        new_colors = {}
        palette = {}
        next_color = 0
        for v in G.nodes():
            sig = (colors[v], tuple(sorted(colors[u] for u in G.neighbors(v))))
            if sig not in palette:
                palette[sig] = next_color
                next_color += 1
            new_colors[v] = palette[sig]
        colors = new_colors
    return Counter(colors.values())

if __name__ == "__main__":
    G = nx.read_edgelist(sys.argv[1])
    print(wl1_colors(G))
