import networkx as nx
import numpy as np
import sys

def spectra(G):
    A = nx.to_numpy_array(G)
    L = nx.laplacian_matrix(G).toarray()
    evals_A = np.round(np.linalg.eigvalsh(A), 8)
    evals_L = np.round(np.linalg.eigvalsh(L), 8)
    return evals_A, evals_L

if __name__ == "__main__":
    G = nx.read_edgelist(sys.argv[1], nodetype=int)
    A, L = spectra(G)
    print("A:", A.tolist())
    print("L:", L.tolist())
