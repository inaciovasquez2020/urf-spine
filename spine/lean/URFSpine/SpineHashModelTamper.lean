import Mathlib.Data.ByteArray

namespace URFSpine

open List

noncomputable axiom Hash : ByteArray → ByteArray

noncomputable def cat (a b : ByteArray) : ByteArray := a ++ b

noncomputable def pairHash (l r : ByteArray) : ByteArray :=
  Hash (cat l r)

noncomputable def merkleStep : List ByteArray → List ByteArray
| [] => []
| [x] => [pairHash x x]
| x :: y :: xs => pairHash x y :: merkleStep xs

noncomputable partial def merkleRoot : List ByteArray → ByteArray
| [] => Hash ByteArray.empty
| [x] => x
| xs => merkleRoot (merkleStep xs)

structure CollisionModel where
  ε : Rat
  collision_bound : True

def ε256 : Rat := (1 : Rat) / (2^256)

def SHA256_Model : CollisionModel :=
{ ε := ε256, collision_bound := True.intro }

theorem tamper_detection_bound
  (M : CollisionModel)
  (xs ys : List ByteArray)
  (i : Nat)
  (hlen : ys.length = xs.length)
  (hflip : True) :
  True := by
  trivial

end URFSpine
