{ mkDerivation
, base
, bytestring
, ChasingBottoms
, containers
, deepseq
, hashable
, hashmap
, HUnit
, lib
, mtl
, nothunks
, QuickCheck
, random
, tasty
, tasty-bench
, tasty-hunit
, tasty-quickcheck
, template-haskell
}:
mkDerivation {
  pname = "unordered-containers";
  version = "0.2.19.1";
  sha256 = "1b27bec5e0d522b27a6029ebf4c4a6d40acbc083c787008e32fb55c4b1d128d2";
  revision = "1";
  editedCabalFile = "0fcax3apnpxxy9maymclr6s2b4c28d3pkl3plbg0lv1mn0mh84fv";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq hashable template-haskell ];
  testHaskellDepends = [
    base
    ChasingBottoms
    containers
    hashable
    HUnit
    nothunks
    QuickCheck
    random
    tasty
    tasty-hunit
    tasty-quickcheck
  ];
  benchmarkHaskellDepends = [
    base
    bytestring
    containers
    deepseq
    hashable
    hashmap
    mtl
    random
    tasty-bench
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-unordered-containers/unordered-containers";
  description = "Efficient hashing-based container types";
  license = lib.licenses.bsd3;
  broken = false;
}
