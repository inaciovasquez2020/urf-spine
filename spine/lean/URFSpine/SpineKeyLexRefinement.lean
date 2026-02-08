import Mathlib.Data.String.Basic
import URFSpine.SpineSNFCanonicalRep

namespace URFSpine

def key1 (a : Artifact) : String := a.path
def key2 (a : Artifact) : (String × String) := (a.path, "")

def le1 (a b : Artifact) : Bool := decide (key1 a ≤ key1 b)
def le2 (a b : Artifact) : Bool := decide (key2 a ≤ key2 b)

def SNF1 (xs : List Artifact) : List Artifact := xs.mergeSort le1
def SNF2 (xs : List Artifact) : List Artifact := xs.mergeSort le2

-- no `LT (String × String)` needed; only `≤` on Prod, which exists
theorem le2_of_le1 : ∀ a b, key1 a ≤ key1 b → key2 a ≤ key2 b := by
  intro a b h
  simpa [key1, key2] using And.intro h (le_rfl : ("" : String) ≤ "")

end URFSpine
