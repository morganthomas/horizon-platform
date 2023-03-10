{ mkDerivation
, Glob
, HUnit
, QuickCheck
, aeson
, ansi-wl-pprint
, base
, base-compat
, base-compat-batteries
, binary
, binary-orphans
, bytestring
, cassava
, code-page
, containers
, criterion-measurement
, deepseq
, directory
, exceptions
, filepath
, js-chart
, lib
, microstache
, mtl
, mwc-random
, optparse-applicative
, parsec
, statistics
, tasty
, tasty-hunit
, tasty-quickcheck
, text
, time
, transformers
, transformers-compat
, vector
, vector-algorithms
}:
mkDerivation {
  pname = "criterion";
  version = "1.5.13.0";
  sha256 = "e2a8545eb62340ecb3c93b156495cd76cd0ef7d63c026904297f0afe1aa579a7";
  revision = "2";
  editedCabalFile = "09s70kqkp1j78idaqrpnz8v870vy6xyclnpz9g4x70cr4r67lqkd";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    aeson
    ansi-wl-pprint
    base
    base-compat-batteries
    binary
    binary-orphans
    bytestring
    cassava
    code-page
    containers
    criterion-measurement
    deepseq
    directory
    exceptions
    filepath
    Glob
    js-chart
    microstache
    mtl
    mwc-random
    optparse-applicative
    parsec
    statistics
    text
    time
    transformers
    transformers-compat
    vector
    vector-algorithms
  ];
  executableHaskellDepends = [
    base
    base-compat-batteries
    optparse-applicative
  ];
  testHaskellDepends = [
    aeson
    base
    base-compat
    base-compat-batteries
    bytestring
    deepseq
    directory
    HUnit
    QuickCheck
    statistics
    tasty
    tasty-hunit
    tasty-quickcheck
    vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.serpentine.com/criterion";
  description = "Robust, reliable performance measurement and analysis";
  license = lib.licenses.bsd3;
  broken = false;
}
