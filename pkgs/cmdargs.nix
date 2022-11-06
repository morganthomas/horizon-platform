{ mkDerivation
, base
, filepath
, lib
, process
, template-haskell
, transformers
}:
mkDerivation {
  pname = "cmdargs";
  version = "0.10.21";
  sha256 = "f7d8ea5c4e6af368d9b5d2eb994fc29235406fbe91916a6dc63bd883025eca75";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    filepath
    process
    template-haskell
    transformers
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/ndmitchell/cmdargs#readme";
  description = "Command line argument processing";
  license = lib.licenses.bsd3;
  broken = false;
}
