import spine.chronos.integration.ChronosPipeline
import spine.chronos.verifier.ChronosVerifier
import spine.chronos.certificates.EntropyDepthCertificate

namespace URF

/-- Benchmark instance set for Chronos pipeline tests. -/
def bench1 : ChronosInstance := { n := 8, cor := 1 }
def bench2 : ChronosInstance := { n := 16, cor := 2 }
def bench3 : ChronosInstance := { n := 32, cor := 4 }

/-- Run verifier on benchmark set. -/
def runBenchmarks : List Bool :=
  [ verifyChronos bench1,
    verifyChronos bench2,
    verifyChronos bench3 ]

#eval runBenchmarks

end URF
