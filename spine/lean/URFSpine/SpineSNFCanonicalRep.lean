import Mathlib.Data.List.Sort

namespace URFSpine

/-- Canonical SNF representation = mergesort under comparator. -/
def SNF (cmp : Artifact → Artifact → Bool) (xs : List Artifact) : List Artifact :=
  xs.mergeSort cmp

/-- SNF preserves permutation via mergeSort_perm (Lean 4.27 mathlib). -/
theorem SNF_perm
  (cmp : Artifact → Artifact → Bool)
  (xs : List Artifact) :
  (SNF cmp xs).Perm xs :=
by
  unfold SNF
  simpa using (List.mergeSort_perm (le := cmp) xs)

end URFSpine
