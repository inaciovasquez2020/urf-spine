import Mathlib.Data.List.Sort
import Mathlib.Data.List.Perm
import Mathlib.Tactic

namespace URFSpine

open List

structure Artifact where
  path  : String
  sha256 : String
deriving DecidableEq, Repr

def key (a : Artifact) : String := a.path

def leA (a b : Artifact) : Bool := key a ≤ key b

def SNF (xs : List Artifact) : List Artifact := xs.mergeSort leA

def multisetEq (xs ys : List Artifact) : Prop := xs.Perm ys

theorem SNF_eq_iff_perm (xs ys : List Artifact) :
  SNF xs = SNF ys ↔ multisetEq xs ys := by
  constructor
  · intro h
    have px : xs.Perm (SNF xs) := by
      simpa [SNF] using (List.perm_mergeSort (r := leA) xs)
    have py : ys.Perm (SNF ys) := by
      simpa [SNF] using (List.perm_mergeSort (r := leA) ys)
    exact px.trans (h ▸ py.symm)
  · intro p
    simpa [SNF] using (List.mergeSort_eq_of_perm (r := leA) p)

end URFSpine
