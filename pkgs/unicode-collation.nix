{ mkDerivation
, QuickCheck
, base
, binary
, bytestring
, containers
, lib
, parsec
, quickcheck-instances
, tasty
, tasty-bench
, tasty-hunit
, tasty-quickcheck
, template-haskell
, text
, text-icu
, th-lift-instances
, unicode-transforms
}:
mkDerivation {
  pname = "unicode-collation";
  version = "0.1.3.2";
  sha256 = "ec54952221a8bb79d5dbd9abd4501ffcce4be07fbe500928394c108ea010cb66";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    binary
    bytestring
    containers
    parsec
    template-haskell
    text
    th-lift-instances
  ];
  testHaskellDepends = [
    base
    bytestring
    tasty
    tasty-hunit
    tasty-quickcheck
    text
    unicode-transforms
  ];
  benchmarkHaskellDepends = [
    base
    QuickCheck
    quickcheck-instances
    tasty-bench
    text
    text-icu
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/jgm/unicode-collation";
  description = "Haskell implementation of the Unicode Collation Algorithm";
  license = lib.licenses.bsd2;
  broken = false;
}
