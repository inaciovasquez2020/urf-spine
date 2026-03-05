import spine.chronos.certificates.EntropyDepthCertificate
import spine.chronos.integration.ChronosPipeline

namespace URF

/-- Simple JSON-like export structure for Chronos certificates. -/
structure ChronosJSON where
  n : Nat
  cor : Nat
  verified : Bool

/-- Convert certificate to export format. -/
def exportJSON (C : ChronosInstance) : ChronosJSON :=
  let cert := certify C
  { n := C.n, cor := C.cor, verified := cert.verified }

/-- Example export. -/
def exampleExport : ChronosJSON :=
  exportJSON exampleInstance

#eval exampleExport

end URF
