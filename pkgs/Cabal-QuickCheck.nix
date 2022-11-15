{ mkDerivation
, base
, bytestring
, Cabal
, Cabal-syntax
, fetchgit
, lib
, QuickCheck
}:
mkDerivation {
  pname = "Cabal-QuickCheck";
  version = "3.9.0.0";
  src = fetchgit {
    url = "https://gitlab.haskell.org/ghc/packages/Cabal";
    sha256 = "13prqza1wk1gc0az8lizrm97w6rwxv5lzvy5a4gahpr2wsliqjfg";
    rev = "e9fdb85427ad1ef11a25c8b1f2286614c86a65ff";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/Cabal-QuickCheck/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    Cabal
    Cabal-syntax
    QuickCheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "QuickCheck instances for types in Cabal";
  license = "unknown";
  broken = false;
}
