import spine.chronos.integration.ChronosPipeline
import spine.chronos.certificates.EntropyDepthCertificate

namespace URF

/-- CLI-style runner producing a certificate from parameters. -/
def runChronos (n cor : Nat) : Bool :=
  let inst : ChronosInstance := { n := n, cor := cor }
  (certify inst).verified

/-- Example CLI evaluations. -/
#eval runChronos 10 1
#eval runChronos 20 2

end URF
