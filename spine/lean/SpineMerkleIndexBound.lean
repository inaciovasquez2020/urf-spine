namespace URFSpine

open Nat

/-- ⌈n/2⌉ in Nat. -/
def ceilHalf (n : Nat) : Nat := (n + 1) / 2

/-- Constructive parent-layer bound: if i < n then i/2 < ⌈n/2⌉. -/
theorem div2_lt_ceilHalf {i n : Nat} (hi : i < n) :
  i / 2 < ceilHalf n := by
  have hi' : i < n + 1 := lt_trans hi (Nat.lt_succ_self n)
  -- monotonicity of Nat.div
  simpa [ceilHalf] using (Nat.div_lt_div_right (show 0 < 2 by decide) hi')

end URFSpine
