# URF Spine Quickstart

This is the shortest path from clone to a first successful local verification pass.

## Requirements

- `git`
- `bash`
- `python3`
- Lean 4 with `lake`

## 1. Clone

```bash
git clone https://github.com/inaciovasquez2020/urf-spine.git
cd urf-spine
```

## 2. Check tools

```bash
python3 --version
git --version
lake --version
lean --version
```

## 3. Run canonical checks

```bash
[ -f lakefile.lean ] && lake build
[ -d tests ] && python3 -m pytest -q
```

## 4. Review the main spine surfaces

- `README.md`
- `STATUS.md`
- `SCOPE_LIMITATIONS_STATUS.md`
- `SPINE_MANIFEST.json`
- `docs/`

## 5. Next steps

- detailed setup: `docs/SETUP_GUIDE.md`
- contribution policy: `CONTRIBUTING.md`
