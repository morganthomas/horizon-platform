{ mkDerivation
, base
, Cabal
, Cabal-syntax
, containers
, fetchgit
, lib
, pretty
, QuickCheck
, rere
, tasty
, tasty-quickcheck
, transformers
}:
mkDerivation {
  pname = "Cabal-described";
  version = "3.9.0.0";
  src = fetchgit {
    url = "https://gitlab.haskell.org/ghc/packages/Cabal";
    sha256 = "1h6bzv5zdbjhmrnqa3n14s1zybjxvspiqq228ksqcm2jfs4mbf96";
    rev = "06cbab69946768e766447b66a7ea168469a2c1a9";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/Cabal-described/; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [
    base
    Cabal
    Cabal-syntax
    containers
    pretty
    QuickCheck
    rere
    tasty
    tasty-quickcheck
    transformers
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  description = "Described functionality for types in Cabal";
  license = "unknown";
}
