import spine.chronos.integration.ChronosPipeline
import spine.chronos.verifier.ChronosVerifier
import spine.chronos.metrics.ChronosMetrics

namespace URF

/-- CI smoke test instance. -/
def ciInstance : ChronosInstance := { n := 12, cor := 2 }

/-- CI check: verifier must succeed and metrics consistent. -/
def ciCheck : Bool :=
  verifyChronos ciInstance &&
  ((metricsOf ciInstance).entropyDepth ≥ (metricsOf ciInstance).entropy)

#eval ciCheck

end URF
