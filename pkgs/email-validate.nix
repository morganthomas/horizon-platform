{ mkDerivation
, QuickCheck
, attoparsec
, base
, bytestring
, doctest
, hspec
, lib
, template-haskell
}:
mkDerivation {
  pname = "email-validate";
  version = "2.3.2.16";
  sha256 = "b8e5f155c1ba78ae25be88858b201d138cd1363519572edd9a13a9d086f023b3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    attoparsec
    base
    bytestring
    template-haskell
  ];
  testHaskellDepends = [ base bytestring doctest hspec QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/Porges/email-validate-hs";
  description = "Email address validation";
  license = lib.licenses.bsd3;
  broken = false;
}
