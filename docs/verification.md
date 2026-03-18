# Verification Instructions

1. Recompute invariants:
   python3 tools/extract_invariants.py > output.json

2. Verify signature:
   python3 tools/verify_signature.py

3. Verify reproducibility:
   python3 tools/verify_reproducibility.py

4. Check hashes:
   cat release_manifest.json

5. Optional:
   Validate CID via IPFS and DOI via Zenodo once available.
