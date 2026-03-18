from tools.random_graphs import generate
from tools.extract_invariants import extract
from tools.contracts import check_invariants

def test_properties():
    for _ in range(10):
        g = generate()
        data = extract(g)
        check_invariants(data)
