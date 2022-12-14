{ mkDerivation
, HUnit
, QuickCheck
, base
, bytestring
, deepseq
, directory
, hspec
, hspec-discover
, lib
, temporary
}:
mkDerivation {
  pname = "network";
  version = "3.1.2.7";
  sha256 = "7f7620fef1a1af3d3d6747f510e73223a5c600e7d7fd9ace073d1222bdc63d85";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring deepseq directory ];
  testHaskellDepends = [
    base
    bytestring
    directory
    hspec
    HUnit
    QuickCheck
    temporary
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/network";
  description = "Low-level networking interface";
  license = lib.licenses.bsd3;
  broken = false;
}
