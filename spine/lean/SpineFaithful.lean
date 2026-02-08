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

def Faithful {C D : Type u} [Cat C] [Cat D] (F : Functor C D) : Prop :=
  ∀ {X Y : C} (f g : Cat.Hom X Y), F.map f = F.map g → f = g

theorem faithful_of_reflection
  {C D : Type u} [Cat C] [Cat D]
  (F : Functor C D)
  (reflection : ∀ {X Y : C} (f g : Cat.Hom X Y), F.map f = F.map g → f = g) :
  Faithful F := by
  intro X Y f g h
  exact reflection f g h

end URFSpine
