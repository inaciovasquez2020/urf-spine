import tracemalloc, sys, os
sys.path.append(os.path.abspath("."))

from tools.random_graphs import generate
from tools.extract_invariants import extract

tracemalloc.start()

for _ in range(100):
    g = generate()
    extract(g)

current, peak = tracemalloc.get_traced_memory()
with open("memory.txt","w") as f:
    f.write(f"{current},{peak}")

tracemalloc.stop()
