{ mkDerivation
, HUnit
, QuickCheck
, base
, bytestring
, containers
, foldl
, gauge
, hashable
, hspec
, lib
, mwc-random
, split
, text
, transformers
, unordered-containers
, vector
, vector-algorithms
}:
mkDerivation {
  pname = "mono-traversable";
  version = "1.0.15.3";
  sha256 = "98b220f3313d74227a4249210c8818e839678343e62b3ebb1b8c867cf2b974b7";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    containers
    hashable
    split
    text
    transformers
    unordered-containers
    vector
    vector-algorithms
  ];
  testHaskellDepends = [
    base
    bytestring
    containers
    foldl
    hspec
    HUnit
    QuickCheck
    text
    transformers
    unordered-containers
    vector
  ];
  benchmarkHaskellDepends = [ base gauge mwc-random vector ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/snoyberg/mono-traversable#readme";
  description = "Type classes for mapping, folding, and traversing monomorphic containers";
  license = lib.licenses.mit;
  broken = false;
}
