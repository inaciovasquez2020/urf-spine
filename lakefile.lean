import Lake
open Lake DSL

package urf_spine where
  leanOptions := #[⟨`pp.unicode.fun, true⟩]

require mathlib from
  git "https://github.com/leanprover-community/mathlib4"
  @ "a3a10db0e9d66acbebf76c5e6a135066525ac900"

@[default_target]
lean_lib URFSpine where
  srcDir := "spine/lean"
