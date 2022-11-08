{ mkDerivation
, alex
, array
, base
, bytestring
, containers
, deepseq
, directory
, filepath
, happy
, lib
, mtl
, pretty
, process
}:
mkDerivation {
  pname = "language-c";
  version = "0.9.1";
  sha256 = "94359566eb5da62f539fa62500f8a861db4e3eafb956d66c6821d6ffad96ad3c";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array
    base
    bytestring
    containers
    deepseq
    directory
    filepath
    mtl
    pretty
    process
  ];
  libraryToolDepends = [ alex happy ];
  testHaskellDepends = [ base directory filepath process ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://visq.github.io/language-c/";
  description = "Analysis and generation of C code";
  license = lib.licenses.bsd3;
  broken = false;
}
