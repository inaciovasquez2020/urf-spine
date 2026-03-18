def check_invariants(data):
    assert data["entropy_depth"] >= 0
    assert data["cycle_rank"] >= 0
    assert data["degree_bound"] >= 1
