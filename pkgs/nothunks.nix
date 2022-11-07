{ mkDerivation
, base
, bytestring
, containers
, ghc-heap
, ghc-prim
, hedgehog
, lib
, random
, stm
, tasty
, tasty-hedgehog
, text
, time
, vector
}:
mkDerivation {
  pname = "nothunks";
  version = "0.1.3";
  sha256 = "c191e9c3d86ca006bf8d85adfd936ff997759120b0fcfaf4960a56d8bd850e53";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    containers
    ghc-heap
    stm
    text
    time
    vector
  ];
  testHaskellDepends = [
    base
    containers
    ghc-prim
    hedgehog
    random
    stm
    tasty
    tasty-hedgehog
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Examine values for unexpected thunks";
  license = lib.licenses.mit;
  broken = false;
}
