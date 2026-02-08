# Minimal Completeness Basis (Definition)

A URF module M is Spine-admissible iff it provides:

(1) Schema: a JSON-schema `Schema(M)` for certificates.
(2) Deterministic replay: procedure `Replay_M` producing the same transcript on identical inputs.
(3) Hash closure: artifact hashing rule `Hash_M` stable under replay.
(4) Interface map: certificate-preserving morphisms to/from other URF modules.
(5) Canonicalization: SNF-compatible encoding for evidence bundles.

Basis set:
B = {Schema, Replay, Hash, Interface, Canonicalization}.

Completeness claim:
If M satisfies B, then F_spine(M) is well-defined in SpineRep and composable.
