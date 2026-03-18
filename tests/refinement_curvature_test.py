def satisfies_curvature_bound(Rc, ED):
    return Rc <= ED * ED

def test_refinement_curvature():
    assert satisfies_curvature_bound(4, 3) is True
    assert satisfies_curvature_bound(10, 3) is False
