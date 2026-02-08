namespace URFSpine

open List

/-- Abstract hash; we reason extensionally. -/
constant Hash : ByteArray → ByteArray
def cat (a b : ByteArray) : ByteArray := a ++ b

/-- Pair hash. -/
def pairHash (l r : ByteArray) : ByteArray := Hash (cat l r)

/-- One Merkle level (duplicate last if odd). -/
def merkleStep : List ByteArray → List ByteArray
| []        => []
| [x]       => [pairHash x x]
| x::y::xs  => pairHash x y :: merkleStep xs

/-- Root by iterating steps. -/
def merkleRoot : List ByteArray → ByteArray
| []  => Hash (#[])
| [x] => x
| xs  => merkleRoot (merkleStep xs)

/-- Proof element: sibling + direction (true = sibling on right). -/
structure ProofElem where
  sibling : ByteArray
  sibOnRight : Bool
deriving Repr

/-- Verify by folding the proof. -/
def foldProof (leaf : ByteArray) (pf : List ProofElem) : ByteArray :=
  pf.foldl
    (fun acc e =>
      if e.sibOnRight then pairHash acc e.sibling
      else pairHash e.sibling acc)
    leaf

/-- Extract i-th element (totalized). -/
def getD (xs : List α) (i : Nat) (d : α) : α :=
  (xs.get? i).getD d

/-- Build next layer with a distinguished index i; returns (nextLayer, nextIndex, proofElem?). -/
def stepWithProof (xs : List ByteArray) (i : Nat) : (List ByteArray × Nat × Option ProofElem) :=
  let default : ByteArray := Hash (#[])
  let rec go : List ByteArray → Nat → Nat → (List ByteArray × Nat × Option ProofElem)
  | [],      _, _ => ([], 0, none)
  | [x],     k, j =>
      -- only element: sibling is itself
      let pe : ProofElem := { sibling := x, sibOnRight := true }
      ([pairHash x x], 0, if j = 0 then some pe else none)
  | x::y::zs, k, j =>
      let h := pairHash x y
      let (rest, nk, pe) := go zs (k+1) j
      -- if j==0 or j==1 at this pair, emit sibling
      let pe' :=
        if j = 0 then some { sibling := y, sibOnRight := true }
        else if j = 1 then some { sibling := x, sibOnRight := false }
        else none
      (h :: rest, k, (pe'.orElse pe))
  -- j is the local index inside xs; nextIndex is j/2
  let j := i
  let (ys, _, pe) := go xs 0 j
  (ys, i / 2, pe)

/-- Generate proof by iterating stepWithProof until singleton. -/
def genProof : List ByteArray → Nat → List ProofElem
| [], _ => []
| [x], _ => []
| xs, i =>
  let (ys, j, pe) := stepWithProof xs i
  match pe with
  | none   => genProof ys j
  | some e => e :: genProof ys j

/-- Generator–verifier soundness (theorem statement).
    Proof requires a strengthening invariant about stepWithProof; left as the single missing lemma. -/
theorem genProof_sound :
  ∀ (xs : List ByteArray) (i : Nat),
    i < xs.length →
    foldProof (xs.get ⟨i, by simpa using ‹i < xs.length›⟩) (genProof xs i) = merkleRoot xs :=
by
  intro xs i hi
  -- Missing lemma: local step soundness + induction across layers.
  admit

end URFSpine
