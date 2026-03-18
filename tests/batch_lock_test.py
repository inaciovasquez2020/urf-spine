import json

def test_batch_lock():
    with open("batch_output.json") as f1, open("tests/batch_snapshot.json") as f2:
        assert json.load(f1) == json.load(f2)
