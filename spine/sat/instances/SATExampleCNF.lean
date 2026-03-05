import spine.sat.SATIncidenceGraph

namespace URF

/-- Tiny CNF example hook for incidence graph testing. -/
inductive VarEx | x | y | z
inductive ClEx | c1 | c2

def occursEx : VarEx → ClEx → Prop
| .x, .c1 => True
| .y, .c1 => True
| .y, .c2 => True
| .z, .c2 => True
| _, _ => False

def Fex : CNF :=
{ Var := VarEx, Clause := ClEx, occurs := occursEx }

def Gex : IncidenceGraph := CNF.toIncidence Fex

end URF
