import spine.chronos.ChronosEntropyDepth
import spine.chronos.bridges.CycleOverlapImpliesEntropy
import spine.rigidity.CycleOverlapRigidity

namespace URF

/-- Minimal experiment structure linking cycle-overlap rank to entropy proxy. -/
structure ExperimentGraph where
  n : Nat
  cor : Nat

def entropyProxy (G : ExperimentGraph) : Nat :=
  G.cor

def example1 : ExperimentGraph := { n := 10, cor := 1 }
def example2 : ExperimentGraph := { n := 20, cor := 2 }

#eval entropyProxy example1
#eval entropyProxy example2

end URF
