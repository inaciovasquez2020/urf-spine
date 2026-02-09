import Mathlib.Data.List.Sort

namespace URFSpine

theorem SNF_perm_quot
  (cmp : Artifact → Artifact → Bool)
  (xs : List Artifact) :
  (SNF cmp xs).Perm xs :=
by
  simpa using (List.mergeSort_perm (le := cmp) xs)

end URFSpine
