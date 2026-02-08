import Mathlib.Data.List.Sort
import Mathlib.Data.List.Basic
import URFSpine.Core.Artifact

namespace URFSpine

def key (a : Artifact) : String := a.path

def leA (a b : Artifact) : Bool := key a ≤ key b

def SNF (xs : List Artifact) : List Artifact := xs.mergeSort leA

theorem SNF_perm (xs : List Artifact) :
  (SNF xs).Perm xs := by
  simpa [SNF] using (List.mergeSort_perm xs leA)

end URFSpine
