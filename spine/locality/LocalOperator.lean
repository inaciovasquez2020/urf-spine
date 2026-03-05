import Mathlib.Data.Nat.Basic

namespace URF

structure LocalOperator where
  domain : Type
  apply : domain → domain
  radius : ℕ

def Idempotent (op : LocalOperator) : Prop :=
  ∀ x : op.domain, op.apply (op.apply x) = op.apply x

def LocalFixedPoint (op : LocalOperator) (x : op.domain) : Prop :=
  op.apply x = x

theorem idempotent_stabilizes
  (op : LocalOperator)
  (h : Idempotent op)
  (x : op.domain) :
  LocalFixedPoint op (op.apply x) :=
by
  unfold LocalFixedPoint
  exact h x

def Iter (op : LocalOperator) : ℕ → op.domain → op.domain
| 0, x => x
| Nat.succ n, x => op.apply (Iter op n x)

theorem iter_stable_after_one
  (op : LocalOperator)
  (h : Idempotent op)
  (x : op.domain) :
  Iter op 2 x = Iter op 1 x :=
by
  unfold Iter
  simp [Idempotent, h]

end URF
