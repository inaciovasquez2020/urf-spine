import spine.chronos.integration.ChronosPipeline
import spine.chronos.verifier.ChronosVerifier
import spine.chronos.certificates.EntropyDepthCertificate

namespace URF

/-- Status snapshot for Chronos pipeline instances. -/
structure ChronosStatus where
  n : Nat
  cor : Nat
  verified : Bool

def statusOf (C : ChronosInstance) : ChronosStatus :=
  { n := C.n, cor := C.cor, verified := verifyChronos C }

def exampleStatus : ChronosStatus :=
  statusOf exampleInstance

#eval exampleStatus

end URF
