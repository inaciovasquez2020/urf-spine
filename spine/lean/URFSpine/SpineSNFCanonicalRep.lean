import Mathlib.Data.List.Sort
import Mathlib.Data.List.Perm

namespace URFSpine

structure Artifact where
  path : String
deriving DecidableEq, Repr

def key (a : Artifact) : String := a.path

def leA (a b : Artifact) : Bool := key a ≤ key b

def SNF (xs : List Artifact) : List Artifact := xs.mergeSort leA

theorem perm_SNF (xs : List Artifact) : xs.Perm (SNF xs) := by
  simpa [SNF] using (List.mergeSort_perm xs leA)

theorem SNF_eq_imp_perm {xs ys : List Artifact} (h : SNF xs = SNF ys) : xs.Perm ys := by
  have hx : xs.Perm (SNF xs) := perm_SNF xs
  have hy : ys.Perm (SNF ys) := perm_SNF ys
  exact hx.trans (h ▸ hy.symm)

end URFSpine
