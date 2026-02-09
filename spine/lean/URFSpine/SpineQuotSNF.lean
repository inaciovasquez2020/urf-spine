import URFSpine.SpineBase
import URFSpine.SpineSNFCanonicalRep
import URFSpine.SpineSNFPermInvariance
import Mathlib.Data.List.Permutation

namespace URFSpine

set_option autoImplicit false

theorem quot_snf_respects_perm
  (xs ys : List Artifact)
  (hperm : List.Perm xs ys) :
  List.Perm (SNF artifactCmp xs) (SNF artifactCmp ys) :=
  SNF_artifactCmp_perm_invariant (xs := xs) (ys := ys) hperm

end URFSpine
