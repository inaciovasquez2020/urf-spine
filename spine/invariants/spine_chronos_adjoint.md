# Spine ↔ Chronos (Adjoint Pair Construction Sketch)

Let SpineRep be the category of canonical triples (I,H,R).
Let ChronosRep be the category of admissible refinement histories with capacity/ED witnesses.

Define:
- U : ChronosRep -> SpineRep (forgetful): map a history to its invariant/hash/replay footprint.
- G : SpineRep -> ChronosRep (free): generate the minimal Chronos object consistent with (I,H,R) under admissibility axioms.

Adjunction data:
- unit η : Id_{SpineRep} -> U ∘ G
- counit ε : G ∘ U -> Id_{ChronosRep}

Adjunction law:
Hom_{ChronosRep}(G(S), C) ≅ Hom_{SpineRep}(S, U(C))
natural in S,C.
