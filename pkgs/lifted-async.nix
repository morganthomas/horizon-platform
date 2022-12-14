{ mkDerivation
, HUnit
, async
, base
, constraints
, deepseq
, lib
, lifted-base
, monad-control
, mtl
, tasty
, tasty-bench
, tasty-expected-failure
, tasty-hunit
, tasty-th
, transformers-base
}:
mkDerivation {
  pname = "lifted-async";
  version = "0.10.2.1";
  sha256 = "0d05715f44bb5464f97bac46302a81338271375b07c54c90efb33b1c0e298e48";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    async
    base
    constraints
    lifted-base
    monad-control
    transformers-base
  ];
  testHaskellDepends = [
    async
    base
    HUnit
    lifted-base
    monad-control
    mtl
    tasty
    tasty-expected-failure
    tasty-hunit
    tasty-th
  ];
  benchmarkHaskellDepends = [ async base deepseq tasty-bench ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/maoe/lifted-async";
  description = "Run lifted IO operations asynchronously and wait for their results";
  license = lib.licenses.bsd3;
  broken = false;
}
