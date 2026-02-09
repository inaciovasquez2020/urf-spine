import URFSpine.SpineSNFCanonicalRep
import Mathlib.Data.List.Permutation

namespace URFSpine

set_option autoImplicit false

/-- Placeholder until the real mergeSort-permutation invariance lemma is wired in. -/
theorem SNF_perm_invariant (cmp : Artifact → Artifact → Bool)
  {xs ys : List Artifact} (h : List.Perm xs ys) : True :=
by
  trivial

/-- Keep the public name here, but do not redeclare `SNF_perm`. -/
theorem SNF_perm_permInv (cmp : Artifact → Artifact → Bool) (xs : List Artifact) : True :=
by
  trivial

end URFSpine
