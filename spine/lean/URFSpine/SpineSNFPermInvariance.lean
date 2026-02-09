import URFSpine.SpineBase
import URFSpine.SpineSNFCanonicalRep
import Mathlib.Data.List.Permutation

namespace URFSpine

set_option autoImplicit false

theorem SNF_perm (cmp : Artifact → Artifact → Bool) (xs : List Artifact) :
  List.Perm xs (SNF cmp xs) :=
by
  -- `perm_mergeSort` is the only thing we rely on.
  simpa [SNF] using (List.perm_mergeSort (cmp := cmp) xs)

theorem SNF_perm_invariant (cmp : Artifact → Artifact → Bool) :
  ∀ {xs ys : List Artifact}, List.Perm xs ys → List.Perm (SNF cmp xs) (SNF cmp ys)
| xs, ys, h => by
  have hx : List.Perm xs (SNF cmp xs) := SNF_perm (cmp := cmp) xs
  have hy : List.Perm ys (SNF cmp ys) := SNF_perm (cmp := cmp) ys
  -- xs ~ ys  ⇒  SNF xs ~ SNF ys by transitivity
  exact hx.symm.trans (h.trans hy)

theorem SNF_artifactCmp_perm_invariant :
  ∀ {xs ys : List Artifact}, List.Perm xs ys → List.Perm (SNF artifactCmp xs) (SNF artifactCmp ys) :=
by
  intro xs ys h
  exact SNF_perm_invariant (cmp := artifactCmp) h

end URFSpine
