// Lean compiler output
// Module: URFSpine.SpineBase
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
LEAN_EXPORT uint8_t lp_urf__spine_URFSpine_instDecidableEqArtifact_decEq(lean_object*, lean_object*);
static lean_object* lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__8;
static lean_object* lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__12;
static lean_object* lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__5;
static lean_object* lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__2;
LEAN_EXPORT uint8_t lp_urf__spine_URFSpine_instDecidableEqArtifact(lean_object*, lean_object*);
static lean_object* lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__10;
static lean_object* lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__7;
static lean_object* lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__6;
lean_object* lean_string_length(lean_object*);
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_instDecidableEqArtifact___boxed(lean_object*, lean_object*);
lean_object* l_Nat_reprFast(lean_object*);
static lean_object* lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__4;
lean_object* lean_nat_to_int(lean_object*);
static lean_object* lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__0;
static lean_object* lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__11;
static lean_object* lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__9;
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_instReprArtifact;
static lean_object* lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__13;
static lean_object* lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__16;
static lean_object* lp_urf__spine_URFSpine_instReprArtifact___closed__0;
static lean_object* lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__15;
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_instReprArtifact_repr___boxed(lean_object*, lean_object*);
LEAN_EXPORT uint8_t lp_urf__spine_URFSpine_artifactCmp(lean_object*, lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
static lean_object* lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__3;
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_instReprArtifact_repr___redArg(lean_object*);
static lean_object* lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__14;
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_instReprArtifact_repr(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_instDecidableEqArtifact_decEq___boxed(lean_object*, lean_object*);
static lean_object* lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__1;
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_artifactCmp___boxed(lean_object*, lean_object*);
LEAN_EXPORT uint8_t lp_urf__spine_URFSpine_instDecidableEqArtifact_decEq(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_1, 1);
x_5 = lean_ctor_get(x_2, 0);
x_6 = lean_ctor_get(x_2, 1);
x_7 = lean_nat_dec_eq(x_3, x_5);
if (x_7 == 0)
{
return x_7;
}
else
{
uint8_t x_8; 
x_8 = lean_nat_dec_eq(x_4, x_6);
return x_8;
}
}
}
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_instDecidableEqArtifact_decEq___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = lp_urf__spine_URFSpine_instDecidableEqArtifact_decEq(x_1, x_2);
lean_dec_ref(x_2);
lean_dec_ref(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
LEAN_EXPORT uint8_t lp_urf__spine_URFSpine_instDecidableEqArtifact(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; 
x_3 = lp_urf__spine_URFSpine_instDecidableEqArtifact_decEq(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_instDecidableEqArtifact___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = lp_urf__spine_URFSpine_instDecidableEqArtifact(x_1, x_2);
lean_dec_ref(x_2);
lean_dec_ref(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" := ", 4, 4);
return x_1;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__4;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("key1", 4, 4);
return x_1;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__2;
x_2 = lean_box(0);
x_3 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__5;
x_2 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__3;
x_3 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(8u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__8() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(",", 1, 1);
return x_1;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__8;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__10() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("key2", 4, 4);
return x_1;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__10;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__0() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("{ ", 2, 2);
return x_1;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__13() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__0;
x_2 = lean_string_length(x_1);
return x_2;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__14() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__13;
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__15() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__0;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__12() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(" }", 2, 2);
return x_1;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__16() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__12;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_instReprArtifact_repr___redArg(lean_object* x_1) {
_start:
{
uint8_t x_2; 
x_2 = !lean_is_exclusive(x_1);
if (x_2 == 0)
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; uint8_t x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_1, 1);
x_5 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__5;
x_6 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__6;
x_7 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__7;
x_8 = l_Nat_reprFast(x_3);
x_9 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_9, 0, x_8);
lean_ctor_set_tag(x_1, 4);
lean_ctor_set(x_1, 1, x_9);
lean_ctor_set(x_1, 0, x_7);
x_10 = 0;
x_11 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_11, 0, x_1);
lean_ctor_set_uint8(x_11, sizeof(void*)*1, x_10);
x_12 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_12, 0, x_6);
lean_ctor_set(x_12, 1, x_11);
x_13 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__9;
x_14 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_14, 0, x_12);
lean_ctor_set(x_14, 1, x_13);
x_15 = lean_box(1);
x_16 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_16, 0, x_14);
lean_ctor_set(x_16, 1, x_15);
x_17 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__11;
x_18 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_18, 0, x_16);
lean_ctor_set(x_18, 1, x_17);
x_19 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_19, 0, x_18);
lean_ctor_set(x_19, 1, x_5);
x_20 = l_Nat_reprFast(x_4);
x_21 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_21, 0, x_20);
x_22 = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(x_22, 0, x_7);
lean_ctor_set(x_22, 1, x_21);
x_23 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_23, 0, x_22);
lean_ctor_set_uint8(x_23, sizeof(void*)*1, x_10);
x_24 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_24, 0, x_19);
lean_ctor_set(x_24, 1, x_23);
x_25 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__14;
x_26 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__15;
x_27 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_27, 0, x_26);
lean_ctor_set(x_27, 1, x_24);
x_28 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__16;
x_29 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_29, 0, x_27);
lean_ctor_set(x_29, 1, x_28);
x_30 = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(x_30, 0, x_25);
lean_ctor_set(x_30, 1, x_29);
x_31 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_31, 0, x_30);
lean_ctor_set_uint8(x_31, sizeof(void*)*1, x_10);
return x_31;
}
else
{
lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; uint8_t x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; lean_object* x_47; lean_object* x_48; lean_object* x_49; lean_object* x_50; lean_object* x_51; lean_object* x_52; lean_object* x_53; lean_object* x_54; lean_object* x_55; lean_object* x_56; lean_object* x_57; lean_object* x_58; lean_object* x_59; lean_object* x_60; lean_object* x_61; 
x_32 = lean_ctor_get(x_1, 0);
x_33 = lean_ctor_get(x_1, 1);
lean_inc(x_33);
lean_inc(x_32);
lean_dec(x_1);
x_34 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__5;
x_35 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__6;
x_36 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__7;
x_37 = l_Nat_reprFast(x_32);
x_38 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_38, 0, x_37);
x_39 = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(x_39, 0, x_36);
lean_ctor_set(x_39, 1, x_38);
x_40 = 0;
x_41 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_41, 0, x_39);
lean_ctor_set_uint8(x_41, sizeof(void*)*1, x_40);
x_42 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_42, 0, x_35);
lean_ctor_set(x_42, 1, x_41);
x_43 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__9;
x_44 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_44, 0, x_42);
lean_ctor_set(x_44, 1, x_43);
x_45 = lean_box(1);
x_46 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_46, 0, x_44);
lean_ctor_set(x_46, 1, x_45);
x_47 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__11;
x_48 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_48, 0, x_46);
lean_ctor_set(x_48, 1, x_47);
x_49 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_49, 0, x_48);
lean_ctor_set(x_49, 1, x_34);
x_50 = l_Nat_reprFast(x_33);
x_51 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_51, 0, x_50);
x_52 = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(x_52, 0, x_36);
lean_ctor_set(x_52, 1, x_51);
x_53 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_53, 0, x_52);
lean_ctor_set_uint8(x_53, sizeof(void*)*1, x_40);
x_54 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_54, 0, x_49);
lean_ctor_set(x_54, 1, x_53);
x_55 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__14;
x_56 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__15;
x_57 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_57, 0, x_56);
lean_ctor_set(x_57, 1, x_54);
x_58 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__16;
x_59 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_59, 0, x_57);
lean_ctor_set(x_59, 1, x_58);
x_60 = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(x_60, 0, x_55);
lean_ctor_set(x_60, 1, x_59);
x_61 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_61, 0, x_60);
lean_ctor_set_uint8(x_61, sizeof(void*)*1, x_40);
return x_61;
}
}
}
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_instReprArtifact_repr(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lp_urf__spine_URFSpine_instReprArtifact_repr___redArg(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_instReprArtifact_repr___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lp_urf__spine_URFSpine_instReprArtifact_repr(x_1, x_2);
lean_dec(x_2);
return x_3;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_instReprArtifact___closed__0() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(lp_urf__spine_URFSpine_instReprArtifact_repr___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_lp_urf__spine_URFSpine_instReprArtifact() {
_start:
{
lean_object* x_1; 
x_1 = lp_urf__spine_URFSpine_instReprArtifact___closed__0;
return x_1;
}
}
LEAN_EXPORT uint8_t lp_urf__spine_URFSpine_artifactCmp(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; uint8_t x_7; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_1, 1);
x_5 = lean_ctor_get(x_2, 0);
x_6 = lean_ctor_get(x_2, 1);
x_7 = lean_nat_dec_eq(x_3, x_5);
if (x_7 == 0)
{
uint8_t x_8; 
x_8 = lean_nat_dec_le(x_3, x_5);
return x_8;
}
else
{
uint8_t x_9; 
x_9 = lean_nat_dec_le(x_4, x_6);
return x_9;
}
}
}
LEAN_EXPORT lean_object* lp_urf__spine_URFSpine_artifactCmp___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = lp_urf__spine_URFSpine_artifactCmp(x_1, x_2);
lean_dec_ref(x_2);
lean_dec_ref(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
lean_object* initialize_Init(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_urf__spine_URFSpine_SpineBase(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__4 = _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__4();
lean_mark_persistent(lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__4);
lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__5 = _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__5();
lean_mark_persistent(lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__5);
lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__1 = _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__1();
lean_mark_persistent(lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__1);
lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__2 = _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__2();
lean_mark_persistent(lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__2);
lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__3 = _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__3();
lean_mark_persistent(lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__3);
lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__6 = _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__6();
lean_mark_persistent(lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__6);
lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__7 = _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__7();
lean_mark_persistent(lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__7);
lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__8 = _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__8();
lean_mark_persistent(lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__8);
lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__9 = _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__9();
lean_mark_persistent(lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__9);
lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__10 = _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__10();
lean_mark_persistent(lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__10);
lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__11 = _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__11();
lean_mark_persistent(lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__11);
lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__0 = _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__0();
lean_mark_persistent(lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__0);
lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__13 = _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__13();
lean_mark_persistent(lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__13);
lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__14 = _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__14();
lean_mark_persistent(lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__14);
lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__15 = _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__15();
lean_mark_persistent(lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__15);
lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__12 = _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__12();
lean_mark_persistent(lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__12);
lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__16 = _init_lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__16();
lean_mark_persistent(lp_urf__spine_URFSpine_instReprArtifact_repr___redArg___closed__16);
lp_urf__spine_URFSpine_instReprArtifact___closed__0 = _init_lp_urf__spine_URFSpine_instReprArtifact___closed__0();
lean_mark_persistent(lp_urf__spine_URFSpine_instReprArtifact___closed__0);
lp_urf__spine_URFSpine_instReprArtifact = _init_lp_urf__spine_URFSpine_instReprArtifact();
lean_mark_persistent(lp_urf__spine_URFSpine_instReprArtifact);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
