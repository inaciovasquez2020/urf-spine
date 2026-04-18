from pathlib import Path

def test_scope_limitations_status():
    text = Path("SCOPE_LIMITATIONS_STATUS.md").read_text(encoding="utf-8")
    assert "- canonical" in text
    assert "- certified-obstruction-layer" in text
    assert "- release-certified" in text
    assert "- certificate-verified" in text
    assert "- not theorem-prover-complete" in text
    assert "- not a primary mathematics-closure repository" in text
    assert "no live missing-math theorem lock" in text
    assert "certification-surface hardening and scope clarity" in text

def test_readme_scope_sync():
    readme = Path("README.md").read_text(encoding="utf-8")
    scope = Path("SCOPE_LIMITATIONS_STATUS.md").read_text(encoding="utf-8")
    assert "## Current Status" in readme
    assert "- certified-obstruction-layer" in readme
    assert "- release-certified" in readme
    assert "- certificate-verified" in readme
    assert "- not theorem-prover-complete" in readme
    assert "Claims apply only under declared constraints." in readme
    assert "SCOPE_LIMITATIONS_STATUS.md" in readme
    assert "certified minimal obstructions for graph and inference baselines under URF" in scope
