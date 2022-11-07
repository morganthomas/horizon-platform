{ mkDerivation
, base
, hspec
, hspec-core
, hspec-discover
, HUnit
, lib
, QuickCheck
}:
mkDerivation {
  pname = "hspec-contrib";
  version = "0.5.1.1";
  sha256 = "fde656a694dafbb8e147c1ca41eff5eef6a273f79fbae1bc0722e128852dcbdb";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base hspec-core HUnit ];
  testHaskellDepends = [ base hspec hspec-core HUnit QuickCheck ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://hspec.github.io/";
  description = "Contributed functionality for Hspec";
  license = lib.licenses.mit;
  broken = false;
}
