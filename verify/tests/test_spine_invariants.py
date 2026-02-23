from pathlib import Path

def test_spine_invariants_doc_exists():
    assert Path("docs/SPINE_INVARIANTS.md").exists()

def test_examples_exist():
    assert Path("examples/minimal_workflow.md").exists()
