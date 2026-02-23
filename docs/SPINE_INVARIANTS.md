# URF Spine Invariants

## Purpose
This document specifies the structural invariants enforced by the URF Spine.
These invariants guarantee compositional integrity across all URF subsystems.

## Core Invariants

### I1. Composition Invariant
All URF modules compose via spine-normalized interfaces.
No downstream module may bypass spine-level normalization.

### I2. Order / Comparator Invariant
All comparisons are mediated by spine-defined total or partial orders
(e.g. SNF-based comparators), ensuring deterministic composition.

### I3. Manifest Invariant
All builds must be manifest-first: dependency resolution is fixed before execution.

### I4. Toolchain Robustness
Spine invariants are stable under supported Lean toolchain upgrades.

### I5. Downstream Safety
Violation of a spine invariant must fail fast at build or CI time.

## Composition
URF Core → URF Spine → {Chronos, Cyclone, CVRE, Prefab}

The spine is the sole admissible bridge between axioms and engines.
