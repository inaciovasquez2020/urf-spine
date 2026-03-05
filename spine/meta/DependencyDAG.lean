-- spine/meta/DependencyDAG.lean
namespace URF

/-- URF module dependency enumeration. -/
inductive URFModule
| axioms
| refinement
| locality
| spectral
| obstruction
| integration
| theorems
| chronos
| rigidity
| sat
| entropydepth
| meta

/-- Dependency relation. -/
def DependsOn : URFModule → URFModule → Prop
| .refinement, .axioms => True
| .locality, .axioms => True
| .spectral, .axioms => True
| .obstruction, .axioms => True
| .integration, .refinement => True
| .integration, .locality => True
| .integration, .spectral => True
| .integration, .obstruction => True
| .chronos, .integration => True
| .entropydepth, .refinement => True
| .rigidity, .meta => True
| .sat, .meta => True
| _, _ => False

end URF
