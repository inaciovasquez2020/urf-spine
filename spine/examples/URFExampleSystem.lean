import URF.spine.integration.URFIntegration
import Mathlib.Data.Real.Basic

namespace URF

structure TrivialState where
  val : ℝ

def trivialEntropy (x : TrivialState) : ℝ :=
  x.val

def trivialSystem : System :=
{ state := TrivialState,
  entropy := trivialEntropy,
  capacity := 10 }

structure TrivialConfig where
  e : ℝ

def trivialEntropyCfg (c : TrivialConfig) : ℝ :=
  c.e

def trivialStep (c : TrivialConfig) : TrivialConfig :=
  { e := c.e }

def trivialProcess : RefinementProcess :=
{ configuration := TrivialConfig,
  entropy := trivialEntropyCfg,
  step := trivialStep }

def trivialOperator : LocalOperator :=
{ domain := TrivialConfig,
  apply := trivialStep,
  radius := 1 }

def trivialInner (x y : ℝ) : ℝ :=
  x * y

def trivialOp (x : ℝ) : ℝ :=
  x

def trivialSpectral : SpectralSystem :=
{ space := ℝ,
  inner := trivialInner,
  operator := trivialOp,
  gap := 1 }

def trivialInvariant (x : ℝ) : ℝ :=
  x

def trivialObstruction : URF_Obstruction :=
{ domain := ℝ,
  invariant := trivialInvariant,
  threshold := 0 }

def trivialURFSystem : URFSystem :=
{ system := trivialSystem,
  process := trivialProcess,
  operator := trivialOperator,
  spectral := trivialSpectral,
  obstruction := trivialObstruction }

end URF
