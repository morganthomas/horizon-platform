{ mkDerivation, SDL2, base, bytestring, c2hs, lib }:
mkDerivation {
  pname = "proteaaudio-sdl";
  version = "0.9.2";
  sha256 = "8c65a869e7f9af19fc9f7a596b5f12f1551b9008a76b5b85460f304eb6cdc662";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring ];
  librarySystemDepends = [ SDL2 ];
  libraryPkgconfigDepends = [ SDL2 ];
  libraryToolDepends = [ c2hs ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Simple audio library for SDL";
  license = lib.licenses.bsd3;
  broken = false;
}
