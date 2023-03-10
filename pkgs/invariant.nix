{ mkDerivation
, QuickCheck
, StateVar
, array
, base
, bifunctors
, comonad
, containers
, contravariant
, ghc-prim
, hspec
, hspec-discover
, lib
, profunctors
, stm
, tagged
, template-haskell
, th-abstraction
, transformers
, transformers-compat
, unordered-containers
}:
mkDerivation {
  pname = "invariant";
  version = "0.6";
  sha256 = "b52b2a798c514e2f3bb37d9d629078f433745fa8a25756198c4d33751d7bce1d";
  revision = "1";
  editedCabalFile = "0551ll1swnrmq09j89jqnxl4qnirbbpdpsdym23adaf36qdd7v37";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array
    base
    bifunctors
    comonad
    containers
    contravariant
    ghc-prim
    profunctors
    StateVar
    stm
    tagged
    template-haskell
    th-abstraction
    transformers
    transformers-compat
    unordered-containers
  ];
  testHaskellDepends = [ base hspec QuickCheck template-haskell ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nfrisby/invariant-functors";
  description = "Haskell98 invariant functors";
  license = lib.licenses.bsd2;
  broken = false;
}
