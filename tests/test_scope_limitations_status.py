from pathlib import Path

def test_scope_limitations_status():
    text = Path("SCOPE_LIMITATIONS_STATUS.md").read_text(encoding="utf-8")
    assert "- canonical" in text
    assert "- frozen" in text
    assert "- certificate-verified" in text
    assert "- not theorem-prover-complete" in text
    assert "Only bounded-round / rank-bounded FO^k statements are within validated scope." in text
    assert "Unbounded-round pebble saturation and universal-cover reductions are outside validated scope." in text
    assert "the repository has no live missing-math theorem lock" in text

def test_psh_boundary_matches_scope_status():
    psh = Path("docs/PSH_STATUS.md").read_text(encoding="utf-8")
    scope = Path("SCOPE_LIMITATIONS_STATUS.md").read_text(encoding="utf-8")
    assert "Unbounded-round" in psh or "unbounded round" in psh
    assert "universal-cover" in psh or "universal cover" in psh
    assert "Unbounded-round pebble saturation and universal-cover reductions are outside validated scope." in scope
