{ mkDerivation
, base
, base16-bytestring
, base64-bytestring
, bytestring
, hspec
, hspec-discover
, lib
, text
}:
mkDerivation {
  pname = "text-conversions";
  version = "0.3.1.1";
  sha256 = "c8770fba789ce80334cae628285103c49abec0fa074773cbb5a88e26f5a7725d";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    base16-bytestring
    base64-bytestring
    bytestring
    text
  ];
  testHaskellDepends = [ base bytestring hspec text ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/cjdev/text-conversions";
  description = "Safe conversions between textual types";
  license = lib.licenses.isc;
  broken = false;
}
