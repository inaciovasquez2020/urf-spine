import json, sys

with open("schemas/export_schema.json") as f:
    schema = json.load(f)

with open("output.json") as f:
    data = json.load(f)

for k in schema["required"]:
    if k not in data:
        sys.exit(1)
