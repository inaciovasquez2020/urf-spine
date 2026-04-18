from pathlib import Path

def test_scope_limitations_status():
    text = Path("SCOPE_LIMITATIONS_STATUS.md").read_text(encoding="utf-8")
    assert "- canonical" in text
    assert "- reduction-template-layer" in text
    assert "- certificate-verified" in text
    assert "- not theorem-prover-complete" in text
    assert "- not a primary mathematics-closure repository" in text
    assert "The remaining gap is executable reduction hardening, not theorem existence." in text
    assert "- gadget catalog with hashes" in text
    assert "- reduction scripts with fixed seeds" in text
    assert "- verifier hooks" in text

def test_scope_matches_repo_surface():
    scope = Path("SCOPE_LIMITATIONS_STATUS.md").read_text(encoding="utf-8")
    readme = Path("README.md").read_text(encoding="utf-8")
    mapping = Path("docs/map.md").read_text(encoding="utf-8")
    psh = Path("docs/PSH_STATUS.md").read_text(encoding="utf-8")
    assert "canonical SAT/CSP reduction templates and proof sketches" in scope
    assert "canonical reduction templates and proof sketches" in readme
    assert "Artifacts to add" in mapping
    assert "gadget catalog with hashes" in mapping
    assert "reduction scripts with fixed seeds" in mapping
    assert "verifier hooks" in mapping
    assert "Only r-round / rank-bounded FO^k statements are valid." in psh
    assert "Unbounded-round pebble saturation and universal-cover reductions are invalid." in psh
