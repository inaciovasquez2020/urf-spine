import Mathlib.Data.Finset.Basic
import Mathlib.Data.Nat.Basic
import Mathlib.LinearAlgebra.Matrix
import Mathlib.Tactic

namespace URF

def F2 : Type := Fin 2

instance : DecidableEq F2 := inferInstance

def ColSupport {ι κ : Type} [DecidableEq ι]
(A : ι → κ → F2) (j : κ) : Finset ι :=
(Finset.univ.filter (fun i => A i j = 1))

def RowPart {ι κ : Type} [DecidableEq κ]
(A : ι → κ → F2) (i : ι) : Finset κ :=
(Finset.univ.filter (fun j => A i j = 1))

def BoundedColSupport {ι κ : Type} [DecidableEq ι]
(A : ι → κ → F2) (s : ℕ) : Prop :=
∀ j : κ, (ColSupport A j).card ≤ s

def BoundedRowPart {ι κ : Type} [DecidableEq κ]
(A : ι → κ → F2) (q : ℕ) : Prop :=
∀ i : ι, (RowPart A i).card ≤ q

def SigCount {κ : Type} (r : ℕ) (Sig : κ → Type) : ℕ :=
0

axiom BSRSEL
{ι κ : Type} [Fintype ι] [Fintype κ] [DecidableEq ι] [DecidableEq κ]
(A : ι → κ → F2) (s q : ℕ) :
BoundedColSupport A s →
BoundedRowPart A q →
∃ r : ℕ, ∃ c : ℕ, True

end URF
