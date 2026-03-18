import json, hashlib

def compute_id(graph):
    s = json.dumps(graph, sort_keys=True)
    return hashlib.sha256(s.encode()).hexdigest()
