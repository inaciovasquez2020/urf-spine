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
Stable structural module.
Changes occur only to preserve cross-repository consistency.

## Further documentation
Detailed specifications, scripts, and technical notes are maintained within the repository subdirectories and linked documentation files.
