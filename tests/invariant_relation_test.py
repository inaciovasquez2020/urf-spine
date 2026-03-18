def satisfies_relation(M, R, D):
    return M <= R * D

def test_relation():
    assert satisfies_relation(6, 2, 3) is True
    assert satisfies_relation(10, 2, 3) is False
