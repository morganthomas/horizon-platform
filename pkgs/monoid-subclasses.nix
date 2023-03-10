{ mkDerivation
, QuickCheck
, base
, bytestring
, containers
, lib
, primes
, quickcheck-instances
, tasty
, tasty-quickcheck
, text
, vector
}:
mkDerivation {
  pname = "monoid-subclasses";
  version = "1.1.3";
  sha256 = "9bf112d64c08438733e17fc0ef8fb2bae004d043ea9672c541f1d20c429cf4d9";
  revision = "1";
  editedCabalFile = "0y8sw3zsmz5ssn2gl2fsqg44n7xf3xsf6vhrzwnkbaa97hj76nh2";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    containers
    primes
    text
    vector
  ];
  testHaskellDepends = [
    base
    bytestring
    containers
    primes
    QuickCheck
    quickcheck-instances
    tasty
    tasty-quickcheck
    text
    vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/blamario/monoid-subclasses/";
  description = "Subclasses of Monoid";
  license = lib.licenses.bsd3;
  broken = false;
}
