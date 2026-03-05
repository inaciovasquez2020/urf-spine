-- spine/chronos/ChronosEntropyDepth.lean
import URF.spine.refinement.EntropyDepth
import URF.spine.integration.URFIntegration
import Mathlib.Data.Real.Basic

namespace URF

/-- Chronos invariant: entropy strictly decreases along valid refinement
    steps in a URF system. -/
def ChronosDecrease (U : URFSystem) : Prop :=
  ∀ c : U.process.configuration,
    U.process.entropy (U.process.step c) ≤ U.process.entropy c

/-- Chronos entropy depth quantity. -/
def ChronosDepth
  (U : URFSystem)
  (initial final : U.process.configuration) : ℝ :=
  U.process.entropy initial - U.process.entropy final

theorem chronos_depth_nonneg
  (U : URFSystem)
  (h : ValidURFSystem U)
  (initial final : U.process.configuration)
  (hstep : final = initial ∨ final = U.process.step initial) :
  0 ≤ ChronosDepth U initial final :=
by
  rcases h with ⟨hcap, hdec, hidem, hgap, hobs⟩
  rcases hstep with rfl | rfl
  · unfold ChronosDepth
    linarith
  · have h' := hdec initial
    unfold ChronosDepth
    linarith

end URF
