{ mkDerivation
, base
, containers
, ghc-prim
, hspec
, hspec-discover
, lib
, template-haskell
, th-abstraction
}:
mkDerivation {
  pname = "generic-deriving";
  version = "1.14.2";
  sha256 = "265e351117d451afaa37821ce91b44a02611cc94c7ed917a19e1efb0cc63aa2f";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    containers
    ghc-prim
    template-haskell
    th-abstraction
  ];
  testHaskellDepends = [ base hspec template-haskell ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/dreixel/generic-deriving";
  description = "Generic programming library for generalised deriving";
  license = lib.licenses.bsd3;
  broken = false;
}
