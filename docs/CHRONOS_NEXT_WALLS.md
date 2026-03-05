# Chronos Next Walls (Replace Axioms / Add Instances / Connect Experiments)

## Axiom → Proof Targets (Lean)
- spine/rigidity/BoundedSupportRankSignature.lean : BSRSEL (remove axiom; prove bounded-support rank → signature explosion)
- spine/chronos/bridges/CycleOverlapImpliesEntropy.lean : CycleOverlapImpliesEntropy (remove axiom; prove COR_R → entropy growth)

## Real Graph Instances (Lean)
- spine/rigidity/instances/TorusInstance.lean : torus family + local balls + cycle basis hooks
- spine/rigidity/instances/LiftInstance.lean : random lift family hooks (structure only; randomness external)
- spine/sat/SATIncidenceGraph.lean : instantiate CNF → incidence SimpleGraph + bounded-degree lemmas

## Connect chronos-urf-rr Experiments
- external/chronos-urf-rr submodule (source of experimental JSON + scripts)
- spine/chronos/links/ChronosURFRR.md : mapping of JSON artifacts → Lean instance stubs
