import spine.chronos.ChronosEntropyDepth
import spine.chronos.bridges.CycleOverlapImpliesEntropy

namespace URF

structure TestGraph where
n : Nat

def sampleGraph : TestGraph := { n := 10 }

def testEntropy : Nat :=
sampleGraph.n

#eval testEntropy

end URF
