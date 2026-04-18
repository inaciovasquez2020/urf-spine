import networkx as nx
import sys
import random
from collections import Counter

def wl2_sampled(G, rounds=2, k=50, s=2000, seed=0):
    rng = random.Random(seed)
    V = list(G.nodes())
    n = len(V)

    # sample intermediate vertices
    W = rng.sample(V, min(k, n))

    # sample ordered pairs
    P = [(rng.choice(V), rng.choice(V)) for _ in range(s)]

    # init colors only on P
    colors = {}
    for (u,v) in P:
        colors[(u,v)] = (
            0 if u != v else 1,
            int(G.has_edge(u,v))
        )

    for _ in range(rounds):
        new_colors = {}
        palette = {}
        next_color = 0
        for (u,v) in P:
            sig = (
                colors[(u,v)],
                tuple(
                    sorted(
                        (
                            (0 if u != w else 1, int(G.has_edge(u,w))),
                            (0 if w != v else 1, int(G.has_edge(w,v)))
                        )
                        for w in W
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
    print(wl2_sampled(G))
