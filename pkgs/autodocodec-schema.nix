{ mkDerivation
, aeson
, autodocodec
, base
, containers
, lib
, mtl
, text
, unordered-containers
, validity
, validity-aeson
, validity-containers
, validity-text
}:
mkDerivation {
  pname = "autodocodec-schema";
  version = "0.1.0.2";
  sha256 = "7178bc6b356bf744918202312a71eb0c4fb9b2dfe70680c4acd8d8a5d0977c6f";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    autodocodec
    base
    containers
    mtl
    text
    unordered-containers
    validity
    validity-aeson
    validity-containers
    validity-text
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/autodocodec#readme";
  description = "Autodocodec interpreters for JSON Schema";
  license = lib.licenses.mit;
  broken = false;
}
