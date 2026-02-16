import networkx as nx

def base_graph():
    # Fixed small 3-regular seed (deterministic)
    G = nx.random_regular_graph(d=3, n=50, seed=12345)
    return G

if __name__ == "__main__":
    G = base_graph()
    nx.write_edgelist(G, "data/base_graph.edgelist", data=False)
