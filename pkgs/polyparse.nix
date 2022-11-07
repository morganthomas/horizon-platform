{ mkDerivation, base, bytestring, lib, text }:
mkDerivation {
  pname = "polyparse";
  version = "1.13";
  sha256 = "1c4c72980e1e5a4f07fea65ca08b2399581d2a6aa21eb1078f7ad286c279707b";
  revision = "5";
  editedCabalFile = "05qrn5pfdy45x1nkx7dvhnxs9j6d6cssws4kwn2sl3n9qmagr8mc";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring text ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://code.haskell.org/~malcolm/polyparse/";
  description = "A variety of alternative parser combinator libraries";
  license = "LGPL";
  broken = false;
}
