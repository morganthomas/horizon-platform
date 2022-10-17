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

in  [ callHackage "Cabal" "3.8.1.0"
    , callCabal2nix
        "Cabal-QuickCheck"
        "https://gitlab.haskell.org/ghc/packages/Cabal"
        (None Text)
        (Some "Cabal-QuickCheck")
    , callCabal2nix
        "Cabal-described"
        "https://gitlab.haskell.org/ghc/packages/Cabal"
        (None Text)
        (Some "Cabal-described")
    , callCabal2nix
        "Cabal-syntax"
        "https://gitlab.haskell.org/ghc/packages/Cabal"
        (None Text)
        (Some "Cabal-syntax")
    , callCabal2nix
        "Cabal-syntax"
        "https://gitlab.haskell.org/ghc/packages/Cabal"
        (None Text)
        (Some "Cabal-syntax")
    , callCabal2nix
        "Cabal-tree-diff"
        "https://gitlab.haskell.org/ghc/packages/Cabal"
        (None Text)
        (Some "Cabal-tree-diff")
    , callHackage "ChasingBottoms" "1.3.1.12"
    , callHackage "HTTP" "4000.4.1"
    , callHackage "JuicyPixels" "3.3.8"
    , callHackage "OneTuple" "0.3.1"
    , callHackage "OpenGLRaw" "3.3.4.1"
    , callHackage "aeson" "2.1.0.0"
    , callHackage "ansi-terminal" "0.11.3"
    , callHackage "apecs" "0.9.4"
    , callHackage "assoc" "1.0.2"
    , callHackage "async" "2.2.4"
    , callHackage "autodocodec-yaml" "0.2.0.2"
    , callHackage "basement" "0.0.15"
    , callHackage "base64" "0.4.2.4"
    , callHackage "base-compat" "0.12.2"
    , callHackage "base-compat-batteries" "0.12.2"
    , callHackage "bimap" "0.5.0"
    , callHackage "binary-orphans" "1.0.3"
    , callHackage "blaze-markup" "0.8.2.8"
    , callHackage "boring" "0.2"
    , callHackage "bsb-http-chunked" "0.0.0.4"
    , callHackage "brick" "1.3"
    , callHackage "bytes" "0.17.2"
    , callHackage "cabal-doctest" "1.0.9"
    , callHackage "cabal-install" "3.8.1.0"
    , callHackage "cabal-install-solver" "3.8.1.0"
    , callCabal2nix
        "cabal2nix"
        "https://github.com/NixOS/cabal2nix"
        (None Text)
        (Some "cabal2nix")
    , callHackage "cereal" "0.5.8.3"
    , callHackage "cborg" "0.2.8.0"
    , callHackage "cborg-json" "0.2.5.0"
    , callHackage "citeproc" "0.8.0.1"
    , callHackage "co-log-core" "0.3.1.0"
    , callHackage "comonad" "5.0.8"
    , callHackage "compact" "0.2.0.0"
    , callCabal2nix
        "compactable"
        "https://gitlab.com/fresheyeball/Compactable"
        (Some "f63927b1e438c267f0d12f36e5b3735cfaebeeb4")
        (None Text)
    , callHackage "composite-base" "0.8.1.0"
    , callHackage "composite-cassava" "0.0.3.1"
    , callHackage "composite-dhall" "0.1.0.1"
    , callHackage "composite-lens-extra" "0.1.0.0"
    , callHackage "composite-tuple" "0.1.2.0"
    , callHackage "conduit" "1.3.4.2"
    , callHackage "conduit-extra" "1.3.6"
    , callHackage "config-ini" "0.2.5.0"
    , callHackage "constraints" "0.13.4"
    , callHackage "cryptonite" "0.30"
    , callHackage "cryptohash-sha1" "0.11.101.0"
    , callHackage "data-fix" "0.3.2"
    , callHackage "dec" "0.0.5"
    , callHackage "dhall" "1.41.2"
    , callHackage "dimensional" "1.5"
    , callHackage "distribution-nixpkgs" "1.7.0"
    , callCabal2nix
        "doctest"
        "https://github.com/sol/doctest"
        (Some "4eb97c213acf7abe965a3a1b67397199ed155f3c")
        (None Text)
    , callCabal2nix
        "double-conversion"
        "https://github.com/haskell/double-conversion"
        (None Text)
        (None Text)
    , callCabal2nix
        "ed25519"
        "https://gitlab.homotopic.tech/horizon/adopted/ed25519"
        (None Text)
        (None Text)
    , callHackage "email-validate" "2.3.2.16"
    , callCabal2nix
        "effectful-cache"
        "https://github.com/haskell-effectful/cache-effectful"
        (None Text)
        (None Text)
    , callHackage "effectful-core" "2.1.0.0"
    , callHackage "effectful-th" "1.0.0.0"
    , callHackage "effectful" "2.1.0.0"
    , callHackage "extra" "1.7.12"
    , callHackage "fcf-containers" "0.7.1"
    , callHackage "finite-field" "0.10.0"
    , callHackage "first-class-families" "0.8.0.1"
    , callHackage "foldl" "1.4.12"
    , callHackage "foundation" "0.0.29"
    , callHackage "generic-lens-core" "2.2.1.0"
    , callHackage "generic-lens-lite" "0.1"
    , callHackage "generic-optics-lite" "0.1"
    , callHackage "generic-optics" "2.2.1.0"
    , callHackage "generics-sop" "0.5.1.2"
    , callHackage "genvalidity-aeson" "1.0.0.1"
    , callHackage "genvalidity-bytestring" "1.0.0.1"
    , callHackage "genvalidity-hspec" "1.0.0.2"
    , callHackage "genvalidity-scientific" "1.0.0.0"
    , callHackage "genvalidity-sydtest-aeson" "1.0.0.0"
    , callHackage "genvalidity-text" "1.0.0.1"
    , callHackage "genvalidity-unordered-containers" "1.0.0.0"
    , callHackage "genvalidity-vector" "1.0.0.0"
    , callHackage "ghc-byteorder" "4.11.0.0.10"
    , callHackage "ghc-check" "0.5.0.8"
    , callHackage "ghc-exactprint" "1.6.0"
    , callHackage "ghc-lib-parser" "9.4.2.20220822"
    , callHackage "ghc-lib-parser-ex" "9.4.0.0"
    , callHackage "ghc-paths" "0.1.0.12"
    , callHackage "ghc-tcplugins-extra" "0.4.3"
    , callHackage "hackage-security" "0.6.2.2"
    , callHackage "hashable" "1.4.1.0"
    , callHackage "hashing" "0.1.0.1"
    , callHackage "hashtables" "1.3"
    , callHackage "haskell-src-meta" "0.8.11"
    , callHackage "hedgehog" "1.2"
    , callCabal2nix
        "hedgehog-golden"
        "https://github.com/maybe-hedgehog-later/hedgehog-golden"
        (None Text)
        (None Text)
    , callHackage "hie-bios" "0.11.0"
    , callHackage "hie-compat" "0.3.0.0"
    , callHackage "hiedb" "0.4.2.0"
    , callHackage "hlint" "3.5"
    , callHackage "hourglass" "0.2.12"
    , callCabal2nix
        "hnix"
        "https://github.com/milloni/hnix"
        (Some "005568ee024eabee129d9cf4ca331c6da260610b")
        (None Text)
    , callHackage "hpack" "0.35.0"
    , callCabal2nix
        "horizon-gen-nix"
        "https://gitlab.homotopic.tech/horizon/horizon-gen-nix"
        (Some "918df757ce5c9244232c1e3a1e05e9d9e3ab4f09")
        (None Text)
    , callHackage "hslua-aeson" "2.2.1"
    , callHackage "hspec" "2.10.3"
    , callHackage "hspec-core" "2.10.0.1"
    , callHackage "hspec-discover" "2.10.0.1"
    , callHackage "hspec-meta" "2.9.3"
    , callHackage "http-client" "0.7.13.1"
    , callHackage "http-date" "0.0.11"
    , callHackage "http-types" "0.12.3"
    , callHackage "http2" "3.0.3"
    , callHackage "incipit-base" "0.3.0.0"
    , callHackage "incipit-core" "0.3.0.0"
    , callHackage "indexed-traversable" "0.1.2"
    , callHackage "indexed-traversable-instances" "0.1.1.1"
    , callHackage "infer-license" "0.2.0"
    , callHackage "integer-logarithms" "1.0.3.1"
    , callHackage "invariant" "0.6"
    , callHackage "iproute" "1.7.12"
    , callHackage "lens" "5.2"
    , callHackage "lens-aeson" "1.2.1"
    , callHackage "lens-family-th" "0.5.2.1"
    , callHackage "lifted-async" "0.10.2.1"
    , callHackage "linear" "1.21.10"
    , callHackage "lsp-types" "1.6.0.0"
    , callHackage "lsp" "1.6.0.0"
    , callHackage "lucid" "2.11.1"
    , callHackage "net-mqtt" "0.8.2.2"
    , callHackage "memory" "0.18.0"
    , callHackage "monad-par" "0.3.5"
    , callHackage "monoid-subclasses" "1.1.3"
    , callHackage "network-byte-order" "0.1.6"
    , callHackage "newtype-generics" "0.6.2"
    , callHackage "nothunks" "0.1.3"
    , callHackage "optics-core" "0.4.1"
    , callHackage "optics-extra" "0.4.2.1"
    , callHackage "optics-th" "0.4.1"
    , callHackage "optics" "0.4.2"
    , callHackage "pandoc" "2.19.2"
    , callHackage "parallel" "3.2.2.0"
    , callHackage "pcg-random" "0.1.3.7"
    , callHackage "polysemy" "1.7.1.0"
    , callHackage "polysemy-extra" "0.2.1.0"
    , callHackage "polysemy-kvstore" "0.1.3.0"
    , callHackage "polysemy-methodology" "0.2.1.0"
    , callHackage "polysemy-path" "0.2.1.0"
    , callCabal2nix
        "polysemy-plugin"
        "https://github.com/locallycompact/polysemy"
        (Some "bd944ca000c1ca69602d4723e3859af431b9d0c4")
        (Some "polysemy-plugin")
    , callHackage "polysemy-several" "0.1.1.0"
    , callHackage "polysemy-time" "0.5.1.0"
    , callHackage "polysemy-vinyl" "0.1.5.0"
    , callHackage "polysemy-zoo" "0.8.0.0"
    , callHackage "postgresql-libpq" "0.9.4.3"
    , callHackage "postgresql-simple" "0.6.4"
    , callHackage "pretty-simple" "4.1.1.0"
    , callHackage "prettyprinter-ansi-terminal" "1.1.3"
    , callHackage "primitive" "0.7.4.0"
    , callHackage "proteaaudio-sdl" "0.9.2"
    , callHackage "quickcheck-dynamic" "2.0.0"
    , callHackage "quickcheck-instances" "0.3.28"
    , callHackage "rebase" "1.16"
    , callHackage "refined" "0.8"
    , callHackage "rerebase" "1.15.0.3"
    , callHackage "relude" "1.1.0.0"
    , callHackage "retry" "0.9.3.0"
    , callHackage "rope-utf16-splay" "0.4.0.0"
    , callHackage "safe-coloured-text" "0.2.0.1"
    , callHackage "saltine" "0.1.1.1"
    , callHackage "scotty" "0.12"
    , callHackage "scientific" "0.3.7.0"
    , callHackage "sdl2" "2.5.3.3"
    , callHackage "sdl2-gfx" "0.3.0.0"
    , callHackage "sdl2-image" "2.1.0.0"
    , callHackage "sdl2-mixer" "1.2.0.0"
    , callHackage "sdl2-ttf" "2.1.3"
    , callHackage "semialign" "1.2.0.1"
    , callHackage "serialise" "0.2.6.0"
    , callCabal2nix
        "servant"
        "https://github.com/TeofilC/servant"
        (Some "76fc90a51f915230bbe1e0d1dbe9727fcdc7a0fc")
        (Some "servant")
    , callCabal2nix
        "servant-client-core"
        "https://github.com/TeofilC/servant"
        (Some "76fc90a51f915230bbe1e0d1dbe9727fcdc7a0fc")
        (Some "servant-client-core")
    , callCabal2nix
        "servant-client"
        "https://github.com/TeofilC/servant"
        (Some "76fc90a51f915230bbe1e0d1dbe9727fcdc7a0fc")
        (Some "servant-client")
    , callCabal2nix
        "servant-foreign"
        "https://github.com/TeofilC/servant"
        (Some "76fc90a51f915230bbe1e0d1dbe9727fcdc7a0fc")
        (Some "servant-foreign")

    , callHackage "servant-lucid" "0.9.0.5"
    , callHackage "servant-multipart" "0.12.1"
    , callHackage "servant-multipart-api" "0.12.1"
    , callCabal2nix
        "servant-server"
        "https://github.com/TeofilC/servant"
        (Some "76fc90a51f915230bbe1e0d1dbe9727fcdc7a0fc")
        (Some "servant-server")
    , callHackage "shake" "0.19.6"
    , callHackage "shelly" "1.10.0"
    , callHackage "singleton-bool" "0.1.6"
    , callHackage "singletons" "3.0.2"
    , callHackage "some" "1.0.4"
    , callHackage "sop-core" "0.5.0.1"
    , callHackage "split" "0.2.3.3"
    , callHackage "streaming-commons" "0.2.2.4"
    , callHackage "string-interpolate" "0.3.1.2"
    , callHackage "string-qq" "0.0.4"
    , callHackage "stylish-haskell" "0.14.2.0"
    , callHackage "syb" "0.7.2.1"
    , callHackage "sydtest" "0.12.0.1"
    , callHackage "sydtest-discover" "0.0.0.2"
    , callCabal2nix
        "tasty"
        "https://github.com/UnkindPartition/tasty"
        (None Text)
        (Some "core")
    , callHackage "tasty-discover" "5.0.0"
    , callCabal2nix
        "tasty-hedgehog"
        "https://github.com/locallycompact/tasty-hedgehog"
        (None Text)
        (None Text)
    , callCabal2nix
        "tasty-hunit"
        "https://github.com/UnkindPartition/tasty"
        (None Text)
        (Some "hunit")
    , callHackage "tasty-wai" "0.1.2.0"
    , callHackage "text-metrics" "0.3.2"
    , callHackage "text-zipper" "0.12"
    , callHackage "these" "1.1.1.1"
    , callHackage "these-skinny" "0.7.5"
    , callHackage "th-extras" "0.0.0.6"
    , callHackage "th-lift-instances" "0.1.20"
    , callHackage "tidal" "1.8.1"
    , callHackage "time-compat" "1.9.6.1"
    , callHackage "type-errors-pretty" "0.0.1.2"
    , callHackage "type-errors" "0.2.0.0"
    , callHackage "type-equality" "1"
    , callHackage "unicode-collation" "0.1.3.2"
    , callHackage "unicode-data" "0.4.0"
    , callHackage "unicode-transforms" "0.4.0.1"
    , callHackage "unordered-containers" "0.2.19.1"
    , callHackage "vault" "0.3.1.5"
    , callHackage "vector" "0.13.0.0"
    , callHackage "vector-algorithms" "0.9.0.1"
    , callHackage "vinyl" "0.14.3"
    , callHackage "vty" "5.37"
    , callHackage "wai-middleware-static" "0.9.2"
    , callHackage "warp" "3.3.22"
    , callHackage "warp-tls" "3.3.3"
    , callHackage "witherable" "0.4.2"
    , callHackage "with-utf8" "1.0.2.3"
    , callHackage "xml-conduit" "1.9.1.1"
    ]
