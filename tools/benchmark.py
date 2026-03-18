import time
from tools.random_graphs import generate
from tools.extract_invariants import extract

start = time.time()
for _ in range(100):
    g = generate()
    extract(g)
end = time.time()

with open("benchmark.txt","w") as f:
    f.write(str(end - start))
