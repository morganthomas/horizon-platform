{ mkDerivation
, aeson
, aeson-pretty
, base
, bytestring
, cborg
, criterion
, deepseq
, directory
, lib
, process
, scientific
, text
, unordered-containers
, vector
, zlib
}:
mkDerivation {
  pname = "cborg-json";
  version = "0.2.5.0";
  sha256 = "58c373453f06fd8558e062c4fbe6dd862cb0ae28ac3c02ba3b607573bd077cd4";
  libraryHaskellDepends = [
    aeson
    aeson-pretty
    base
    cborg
    scientific
    text
    unordered-containers
    vector
  ];
  benchmarkHaskellDepends = [
    aeson
    base
    bytestring
    cborg
    criterion
    deepseq
    directory
    process
    zlib
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/well-typed/cborg";
  description = "A library for encoding JSON as CBOR";
  license = lib.licenses.bsd3;
}
