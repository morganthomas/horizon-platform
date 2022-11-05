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
    , callHackage "PyF" "0.11.1.0"
    , callHackage "adjunctions" "4.4.2"
    , callHackage "aeson" "2.1.0.0"
    , callHackage "aeson-pretty" "0.8.9"
    , callHackage "aeson-yaml" "1.1.0.1"
    , callHackage "ansi-terminal" "0.11.3"
    , callHackage "ansi-wl-pprint" "0.6.9"
    , callHackage "apecs" "0.9.4"
    , callHackage "asn1-encoding" "0.9.6"
    , callHackage "asn1-parse" "0.9.5"
    , callHackage "asn1-types" "0.3.4"
    , callHackage "assoc" "1.0.2"
    , callHackage "async" "2.2.4"
    , callHackage "atomic-primops" "0.8.4"
    , callHackage "attoparsec-binary" "0.2"
    , callHackage "attoparsec-iso8601" "1.1.0.0"
    , callHackage "attoparsec" "0.14.4"
    , callHackage "autodocodec" "0.2.0.1"
    , callHackage "autodocodec-schema" "0.1.0.2"
    , callHackage "autodocodec-servant-multipart" "0.0.0.0"
    , callHackage "autodocodec-yaml" "0.2.0.2"
    , callHackage "basement" "0.0.15"
    , callHackage "base64" "0.4.2.4"
    , callHackage "base-compat" "0.12.2"
    , callHackage "base-compat-batteries" "0.12.2"
    , callHackage "bifunctors" "5.5.13"
    , callHackage "bimap" "0.5.0"
    , callHackage "bitvec" "1.1.3.0"
    , callHackage "binary-orphans" "1.0.3"
    , callHackage "blaze-html" "0.9.1.2"
    , callHackage "blaze-markup" "0.8.2.8"
    , callHackage "boring" "0.2"
    , callHackage "bsb-http-chunked" "0.0.0.4"
    , callHackage "breakpoint" "0.1.1.1"
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
    , callHackage "cache" "0.1.3.0"
    , callHackage "case-insensitive" "1.2.1.0"
    , callHackage "cassava" "0.5.3.0"
    , callHackage "cassava-megaparsec" "2.0.4"
    , callHackage "cereal" "0.5.8.3"
    , callHackage "cborg" "0.2.8.0"
    , callHackage "cborg-json" "0.2.5.0"
    , callHackage "charset" "0.3.9"
    , callHackage "citeproc" "0.8.0.1"
    , callHackage "co-log-core" "0.3.1.0"
    , callHackage "co-log-polysemy" "0.0.1.3"
    , callHackage "commonmark-extensions" "0.2.3.3"
    , callHackage "commonmark-pandoc" "0.2.1.2"
    , callHackage "commonmark" "0.2.2"
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
    , callHackage "connection" "0.3.1"
    , callHackage "constraints" "0.13.4"
    , callHackage "cursor" "0.3.2.0"
    , callCabal2nix
        "cursor-dirforest"
        "https://github.com/NorfairKing/cursor-dirforest"
        (Some "6ad5b168e26eb4e647df9f007d812aaf59338d40")
        (Some "cursor-dirforest")
    , callCabal2nix
        "cursor-dirforest-brick"
        "https://github.com/NorfairKing/cursor-dirforest"
        (Some "6ad5b168e26eb4e647df9f007d812aaf59338d40")
        (Some "cursor-dirforest-brick")
    , callCabal2nix
        "cursor-dirforest-gen"
        "https://github.com/NorfairKing/cursor-dirforest"
        (Some "6ad5b168e26eb4e647df9f007d812aaf59338d40")
        (Some "cursor-dirforest-gen")
    , callHackage "cryptonite" "0.30"
    , callHackage "cryptohash-sha1" "0.11.101.0"
    , callHackage "data-fix" "0.3.2"
    , callHackage "dec" "0.0.5"
    , callHackage "deriving-aeson" "0.2.8"
    , callHackage "dhall" "1.41.2"
    , callHackage "dhall-json" "1.7.11"
    , callHackage "dimensional" "1.5"
    , callCabal2nix
        "dirforest"
        "https://github.com/NorfairKing/dirforest"
        (Some "69e8ae036b047fae105c1fe990e175a7572a3eba")
        (Some "dirforest")
    , callHackage "distribution-nixpkgs" "1.7.0"
    , callHackage "distributive" "0.6.2.1"
    , callCabal2nix
        "doctest"
        "https://github.com/sol/doctest"
        (Some "4eb97c213acf7abe965a3a1b67397199ed155f3c")
        (None Text)
    , callHackage "doctemplates" "0.10.0.2"
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
    , callHackage "either" "5.0.2"
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
    , callHackage "fin" "0.2.1"
    , callHackage "free" "5.1.9"
    , callHackage "fsnotify" "0.4.1.0"
    , callHackage "foldl" "1.4.12"
    , callHackage "foundation" "0.0.29"
    , callHackage "fuzzy-time" "0.2.0.3"
    , callHackage "generic-lens-core" "2.2.1.0"
    , callHackage "generic-lens-lite" "0.1"
    , callHackage "generic-monoid" "0.1.0.1"
    , callHackage "generic-optics-lite" "0.1"
    , callHackage "generic-optics" "2.2.1.0"
    , callHackage "generics-sop" "0.5.1.2"
    , callHackage "genvalidity" "1.1.0.0"
    , callHackage "genvalidity-aeson" "1.0.0.1"
    , callHackage "genvalidity-bytestring" "1.0.0.1"
    , callHackage "genvalidity-case-insensitive" "0.0.0.1"
    , callHackage "genvalidity-containers" "1.0.0.1"
    , callHackage "genvalidity-criterion" "1.1.0.0"
    , callCabal2nix
        "genvalidity-dirforest"
        "https://github.com/NorfairKing/dirforest"
        (Some "69e8ae036b047fae105c1fe990e175a7572a3eba")
        (Some "genvalidity-dirforest")
    , callHackage "genvalidity-hspec" "1.0.0.2"
    , callHackage "genvalidity-path" "1.0.0.1"
    , callHackage "genvalidity-persistent" "1.0.0.1"
    , callHackage "genvalidity-property" "1.0.0.0"
    , callHackage "genvalidity-scientific" "1.0.0.0"
    , callHackage "genvalidity-sydtest" "1.0.0.0"
    , callHackage "genvalidity-sydtest-aeson" "1.0.0.0"
    , callHackage "genvalidity-sydtest-hashable" "1.0.0.0"
    , callHackage "genvalidity-sydtest-lens" "1.0.0.0"
    , callHackage "genvalidity-sydtest-persistent" "1.0.0.0"
    , callHackage "genvalidity-text" "1.0.0.1"
    , callHackage "genvalidity-time" "1.0.0.1"
    , callHackage "genvalidity-unordered-containers" "1.0.0.0"
    , callHackage "genvalidity-uuid" "1.0.0.1"
    , callHackage "genvalidity-vector" "1.0.0.0"
    , callHackage "ghc-byteorder" "4.11.0.0.10"
    , callHackage "ghc-check" "0.5.0.8"
    , callHackage "ghc-exactprint" "1.6.0"
    , callHackage "ghc-lib-parser" "9.4.2.20220822"
    , callHackage "ghc-lib-parser-ex" "9.4.0.0"
    , callHackage "ghc-paths" "0.1.0.12"
    , callHackage "ghc-tcplugins-extra" "0.4.3"
    , callHackage "ghc-typelits-knownnat" "0.7.7"
    , callHackage "ghc-typelits-natnormalise" "0.7.7"
    , callHackage "ghcid" "0.8.8"
    , callHackage "gitrev" "1.3.1"
    , callHackage "hackage-security" "0.6.2.2"
    , callHackage "haddock-library" "1.11.0"
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
    , callHackage "hinotify" "0.4.1"
    , callHackage "hledger-lib" "1.27.1"
    , callHackage "hledger" "1.27.1"
    , callHackage "hlint" "3.5"
    , callHackage "hourglass" "0.2.12"
    , callCabal2nix
        "hnix"
        "https://github.com/milloni/hnix"
        (Some "005568ee024eabee129d9cf4ca331c6da260610b")
        (None Text)
    , callHackage "hpack" "0.35.0"
    , callHackage "hpack-dhall" "0.5.7"
    , callCabal2nix
        "horizon-gen-nix"
        "https://gitlab.homotopic.tech/horizon/horizon-gen-nix"
        (Some "918df757ce5c9244232c1e3a1e05e9d9e3ab4f09")
        (None Text)
    , callHackage "hslua-aeson" "2.2.1"
    , callHackage "hslua-core" "2.2.1"
    , callHackage "hslua-classes" "2.2.0"
    , callHackage "hslua-marshalling" "2.2.1"
    , callHackage "hslua-module-doclayout" "1.0.4"
    , callHackage "hslua-module-path" "1.0.3"
    , callHackage "hslua-module-system" "1.0.2"
    , callHackage "hslua-module-text" "1.0.2"
    , callHackage "hslua-module-version" "1.0.3"
    , callHackage "hslua-objectorientation" "2.2.1"
    , callHackage "hslua-packaging" "2.2.1"
    , callHackage "hslua" "2.2.1"
    , callHackage "hspec" "2.10.3"
    , callHackage "hspec-contrib" "0.5.1.1"
    , callHackage "hspec-core" "2.10.0.1"
    , callHackage "hspec-discover" "2.10.0.1"
    , callHackage "hspec-meta" "2.9.3"
    , callHackage "http-api-data" "0.5"
    , callHackage "http-client-tls" "0.3.6.1"
    , callHackage "http-client" "0.7.13.1"
    , callHackage "http-types" "0.12.3"
    , callHackage "http-date" "0.0.11"
    , callHackage "http-media" "0.8.0.0"
    , callHackage "http-types" "0.12.3"
    , callHackage "http2" "3.0.3"
    , callHackage "incipit-base" "0.3.0.0"
    , callHackage "incipit-core" "0.3.0.0"
    , callHackage "indexed-traversable" "0.1.2"
    , callHackage "indexed-traversable-instances" "0.1.1.1"
    , callHackage "infer-license" "0.2.0"
    , callHackage "inspection-testing" "0.5"
    , callHackage "integer-logarithms" "1.0.3.1"
    , callHackage "invariant" "0.6"
    , callHackage "ipynb" "0.2"
    , callHackage "iproute" "1.7.12"
    , callHackage "kan-extensions" "5.2.5"
    , callHackage "keys" "3.12.3"
    , callCabal2nix
        "kvstore-effectful"
        "https://github.com/haskell-effectful/kvstore-effectful"
        (Some "3502825423aea3a1af9384e9d751feea4599c60b")
        (Some "kvstore-effectful")
    , callCabal2nix
        "kvstore-effectful-cache"
        "https://github.com/haskell-effectful/kvstore-effectful"
        (Some "3502825423aea3a1af9384e9d751feea4599c60b")
        (Some "kvstore-effectful-cache")
    , callCabal2nix
        "kvstore-effectful-spec"
        "https://github.com/haskell-effectful/kvstore-effectful"
        (Some "3502825423aea3a1af9384e9d751feea4599c60b")
        (Some "kvstore-effectful-spec")
    , callCabal2nix
        "kvstore-effectful-statemap"
        "https://github.com/haskell-effectful/kvstore-effectful"
        (Some "3502825423aea3a1af9384e9d751feea4599c60b")
        (Some "kvstore-effectful-statemap")
    , callHackage "language-nix" "2.2.0"
    , callHackage "lens" "5.2"
    , callHackage "lens-aeson" "1.2.1"
    , callHackage "lens-family-th" "0.5.2.1"
    , callHackage "libyaml" "0.1.2"
    , callHackage "lifted-async" "0.10.2.1"
    , callHackage "lifted-base" "0.2.3.12"
    , callHackage "linear" "1.21.10"
    , callCabal2nix
        "log-effectful"
        "https://github.com/haskell-effectful/log-effectful/"
        (Some "910c79e10d5ac3353f2a1551103a2b63229c3f57")
        (None Text)
    , callHackage "lpeg" "1.0.3"
    , callHackage "lsp-types" "1.6.0.0"
    , callHackage "lsp" "1.6.0.0"
    , callHackage "lua-arbitrary" "1.0.1"
    , callHackage "lua" "2.2.1"
    , callHackage "lucid-alpine" "0.1.0.7"
    , callHackage "lucid-aria" "0.1.0.1"
    , callHackage "lucid-svg" "0.7.1"
    , callHackage "lucid" "2.11.1"
    , callHackage "lukko" "0.1.1.3"
    , callHackage "net-mqtt" "0.8.2.2"
    , callHackage "megaparsec" "9.2.2"
    , callHackage "memory" "0.18.0"
    , callHackage "mockery" "0.3.5"
    , callHackage "microlens-aeson" "2.5.0"
    , callHackage "microstache" "1.0.2.2"
    , callHackage "monad-control" "1.0.3.1"
    , callHackage "monad-logger" "0.3.37"
    , callHackage "monad-time" "0.4.0.0"
    , callHackage "monad-par" "0.3.5"
    , callHackage "monoid-subclasses" "1.1.3"
    , callHackage "mono-traversable" "1.0.15.3"
    , callHackage "network-byte-order" "0.1.6"
    , callHackage "network-uri" "2.6.4.1"
    , callHackage "newtype-generics" "0.6.2"
    , callHackage "nothunks" "0.1.3"
    , callCabal2nix
        "odd-jobs"
        "https://github.com/saurabhnanda/odd-jobs"
        (Some "f6c7bbbcdb383d2eb487ad7fe427ec05a747c14f")
        (None Text)
    , callHackage "optics-core" "0.4.1"
    , callHackage "optics-extra" "0.4.2.1"
    , callHackage "optics-th" "0.4.1"
    , callHackage "optics" "0.4.2"
    , callHackage "optparse-applicative" "0.17.0.0"
    , callHackage "parsers" "0.12.11"
    , callHackage "pandoc-lua-marshal" "0.1.7"
    , callHackage "pandoc-types" "1.22.2.1"
    , callHackage "pandoc" "2.19.2"
    , callHackage "parallel" "3.2.2.0"
    , callHackage "password-types" "1.0.0.0"
    , callHackage "password" "3.0.2.0"
    , callHackage "path-io" "1.7.0"
    , callHackage "path" "0.9.2"
    , callHackage "pcg-random" "0.1.3.7"
    , callHackage "pcre2" "2.2.1"
    , callHackage "pem" "0.2.4"
    , callHackage "persistent" "2.14.3.0"
    , callHackage "pg-entity" "0.0.2.0"
    , callHackage "pg-transact" "0.3.2.0"
    , callCabal2nix
        "pg-transact-effectful"
        "https://github.com/Kleidukos/pg-transact-effectful"
        (Some "45730b124c7c21f1dcfd85667fda1c19b8ec9723")
        (None Text)
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
    , callHackage "postgresql-migration" "0.2.1.4"
    , callHackage "postgresql-simple" "0.6.4"
    , callHackage "postgresql-simple-migration" "0.1.15.0"
    , callHackage "pretty-show" "1.10"
    , callHackage "pretty-simple" "4.1.1.0"
    , callHackage "prettyprinter-ansi-terminal" "1.1.3"
    , callHackage "primitive" "0.7.4.0"
    , callHackage "primitive-addr" "0.1.0.2"
    , callHackage "profunctors" "5.6.2"
    , callHackage "prometheus-client" "1.1.0"
    , callHackage "prometheus-proc" "0.1.4.0"
    , callHackage "proteaaudio-sdl" "0.9.2"
    , callHackage "psqueues" "0.2.7.3"
    , callHackage "quickcheck-classes" "0.6.5.0"
    , callHackage "quickcheck-dynamic" "2.0.0"
    , callHackage "quickcheck-instances" "0.3.28"
    , callHackage "rebase" "1.16"
    , callHackage "reducers" "3.12.4"
    , callHackage "refined" "0.8"
    , callHackage "reflection" "2.1.6"
    , callHackage "resource-pool" "0.3.1.0"
    , callHackage "resourcet" "1.3.0"
    , callHackage "rerebase" "1.15.0.3"
    , callHackage "rere" "0.2"
    , callHackage "relude" "1.1.0.0"
    , callHackage "retry" "0.9.3.0"
    , callHackage "rope-utf16-splay" "0.4.0.0"
    , callHackage "safe-coloured-text-terminfo" "0.1.0.0"
    , callHackage "safe-coloured-text" "0.2.0.1"
    , callHackage "safe-exceptions" "0.1.7.3"
    , callHackage "saltine" "0.1.1.1"
    , callHackage "scotty" "0.12"
    , callHackage "scientific" "0.3.7.0"
    , callHackage "sdl2" "2.5.3.3"
    , callHackage "sdl2-gfx" "0.3.0.0"
    , callHackage "sdl2-image" "2.1.0.0"
    , callHackage "sdl2-mixer" "1.2.0.0"
    , callHackage "sdl2-ttf" "2.1.3"
    , callHackage "semialign" "1.2.0.1"
    , callHackage "semigroups" "0.20"
    , callHackage "semigroupoids" "5.3.7"
    , callHackage "semirings" "0.6"
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
        "servant-effectful"
        "https://github.com/kleidukos/servant-effectful"
        (Some "65e3041c6cfbc315b20ad22ca18f61dda104eec8")
        (None Text)
    , callCabal2nix
        "servant-foreign"
        "https://github.com/TeofilC/servant"
        (Some "76fc90a51f915230bbe1e0d1dbe9727fcdc7a0fc")
        (Some "servant-foreign")

    , callHackage "servant-lucid" "0.9.0.5"
    , callHackage "servant-multipart" "0.12.1"
    , callHackage "servant-multipart-api" "0.12.1"
    , callHackage "servant-polysemy" "0.1.3"
    , callCabal2nix
        "servant-server"
        "https://github.com/TeofilC/servant"
        (Some "76fc90a51f915230bbe1e0d1dbe9727fcdc7a0fc")
        (Some "servant-server")
    , callHackage "servant-swagger" "1.1.11"  
    , callHackage "servant-swagger-ui" "0.3.5.4.5.0"
    , callHackage "servant-swagger-ui-core" "0.3.5"
    , callHackage "servant-static-th" "1.0.0.0"
    , callHackage "shake" "0.19.6"
    , callHackage "shelly" "1.10.0"
    , callHackage "simple-sendfile" "0.2.30"
    , callHackage "singleton-bool" "0.1.6"
    , callHackage "singletons" "3.0.2"
    , callHackage "slugify" "0.1.0.1"
    , callHackage "skylighting" "0.13.1.1"
    , callHackage "skylighting-core" "0.13.1.1"
    , callHackage "skylighting-format-ansi" "0.1"
    , callHackage "skylighting-format-blaze-html" "0.1"
    , callHackage "skylighting-format-latex" "0.1"
    , callHackage "socks" "0.6.1"
    , callHackage "some" "1.0.4"
    , callHackage "sop-core" "0.5.0.1"
    , callHackage "souffle-haskell" "3.5.0"
    , callHackage "split" "0.2.3.3"
    , callHackage "streaming-commons" "0.2.2.4"
    , callHackage "strict" "0.4.0.1"
    , callHackage "string-interpolate" "0.3.1.2"
    , callHackage "string-qq" "0.0.4"
    , callHackage "swagger2" "2.8.5"
    , callHackage "syb" "0.7.2.1"
    , callHackage "sydtest" "0.13.0.0"
    , callHackage "sydtest-discover" "0.0.0.2"
    , callHackage "tagged" "0.8.6.1"
    , callCabal2nix
        "tasty"
        "https://github.com/UnkindPartition/tasty"
        (None Text)
        (Some "core")
    , callHackage "tasty-discover" "5.0.0"
    , callHackage "tasty-expected-failure" "0.12.3"
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
    , callHackage "tasty-lua" "1.0.2"
    , callHackage "tasty-hslua" "1.0.2"
    , callHackage "tasty-golden" "2.3.5"
    , callHackage "tasty-quickcheck" "0.10.2"
    , callHackage "tasty-wai" "0.1.2.0"
    , callHackage "test-framework" "0.8.2.0"
    , callHackage "test-framework-hunit" "0.3.0.2"
    , callHackage "test-framework-quickcheck2" "0.3.0.5"
    , callHackage "texmath" "0.12.5.4"
    , callHackage "text-display" "0.0.3.0"
    , callHackage "text-manipulate" "0.3.1.0"
    , callHackage "text-metrics" "0.3.2"
    , callHackage "text-short" "0.1.5"
    , callHackage "text-zipper" "0.12"
    , callHackage "these" "1.1.1.1"
    , callHackage "these-skinny" "0.7.5"
    , callHackage "tf-random" "0.5"
    , callHackage "th-extras" "0.0.0.6"
    , callHackage "th-lift-instances" "0.1.20"
    , callHackage "tidal" "1.8.1"
    , callHackage "time-compat" "1.9.6.1"
    , callCabal2nix
        "time-effectful"
        "https://github.com/haskell-effectful/time-effectful"
        (Some "e212239b685e1ecf7ee95dd1e944cc563351907f")
        (None Text)
    , callHackage "tls" "1.6.0"
    , callHackage "tree-diff" "0.2.2"
    , callHackage "trifecta" "2.1.2"
    , callHackage "typed-process" "0.2.10.1"
    , callHackage "type-errors-pretty" "0.0.1.2"
    , callHackage "type-errors" "0.2.0.0"
    , callHackage "type-equality" "1"
    , callCabal2nix
        "typerep-map"
        "https://github.com/parsonsmatt/typerep-map"
        (Some "75b7cd5d45986be07420a6821d352ad2adc0b697")
        (None Text)
    , callHackage "unagi-chan" "0.4.1.4"
    , callHackage "unicode-collation" "0.1.3.2"
    , callHackage "unicode-data" "0.4.0"
    , callHackage "unicode-transforms" "0.4.0.1"
    , callHackage "uniplate" "1.6.13"
    , callHackage "universe-base" "1.1.3"
    , callHackage "unliftio-core" "0.2.0.1"
    , callHackage "unliftio" "0.2.23.0"
    , callHackage "unordered-containers" "0.2.19.1"
    , callHackage "uri-encode" "1.5.0.7"
    , callHackage "uuid-types" "1.0.5"
    , callHackage "uuid" "1.3.15"
    , callHackage "validity" "0.12.0.1"
    , callHackage "validity-aeson" "0.2.0.5"
    , callHackage "validity-bytestring" "0.4.1.1"
    , callHackage "validity-case-insensitive" "0.0.0.0"
    , callHackage "validity-containers" "0.5.0.4"
    , callHackage "validity-path" "0.4.0.1"
    , callHackage "validity-persistent" "0.0.0.0"
    , callHackage "validity-primitive" "0.0.0.1"
    , callHackage "validity-scientific" "0.2.0.3"
    , callHackage "validity-text" "0.3.1.3"
    , callHackage "validity-time" "0.5.0.0"
    , callHackage "validity-unordered-containers" "0.2.0.3"
    , callHackage "validity-uuid" "0.1.0.3"
    , callHackage "validity-vector" "0.2.0.3"
    , callHackage "vault" "0.3.1.5"
    , callHackage "vector" "0.13.0.0"
    , callHackage "vector-algorithms" "0.9.0.1"
    , callHackage "vec" "0.4.1"
    , callHackage "vinyl" "0.14.3"
    , callHackage "void" "0.7.3"
    , callHackage "vty" "5.37"
    , callHackage "wai-app-static" "3.1.7.4"
    , callHackage "wai-extra" "3.1.13.0"
    , callCabal2nix
        "wai-middleware-heartbeat"
        "https://github.com/flora-pm/wai-middleware-heartbeat"
        (Some "bd7dbbe83d25c00fcd2cf5c77736af904910c596")
        (None Text)
    , callHackage "wai-logger" "2.4.0"
    , callHackage "wai-middleware-static" "0.9.2"
    , callHackage "wai" "3.2.3"
    , callHackage "warp" "3.3.22"
    , callHackage "warp-tls" "3.3.3"
    , callHackage "witherable" "0.4.2"
    , callHackage "with-utf8" "1.0.2.3"
    , callHackage "x509-store" "1.6.9"
    , callHackage "x509-system" "1.6.7"
    , callHackage "x509-validation" "1.6.12"
    , callHackage "x509" "1.7.7"
    , callHackage "xml-conduit" "1.9.1.1"
    , callHackage "yaml" "0.11.8.0"
    ]
