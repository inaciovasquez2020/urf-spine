namespace URFSpine

open List

structure Artifact where
  path  : String
  sha256 : String
deriving DecidableEq, Repr

structure Cert where
  artifacts : List Artifact
  spineVersion : String
  hasModule : Bool
deriving Repr

def key (a : Artifact) : String := a.path
def snfArtifacts (xs : List Artifact) : List Artifact := xs.mergeSort (fun a b => key a ≤ key b)
def snf (c : Cert) : Cert := { c with artifacts := snfArtifacts c.artifacts }

/-- A migration is schema-preserving iff it does not touch evidence.artifacts. -/
def schemaPreserving (mig : Cert → Cert) : Prop :=
  ∀ c : Cert, (mig c).artifacts = c.artifacts

theorem snf_invariant_under_schemaPreserving
  (mig : Cert → Cert) (h : schemaPreserving mig) :
  ∀ c : Cert, snf (mig c) = snf c := by
  intro c
  simp [snf, h c]

end URFSpine
