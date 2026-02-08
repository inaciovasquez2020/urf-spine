namespace URFSpine

universe u v

class Cat (C : Type u) where
  Hom : C → C → Type v

structure Functor (C : Type u) (D : Type u) [Cat C] [Cat D] where
  obj : C → D
  map : {X Y : C} → Cat.Hom X Y → Cat.Hom (obj X) (obj Y)

def Faithful {C D : Type u} [Cat C] [Cat D] (F : Functor C D) : Prop :=
  ∀ {X Y : C} (f g : Cat.Hom X Y), F.map f = F.map g → f = g

def Full {C D : Type u} [Cat C] [Cat D] (F : Functor C D) : Prop :=
  ∀ {X Y : C} (α : Cat.Hom (F.obj X) (F.obj Y)), ∃ f : Cat.Hom X Y, F.map f = α

constant Iso {D : Type u} [Cat D] : D → D → Prop

def EssSurj {C D : Type u} [Cat C] [Cat D] (F : Functor C D) : Prop :=
  ∀ (S : D), ∃ (M : C), Iso (F.obj M) S

constant IsEquivalence {C D : Type u} [Cat C] [Cat D] (F : Functor C D) : Prop

axiom equivalence_of_ffs
  {C D : Type u} [Cat C] [Cat D] (F : Functor C D) :
  Full F → Faithful F → EssSurj F → IsEquivalence F

end URFSpine
