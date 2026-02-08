import URFSpine.SpineSNFCanonicalRep
namespace URFSpine
def leA' (a b : Artifact) : Bool :=
decide (a.path ≤ b.path ∧ a.path.length ≤ b.path.length)
def SNF' (xs : List Artifact) : List Artifact := xs.mergeSort leA'
theorem SNF'_perm (xs : List Artifact) : xs.Perm (SNF' xs) := by
simpa [SNF', leA'] using (List.mergeSort_perm xs leA').symm
theorem key_refinement_stability
(xs : List Artifact) :
(SNF xs).Perm (SNF' xs) := by
have h1 : xs.Perm (SNF xs) := SNF_perm xs
have h2 : xs.Perm (SNF' xs) := SNF'_perm xs
exact h1.symm.trans h2
end URFSpine
