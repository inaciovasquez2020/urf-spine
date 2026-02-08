# Spine Functor (Definition)

## Category URFMod
Objects: URF modules `M` equipped with:
- a declared certificate schema `Schema(M)`
- a deterministic replay procedure `Replay_M`
- a hash closure rule `Hash_M`

Morphisms: certificate-preserving interface maps `f : M -> N` that transport evidence bundles and preserve replay:
- `Replay_N(f_*(e)) = f_*(Replay_M(e))`
- `Hash_N(f_*(e)) = Hash_M(e)` up to canonical re-encoding.

## Category SpineRep
Objects: triples `(I,H,R)` where
- `I` = invariant witness bundle
- `H` = hash-closure witness
- `R` = replay-determinism witness

Morphisms: maps preserving the triple structure and commuting with canonicalization.

## Functor F_spine : URFMod -> SpineRep
On objects:
- `F_spine(M) := SNF(M)` where `SNF(M)` is the canonical representative produced by deterministic normalization of:
  - invariants,
  - evidence bundle,
  - artifact hash list,
  - ordering rules.

On morphisms:
- for `f : M -> N`, define `F_spine(f)` as the induced map on canonical representatives:
  - apply `f_*` to evidence/artifacts,
  - re-canonicalize (SNF),
  - output the unique morphism in SpineRep between the resulting triples.

Functor laws:
- `F_spine(id_M) = id_{F_spine(M)}`
- `F_spine(g ∘ f) = F_spine(g) ∘ F_spine(f)`
