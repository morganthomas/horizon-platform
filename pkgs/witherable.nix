{ mkDerivation
, base
, base-orphans
, containers
, hashable
, indexed-traversable
, indexed-traversable-instances
, lib
, QuickCheck
, quickcheck-instances
, tasty
, tasty-quickcheck
, transformers
, unordered-containers
, vector
}:
mkDerivation {
  pname = "witherable";
  version = "0.4.2";
  sha256 = "790d2bb274283419173bd89104439860675a9410f70f21912973ecd9098b4104";
  revision = "3";
  editedCabalFile = "1f2bvl41by904lnr0dk6qgasqwadq2w48l7fj51bp2h8bqbkdjyc";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    base-orphans
    containers
    hashable
    indexed-traversable
    indexed-traversable-instances
    transformers
    unordered-containers
    vector
  ];
  testHaskellDepends = [
    base
    containers
    hashable
    QuickCheck
    quickcheck-instances
    tasty
    tasty-quickcheck
    transformers
    unordered-containers
    vector
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/fumieval/witherable";
  description = "filterable traversable";
  license = lib.licenses.bsd3;
  broken = false;
}
