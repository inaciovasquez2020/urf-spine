Definitions

UMO Instance.
A tuple I = (X, P, C, B, E) where:
- X is a finite object (graph, SAT instance, operator discretization, etc.)
- P is a target URF property statement about X
- C is a URF certificate that verifies P on X
- B is a baseline claim schema (WL/SDP/ML/heuristic) that is asserted to succeed on X
- E is falsification evidence showing B fails on X under a pinned, reproducible evaluation

URF-minimal obstruction.
I is URF-minimal (w.r.t. a size measure |X| and fixed (P,B)) if:
1) I is a valid UMO Instance
2) For all X' with |X'| < |X|, there is no valid UMO Instance (X', P, C', B, E')

Size measures.
Graphs: |X| = number of vertices n (tie-breaker: edges m).
SAT: |X| = number of variables n (tie-breaker: clauses m).
Operators: |X| = discretization dimension N (tie-breaker: bandwidth / sparsity).

Certificate contract.
C must be machine-verifiable and include:
- object hash (content-addressed)
- toolchain pins
- verifier version and deterministic replay instructions
