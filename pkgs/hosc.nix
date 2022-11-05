{ mkDerivation
, base
, binary
, blaze-builder
, bytestring
, data-binary-ieee754
, lib
, network
, time
, transformers
}:
mkDerivation {
  pname = "hosc";
  version = "0.19.1";
  sha256 = "e713022269060b53ae893c38c0827bb1a19f767dda96e28ee21d4f1d2e0a0223";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base
    binary
    blaze-builder
    bytestring
    data-binary-ieee754
    network
    time
    transformers
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://rohandrape.net/t/hosc";
  description = "Haskell Open Sound Control";
  license = lib.licenses.gpl3Only;
  broken = false;
}
