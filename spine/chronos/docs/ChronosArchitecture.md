# Chronos Spine Architecture

## Modules

rigidity/
- CycleOverlapRigidity
- BoundedSupportRankSignature

chronos/
- ChronosEntropyDepth
- bridges/CycleOverlapImpliesEntropy
- theorems/ChronosMainTheorem
- integration/ChronosPipeline
- verifier/ChronosVerifier
- certificates/EntropyDepthCertificate
- cli/ChronosCLI
- export/ChronosJSONExport

## Logical Pipeline

CycleOverlapRigidity
→ BoundedSupportRankSignature
→ CycleOverlapImpliesEntropy
→ EntropyDepth
→ ChronosMainTheorem

## Operational Layers

Pipeline
Verifier
Certificates
CLI
Export
