{ mkDerivation
, QuickCheck
, base
, deepseq
, hspec
, lib
, text
, vector
}:
mkDerivation {
  pname = "text-zipper";
  version = "0.12";
  sha256 = "86aba7244c9ed0d8e24e9d1fa64ee317a062e7bd777018053517daefb0696702";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [ base deepseq text vector ];
  testHaskellDepends = [ base hspec QuickCheck text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/jtdaugherty/text-zipper/";
  description = "A text editor zipper library";
  license = lib.licenses.bsd3;
  broken = false;
}
