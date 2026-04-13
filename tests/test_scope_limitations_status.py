from pathlib import Path

def test_scope_limitations_status():
    text = Path("SCOPE_LIMITATIONS_STATUS.md").read_text(encoding="utf-8")
    assert "- canonical" in text
    assert "- invariant-anchor-layer" in text
    assert "- frozen" in text
    assert "- versioned" in text
    assert "- reproducible" in text
    assert "- certificate-verified" in text
    assert "- not theorem-prover-complete" in text
    assert "- not a primary mathematics-closure repository" in text
    assert "does not assert independent scientific claims on its own" in text
    assert "no live missing-math theorem lock" in text
    assert "Compatibility outside those bounds is not guaranteed." in text

def test_scope_matches_repo_surface():
    scope = Path("SCOPE_LIMITATIONS_STATUS.md").read_text(encoding="utf-8")
    status = Path("STATUS.md").read_text(encoding="utf-8")
    readme = Path("README.md").read_text(encoding="utf-8")
    assert "Core spine infrastructure for the Unified Rigidity Framework." in status
    assert "It does not assert independent scientific claims on its own." in status
    assert "It does not guarantee compatibility outside the declared version bounds." in status
    assert "invariant-anchor and canonicalization layer" in scope
    assert "## Current Status" in readme
    assert "- invariant-anchor-layer" in readme
    assert "- not theorem-prover-complete" in readme
    assert "Compatibility outside those bounds is not guaranteed." in readme
    assert "SCOPE_LIMITATIONS_STATUS.md" in readme
