namespace URFSpine

set_option autoImplicit false

structure Artifact where
  key1 : Nat
  key2 : Nat
deriving DecidableEq, Repr

def artifactCmp (a b : Artifact) : Bool :=
  if a.key1 == b.key1 then
    a.key2 ≤ b.key2
  else
    a.key1 ≤ b.key1

end URFSpine
