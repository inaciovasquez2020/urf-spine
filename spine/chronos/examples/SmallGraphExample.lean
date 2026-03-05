import spine.chronos.ChronosEntropyDepth
import spine.chronos.bridges.CycleOverlapImpliesEntropy
import spine.chronos.tests.EntropyDepthTest

namespace URF

structure SmallGraph where
  n : Nat

def exampleGraph : SmallGraph := { n := 5 }

def exampleEntropy : Nat :=
  exampleGraph.n

#eval exampleEntropy

end URF
