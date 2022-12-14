{ mkDerivation
, HUnit
, QuickCheck
, base
, bytestring
, data-default-class
, deepseq
, lib
, tasty
, tasty-hunit
, tasty-quickcheck
, text
, time
}:
mkDerivation {
  pname = "cookie";
  version = "0.4.5";
  sha256 = "707f94d1b31018b91d6a1e9e19ef5413e20d02cab00ad93a5fd7d7b3b46a3583";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    data-default-class
    deepseq
    text
    time
  ];
  testHaskellDepends = [
    base
    bytestring
    HUnit
    QuickCheck
    tasty
    tasty-hunit
    tasty-quickcheck
    text
    time
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/snoyberg/cookie";
  description = "HTTP cookie parsing and rendering";
  license = lib.licenses.mit;
  broken = false;
}
