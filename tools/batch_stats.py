import json

with open("batch_output.json") as f:
    data = json.load(f)

n = len(data)
avg_ed = sum(d["invariants"]["entropy_depth"] for d in data) / n
avg_cr = sum(d["invariants"]["cycle_rank"] for d in data) / n

stats = {
    "num_graphs": n,
    "avg_entropy_depth": avg_ed,
    "avg_cycle_rank": avg_cr
}

with open("batch_stats.json","w") as f:
    json.dump(stats, f, indent=2)
