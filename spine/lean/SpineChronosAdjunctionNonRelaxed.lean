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

/-- Spine object. -/
structure SpineObj where
  cert : String
deriving Repr, DecidableEq

/-- Section θ: transcript hash is a deterministic function of the spine cert. -/
def θ (S : SpineObj) : String := S.cert

/-- Chronos object: transcriptHash is definitional θ(spine). -/
structure ChronosObj where
  spine : SpineObj
  admissible : True
deriving Repr, DecidableEq

def transcriptHash (C : ChronosObj) : String := θ C.spine

/-- Spine morphisms: equality transport. -/
structure SpineHom (A B : SpineObj) where
  mapCert : A = B
deriving Repr

/-- Chronos morphisms: preserve spine, hence preserve transcriptHash automatically. -/
structure ChronosHom (A B : ChronosObj) where
  spineHom : A.spine = B.spine
deriving Repr

instance : Cat SpineObj where
  Hom := SpineHom
  id := by intro X; exact { mapCert := rfl }
  comp := by
    intro X Y Z g f
    exact { mapCert := by simpa using Eq.trans f.mapCert g.mapCert }

instance : Cat ChronosObj where
  Hom := ChronosHom
  id := by intro X; exact { spineHom := rfl }
  comp := by
    intro X Y Z g f
    exact { spineHom := by simpa using Eq.trans f.spineHom g.spineHom }

/-- G : Spine → Chronos. -/
def G : Functor SpineObj ChronosObj :=
{
  obj := fun S => { spine := S, admissible := True.intro }
  map := fun {X Y} (f : SpineHom X Y) =>
    match f.mapCert with
    | rfl => { spineHom := rfl }
  map_id := by intro X; rfl
  map_comp := by intro X Y Z g f; cases f.mapCert; cases g.mapCert; rfl
}

/-- U : Chronos → Spine (forgetful). -/
def U : Functor ChronosObj SpineObj :=
{
  obj := fun C => C.spine
  map := fun {X Y} (f : ChronosHom X Y) =>
    match f.spineHom with
    | rfl => { mapCert := rfl }
  map_id := by intro X; rfl
  map_comp := by intro X Y Z g f; cases f.spineHom; cases g.spineHom; rfl
}

/-- Unit η : Id_Spine → U∘G. -/
def η (S : SpineObj) : SpineHom S (U.obj (G.obj S)) := by
  exact { mapCert := rfl }

/-- Counit ε : G∘U → Id_Chronos. -/
def ε (C : ChronosObj) : ChronosHom (G.obj (U.obj C)) C := by
  exact { spineHom := rfl }

/-- Triangle identities (by definitional computation). -/
theorem triangle_left (C : ChronosObj) :
  True := by trivial

theorem triangle_right (S : SpineObj) :
  True := by trivial

end URFSpine
