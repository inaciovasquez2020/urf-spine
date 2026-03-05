import spine.chronos.integration.ChronosPipeline
import spine.chronos.bridges.CycleOverlapImpliesEntropy
import spine.rigidity.BoundedSupportRankSignature
import spine.rigidity.CycleOverlapRigidity

namespace URF

/-- Main Chronos theorem skeleton: entropy growth yields EntropyDepth growth. -/
theorem ChronosMainTheorem
  (C : ChronosInstance) :
  entropyDepthOf C ≥ entropyOf C := by
  unfold entropyDepthOf entropyOf
  exact Nat.le_mul_of_pos_right (Nat.zero_le _) (Nat.succ_pos _)

end URF
