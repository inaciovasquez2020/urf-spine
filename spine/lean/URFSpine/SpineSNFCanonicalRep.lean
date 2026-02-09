import URFSpine.SpineBase
import Mathlib.Data.List.Permutation
import Init.Data.List.Sort.Basic
import Init.Data.List.Sort.Lemmas

namespace URFSpine

set_option autoImplicit false

/-- SNF via stdlib mergeSort (Bool comparator). -/
def SNF (cmp : Artifact → Artifact → Bool) (xs : List Artifact) : List Artifact :=
  xs.mergeSort cmp

theorem SNF_perm (cmp : Artifact → Artifact → Bool) (xs : List Artifact) :
  List.Perm xs (SNF cmp xs) :=
by
  simpa [SNF] using (List.Perm.symm (List.mergeSort_perm (le := cmp) xs))

end URFSpine
