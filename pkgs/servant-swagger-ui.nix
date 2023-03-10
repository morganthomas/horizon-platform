{ mkDerivation
, aeson
, base
, bytestring
, file-embed-lzma
, lib
, servant
, servant-server
, servant-swagger-ui-core
, text
}:
mkDerivation {
  pname = "servant-swagger-ui";
  version = "0.3.5.4.5.0";
  sha256 = "efa528edc055dc6c9e83dfdfe4b892be439bbcfb83a73847f6cfdb35c42f878b";
  revision = "3";
  editedCabalFile = "0qspb55lvavfsyqjjjyyax9gqzp8yq9r13nvzj3qnsipjgw2irln";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    bytestring
    file-embed-lzma
    servant
    servant-server
    servant-swagger-ui-core
    text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-servant/servant-swagger-ui";
  description = "Servant swagger ui";
  license = lib.licenses.bsd3;
  broken = false;
}
