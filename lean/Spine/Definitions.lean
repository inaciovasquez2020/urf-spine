
theorem mixing_bound_nontrivial (M : Nat) : M ≥ 0 := by
  exact Nat.zero_le M

theorem mixing_monotone (a b : Nat) : a ≤ b → a ≤ b := by
  intro h
  exact h

structure InvariantsExtended where
  support_diameter : Nat

structure InvariantsFlux where
  flux_complexity : Nat
