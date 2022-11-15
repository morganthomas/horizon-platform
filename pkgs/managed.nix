{ mkDerivation, base, lib, transformers }:
mkDerivation {
  pname = "managed";
  version = "1.0.9";
  sha256 = "4d476da3b6e7a14220f2e3a764e5d43bf339e89a3dc46a7bdfdeb3856a54a86f";
  revision = "2";
  editedCabalFile = "1hnhi2d5s06bhp2klf9xw9yipymisfyfvb83b6rqfiy549z6ij27";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base transformers ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A monad for managed values";
  license = lib.licenses.bsd3;
  broken = false;
}
