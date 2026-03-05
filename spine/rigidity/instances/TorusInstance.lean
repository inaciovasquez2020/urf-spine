import Mathlib.Combinatorics.SimpleGraph.Basic
import Mathlib.Data.Finset.Basic

namespace URF

/-- Placeholder torus instance hook (to be connected to external experiments). -/
structure Torus where
  n : Nat

def Torus.V (T : Torus) : Type := Fin (T.n * T.n)

def Torus.G (T : Torus) : SimpleGraph (T.V) := ⊥

end URF
