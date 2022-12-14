{ mkDerivation
, Cabal
, Glob
, QuickCheck
, base
, cabal-doctest
, containers
, criterion
, doctest
, lib
, mtl
, optparse-applicative
, prettyprinter
, prettyprinter-ansi-terminal
, template-haskell
, text
, transformers
}:
mkDerivation {
  pname = "pretty-simple";
  version = "4.1.1.0";
  sha256 = "dae179b1a967e1d443f135e5b3f5abdf378e515fb8ea86e091bc487dc1a25d4a";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [
    base
    containers
    mtl
    prettyprinter
    prettyprinter-ansi-terminal
    text
    transformers
  ];
  executableHaskellDepends = [ base optparse-applicative text ];
  testHaskellDepends = [
    base
    doctest
    Glob
    QuickCheck
    template-haskell
  ];
  benchmarkHaskellDepends = [ base criterion text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/cdepillabout/pretty-simple";
  description = "pretty printer for data types with a 'Show' instance";
  license = lib.licenses.bsd3;
  broken = false;
}
