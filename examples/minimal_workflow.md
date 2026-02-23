# Minimal URF Spine Workflow

1. Import URF Core definitions.
2. Normalize objects via URF Spine comparators.
3. Pass normalized objects to downstream engines (e.g. Chronos).
4. Enforce manifest-first build via CI.

This example demonstrates spine-mediated composition without touching
engine-specific logic.
