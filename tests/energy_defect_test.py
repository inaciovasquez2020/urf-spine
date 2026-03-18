def satisfies_energy_gap(E, lambda1):
    return E <= (1 / (1 + lambda1))

def test_energy_defect():
    assert satisfies_energy_gap(0.5, 1.0) is True
    assert satisfies_energy_gap(1.0, 1.0) is False
