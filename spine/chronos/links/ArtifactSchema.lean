import Mathlib.Data.String.Basic
import Mathlib.Data.Nat.Basic

namespace URF

/-- Minimal schema for importing experiment artifacts from chronos-urf-rr. -/
structure ChronosArtifact where
  graphName : String
  n : Nat
  R : Nat
  corProxy : Nat
  typeProxy : Nat

end URF
