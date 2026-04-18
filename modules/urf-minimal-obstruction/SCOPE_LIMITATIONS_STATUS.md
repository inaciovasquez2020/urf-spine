# Scope and Limitations Status

## Repository Status
- canonical
- certified-obstruction-layer
- release-certified
- certificate-verified
- not theorem-prover-complete
- not a primary mathematics-closure repository

## Canonical Surface
- README.md
- certs/
- data/
- docs/
- examples/
- infra/
- registry/
- schema/
- scripts/
- tools/urf-minimal-obstruction/

## Repository Role
This repository publishes certified minimal obstructions for graph and inference baselines under URF.
Its role is to provide smallest concrete obstruction objects, URF-verifiable certificates,
falsified baseline claims for declared non-URF method families, reproducible evidence,
and public leaderboard-ready artifacts.

## Mathematical Scope
This repository does not currently serve as the canonical location for final theorem closure
of the broader URF mathematics program. It is a certified obstruction and evidence layer.

## Validation Modality
Validation is certification/reproducibility/workflow based:
- declarative certification artifacts
- cryptographic signing
- registry/schema checks
- reproducible evidence
- public release certification
It is not a Lean-level theorem-complete repository.

## Constraint Boundary
Claims apply only under declared constraints.
Non-claims must remain explicitly listed in certification files.
Certification releases are not software releases and make no performance guarantees,
no completeness claims, and no implications beyond explicitly stated obstruction boundaries.

## Live Missing Objects
- canonical scope/limitations status surface
- README synchronization with declared certified-obstruction role
- explicit boundary between certified obstruction evidence and theorem closure

## Closure Statement
Within its declared scope, the repository has no live missing-math theorem lock.
The remaining gap is certification-surface hardening and scope clarity, not theorem existence.

## Canonical Upgrade Path
Any future strengthening should be labeled as one of:
- certification hardening
- registry/schema hardening
- reproducibility hardening
- scope clarification
and must not relabel the repository as theorem-complete without a new proof layer.
