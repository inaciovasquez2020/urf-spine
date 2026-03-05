import json
import glob
from pathlib import Path

OUT = Path("spine/chronos/import/generated")
OUT.mkdir(parents=True, exist_ok=True)

files = glob.glob("external/chronos-urf-rr/toolkit/oblivion/results/*.json")

def to_nat(x):
try:
return int(x)
except Exception:
return 0

lean_lines = []
lean_lines.append("import spine.chronos.links.ArtifactSchema")
lean_lines.append("namespace URF")
lean_lines.append("")

idx = 0

def process(data, fname):
global idx
name = data.get("graph", Path(fname).stem)
n = to_nat(data.get("vertices", data.get("n", 0)))
R = to_nat(data.get("R", 0))
cor = to_nat(data.get("corProxy", data.get("lcake", 0)))
types = to_nat(data.get("typeProxy", 0))

```
lean_lines.append(f"def artifact_{idx} : ChronosArtifact :=")
lean_lines.append("  {")
lean_lines.append(f"    graphName := \"{name}\",")
lean_lines.append(f"    n := {n},")
lean_lines.append(f"    R := {R},")
lean_lines.append(f"    corProxy := {cor},")
lean_lines.append(f"    typeProxy := {types}")
lean_lines.append("  }")
lean_lines.append("")
idx += 1
```

for f in files:
try:
with open(f) as fh:
data = json.load(fh)
except Exception:
continue

```
if isinstance(data, dict):
    process(data, f)
elif isinstance(data, list):
    for item in data:
        if isinstance(item, dict):
            process(item, f)
```

lean_lines.append("end URF")

out_file = OUT / "ChronosArtifactsGenerated.lean"
with open(out_file, "w") as f:
f.write("\n".join(lean_lines))

print("generated", out_file, "with", idx, "artifacts")
