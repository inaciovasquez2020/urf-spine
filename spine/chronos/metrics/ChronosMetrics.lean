import spine.chronos.integration.ChronosPipeline
import spine.chronos.verifier.ChronosVerifier

namespace URF

structure ChronosMetrics where
  n : Nat
  cor : Nat
  entropy : Nat
  entropyDepth : Nat

def metricsOf (C : ChronosInstance) : ChronosMetrics :=
  { n := C.n
  , cor := C.cor
  , entropy := entropyOf C
  , entropyDepth := entropyDepthOf C }

def exampleMetrics : ChronosMetrics :=
  metricsOf exampleInstance

#eval exampleMetrics

end URF
