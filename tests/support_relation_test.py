def satisfies_support_bound(S, R):
    return S <= 2 * R

def test_support_relation():
    assert satisfies_support_bound(4, 2) is True
    assert satisfies_support_bound(5, 2) is False
