{ mkDerivation
, array
, base
, lib
, QuickCheck
, random
, semigroupoids
}:
mkDerivation {
  pname = "checkers";
  version = "0.6.0";
  sha256 = "c07cd3563ea251000f7ce41db2d38e3bf94c9dcf60943a5eecc83b3089d299e4";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array
    base
    QuickCheck
    random
    semigroupoids
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-checkers/checkers";
  description = "Check properties on standard classes and data structures";
  license = lib.licenses.bsd3;
  broken = false;
}
