import spine.chronos.integration.ChronosPipeline
import spine.chronos.metrics.ChronosMetrics
import spine.chronos.report.ChronosReport
import spine.chronos.spec.ChronosSpecification

namespace URF

/-- Dashboard summary object for Chronos system state. -/
structure ChronosDashboard where
  n : Nat
  cor : Nat
  entropy : Nat
  entropyDepth : Nat
  verified : Bool

def dashboardOf (C : ChronosInstance) (S : ChronosSpec) : ChronosDashboard :=
  let m := metricsOf C
  { n := C.n
  , cor := C.cor
  , entropy := m.entropy
  , entropyDepth := m.entropyDepth
  , verified := entropyDepthOf C ≥ S.entropyBound }

def exampleDashboard : ChronosDashboard :=
  let inst : ChronosInstance := { n := exampleSpec.n, cor := exampleSpec.cor }
  dashboardOf inst exampleSpec

#eval exampleDashboard

end URF
