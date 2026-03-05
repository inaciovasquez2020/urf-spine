-- spine/entropydepth/EntropyDepthLowerBound.lean
import URF.spine.refinement.EntropyDepth
import Mathlib.Data.Real.Basic

namespace URF

/-- Lower bound witness for entropy depth. -/
def EntropyDepthWitness
  (P : RefinementProcess)
  (initial final : P.configuration) : ℝ :=
  P.entropy initial - P.entropy final

/-- Abstract lower-bound property. -/
def EntropyDepthLowerBound
  (P : RefinementProcess)
  (L : ℝ) : Prop :=
  ∀ initial final,
    EntropyDepthWitness P initial final ≥ L

end URF
