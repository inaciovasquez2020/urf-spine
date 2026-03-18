def satisfies_kernel_gap(K, lambda1):
    return (K == 0) or (lambda1 == 0)

def test_kernel_relation():
    assert satisfies_kernel_gap(0, 1.0) is True
    assert satisfies_kernel_gap(2, 0.0) is True
    assert satisfies_kernel_gap(2, 1.0) is False
