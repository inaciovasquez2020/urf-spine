import networkx as nx
import sys

inp = sys.argv[1]
out = sys.argv[2]

G = nx.read_edgelist(inp)
H = nx.convert_node_labels_to_integers(G, ordering="sorted")
nx.write_edgelist(H, out, data=False)
