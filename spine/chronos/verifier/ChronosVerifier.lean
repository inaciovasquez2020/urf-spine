import spine.chronos.integration.ChronosPipeline
import spine.chronos.theorems.ChronosMainTheorem

namespace URF

/-- Simple verifier wrapper for Chronos pipeline instances. -/
def verifyChronos (C : ChronosInstance) : Bool :=
  if entropyDepthOf C ≥ entropyOf C then true else false

/-- Example verification run. -/
def exampleCheck : Bool :=
  verifyChronos exampleInstance

#eval exampleCheck

end URF
