namespace URFSpine

/-- Byte-level JSON AST (minimal executable core). -/
inductive JVal
| jnull
| jbool (b : Bool)
| jnum  (n : Int)
| jstr  (s : String)
| jarr  (xs : List JVal)
| jobj  (kvs : List (String × JVal))

/-- Canonical key ordering (UTF-8 byte lexicographic). -/
axiom keySort : List (String × JVal) → List (String × JVal)

/-- Canonical encoder (no whitespace, sorted keys, UTF-8). -/
axiom encodeCanon : JVal → ByteArray

/-- Total canonical parser (rejects non-canonical encodings). -/
axiom parseCanon : ByteArray → Option JVal

/-- Canonical roundtrip correctness. -/
axiom parse_encode_id (v : JVal) :
  parseCanon (encodeCanon v) = some v

end URFSpine
