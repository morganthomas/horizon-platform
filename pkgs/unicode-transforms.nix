{ mkDerivation
, base
, bytestring
, deepseq
, filepath
, ghc-prim
, hspec
, lib
, path
, path-io
, QuickCheck
, split
, tasty-bench
, text
, unicode-data
}:
mkDerivation {
  pname = "unicode-transforms";
  version = "0.4.0.1";
  sha256 = "3278e1e1d648da4bcd7368658ae091a89080e88a2f44db9df5136711e99649fc";
  revision = "2";
  editedCabalFile = "1imm3svpz2shilj2kmmmcyy5yd4c1mpmz5v1gvjrr98hrab2i9x7";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    ghc-prim
    text
    unicode-data
  ];
  testHaskellDepends = [
    base
    bytestring
    deepseq
    hspec
    QuickCheck
    split
    text
    unicode-data
  ];
  benchmarkHaskellDepends = [
    base
    deepseq
    filepath
    path
    path-io
    tasty-bench
    text
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/composewell/unicode-transforms";
  description = "Unicode normalization";
  license = lib.licenses.bsd3;
  broken = false;
}
