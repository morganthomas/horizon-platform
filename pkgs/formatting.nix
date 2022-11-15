{ mkDerivation
, base
, clock
, criterion
, double-conversion
, ghc-prim
, hspec
, lib
, old-locale
, QuickCheck
, scientific
, text
, time
, transformers
}:
mkDerivation {
  pname = "formatting";
  version = "7.1.3";
  sha256 = "8061bbe29278e6b7bb2268b00e1717385643dfa04e7b58b012bd53b342142cef";
  revision = "2";
  editedCabalFile = "1i3qkhxqhvqd7mqfdc1mbizw1fin7vp4dwzayc2y0sqcbg7kkns7";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    clock
    double-conversion
    ghc-prim
    old-locale
    scientific
    text
    time
    transformers
  ];
  testHaskellDepends = [ base ghc-prim hspec scientific text ];
  benchmarkHaskellDepends = [
    base
    criterion
    ghc-prim
    QuickCheck
    text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/AJChapman/formatting#readme";
  description = "Combinator-based type-safe formatting (like printf() or FORMAT)";
  license = lib.licenses.bsd3;
  broken = false;
}
