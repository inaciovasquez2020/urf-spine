namespace URFSpine

universe u v

class Cat (C : Type u) where
  Hom : C → C → Type v
  id  : {X : C} → Hom X X
  comp : {X Y Z : C} → Hom Y Z → Hom X Y → Hom X Z
  id_comp  : ∀ {X Y : C} (f : Hom X Y), comp (id) f = f
  comp_id  : ∀ {X Y : C} (f : Hom X Y), comp f (id) = f
  assoc    : ∀ {W X Y Z : C} (h : Hom Y Z) (g : Hom X Y) (f : Hom W X),
              comp h (comp g f) = comp (comp h g) f

structure Functor (C : Type u) (D : Type u) [Cat C] [Cat D] where
  obj : C → D
  map : {X Y : C} → Cat.Hom X Y → Cat.Hom (obj X) (obj Y)
  map_id : ∀ {X : C}, map (Cat.id (X:=X)) = Cat.id (X:=obj X)
  map_comp : ∀ {X Y Z : C} (g : Cat.Hom Y Z) (f : Cat.Hom X Y),
               map (Cat.comp g f) = Cat.comp (map g) (map f)

def Full {C D : Type u} [Cat C] [Cat D] (F : Functor C D) : Prop :=
  ∀ {X Y : C} (α : Cat.Hom (F.obj X) (F.obj Y)), ∃ f : Cat.Hom X Y, F.map f = α

theorem full_of_lifting
  {C D : Type u} [Cat C] [Cat D]
  (F : Functor C D)
  (lifting : ∀ {X Y : C} (α : Cat.Hom (F.obj X) (F.obj Y)), ∃ f : Cat.Hom X Y, F.map f = α) :
  Full F := by
  intro X Y α
  exact lifting α

end URFSpine
