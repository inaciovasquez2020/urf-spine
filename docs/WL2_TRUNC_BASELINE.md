Baseline: Sampled-Pairs Truncated 2-WL (WL2(r,k,s))

Parameters:
- rounds r = 2
- intermediate sample size k = 50
- number of ordered pairs sampled s = 2000
- RNG seed = 0 (fixed)

Method:
Run 2-WL refinement only on the sampled set of ordered pairs P ⊂ V×V,
and aggregate only over k sampled intermediate vertices.

Claim (to falsify):
WL2(r,k,s) distinguishes G1 from G1_prime.

Failure criterion:
Stabilized color multiset over sampled pairs is identical.
