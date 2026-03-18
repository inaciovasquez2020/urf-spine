def satisfies_transcript_bound(T, ED):
    return T * ED >= 1

def test_transcript_relation():
    assert satisfies_transcript_bound(1, 1) is True
    assert satisfies_transcript_bound(0, 5) is False
