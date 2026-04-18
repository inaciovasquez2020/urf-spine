# Scope and Limitations Status

## Repository Status
- canonical
- frozen
- certificate-verified
- not theorem-prover-complete

## Canonical Frozen Surface
- STATUS.md
- README.md
- docs/PSH_STATUS.md
- fok-wall/
- spectral-gap-wall/
- viotropic-wall/

## Mathematical Scope
This repository is a witness/counterexample library.
Its role is to provide minimal explicit obstruction instances together with deterministic certificate checks.

## Limitation Boundary
Only bounded-round / rank-bounded FO^k statements are within validated scope.
Unbounded-round pebble saturation and universal-cover reductions are outside validated scope.

## Validation Modality
Validation is certificate/check based:
- shell checks
- JSON witness instances
- certificate verification scripts
It is not a Lean-level theorem-complete repository.

## Closure Statement
Within its declared frozen scope, the repository has no live missing-math theorem lock.
The remaining gap is formalization depth, not counterexample existence.

## Canonical Upgrade Path
Any future strengthening should be labeled as one of:
- formalization upgrade
- scope clarification
- certificate hardening
and must not relabel the repository as theorem-complete without a new proof layer.
