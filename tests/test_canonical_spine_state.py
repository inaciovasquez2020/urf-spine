from pathlib import Path

def test_spine_state_exists():
    assert Path("docs/status/CANONICAL_SPINE_STATE.md").exists()

def test_spine_status():
    s = Path("docs/status/CANONICAL_SPINE_STATE.md").read_text(encoding="utf-8")
    assert "Status: Conditional" in s

def test_spine_scaffold_rule():
    s = Path("docs/status/CANONICAL_SPINE_STATE.md").read_text(encoding="utf-8")
    assert "scaffold" in s.lower()
