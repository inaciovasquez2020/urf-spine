import subprocess
import json
from pathlib import Path

BASE = Path("data/base_graph.edgelist")

def run(cmd):
    return subprocess.check_output(cmd, text=True).strip()

def gen_pair(r, seed_a=777, seed_b=999):
    ga = Path(f"data/min/G_r{r}_A.edgelist")
    gb = Path(f"data/min/G_r{r}_B.edgelist")
    ga.parent.mkdir(parents=True, exist_ok=True)

    run(["python3", "scripts/twolift.py", str(BASE), str(r), str(seed_a), str(ga)])
    run(["python3", "scripts/twolift.py", str(BASE), str(r), str(seed_b), str(gb)])
    return ga, gb

def wl1(edgelist_path):
    out = run(["python3", "scripts/wl1.py", str(edgelist_path)])
    return out

def main():
    results = []
    for r in range(0, 5):
        ga, gb = gen_pair(r)
        a = wl1(ga)
        b = wl1(gb)
        same = (a == b)

        # vertex count is implicit from construction
        n = 50 * (2**r)

        results.append({
            "rounds": r,
            "n": n,
            "wl1_equal": same,
            "A": str(ga),
            "B": str(gb),
        })

        print(f"r={r} n={n} wl1_equal={same}")

    Path("data/min/results_wl1_min.json").write_text(json.dumps(results, indent=2) + "\n")

    # report minimal r with wl1_equal True
    mins = [x for x in results if x["wl1_equal"]]
    if mins:
        best = min(mins, key=lambda x: x["rounds"])
        print(f"MIN_FOUND r={best['rounds']} n={best['n']}")
    else:
        print("MIN_FOUND none")

if __name__ == "__main__":
    main()
