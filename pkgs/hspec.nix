{ mkDerivation
, base
, hspec-core
, hspec-discover
, hspec-expectations
, lib
, QuickCheck
}:
mkDerivation {
  pname = "hspec";
  version = "2.10.3";
  sha256 = "e381944a27b5e736e514264f534218268785bcf8177d27126c68780fd9df07f2";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    hspec-core
    hspec-discover
    hspec-expectations
    QuickCheck
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://hspec.github.io/";
  description = "A Testing Framework for Haskell";
  license = lib.licenses.mit;
  broken = false;
}
