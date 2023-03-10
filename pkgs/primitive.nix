{ mkDerivation
, QuickCheck
, base
, base-orphans
, deepseq
, ghc-prim
, lib
, quickcheck-classes-base
, tagged
, tasty
, tasty-bench
, tasty-quickcheck
, template-haskell
, transformers
, transformers-compat
}:
mkDerivation {
  pname = "primitive";
  version = "0.7.4.0";
  sha256 = "5b2d6dc2812eb2f6a115f05fcbe3e723d3aeff7894b012c617e075130581add5";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    deepseq
    template-haskell
    transformers
  ];
  testHaskellDepends = [
    base
    base-orphans
    ghc-prim
    QuickCheck
    quickcheck-classes-base
    tagged
    tasty
    tasty-quickcheck
    transformers
    transformers-compat
  ];
  benchmarkHaskellDepends = [
    base
    deepseq
    tasty-bench
    transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/primitive";
  description = "Primitive memory-related operations";
  license = lib.licenses.bsd3;
  broken = false;
}
