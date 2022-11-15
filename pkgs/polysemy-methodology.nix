{ mkDerivation
, base
, lib
, polysemy
, polysemy-kvstore
, polysemy-several
}:
mkDerivation {
  pname = "polysemy-methodology";
  version = "0.2.1.0";
  sha256 = "2fccb2a89981389d2a2be827025177a32f4196cd46c69992d53af8aa0b35ad9e";
  revision = "2";
  editedCabalFile = "0dpancn85f8j3pxhk43lik6fbznp502cc68rkhqkan791kh1bbc7";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    polysemy
    polysemy-kvstore
    polysemy-several
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Domain modelling algebra for polysemy";
  license = lib.licenses.mit;
  broken = false;
}
