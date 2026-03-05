import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Tactic

namespace URF

structure SpectralSystem where
  space : Type
  inner : space → space → ℝ
  operator : space → space
  gap : ℝ

def SpectralGapCondition (S : SpectralSystem) : Prop :=
  S.gap > 0

def Coercive (S : SpectralSystem) (ψ : S.space) : Prop :=
  S.gap * S.inner ψ ψ ≤ S.inner ψ (S.operator ψ)

theorem gap_positive_implies_nonneg
  (S : SpectralSystem)
  (h : SpectralGapCondition S) :
  0 ≤ S.gap :=
by
  have : 0 < S.gap := h
  linarith

end URF
