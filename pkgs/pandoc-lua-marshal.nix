{ mkDerivation
, QuickCheck
, base
, bytestring
, containers
, exceptions
, hslua
, hslua-marshalling
, lib
, lua
, pandoc-types
, safe
, tasty
, tasty-hunit
, tasty-lua
, tasty-quickcheck
, text
}:
mkDerivation {
  pname = "pandoc-lua-marshal";
  version = "0.1.7";
  sha256 = "b29415580645e78824b134f8508eae3800cab4fd647d736622c0d286dc59c95e";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    containers
    exceptions
    hslua
    hslua-marshalling
    lua
    pandoc-types
    safe
    text
  ];
  testHaskellDepends = [
    base
    bytestring
    containers
    exceptions
    hslua
    hslua-marshalling
    lua
    pandoc-types
    QuickCheck
    safe
    tasty
    tasty-hunit
    tasty-lua
    tasty-quickcheck
    text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/pandoc/pandoc-lua-marshal";
  description = "Use pandoc types in Lua";
  license = lib.licenses.mit;
  broken = false;
}
