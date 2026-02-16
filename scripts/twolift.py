import networkx as nx
import random
import sys

def two_lift(G, seed=0):
    rng = random.Random(seed)
    H = nx.Graph()
    for v in G.nodes():
        H.add_node((v,0))
        H.add_node((v,1))
    for (u,v) in G.edges():
        s = rng.choice([0,1])
        H.add_edge((u,0),(v,s))
        H.add_edge((u,1),(v,1-s))
    return H

if __name__ == "__main__":
    G = nx.read_edgelist(sys.argv[1], nodetype=int)
    rounds = int(sys.argv[2])
    seed = int(sys.argv[3])

    H = G
    for i in range(rounds):
        H = two_lift(H, seed + i)

    nx.write_edgelist(H, sys.argv[4], data=False)
