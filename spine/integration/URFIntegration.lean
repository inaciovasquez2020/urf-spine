import URF.spine.axioms.CapacityEntropy
import URF.spine.refinement.EntropyDepth
import URF.spine.locality.LocalOperator
import URF.spine.spectral.SpectralGap
import URF.spine.obstruction.URFObstruction

namespace URF

structure URFSystem where
  system : System
  process : RefinementProcess
  operator : LocalOperator
  spectral : SpectralSystem
  obstruction : URF_Obstruction

def ValidURFSystem (U : URFSystem) : Prop :=
  (∀ x : U.system.state, U.system.entropy x ≤ U.system.capacity) ∧
  (∀ c : U.process.configuration,
    U.process.entropy (U.process.step c) ≤ U.process.entropy c) ∧
  (∀ x : U.operator.domain,
    U.operator.apply (U.operator.apply x) = U.operator.apply x) ∧
  (U.spectral.gap > 0) ∧
  (∀ x : U.obstruction.domain,
    U.obstruction.threshold ≤ U.obstruction.invariant x)

def URFFeasibility (U : URFSystem) (x : U.system.state) : ℝ :=
  U.system.entropy x - U.system.capacity

def URFEntropyDepth
  (U : URFSystem)
  (initial final : U.process.configuration) : ℝ :=
  U.process.entropy initial - U.process.entropy final

theorem urf_entropy_depth_nonneg
  (U : URFSystem)
  (h : ValidURFSystem U)
  (initial final : U.process.configuration)
  (hstep : final = initial ∨ final = U.process.step initial) :
  0 ≤ URFEntropyDepth U initial final :=
by
  rcases h with ⟨hcap, hdec, hidem, hgap, hobs⟩
  rcases hstep with rfl | rfl
  · unfold URFEntropyDepth
    linarith
  · have h' := hdec initial
    unfold URFEntropyDepth
    linarith

theorem spectral_gap_positive
  (U : URFSystem)
  (h : ValidURFSystem U) :
  0 < U.spectral.gap :=
by
  rcases h with ⟨_, _, _, hgap, _⟩
  exact hgap

end URF
