{ mkDerivation
, base
, blaze-builder
, bytestring
, containers
, HUnit
, lib
, QuickCheck
, tasty
, tasty-hunit
, tasty-quickcheck
, text
}:
mkDerivation {
  pname = "blaze-markup";
  version = "0.8.2.8";
  sha256 = "43fc3f6872dc8d1be8d0fe091bd4775139b42179987f33d6490a7c5f1e07a349";
  revision = "3";
  editedCabalFile = "1hn694kk615prqdn7bfzl0wvbw8bksxk4cxwmx8yhwpl0cq3fiwa";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base blaze-builder bytestring text ];
  testHaskellDepends = [
    base
    blaze-builder
    bytestring
    containers
    HUnit
    QuickCheck
    tasty
    tasty-hunit
    tasty-quickcheck
    text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://jaspervdj.be/blaze";
  description = "A blazingly fast markup combinator library for Haskell";
  license = lib.licenses.bsd3;
  broken = false;
}
