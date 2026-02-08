import Mathlib.Data.List.Sort
import Mathlib.Data.List.Permutation
namespace URFSpine
structure Artifact where
path : String
deriving DecidableEq, Repr
def key (a : Artifact) : String := a.path
def leA (a b : Artifact) : Bool := decide (key a ≤ key b)
def SNF (xs : List Artifact) : List Artifact := xs.mergeSort leA
theorem SNF_perm (xs : List Artifact) : xs.Perm (SNF xs) := by
simpa [SNF, leA] using (List.mergeSort_perm xs leA).symm
end URFSpine

theorem SNF_eq_of_perm {xs ys : List Artifact} (h : xs.Perm ys) : SNF xs = SNF ys := by
  simpa [SNF, leA] using (List.mergeSort_eq_of_perm leA h)
