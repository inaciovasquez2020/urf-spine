# Scope and Limitations Status

## Repository Status
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

## Canonical Surface
- STATUS.md
- README.md
- SPINE_MANIFEST.json
- release_manifest.json
- reproducibility_badge.txt
- schemas/
- verifier/
- verification/
- spine/
- lean/Spine/

## Repository Role
This repository is the invariant-anchor and canonicalization layer for the Unified Rigidity Framework.
Its role is to provide shared abstractions, canonical forms, certificate structure,
verification utilities, and deterministic infrastructure used by downstream URF modules.

## Mathematical Scope
This repository does not assert independent scientific claims on its own.
It is not the canonical location for final theorem closure of downstream URF mathematics.

## Validation Modality
Validation is build/release/certificate/workflow based:
- deterministic builds under declared toolchain bounds
- stable APIs at tagged releases
- certificate composability
- replay/reproducibility checks
- schema and verification utilities

## Compatibility Boundary
Compatibility is guaranteed only within the declared version/toolchain bounds.
Compatibility outside those bounds is not guaranteed.

## Closure Statement
Within its declared scope, the repository has no live missing-math theorem lock.
The remaining maintenance surface is cross-repository compatibility and reproducibility preservation,
not theorem existence.

## Canonical Upgrade Path
Any future strengthening should be labeled as one of:
- compatibility hardening
- reproducibility hardening
- schema/verification hardening
- API stabilization
- scope clarification
and must not relabel the repository as theorem-complete without a new proof layer.

Only bounded-round / rank-bounded FO^k statements are within validated scope.

Unbounded-round pebble saturation and universal-cover reductions are outside validated scope.

The remaining gap is executable reduction hardening, not theorem existence.

canonical SAT/CSP reduction templates and proof sketches

- release-certified

certification-surface hardening and scope clarity

- gadget catalog with hashes

certified minimal obstructions for graph and inference baselines under URF

- reduction scripts with fixed seeds

- verifier hooks
