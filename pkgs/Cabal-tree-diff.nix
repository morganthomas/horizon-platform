{ mkDerivation
, base
, Cabal
, Cabal-syntax
, fetchgit
, lib
, tree-diff
}:
mkDerivation {
  pname = "Cabal-tree-diff";
  version = "3.9.0.0";
  src = fetchgit {
    url = "https://gitlab.haskell.org/ghc/packages/Cabal";
    sha256 = "1h6bzv5zdbjhmrnqa3n14s1zybjxvspiqq228ksqcm2jfs4mbf96";
    rev = "06cbab69946768e766447b66a7ea168469a2c1a9";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/Cabal-tree-diff/; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [ base Cabal Cabal-syntax tree-diff ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  description = "QuickCheck instances for types in Cabal";
  license = "unknown";
}
