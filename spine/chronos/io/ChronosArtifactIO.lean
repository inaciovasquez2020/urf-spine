import spine.chronos.links.ArtifactSchema
import spine.chronos.import.ChronosArtifactImport

namespace URF

/-- Parse placeholder artifact fields (real JSON parser added later). -/
def parseArtifact (name : String) (n R cor types : Nat) : ChronosArtifact :=
{ graphName := name
, n := n
, R := R
, corProxy := cor
, typeProxy := types }

/-- Example simulated import matching chronos-urf-rr outputs. -/
def exampleImported : ChronosArtifact :=
  parseArtifact "torus" 900 2 4 1

def exampleInstance : ChronosInstance :=
  artifactToInstance exampleImported

#eval exampleInstance.n
#eval exampleInstance.cor

end URF
