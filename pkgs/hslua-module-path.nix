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
  pname = "hslua-module-path";
  version = "1.0.3";
  sha256 = "599bd4f6ce90ebe0a530b607f34dddb3fc4e909269b8b90b7a7318b12a99c2eb";
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
  description = "Lua module to work with file paths";
  license = lib.licenses.mit;
  broken = false;
}
