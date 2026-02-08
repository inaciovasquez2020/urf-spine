import URFSpine.Core.Artifact

noncomputable section

namespace URFSpine

structure HashArtifact where
  bytes : Array UInt8

def merkleStep (l r : HashArtifact) : HashArtifact :=
  { bytes := l.bytes ++ r.bytes }

end URFSpine
