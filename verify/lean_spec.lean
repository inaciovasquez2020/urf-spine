structure Invariants where
  locality_radius : Nat
  degree_bound : Nat
  entropy_depth : Nat
  cycle_rank : Nat
  spectral_gap : Float

theorem entropy_nonneg (x : Invariants) : x.entropy_depth ≥ 0 := by
  exact Nat.zero_le _
