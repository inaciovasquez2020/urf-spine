def violates_mixing_bound(M):
    return M > 1000

def test_violation_detection():
    assert violates_mixing_bound(2000) is True
