namespace URFSpine

inductive JVal where
| jnull : JVal
| jbool : Bool → JVal
| jnum  : String → JVal
| jstr  : String → JVal
| jarr  : List JVal → JVal
| jobj  : List (String × JVal) → JVal
deriving Repr, DecidableEq

constant encodeCanon : JVal → ByteArray
constant parse : ByteArray → Option JVal

axiom parse_encodeCanon :
  ∀ v : JVal, parse (encodeCanon v) = some v

end URFSpine
