{ mkDerivation
, aeson
, base
, blaze-markup
, bytestring
, http-media
, lib
, servant
, servant-blaze
, servant-server
, text
, transformers
, transformers-compat
, wai-app-static
}:
mkDerivation {
  pname = "servant-swagger-ui-core";
  version = "0.3.5";
  sha256 = "ed0bf0b2fbdb1751350df6780335de00ae08dd90ac4728a88369f4b132cf7b32";
  revision = "5";
  editedCabalFile = "1v80wydj605b1la1pa5b4l6c3ba86x2dlpnravvhmx32mkkxk7v2";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    blaze-markup
    bytestring
    http-media
    servant
    servant-blaze
    servant-server
    text
    transformers
    transformers-compat
    wai-app-static
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-servant/servant-swagger-ui";
  description = "Servant swagger ui core components";
  license = lib.licenses.bsd3;
  broken = false;
}
