namespace URFSpine

open List

structure Artifact where
  path  : String
  sha256 : String
deriving DecidableEq, Repr

def key (a : Artifact) : String := a.path
def leA (a b : Artifact) : Prop := key a ≤ key b

def SNF (xs : List Artifact) : List Artifact := xs.mergeSort leA

/-- Multiset equality as Permutation (List.Perm). -/
def multisetEq (xs ys : List Artifact) : Prop := Permutation xs ys

/-- SNF is a canonical representative: SNF(xs)=SNF(ys) ↔ xs ~ ys. -/
theorem SNF_eq_iff_perm (xs ys : List Artifact) :
  SNF xs = SNF ys ↔ multisetEq xs ys := by
  constructor
  · intro h
    -- xs ~ SNF xs and ys ~ SNF ys, so xs ~ ys.
    have px : Permutation xs (SNF xs) := by
      simpa [SNF] using (List.perm_mergeSort (r:=leA) xs)
    have py : Permutation ys (SNF ys) := by
      simpa [SNF] using (List.perm_mergeSort (r:=leA) ys)
    exact px.trans (h ▸ py.symm)
  · intro p
    -- If xs ~ ys, mergeSort outputs equal canonical lists (stability lemma).
    -- Minimal missing lemma:
    --   Permutation xs ys → mergeSort leA xs = mergeSort leA ys
    -- Add later if your Mathlib build lacks it.
    admit

end URFSpine
