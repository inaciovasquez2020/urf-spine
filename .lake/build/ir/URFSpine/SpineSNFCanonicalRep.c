// Lean compiler output
// Module: URFSpine.SpineSNFCanonicalRep
// Imports: public import Init public import Mathlib.Data.List.Sort public import Mathlib.Data.List.Basic public import URFSpine.Core.Artifact
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
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_key___boxed(lean_object*);
LEAN_EXPORT uint8_t lp_urf__spine_URFSpine_leA(lean_object*, lean_object*);
uint8_t l_String_decLE(lean_object*, lean_object*);
lean_object* l_List_MergeSort_Internal_mergeSortTR_u2082___redArg(lean_object*, lean_object*);
static lean_object* lp_urf__spine_URFSpine_SNF___closed__0;
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_SNF(lean_object*);
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_key(lean_object*);
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_leA___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_key(lean_object* x_1) {
_start:
{
lean_inc_ref(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_key___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_urf__spine_URFSpine_key(x_1);
lean_dec_ref(x_1);
return x_2;
}
}
LEAN_EXPORT uint8_t lp_urf__spine_URFSpine_leA(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = l_String_decLE(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_leA___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = lp_urf__spine_URFSpine_leA(x_1, x_2);
lean_dec_ref(x_2);
lean_dec_ref(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_SNF___closed__0() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(lp_urf__spine_URFSpine_leA___boxed), 2, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_SNF(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = lp_urf__spine_URFSpine_SNF___closed__0;
x_3 = l_List_MergeSort_Internal_mergeSortTR_u2082___redArg(x_1, x_2);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_List_Sort(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_List_Basic(uint8_t builtin);
lean_object* initialize_urf__spine_URFSpine_Core_Artifact(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_urf__spine_URFSpine_SpineSNFCanonicalRep(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_List_Sort(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_List_Basic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_urf__spine_URFSpine_Core_Artifact(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
lp_urf__spine_URFSpine_SNF___closed__0 = _init_lp_urf__spine_URFSpine_SNF___closed__0();
lean_mark_persistent(lp_urf__spine_URFSpine_SNF___closed__0);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
