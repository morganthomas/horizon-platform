{ mkDerivation
, QuickCheck
, base
, base-compat
, ghc-prim
, hspec
, hspec-discover
, lib
}:
mkDerivation {
  pname = "base-compat-batteries";
  version = "0.12.2";
  sha256 = "ede9092e07f904e0759160bf1ecd3fb7eb043bae6dc89a37c3dc94829ec5eb99";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base base-compat ghc-prim ];
  testHaskellDepends = [ base hspec QuickCheck ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "base-compat with extra batteries";
  license = lib.licenses.mit;
  broken = false;
}
