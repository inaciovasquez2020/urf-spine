import URFSpine.SpineSNFCanonicalRep
import URFSpine.SpineHashModelTamper
import URFSpine.SpineKeyRefinementStability

namespace URFSpine

abbrev Canon := Quot (fun xs ys : List Artifact => xs.Perm ys)

def canonOf (xs : List Artifact) : Canon := Quot.mk _ xs

def SNF_canon : Canon → List Artifact :=
  Quot.lift (fun xs => SNF xs)
    (by
      intro xs ys hperm
      exact SNF_eq_of_perm (xs := xs) (ys := ys) hperm)

def artifactHash (_a : Artifact) : Bytes := #[]

def SpineHash (xs : List Artifact) : Bytes :=
  xs.foldl (fun acc a => merkleStep acc (artifactHash a)) #[]

theorem SpineHash_congr {xs ys : List Artifact} (h : xs = ys) :
  SpineHash xs = SpineHash ys := by
  simpa [h]

theorem SpineHash_SNF_invariant {xs ys : List Artifact} (hperm : xs.Perm ys) :
  SpineHash (SNF xs) = SpineHash (SNF ys) := by
  have h : SNF xs = SNF ys := SNF_eq_of_perm (xs := xs) (ys := ys) hperm
  simpa [h]

def SpineHash_canon (c : Canon) : Bytes :=
  SpineHash (SNF_canon c)

theorem SpineHash_canon_well_defined {xs ys : List Artifact} (hperm : xs.Perm ys) :
  SpineHash_canon (canonOf xs) = SpineHash_canon (canonOf ys) := by
  simpa [SpineHash_canon, canonOf, SNF_canon] using (SpineHash_SNF_invariant (xs := xs) (ys := ys) hperm)

end URFSpine
