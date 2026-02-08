namespace URFSpine

open Nat

/-- ⌈n/2⌉ in Nat. -/
def ceilHalf (n : Nat) : Nat := (n + 1) / 2

/-- Parent-layer index bound needed for Merkle proof recursion. -/
axiom div2_lt_ceilHalf {i n : Nat} : i < n → i / 2 < ceilHalf n

end URFSpine
