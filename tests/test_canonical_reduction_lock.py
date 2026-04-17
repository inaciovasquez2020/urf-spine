from pathlib import Path

def test_lock_exists():
    assert Path("docs/status/CANONICAL_REDUCTION_LOCK.md").exists()

def test_status_conditional():
    s = Path("docs/status/CANONICAL_REDUCTION_LOCK.md").read_text(encoding="utf-8")
    assert "Status: Conditional" in s

def test_satisfiability_constraint_present():
    s = Path("docs/status/CANONICAL_REDUCTION_LOCK.md").read_text(encoding="utf-8")
    assert "satisfiability" in s.lower()
