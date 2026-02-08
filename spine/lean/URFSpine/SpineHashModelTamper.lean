noncomputable section
namespace URFSpine
abbrev Bytes := Array UInt8
def merkleStep (l r : Bytes) : Bytes :=
l ++ r
end URFSpine
