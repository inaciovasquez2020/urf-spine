# Scope and Limitations Status

## Repository Status
- canonical
- reduction-template-layer
- certificate-verified
- not theorem-prover-complete
- not a primary mathematics-closure repository

## Canonical Surface
- README.md
- docs/map.md
- docs/PSH_STATUS.md
- infra/

## Repository Role
This repository collects canonical SAT/CSP reduction templates and proof sketches
for the URF program. Its role is to record reduction constructions,
correctness sketches, complexity relationships, and formalization notes.

## Mathematical Scope
This repository does not currently serve as the canonical location for final theorem
closure of the SAT/CSP program. The active mathematical frontier is referenced outward
to canonical source repositories.

## Limitation Boundary
Only r-round / rank-bounded FO^k statements are within validated scope.
Unbounded-round pebble saturation and universal-cover reductions are outside validated scope.

## Validation Modality
Validation is reduction-map/certificate/workflow based:
- reduction-map consistency
- certificate checks
- workflow verification
It is not a Lean-level theorem-complete repository.

## Live Missing Objects
- gadget catalog with hashes
- reduction scripts with fixed seeds
- verifier hooks

## Closure Statement
Within its declared scope, the repository has no live missing-math theorem lock.
The remaining gap is executable reduction hardening, not theorem existence.

## Canonical Upgrade Path
Any future strengthening should be labeled as one of:
- gadget hardening
- deterministic reduction scripting
- verifier-hook integration
- scope clarification
and must not relabel the repository as theorem-complete without a new proof layer.
