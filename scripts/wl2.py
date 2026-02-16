import networkx as nx
import sys
from collections import Counter

def wl2_colors(G, rounds=5):
    V = list(G.nodes())
    colors = {}
    for u in V:
        for v in V:
            colors[(u,v)] = (
                0 if u != v else 1,
                int(G.has_edge(u,v))
            )

    for _ in range(rounds):
        new_colors = {}
        palette = {}
        next_color = 0
        for u,v in colors:
            sig = (
                colors[(u,v)],
                tuple(
                    sorted(
                        (colors[(u,w)], colors[(w,v)])
                        for w in V
                    )
                )
            )
            if sig not in palette:
                palette[sig] = next_color
                next_color += 1
            new_colors[(u,v)] = palette[sig]
        colors = new_colors

    return Counter(colors.values())

if __name__ == "__main__":
    G = nx.read_edgelist(sys.argv[1], nodetype=int)
    print(wl2_colors(G))
