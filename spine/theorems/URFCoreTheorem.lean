import URF.spine.integration.URFIntegration
import Mathlib.Data.Real.Basic
import Mathlib.Tactic

namespace URF

/-- Core URF principle: if a system satisfies the structural axioms
    (capacity bound, entropy-decreasing refinement, locality stabilization,
    spectral positivity, and obstruction invariants), then the entropy
    depth of any one-step refinement is nonnegative. -/
theorem URF_core_entropy_depth
  (U : URFSystem)
  (h : ValidURFSystem U)
  (initial final : U.process.configuration)
  (hstep : final = initial ∨ final = U.process.step initial) :
  0 ≤ URFEntropyDepth U initial final :=
by
  exact urf_entropy_depth_nonneg U h initial final hstep

/-- Spectral positivity persists inside any valid URF system. -/
theorem URF_spectral_gap_positive
  (U : URFSystem)
  (h : ValidURFSystem U) :
  0 < U.spectral.gap :=
by
  exact spectral_gap_positive U h

/-- Obstruction invariants normalize to nonnegative quantities
    in valid URF systems. -/
theorem URF_obstruction_normalized_nonneg
  (U : URFSystem)
  (h : ValidURFSystem U)
  (x : U.obstruction.domain) :
  0 ≤ U.obstruction.invariant x - U.obstruction.threshold :=
by
  rcases h with ⟨_, _, _, _, hobs⟩
  have hx := hobs x
  linarith

end URF
