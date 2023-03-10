{ mkDerivation
, Cabal
, HUnit
, QuickCheck
, ansi-terminal
, base
, binary
, blaze-builder
, bytestring
, containers
, deepseq
, directory
, filepath
, hashable
, lib
, microlens
, microlens-mtl
, microlens-th
, mtl
, parallel
, parsec
, quickcheck-assertions
, random
, smallcheck
, stm
, string-qq
, terminfo
, test-framework
, test-framework-hunit
, test-framework-smallcheck
, text
, transformers
, unix
, utf8-string
, vector
}:
mkDerivation {
  pname = "vty";
  version = "5.37";
  sha256 = "67e1376b735232c3a5e7fa3c3eff00fdc457bdd5ba7dcf3a758aee6b8b60cdf0";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    ansi-terminal
    base
    binary
    blaze-builder
    bytestring
    containers
    deepseq
    directory
    filepath
    hashable
    microlens
    microlens-mtl
    microlens-th
    mtl
    parallel
    parsec
    stm
    terminfo
    text
    transformers
    unix
    utf8-string
    vector
  ];
  executableHaskellDepends = [
    base
    containers
    directory
    filepath
    microlens
    microlens-mtl
    mtl
  ];
  testHaskellDepends = [
    base
    blaze-builder
    bytestring
    Cabal
    containers
    deepseq
    HUnit
    microlens
    microlens-mtl
    mtl
    QuickCheck
    quickcheck-assertions
    random
    smallcheck
    stm
    string-qq
    terminfo
    test-framework
    test-framework-hunit
    test-framework-smallcheck
    text
    unix
    utf8-string
    vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/jtdaugherty/vty";
  description = "A simple terminal UI library";
  license = lib.licenses.bsd3;
  broken = false;
}
