{ mkDerivation
, base
, directory
, exceptions
, hslua-core
, hslua-marshalling
, hslua-packaging
, lib
, tasty
, tasty-hunit
, tasty-lua
, temporary
, text
}:
mkDerivation {
  pname = "hslua-module-system";
  version = "1.0.2";
  sha256 = "b63593038adb3a09172adfca67e3bc53c5c72de873db325b397994f665724c51";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    directory
    exceptions
    hslua-core
    hslua-marshalling
    hslua-packaging
    temporary
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
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/hslua/hslua";
  description = "Lua module wrapper around Haskell's System module";
  license = lib.licenses.mit;
  broken = false;
}
