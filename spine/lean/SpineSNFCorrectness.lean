namespace URFSpine

open List

structure Artifact where
  path  : String
  sha256 : String
deriving DecidableEq, Repr

structure Cert where
  artifacts : List Artifact
  merkle_root : String
  cert_sha256 : String
deriving Repr

def key (a : Artifact) : String := a.path

def snfArtifacts (xs : List Artifact) : List Artifact :=
  xs.mergeSort (fun a b => key a ≤ key b)

def snf (c : Cert) : Cert :=
  { c with artifacts := snfArtifacts c.artifacts }

def canon (c : Cert) : Cert := snf c

theorem snfArtifacts_idem (xs : List Artifact) :
  snfArtifacts (snfArtifacts xs) = snfArtifacts xs := by
  simpa [snfArtifacts]

theorem snf_idem (c : Cert) : snf (snf c) = snf c := by
  cases c with
  | mk arts mr ch =>
    simp [snf, snfArtifacts_idem]

theorem canon_snf_comm (c : Cert) :
  canon (snf c) = snf (canon c) := by
  simp [canon, snf, snf_idem]

theorem canon_snf_absorb_left (c : Cert) :
  canon (snf c) = snf c := by
  simp [canon, snf_idem]

theorem canon_snf_absorb_right (c : Cert) :
  snf (canon c) = snf c := by
  simp [canon, snf_idem]

end URFSpine
