{ mkDerivation
, QuickCheck
, base
, hspec
, hspec-core
, lib
, tasty
, tasty-quickcheck
, tasty-smallcheck
}:
mkDerivation {
  pname = "tasty-hspec";
  version = "1.2.0.1";
  sha256 = "21813eff5187cd2489b855153466949b7379cfb2c7fc98ab680ad76a62177445";
  revision = "1";
  editedCabalFile = "0a6r4gzxzp6n90z0nif7ha7p7am57hs48i54i2y4z9kgjv6lnvll";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    hspec
    hspec-core
    QuickCheck
    tasty
    tasty-quickcheck
    tasty-smallcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/mitchellwrosen/tasty-hspec";
  description = "Hspec support for the Tasty test framework";
  license = lib.licenses.bsd3;
  broken = false;
}
