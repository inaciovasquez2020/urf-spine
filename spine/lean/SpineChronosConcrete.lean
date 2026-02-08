namespace URFSpine

universe u v

class Cat (C : Type u) where
  Hom : C → C → Type v
  id  : {X : C} → Hom X X
  comp : {X Y Z : C} → Hom Y Z → Hom X Y → Hom X Z

structure Functor (C : Type u) (D : Type u) [Cat C] [Cat D] where
  obj : C → D
  map : {X Y : C} → Cat.Hom X Y → Cat.Hom (obj X) (obj Y)
  map_id : ∀ {X : C}, map (Cat.id (X:=X)) = Cat.id (X:=obj X)
  map_comp : ∀ {X Y Z : C} (g : Cat.Hom Y Z) (f : Cat.Hom X Y),
               map (Cat.comp g f) = Cat.comp (map g) (map f)

structure SpineObj where
  cert : String
deriving Repr

structure ChronosObj where
  spine : SpineObj
  transcriptHash : String
  admissible : True
deriving Repr

/-- Spine morphisms: certificate transport (abstract). -/
structure SpineHom (A B : SpineObj) where
  mapCert : A.cert = B.cert
deriving Repr

/-- Chronos morphisms carry the induced spine morphism and preserve transcript hash (abstract). -/
structure ChronosHom (A B : ChronosObj) where
  spineHom : SpineHom A.spine B.spine
  trPres   : A.transcriptHash = B.transcriptHash
deriving Repr

instance : Cat SpineObj where
  Hom := SpineHom
  id := by
    intro X
    exact { mapCert := rfl }
  comp := by
    intro X Y Z g f
    exact { mapCert := by simpa using Eq.trans f.mapCert g.mapCert }

instance : Cat ChronosObj where
  Hom := ChronosHom
  id := by
    intro X
    exact { spineHom := { mapCert := rfl }, trPres := rfl }
  comp := by
    intro X Y Z g f
    exact {
      spineHom := {
        mapCert := by
          simpa using Eq.trans f.spineHom.mapCert g.spineHom.mapCert
      }
      trPres := by simpa using Eq.trans f.trPres g.trPres
    }

/-- Forgetful functor U : Chronos → Spine. -/
def U : Functor ChronosObj SpineObj :=
{
  obj := fun C => C.spine
  map := fun {X Y} (f : ChronosHom X Y) => f.spineHom
  map_id := by intro X; rfl
  map_comp := by intro X Y Z g f; rfl
}

end URFSpine
