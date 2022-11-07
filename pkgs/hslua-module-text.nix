{ mkDerivation
, base
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
  pname = "hslua-module-text";
  version = "1.0.2";
  sha256 = "d81d6525fc1e5d252703f91eb3f015f24adeec057553a4c7696768285fb30577";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    hslua-core
    hslua-marshalling
    hslua-packaging
    text
  ];
  testHaskellDepends = [
    base
    hslua-core
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
  homepage = "https://github.com/hslua/hslua";
  description = "Lua module for text";
  license = lib.licenses.mit;
  broken = false;
}
