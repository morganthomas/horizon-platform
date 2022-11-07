{ mkDerivation, base, containers, lib }:
mkDerivation {
  pname = "patience";
  version = "0.3";
  sha256 = "715cd08c99c0417462cee383c437c2b4384b6abbc87999fd092c8cf8e8192bc4";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base containers ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/chessai/patience";
  description = "Patience diff and longest increasing subsequence";
  license = lib.licenses.bsd3;
  broken = false;
}
