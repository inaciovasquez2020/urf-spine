import Lake
open Lake DSL

package urf_core

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git"

@[default_target]
lean_lib UrfCore
