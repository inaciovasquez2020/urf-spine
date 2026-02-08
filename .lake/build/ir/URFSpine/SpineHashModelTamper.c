// Lean compiler output
// Module: URFSpine.SpineHashModelTamper
// Imports: public import Init public import URFSpine.Core.Artifact
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
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_merkleStep(lean_object*, lean_object*);
lean_object* l_Array_append___redArg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_merkleStep___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_merkleStep(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Array_append___redArg(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_merkleStep___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lp_urf__spine_URFSpine_merkleStep(x_1, x_2);
lean_dec_ref(x_2);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_urf__spine_URFSpine_Core_Artifact(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_urf__spine_URFSpine_SpineHashModelTamper(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_urf__spine_URFSpine_Core_Artifact(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
