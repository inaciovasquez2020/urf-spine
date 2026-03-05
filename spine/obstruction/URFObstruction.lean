import Mathlib.Data.Real.Basic

namespace URF

structure URF_Obstruction where
  domain : Type
  invariant : domain → ℝ
  threshold : ℝ

def ObstructionActive (O : URF_Obstruction) : Prop :=
  ∀ x : O.domain, O.threshold ≤ O.invariant x

def ViolatesObstruction (O : URF_Obstruction) (x : O.domain) : Prop :=
  O.invariant x < O.threshold

theorem obstruction_implies_no_violation
  (O : URF_Obstruction)
  (h : ObstructionActive O)
  (x : O.domain) :
  ¬ ViolatesObstruction O x :=
by
  unfold ViolatesObstruction
  have hx := h x
  exact not_lt_of_ge hx

def NormalizedInvariant (O : URF_Obstruction) (x : O.domain) : ℝ :=
  O.invariant x - O.threshold

theorem normalized_nonneg
  (O : URF_Obstruction)
  (h : ObstructionActive O)
  (x : O.domain) :
  0 ≤ NormalizedInvariant O x :=
by
  unfold NormalizedInvariant
  have hx := h x
  linarith

end URF
