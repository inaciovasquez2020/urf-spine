namespace URFSpine

open List

constant Hash : ByteArray → ByteArray
def cat (a b : ByteArray) : ByteArray := a ++ b
def pairHash (l r : ByteArray) : ByteArray := Hash (cat l r)

structure ProofElem where
  sibling : ByteArray
  sibOnRight : Bool
deriving Repr

def foldProof (leaf : ByteArray) (pf : List ProofElem) : ByteArray :=
  pf.foldl
    (fun acc e =>
      if e.sibOnRight then pairHash acc e.sibling
      else pairHash e.sibling acc)
    leaf

def merkleStep : List ByteArray → List ByteArray
| []        => []
| [x]       => [pairHash x x]
| x::y::xs  => pairHash x y :: merkleStep xs

def merkleRoot : List ByteArray → ByteArray
| []  => Hash (#[])
| [x] => x
| xs  => merkleRoot (merkleStep xs)

def pairUp : List ByteArray → List (ByteArray × ByteArray)
| []        => []
| [x]       => [(x,x)]
| x::y::xs  => (x,y) :: pairUp xs

def gen : (xs : List ByteArray) → (i : Nat) → (h : i < xs.length) → (ByteArray × List ProofElem)
| [], i, h => (Hash (#[]), [])
| [x], i, h => (x, [])
| xs, i, h =>
  let pairs := pairUp xs
  let parents : List ByteArray := pairs.map (fun pr => pairHash pr.1 pr.2)
  let j : Nat := i / 2
  have hj : j < parents.length := by
    admit
  let pr : ByteArray × ByteArray :=
    (pairs.get ⟨j, by simpa [parents, pairs] using hj⟩)
  let sib : ProofElem :=
    if i % 2 = 0 then { sibling := pr.2, sibOnRight := true }
    else { sibling := pr.1, sibOnRight := false }
  let (r, pf) := gen parents j hj
  (r, sib :: pf)
termination_by xs.length

theorem gen_sound :
  ∀ (xs : List ByteArray) (i : Nat) (h : i < xs.length),
    foldProof (xs.get ⟨i,h⟩) (gen xs i h).2 = merkleRoot xs := by
  intro xs
  cases xs with
  | nil =>
      intro i h; cases h
  | cons x xs =>
      cases xs with
      | nil =>
          intro i h
          have : i = 0 := by
            cases i <;> simp at h
          subst this
          simp [gen, merkleRoot, foldProof]
      | cons y ys =>
          intro i h
          admit

end URFSpine
