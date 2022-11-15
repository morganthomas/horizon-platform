{ mkDerivation
, aeson
, aeson-pretty
, base
, bytestring
, deepseq
, exceptions
, lib
, mmorph
, monad-control
, mtl
, semigroups
, stm
, text
, time
, transformers-base
, unliftio-core
, unordered-containers
}:
mkDerivation {
  pname = "log-base";
  version = "0.12.0.0";
  sha256 = "4f6735d4daeec234b32480cea9bddbc5952fdeba73f2ee88c06698eb2136c47c";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    aeson-pretty
    base
    bytestring
    deepseq
    exceptions
    mmorph
    monad-control
    mtl
    semigroups
    stm
    text
    time
    transformers-base
    unliftio-core
    unordered-containers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/scrive/log";
  description = "Structured logging solution (base package)";
  license = lib.licenses.bsd3;
  broken = false;
}
