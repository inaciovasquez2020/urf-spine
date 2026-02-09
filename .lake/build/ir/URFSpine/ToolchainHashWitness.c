// Lean compiler output
// Module: URFSpine.ToolchainHashWitness
// Imports: public import Init
#include <lean/lean.h>
#if defined(__clang__)
#pragma clang diagnostic ignored "-Wunused-parameter"
#pragma clang diagnostic ignored "-Wunused-label"
#elif defined(__GNUC__) && !defined(__CLANG__)
#pragma GCC diagnostic ignored "-Wunused-parameter"
#pragma GCC diagnostic ignored "-Wunused-label"
#pragma GCC diagnostic ignored "-Wunused-but-set-variable"
#endif
#ifdef __cplusplus
extern "C" {
#endif
static lean_object* lp_urf__spine_URFSpine_ciWitness___closed__0;
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_toolchainHash;
static lean_object* lp_urf__spine_URFSpine_toolchainHash___closed__0;
static lean_object* lp_urf__spine_URFSpine_ciWitness___closed__1;
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_ciWitness;
static lean_object* _init_lp_urf__spine_URFSpine_toolchainHash___closed__0() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("leanprover/lean4:v4.27.0", 24, 24);
return x_1;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_toolchainHash() {
_start:
{
lean_object* x_1; 
x_1 = lp_urf__spine_URFSpine_toolchainHash___closed__0;
return x_1;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_ciWitness___closed__0() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("MATHLIB_REV=a3a10db0e9d66acbebf76c5e6a135066525ac900", 52, 52);
return x_1;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_ciWitness___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_urf__spine_URFSpine_ciWitness___closed__0;
x_2 = lp_urf__spine_URFSpine_toolchainHash___closed__0;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_ciWitness() {
_start:
{
lean_object* x_1; 
x_1 = lp_urf__spine_URFSpine_ciWitness___closed__1;
return x_1;
}
}
lean_object* initialize_Init(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_urf__spine_URFSpine_ToolchainHashWitness(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
lp_urf__spine_URFSpine_toolchainHash___closed__0 = _init_lp_urf__spine_URFSpine_toolchainHash___closed__0();
lean_mark_persistent(lp_urf__spine_URFSpine_toolchainHash___closed__0);
lp_urf__spine_URFSpine_toolchainHash = _init_lp_urf__spine_URFSpine_toolchainHash();
lean_mark_persistent(lp_urf__spine_URFSpine_toolchainHash);
lp_urf__spine_URFSpine_ciWitness___closed__0 = _init_lp_urf__spine_URFSpine_ciWitness___closed__0();
lean_mark_persistent(lp_urf__spine_URFSpine_ciWitness___closed__0);
lp_urf__spine_URFSpine_ciWitness___closed__1 = _init_lp_urf__spine_URFSpine_ciWitness___closed__1();
lean_mark_persistent(lp_urf__spine_URFSpine_ciWitness___closed__1);
lp_urf__spine_URFSpine_ciWitness = _init_lp_urf__spine_URFSpine_ciWitness();
lean_mark_persistent(lp_urf__spine_URFSpine_ciWitness);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
