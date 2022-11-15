{ mkDerivation
, base
, binary
, bytestring
, hspec
, hspec-discover
, lib
, old-locale
, old-time
, QuickCheck
, time
}:
mkDerivation {
  pname = "unix-time";
  version = "0.4.8";
  sha256 = "fedeb6a11bcb5396f50a30166a6bb05e56fc9866be4066718404bd8940ace843";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base binary bytestring old-time ];
  testHaskellDepends = [
    base
    bytestring
    hspec
    old-locale
    old-time
    QuickCheck
    time
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Unix time parser/formatter and utilities";
  license = lib.licenses.bsd3;
  broken = false;
}
