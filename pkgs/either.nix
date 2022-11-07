{ mkDerivation
, base
, bifunctors
, lib
, mtl
, profunctors
, QuickCheck
, semigroupoids
, test-framework
, test-framework-quickcheck2
}:
mkDerivation {
  pname = "either";
  version = "5.0.2";
  sha256 = "bfa45b967fd77b1c7c952e156377441e3c42b6dc873ab1f06a7421a3222287be";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bifunctors
    mtl
    profunctors
    semigroupoids
  ];
  testHaskellDepends = [
    base
    QuickCheck
    test-framework
    test-framework-quickcheck2
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ekmett/either/";
  description = "Combinators for working with sums";
  license = lib.licenses.bsd3;
  broken = false;
}
