{ mkDerivation, array, base, binary, bytestring, containers
, deepseq, directory, fetchgit, filepath, lib, mtl, parsec, pretty
, text, time, transformers, unix
}:
mkDerivation {
  pname = "Cabal-syntax";
  version = "3.9.0.0";
  src = fetchgit {
    url = "https://gitlab.haskell.org/ghc/packages/Cabal";
    sha256 = "1h6bzv5zdbjhmrnqa3n14s1zybjxvspiqq228ksqcm2jfs4mbf96";
    rev = "06cbab69946768e766447b66a7ea168469a2c1a9";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/Cabal-syntax/; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [
    array base binary bytestring containers deepseq directory filepath
    mtl parsec pretty text time transformers unix
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "http://www.haskell.org/cabal/";
  description = "A library for working with .cabal files";
  license = lib.licenses.bsd3;
}