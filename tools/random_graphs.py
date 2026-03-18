import random

def generate(n=5, p=0.5, seed=42):
    random.seed(seed)
    nodes = list(range(1, n+1))
    edges = []
    for i in nodes:
        for j in nodes:
            if i < j and random.random() < p:
                edges.append([i, j])
    return {"nodes": nodes, "edges": edges}
