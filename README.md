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

## Status (2026)

The URF reduction is complete up to a single analytic wall, the
Clause Contraction Lemma (CCL). The FO^k locality wall is conditionally
closed via Configuration Pumping; EF Cycle–Linkage and related traps
are retired. XYSTEM remains explicitly open and independent of FO^k
locality. Canonical reduction summary:

- https://github.com/inaciovasquez2020/urf-core/blob/main/docs/REDUCTION_STATUS.md

## Quickstart (60 seconds)

```bash
./scripts/spine check
```
