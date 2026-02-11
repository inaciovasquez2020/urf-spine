# urf-spine

Invariant anchor + canonicalization + certificate composition layer for URF modules.

## Objects
- **Spine Functor**: `URFMod -> SpineRep` (see `spine/invariants/spine_functor.md`)
- **SNF** (Spine Normal Form): deterministic canonical reduction (see `verification/snf.py`)
- **Certificate schema**: `spine/certificates/schema_spine_certificate.json`
- **Verifier**: `verification/spine_verify.py`

## Quick start (local)
- Verify an example certificate:
  - `python3 verification/spine_verify.py examples/minimal_spine_certificate.json`
- Produce SNF:
  - `python3 verification/snf.py examples/minimal_spine_certificate.json`

## Links
- urf-core: https://github.com/inaciovasquez2020/urf-core
- chronos-entropydepth: https://github.com/inaciovasquez2020/chronos-entropydepth

## Quickstart (60 seconds)

```bash
./scripts/spine check
```
