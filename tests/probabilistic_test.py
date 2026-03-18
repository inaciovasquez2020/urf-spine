from tools.random_graphs import generate
from tools.extract_invariants import extract

def test_random_graphs():
    for _ in range(5):
        g = generate()
        data = extract(g)
        assert data["entropy_depth"] >= 0
