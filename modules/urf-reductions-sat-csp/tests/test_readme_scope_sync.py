from pathlib import Path

def test_readme_scope_sync():
    readme = Path("README.md").read_text(encoding="utf-8")
    scope = Path("SCOPE_LIMITATIONS_STATUS.md").read_text(encoding="utf-8")
    assert "## Current Status" in readme
    assert "- reduction-template-layer" in readme
    assert "- certificate-verified" in readme
    assert "- not theorem-prover-complete" in readme
    assert "- not a primary mathematics-closure repository" in readme
    assert "## Live Missing Objects" in readme
    assert "- gadget catalog with hashes" in readme
    assert "- reduction scripts with fixed seeds" in readme
    assert "- verifier hooks" in readme
    assert "SCOPE_LIMITATIONS_STATUS.md" in readme
    assert "The remaining gap is executable reduction hardening, not theorem existence." in scope
