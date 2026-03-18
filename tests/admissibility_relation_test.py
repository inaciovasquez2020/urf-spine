def satisfies_admissibility_bound(A, T):
    return A >= T

def test_admissibility_relation():
    assert satisfies_admissibility_bound(5, 3) is True
    assert satisfies_admissibility_bound(2, 3) is False
