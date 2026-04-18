# URF Spine

The URF Spine is the **structural backbone** of the Unified Rigidity Framework (URF).

It defines canonical forms, invariants, and certificate structure shared across URF modules, ensuring consistency and preventing duplication of foundational machinery.

## Role
- Acts as the invariant anchor and canonicalization layer for URF.
- Provides shared abstractions used by multiple URF components.
- Supports certificate composition and verification workflows.

## What lives here
- Canonicalization mechanisms (e.g. Spine Normal Form).
- Invariant representations and shared structural maps.
- Certificate schemas and verification utilities.

## Dependencies
Consumed by:
- urf-core
- chronos-entropydepth
- chronos-urf-rr
- urf-verifier

This repository does not depend on application-specific or domain-specific URF modules.

## Status
Stable structural module (frozen, versioned, reproducible).
Changes occur only to preserve cross-repository consistency.

## Further documentation
Detailed specifications, scripts, and technical notes are maintained within the repository subdirectories and linked documentation files.

## Reproducibility
![status](reproducibility_badge.txt)

All artifacts verified and reproducible (see release_manifest.json).
- Release integrity: SBOM + SLSA + IPFS + signatures enforced.

## Current Status
- release-certified
- certified-obstruction-layer
- reduction-template-layer

- canonical
- invariant-anchor-layer
- frozen
- versioned
- reproducible
- certificate-verified
- not theorem-prover-complete
- not a primary mathematics-closure repository

This repository is the invariant-anchor and canonicalization layer for URF.
It does not assert independent scientific claims on its own, and it does not serve as the canonical location
for final theorem closure of downstream URF mathematics.

## Compatibility Boundary

Compatibility is guaranteed only within the declared version/toolchain bounds.
Compatibility outside those bounds is not guaranteed.

## Canonical Scope Pointer

See `SCOPE_LIMITATIONS_STATUS.md` for the authoritative scope and limitations surface.


## Live Missing Objects

Tracked via scope and status layers.

Claims apply only under declared constraints.

- gadget catalog with hashes

canonical reduction templates and proof sketches

- reduction scripts with fixed seeds

- verifier hooks
