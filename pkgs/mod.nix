{ mkDerivation
, base
, deepseq
, integer-gmp
, lib
, primitive
, quickcheck-classes
, quickcheck-classes-base
, semirings
, tasty
, tasty-bench
, tasty-quickcheck
, vector
}:
mkDerivation {
  pname = "mod";
  version = "0.1.2.2";
  sha256 = "db98ad817c45e89984428cae6b5f88074220955035520cafe552ce2146f32255";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    deepseq
    integer-gmp
    primitive
    semirings
    vector
  ];
  testHaskellDepends = [
    base
    primitive
    quickcheck-classes
    quickcheck-classes-base
    semirings
    tasty
    tasty-quickcheck
    vector
  ];
  benchmarkHaskellDepends = [ base tasty-bench ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/Bodigrim/mod";
  description = "Fast type-safe modular arithmetic";
  license = lib.licenses.mit;
  broken = false;
}
