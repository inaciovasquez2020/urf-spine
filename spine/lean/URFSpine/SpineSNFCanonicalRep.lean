import Mathlib.Data.List.Sort

namespace URFSpine

set_option autoImplicit false

def SNF {α : Type} (cmp : α → α → Bool) (xs : List α) : List α :=
  xs.mergeSort cmp

end URFSpine
