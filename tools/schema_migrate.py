import json

def migrate(data):
    data["version"] = "1.0.0"
    return data
