{ mkDerivation
, base
, filepath
, hslua-core
, hslua-marshalling
, hslua-packaging
, lib
, tasty
, tasty-hunit
, tasty-lua
, text
}:
mkDerivation {
  pname = "hslua-module-version";
  version = "1.0.3";
  sha256 = "c519b28f5dabf8f0137a3dbb589847bf6a73ad2ea210cc14045feda7d6a244ec";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    filepath
    hslua-core
    hslua-marshalling
    hslua-packaging
    text
  ];
  testHaskellDepends = [
    base
    filepath
    hslua-core
    hslua-marshalling
    hslua-packaging
    tasty
    tasty-hunit
    tasty-lua
    text
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://hslua.org/";
  description = "Lua module to work with version specifiers";
  license = lib.licenses.mit;
  broken = false;
}
