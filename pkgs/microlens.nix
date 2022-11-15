{ mkDerivation, base, lib }:
mkDerivation {
  pname = "microlens";
  version = "0.4.13.0";
  sha256 = "fc21d0f0ea30a3c73c681c2a2f5093dbebea8f3075243dcf2b8d234aacb210a3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/monadfix/microlens";
  description = "A tiny lens library with no dependencies";
  license = lib.licenses.bsd3;
  broken = false;
}
