{ mkDerivation
, array
, base
, bytestring
, case-insensitive
, containers
, deepseq
, directory
, filepath
, ghc-prim
, http-types
, lib
, parsec
, QuickCheck
, quickcheck-unicode
, scientific
, tasty
, tasty-bench
, tasty-quickcheck
, text
, transformers
, unordered-containers
, vector
}:
mkDerivation {
  pname = "attoparsec";
  version = "0.14.4";
  sha256 = "3f337fe58624565de12426f607c23e60c7b09c86b4e3adfc827ca188c9979e6c";
  revision = "2";
  editedCabalFile = "00jyrn2asz1kp698l3fyh19xxxz4npf1993y041x9b9cq239smn0";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array
    base
    bytestring
    containers
    deepseq
    ghc-prim
    scientific
    text
    transformers
  ];
  testHaskellDepends = [
    array
    base
    bytestring
    deepseq
    QuickCheck
    quickcheck-unicode
    scientific
    tasty
    tasty-quickcheck
    text
    transformers
    vector
  ];
  benchmarkHaskellDepends = [
    array
    base
    bytestring
    case-insensitive
    containers
    deepseq
    directory
    filepath
    ghc-prim
    http-types
    parsec
    scientific
    tasty-bench
    text
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
  homepage = "https://github.com/bgamari/attoparsec";
  description = "Fast combinator parsing for bytestrings and text";
  license = lib.licenses.bsd3;
  broken = false;
}
