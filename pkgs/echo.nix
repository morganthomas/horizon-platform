{ mkDerivation, base, lib, process }:
mkDerivation {
  pname = "echo";
  version = "0.1.4";
  sha256 = "c9fe1bf2904825a65b667251ec644f197b71dc5c209d2d254be5de3d496b0e43";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base process ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/RyanGlScott/echo";
  description = "A cross-platform, cross-console way to handle echoing terminal input";
  license = lib.licenses.bsd3;
  broken = false;
}
