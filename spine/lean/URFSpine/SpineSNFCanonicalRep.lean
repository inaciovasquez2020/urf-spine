import Mathlib.Data.List.Sort
import Mathlib.Data.List.Permutation
namespace URFSpine
structure Artifact where
path : String
deriving DecidableEq, Repr
def key (a : Artifact) : String := a.path
def leA (a b : Artifact) : Prop := key a ≤ key b
instance : DecidableRel leA := by
intro a b
infer_instance
def SNF (xs : List Artifact) : List Artifact :=
xs.sort leA
theorem SNF_perm (xs : List Artifact) :
xs.Perm (SNF xs) := by
simpa [SNF] using (List.perm_sort leA xs)
theorem SNF_eq_of_perm {xs ys : List Artifact} (h : xs.Perm ys) :
SNF xs = SNF ys := by
simpa [SNF] using (List.sort_eq_of_perm leA h)
end URFSpine
