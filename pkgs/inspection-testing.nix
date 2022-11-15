{ mkDerivation
, base
, containers
, ghc
, lib
, mtl
, template-haskell
, transformers
}:
mkDerivation {
  pname = "inspection-testing";
  version = "0.5";
  sha256 = "b071b714006f7980a2d71ff8bf24cf33289e334a540f4e3121fcb094a6dd5cc5";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    containers
    ghc
    mtl
    template-haskell
    transformers
  ];
  testHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/nomeata/inspection-testing";
  description = "GHC plugin to do inspection testing";
  license = lib.licenses.mit;
  broken = false;
}
