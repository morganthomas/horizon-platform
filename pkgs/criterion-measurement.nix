{ mkDerivation
, aeson
, base
, base-compat
, binary
, containers
, deepseq
, lib
, vector
}:
mkDerivation {
  pname = "criterion-measurement";
  version = "0.2.0.0";
  sha256 = "4a1a50d74341ee23ad7250da8eafdd0a40bcd4d08836ec76c956dcc1c9b2cab3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    base-compat
    binary
    containers
    deepseq
    vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/criterion";
  description = "Criterion measurement functionality and associated types";
  license = lib.licenses.bsd3;
  broken = false;
}
