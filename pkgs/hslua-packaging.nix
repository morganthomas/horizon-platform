{ mkDerivation
, base
, bytestring
, containers
, hslua-core
, hslua-marshalling
, hslua-objectorientation
, lib
, mtl
, tasty
, tasty-hslua
, tasty-hunit
, text
}:
mkDerivation {
  pname = "hslua-packaging";
  version = "2.2.1";
  sha256 = "2b2a1ffa1b3abfa3a0c20ef261a9125fd051f44c93c2e83c3569e95abbceaefb";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    containers
    hslua-core
    hslua-marshalling
    hslua-objectorientation
    mtl
    text
  ];
  testHaskellDepends = [
    base
    bytestring
    hslua-core
    hslua-marshalling
    hslua-objectorientation
    mtl
    tasty
    tasty-hslua
    tasty-hunit
    text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://hslua.org/";
  description = "Utilities to build Lua modules";
  license = lib.licenses.mit;
  broken = false;
}
