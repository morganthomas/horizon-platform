{ mkDerivation
, QuickCheck
, aeson
, base
, base-orphans
, containers
, lib
, primitive
, primitive-addr
, quickcheck-classes-base
, semigroupoids
, semirings
, tagged
, tasty
, tasty-quickcheck
, transformers
, vector
}:
mkDerivation {
  pname = "quickcheck-classes";
  version = "0.6.5.0";
  sha256 = "62e32ad01c194798ebfb1a39ea9c06ccd54bd6d21cf726e9d0fc9db56b093ca6";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    containers
    primitive
    primitive-addr
    QuickCheck
    quickcheck-classes-base
    semigroupoids
    semirings
    transformers
    vector
  ];
  testHaskellDepends = [
    aeson
    base
    base-orphans
    containers
    primitive
    QuickCheck
    semigroupoids
    tagged
    tasty
    tasty-quickcheck
    transformers
    vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/andrewthad/quickcheck-classes#readme";
  description = "QuickCheck common typeclasses";
  license = lib.licenses.bsd3;
  broken = false;
}
