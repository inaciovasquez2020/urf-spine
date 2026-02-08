namespace URFSpine

def toolchainHash : String := "leanprover/lean4:v4.27.0"

theorem toolchainHash_eq : toolchainHash = "leanprover/lean4:v4.27.0" := rfl

structure ReproWitness where
  toolchain : String
  depsRoot  : String

def ciWitness : ReproWitness :=
  { toolchain := toolchainHash, depsRoot := "MATHLIB_REV=a3a10db0e9d66acbebf76c5e6a135066525ac900" }

theorem ciWitness_toolchain : ciWitness.toolchain = toolchainHash := rfl

end URFSpine
