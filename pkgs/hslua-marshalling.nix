{ mkDerivation
, QuickCheck
, base
, bytestring
, containers
, hslua-core
, lib
, lua-arbitrary
, mtl
, quickcheck-instances
, tasty
, tasty-hslua
, tasty-hunit
, tasty-quickcheck
, text
}:
mkDerivation {
  pname = "hslua-marshalling";
  version = "2.2.1";
  sha256 = "532b0ff9aaa38583356486e56c4f6c47ad27c0cb50db1cca25db33975de8b1f6";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    containers
    hslua-core
    mtl
    text
  ];
  testHaskellDepends = [
    base
    bytestring
    containers
    hslua-core
    lua-arbitrary
    mtl
    QuickCheck
    quickcheck-instances
    tasty
    tasty-hslua
    tasty-hunit
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
  homepage = "https://hslua.org/";
  description = "Marshalling of values between Haskell and Lua";
  license = lib.licenses.mit;
  broken = false;
}
