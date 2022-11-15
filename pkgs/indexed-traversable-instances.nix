{ mkDerivation
, base
, containers
, indexed-traversable
, lib
, OneTuple
, QuickCheck
, quickcheck-instances
, tagged
, tasty
, tasty-quickcheck
, transformers
, unordered-containers
, vector
}:
mkDerivation {
  pname = "indexed-traversable-instances";
  version = "0.1.1.1";
  sha256 = "895ee5063d59e2b58930ca6fa54885bb11f19c8b7c7ba6c7b014f9431cdcc0b0";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    indexed-traversable
    OneTuple
    tagged
    unordered-containers
    vector
  ];
  testHaskellDepends = [
    base
    containers
    indexed-traversable
    OneTuple
    QuickCheck
    quickcheck-instances
    tasty
    tasty-quickcheck
    transformers
    unordered-containers
    vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "More instances of FunctorWithIndex, FoldableWithIndex, TraversableWithIndex";
  license = lib.licenses.bsd2;
  broken = false;
}
