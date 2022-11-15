{ mkDerivation
, base
, containers
, lib
, syb
, template-haskell
, th-abstraction
}:
mkDerivation {
  pname = "th-expand-syns";
  version = "0.4.10.0";
  sha256 = "f5455844e27578cf937c2eb670f15f6c10a45c29b2599e32bf308245360c9010";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    containers
    syb
    template-haskell
    th-abstraction
  ];
  testHaskellDepends = [ base template-haskell th-abstraction ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/DanielSchuessler/th-expand-syns";
  description = "Expands type synonyms in Template Haskell ASTs";
  license = lib.licenses.bsd3;
  broken = false;
}
