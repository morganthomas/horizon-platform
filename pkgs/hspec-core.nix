{ mkDerivation
, ansi-terminal
, array
, base
, base-orphans
, call-stack
, clock
, deepseq
, directory
, filepath
, ghc
, ghc-boot-th
, hspec-expectations
, hspec-meta
, HUnit
, lib
, process
, QuickCheck
, quickcheck-io
, random
, setenv
, silently
, stm
, temporary
, tf-random
, transformers
}:
mkDerivation {
  pname = "hspec-core";
  version = "2.10.0.1";
  sha256 = "144b16e45019c910c857cf4c6815a1f928ded861fc7047d64e1809dd2695a93c";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    ansi-terminal
    array
    base
    call-stack
    clock
    deepseq
    directory
    filepath
    ghc
    ghc-boot-th
    hspec-expectations
    HUnit
    QuickCheck
    quickcheck-io
    random
    setenv
    stm
    tf-random
    transformers
  ];
  testHaskellDepends = [
    ansi-terminal
    array
    base
    base-orphans
    call-stack
    clock
    deepseq
    directory
    filepath
    ghc
    ghc-boot-th
    hspec-expectations
    hspec-meta
    HUnit
    process
    QuickCheck
    quickcheck-io
    random
    setenv
    silently
    stm
    temporary
    tf-random
    transformers
  ];
  testToolDepends = [ hspec-meta ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  testTarget = "--test-option=--skip --test-option='Test.Hspec.Core.Runner.hspecResult runs specs in parallel'";
  homepage = "http://hspec.github.io/";
  description = "A Testing Framework for Haskell";
  license = lib.licenses.mit;
  broken = false;
}
