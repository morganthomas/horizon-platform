{ mkDerivation
, base
, bytestring
, lib
, mtl
, tasty
, tasty-hunit
, text
}:
mkDerivation {
  pname = "parsec";
  version = "3.1.15.1";
  sha256 = "abe4901531185505d4360e633e8d79ccc90325a0bac7f666eecad30f7f7f98dd";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring mtl text ];
  testHaskellDepends = [ base mtl tasty tasty-hunit ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/parsec";
  description = "Monadic parser combinators";
  license = lib.licenses.bsd2;
  broken = false;
}
