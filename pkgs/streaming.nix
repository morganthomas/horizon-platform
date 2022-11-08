{ mkDerivation
, base
, containers
, ghc-prim
, hspec
, lib
, mmorph
, mtl
, QuickCheck
, transformers
, transformers-base
}:
mkDerivation {
  pname = "streaming";
  version = "0.2.3.1";
  sha256 = "fc5efae393750b9729ce5c5e979edcd3b9a5bf41ab927636174b01f999ffea88";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    containers
    ghc-prim
    mmorph
    mtl
    transformers
    transformers-base
  ];
  testHaskellDepends = [ base hspec QuickCheck ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-streaming/streaming";
  description = "an elementary streaming prelude and general stream type";
  license = lib.licenses.bsd3;
  broken = false;
}
