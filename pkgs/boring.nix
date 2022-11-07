{ mkDerivation, base, lib, tagged, transformers }:
mkDerivation {
  pname = "boring";
  version = "0.2";
  sha256 = "0bac533b66e754d4fc65ab8d7557eea6f7b35d16998e5e74579b25a372aa4c34";
  revision = "2";
  editedCabalFile = "04pn94i3mysi7px93k86sf29vw99sf38sl4n0gy2nma0iqsik828";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base tagged transformers ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/phadej/boring";
  description = "Boring and Absurd types";
  license = lib.licenses.bsd3;
  broken = false;
}
