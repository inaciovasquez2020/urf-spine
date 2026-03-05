import spine.chronos.links.ArtifactSchema
import spine.chronos.integration.ChronosPipeline

namespace URF

/-- Convert an experiment artifact into a Chronos pipeline instance. -/
def artifactToInstance (A : ChronosArtifact) : ChronosInstance :=
{ n := A.n
, cor := A.corProxy }

/-- Example artifact (placeholder for JSON import later). -/
def exampleArtifact : ChronosArtifact :=
{ graphName := "torus"
, n := 100
, R := 2
, corProxy := 4
, typeProxy := 1 }

/-- Example conversion. -/
def exampleInstanceFromArtifact : ChronosInstance :=
  artifactToInstance exampleArtifact

#eval exampleInstanceFromArtifact.n
#eval exampleInstanceFromArtifact.cor

end URF
