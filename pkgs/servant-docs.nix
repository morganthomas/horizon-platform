{ mkDerivation
, aeson
, aeson-pretty
, base
, base-compat
, bytestring
, case-insensitive
, hashable
, http-media
, http-types
, lens
, lib
, servant
, string-conversions
, tasty
, tasty-golden
, tasty-hunit
, text
, transformers
, universe-base
, unordered-containers
}:
mkDerivation {
  pname = "servant-docs";
  version = "0.12";
  sha256 = "632475d906e823325b01230453c2a357afa916b2410365290e5497811b956114";
  revision = "3";
  editedCabalFile = "1brli8m3gvfji9b88xww5aifl1gq9lxacn3nhxbwndlnwznx7anz";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    aeson-pretty
    base
    base-compat
    bytestring
    case-insensitive
    hashable
    http-media
    http-types
    lens
    servant
    string-conversions
    text
    universe-base
    unordered-containers
  ];
  executableHaskellDepends = [
    aeson
    base
    lens
    servant
    string-conversions
    text
  ];
  testHaskellDepends = [
    aeson
    base
    base-compat
    lens
    servant
    string-conversions
    tasty
    tasty-golden
    tasty-hunit
    transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://docs.servant.dev/";
  description = "generate API docs for your servant webservice";
  license = lib.licenses.bsd3;
  mainProgram = "greet-docs";
  broken = false;
}
