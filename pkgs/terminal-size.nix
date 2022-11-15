{ mkDerivation, base, lib }:
mkDerivation {
  pname = "terminal-size";
  version = "0.3.3";
  sha256 = "8c174c8fa7200be2caffd6d25f789fd3c73f4b7b02989f332a42d7901fca60c3";
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
  description = "Get terminal window height and width";
  license = lib.licenses.bsd3;
  broken = false;
}
