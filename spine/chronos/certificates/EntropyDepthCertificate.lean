import spine.chronos.integration.ChronosPipeline
import spine.chronos.verifier.ChronosVerifier

namespace URF

/-- Certificate object asserting entropy-depth bound for a Chronos instance. -/
structure EntropyDepthCertificate where
  inst : ChronosInstance
  verified : Bool

/-- Produce a certificate from an instance using the verifier. -/
def certify (C : ChronosInstance) : EntropyDepthCertificate :=
{ inst := C, verified := verifyChronos C }

/-- Example certificate generation. -/
def exampleCert : EntropyDepthCertificate :=
  certify exampleInstance

#eval exampleCert.verified

end URF
