from tools.extract_invariants import extract

def test_pipeline():
    g = {}
    data = extract(g)
    assert "entropy_depth" in data
