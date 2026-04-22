# Setup Guide

This guide is for contributors who want a reliable local environment for URF Spine.

## Prerequisites

```bash
python3 --version
git --version
lake --version
lean --version
```

Recommended baseline:

- Python 3.10 or newer
- Git
- Lean 4 with `lake`
- POSIX shell environment

## Clone

```bash
git clone https://github.com/inaciovasquez2020/urf-spine.git
cd urf-spine
```

## Optional virtual environment

```bash
python3 -m venv .venv
. .venv/bin/activate
python3 -m pip install --upgrade pip
```

## Verification

```bash
[ -f lakefile.lean ] && lake build
[ -d tests ] && python3 -m pytest -q
```

## Recommended edit loop

```bash
git pull --ff-only origin main
[ -f lakefile.lean ] && lake build
[ -d tests ] && python3 -m pytest -q
git status --short
```

## Related files

- `QUICKSTART.md`
- `CONTRIBUTING.md`
- `STATUS.md`
- `SCOPE_LIMITATIONS_STATUS.md`
- `SPINE_MANIFEST.json`
