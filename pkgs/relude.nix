{ mkDerivation
, Glob
, base
, bytestring
, containers
, deepseq
, doctest
, ghc-prim
, hashable
, hedgehog
, lib
, mtl
, stm
, tasty-bench
, text
, transformers
, unordered-containers
}:
mkDerivation {
  pname = "relude";
  version = "1.1.0.0";
  sha256 = "b51df08a93ef1331dd56389e158e67ac7b68c62cc1561c2890d3572c764ab609";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    containers
    deepseq
    ghc-prim
    hashable
    mtl
    stm
    text
    transformers
    unordered-containers
  ];
  testHaskellDepends = [
    base
    bytestring
    containers
    doctest
    Glob
    hedgehog
    text
  ];
  benchmarkHaskellDepends = [
    base
    tasty-bench
    unordered-containers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/kowainik/relude";
  description = "Safe, performant, user-friendly and lightweight Haskell Standard Library";
  license = lib.licenses.mit;
  broken = false;
}
