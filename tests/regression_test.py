import json
from tools.extract_invariants import extract

def test_regression():
    g = {"nodes":[1,2,3,4],"edges":[[1,2],[2,3],[3,4],[4,1]]}
    data = extract(g)
    assert data["cycle_rank"] == 1
