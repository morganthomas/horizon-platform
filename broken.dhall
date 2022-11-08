let HsSrc =
      < FromHackage : { name : Text, version : Text }
      | FromGit :
          { url : Text, revision : Optional Text, subdir : Optional Text }
      >

let Modifiers =
      { Type = { doJailbreak : Bool, doCheck : Bool }
      , default = { doJailbreak = True, doCheck = False }
      }

let Attr = λ(a : Type) → { mapKey : Text, mapValue : a }

let HsPkg =
      { Type = { source : HsSrc, modifiers : Modifiers.Type }
      , default.modifiers = Modifiers.default
      }

let callHackage
    : ∀(name : Text) → ∀(version : Text) → Attr HsPkg.Type
    = λ(name : Text) →
      λ(version : Text) →
        { mapKey = name
        , mapValue = HsPkg::{ source = HsSrc.FromHackage { name, version } }
        }

let callCabal2nix
    : ∀(name : Text) →
      ∀(url : Text) →
      ∀(revision : Optional Text) →
      ∀(subdir : Optional Text) →
        Attr HsPkg.Type
    = λ(name : Text) →
      λ(url : Text) →
      λ(revision : Optional Text) →
      λ(subdir : Optional Text) →
        { mapKey = name
        , mapValue = HsPkg::{ source = HsSrc.FromGit { url, revision, subdir } }
        }

let callHorizonAdopted
    : ∀(name : Text) → ∀(revision : Text) → Attr HsPkg.Type
    = λ(name : Text) →
      λ(revision : Text) →
        callCabal2nix
          name
          ("https://gitlab.homotopic.tech/horizon/adopted/" ++ name)
          (Some revision)
          (None Text)

in  [ callHackage "hiedb" "0.4.2.0" ]
