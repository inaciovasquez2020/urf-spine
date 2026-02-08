import Mathlib.Data.List.Sort
import Mathlib.Data.List.Permutation

namespace URFSpine

structure Artifact where
  path : String
deriving DecidableEq, Repr

def key (a : Artifact) : String := a.path

def leA (a b : Artifact) : Bool :=
  decide (key a ≤ key b)

def SNF (xs : List Artifact) : List Artifact :=
  xs.mergeSort leA

theorem SNF_perm (xs : List Artifact) :
  xs.Perm (SNF xs) := by
  -- mergeSort_perm returns (SNF xs).Perm xs in this mathlib; flip it
  simpa [SNF] using (List.mergeSort_perm xs leA).symm

/-
  Fill ONE of the following, depending on what grep found:

  A) if you have: List.mergeSort_eq_of_perm
  B) else: use an "eq_of_perm_of_sorted" lemma (name from grep) + mergeSort_sorted + SNF_perm
-/
theorem SNF_eq_of_perm {xs ys : List Artifact} (h : xs.Perm ys) :
  SNF xs = SNF ys := by
  classical
  have hx : (SNF xs).Perm xs := by
    simpa [SNF] using (List.mergeSort_perm xs leA)
  have hy : (SNF ys).Perm ys := by
    simpa [SNF] using (List.mergeSort_perm ys leA)
  have hperm : (SNF xs).Perm (SNF ys) :=
    hx.trans (h.trans hy.symm)
  -- paste lemma name below (from grep), replacing LIST_LEMMA_NAME:
  -- exact (LIST_LEMMA_NAME (by simpa [SNF] using List.mergeSort_sorted leA xs)
  --   (by simpa [SNF] using List.mergeSort_sorted leA ys) hperm)
  
  -- TEMPORARY: stop here until lemma name is pasted
  admit

end URFSpine
