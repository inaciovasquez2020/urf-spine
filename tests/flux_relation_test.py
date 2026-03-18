def satisfies_flux_bound(F, S):
    return F <= S

def test_flux_relation():
    assert satisfies_flux_bound(3, 5) is True
    assert satisfies_flux_bound(6, 5) is False
