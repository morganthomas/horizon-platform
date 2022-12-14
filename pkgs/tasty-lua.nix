{ mkDerivation
, QuickCheck
, base
, bytestring
, directory
, file-embed
, filepath
, hslua-core
, hslua-marshalling
, lib
, lua-arbitrary
, tasty
, tasty-hunit
, text
}:
mkDerivation {
  pname = "tasty-lua";
  version = "1.0.2";
  sha256 = "9b37ed879487ea31dec48c5f1823e445de9bb29ef8ad893de7106f2dd9dbdeee";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    file-embed
    hslua-core
    hslua-marshalling
    lua-arbitrary
    QuickCheck
    tasty
    text
  ];
  testHaskellDepends = [
    base
    bytestring
    directory
    filepath
    hslua-core
    hslua-marshalling
    lua-arbitrary
    QuickCheck
    tasty
    tasty-hunit
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/hslua/hslua";
  description = "Write tests in Lua, integrate into tasty";
  license = lib.licenses.mit;
  broken = false;
}
