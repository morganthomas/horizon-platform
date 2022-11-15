{ mkDerivation
, array
, base
, binary
, bytestring
, containers
, deepseq
, directory
, fetchgit
, filepath
, lib
, mtl
, parsec
, pretty
, text
, time
, transformers
, unix
}:
mkDerivation {
  pname = "Cabal-syntax";
  version = "3.9.0.0";
  src = fetchgit {
    url = "https://gitlab.haskell.org/ghc/packages/Cabal";
    sha256 = "13prqza1wk1gc0az8lizrm97w6rwxv5lzvy5a4gahpr2wsliqjfg";
    rev = "e9fdb85427ad1ef11a25c8b1f2286614c86a65ff";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/Cabal-syntax/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array
    base
    binary
    bytestring
    containers
    deepseq
    directory
    filepath
    mtl
    parsec
    pretty
    text
    time
    transformers
    unix
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.haskell.org/cabal/";
  description = "A library for working with .cabal files";
  license = lib.licenses.bsd3;
  broken = false;
}
