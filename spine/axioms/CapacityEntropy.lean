import Mathlib.Data.Real.Basic

namespace URF

structure System where
  state : Type
  entropy : state → ℝ
  capacity : ℝ

axiom capacity_entropy_axiom
  (S : System) :
  ∀ x : S.state, S.entropy x ≤ S.capacity

theorem entropy_bounded_by_capacity
  (S : System) (x : S.state) :
  S.entropy x ≤ S.capacity :=
by
  exact capacity_entropy_axiom S x

def feasibility (S : System) (x : S.state) : ℝ :=
  S.entropy x - S.capacity

theorem feasibility_nonpositive
  (S : System) (x : S.state) :
  feasibility S x ≤ 0 :=
by
  have h := capacity_entropy_axiom S x
  unfold feasibility
  linarith

end URF
