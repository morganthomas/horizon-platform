{ mkDerivation
, base
, containers
, exceptions
, lib
, monad-control
, primitive
, transformers-base
, unliftio-core
}:
mkDerivation {
  pname = "effectful-core";
  version = "2.1.0.0";
  sha256 = "93920bb5b58d6c92f51823c95e436a1a35c40fa677ee4f96014267698c43efd1";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    containers
    exceptions
    monad-control
    primitive
    transformers-base
    unliftio-core
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "An easy to use, performant extensible effects library";
  license = lib.licenses.bsd3;
  broken = false;
}
