import Mathlib.Combinatorics.SimpleGraph.Basic
import Mathlib.Data.Finset.Basic

namespace URF

/-- Deterministic hook for an n-lift instance (actual lift data comes from external experiments). -/
structure Lift where
  baseVertices : Nat
  n : Nat

def Lift.V (L : Lift) : Type := Fin (L.baseVertices * L.n)

/-- Placeholder graph; to be replaced by an imported adjacency list from artifacts. -/
def Lift.G (L : Lift) : SimpleGraph (L.V) := ⊥

end URF
