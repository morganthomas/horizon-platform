{ mkDerivation
, HUnit
, QuickCheck
, base
, ghc-prim
, hashable
, lib
, mwc-random
, primitive
, test-framework
, test-framework-hunit
, test-framework-quickcheck2
, vector
}:
mkDerivation {
  pname = "hashtables";
  version = "1.3";
  sha256 = "af785a6d13842ebbd804b0ec174dd957a2591b224434e3ce883f537321f90dd3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    ghc-prim
    hashable
    primitive
    vector
  ];
  testHaskellDepends = [
    base
    ghc-prim
    hashable
    HUnit
    mwc-random
    primitive
    QuickCheck
    test-framework
    test-framework-hunit
    test-framework-quickcheck2
    vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/gregorycollins/hashtables";
  description = "Mutable hash tables in the ST monad";
  license = lib.licenses.bsd3;
  broken = false;
}
