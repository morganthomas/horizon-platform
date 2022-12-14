{ mkDerivation
, Cabal-syntax
, array
, base
, bytestring
, containers
, deepseq
, directory
, filepath
, lib
, mtl
, parsec
, pretty
, process
, text
, time
, transformers
, unix
}:
mkDerivation {
  pname = "Cabal";
  version = "3.8.1.0";
  sha256 = "7464cbe6c2f3d7e5d0232023a1a7330621f8b24853cb259fc89a2af85b736608";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  setupHaskellDepends = [ mtl parsec ];
  libraryHaskellDepends = [
    array
    base
    bytestring
    Cabal-syntax
    containers
    deepseq
    directory
    filepath
    mtl
    parsec
    pretty
    process
    text
    time
    transformers
    unix
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.haskell.org/cabal/";
  description = "A framework for packaging Haskell software";
  license = lib.licenses.bsd3;
  broken = false;
}
