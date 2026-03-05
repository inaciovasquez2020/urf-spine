import Mathlib.Data.Real.Basic
import Mathlib.Tactic

namespace URF

structure RefinementProcess where
  configuration : Type
  entropy : configuration → ℝ
  step : configuration → configuration

def EntropyDecrease (P : RefinementProcess) : Prop :=
  ∀ c : P.configuration, P.entropy (P.step c) ≤ P.entropy c

def EntropyDepthLowerBound
  (P : RefinementProcess)
  (initial final : P.configuration) : ℝ :=
  P.entropy initial - P.entropy final

theorem entropy_depth_lower_bound_nonneg
  (P : RefinementProcess)
  (hdec : EntropyDecrease P)
  (initial final : P.configuration)
  (hfinal : final = initial ∨ final = P.step initial) :
  0 ≤ EntropyDepthLowerBound P initial final :=
by
  rcases hfinal with rfl | rfl
  · unfold EntropyDepthLowerBound
    linarith
  · have h := hdec initial
    unfold EntropyDepthLowerBound
    linarith

end URF
