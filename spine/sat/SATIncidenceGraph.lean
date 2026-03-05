-- spine/sat/SATIncidenceGraph.lean
import Mathlib.Data.Finset.Basic

namespace URF

/-- Variables and clauses in a CNF formula. -/
structure CNF where
  Var : Type
  Clause : Type
  occurs : Var → Clause → Prop

/-- Incidence graph representation. -/
structure IncidenceGraph where
  Var : Type
  Clause : Type
  edge : Var → Clause → Prop

/-- Convert CNF to incidence graph. -/
def CNF.toIncidence (F : CNF) : IncidenceGraph :=
{ Var := F.Var,
  Clause := F.Clause,
  edge := F.occurs }

end URF
