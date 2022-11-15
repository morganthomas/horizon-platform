{ mkDerivation, base, lib, lua, QuickCheck }:
mkDerivation {
  pname = "lua-arbitrary";
  version = "1.0.1";
  sha256 = "aadeb5fbcd7de95a64374a959ffc6b341db171fd3db570d1cc0cfae3f7bce205";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base lua QuickCheck ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://hslua.org/";
  description = "Arbitrary instances for Lua types";
  license = lib.licenses.mit;
  broken = false;
}
