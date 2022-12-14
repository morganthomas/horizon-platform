{ mkDerivation
, QuickCheck
, base
, bitvec
, bytestring
, containers
, lib
, mwc-random
, primitive
, vector
}:
mkDerivation {
  pname = "vector-algorithms";
  version = "0.9.0.1";
  sha256 = "2ba7c0d3a8f26ef3ada24ff4abe81609225ecbab3b5754f048f8a0a3ecc33841";
  revision = "1";
  editedCabalFile = "1bma0m4g7770y4xnqsinspqkgf4swpdwddfbcby81szjxd8mik1l";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bitvec
    bytestring
    primitive
    vector
  ];
  testHaskellDepends = [
    base
    bytestring
    containers
    QuickCheck
    vector
  ];
  benchmarkHaskellDepends = [ base mwc-random vector ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/erikd/vector-algorithms/";
  description = "Efficient algorithms for vector arrays";
  license = lib.licenses.bsd3;
  broken = false;
}
