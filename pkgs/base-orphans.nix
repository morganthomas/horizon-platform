{ mkDerivation
, base
, ghc-prim
, hspec
, hspec-discover
, lib
, QuickCheck
}:
mkDerivation {
  pname = "base-orphans";
  version = "0.8.7";
  sha256 = "888fd67f0dbe932778f5b170922ce80d0dcab1680ee98f1d6fcc362f20d9e447";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ghc-prim ];
  testHaskellDepends = [ base hspec QuickCheck ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-compat/base-orphans#readme";
  description = "Backwards-compatible orphan instances for base";
  license = lib.licenses.mit;
  broken = false;
}
