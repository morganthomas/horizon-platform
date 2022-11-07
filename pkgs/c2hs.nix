{ mkDerivation
, array
, base
, bytestring
, containers
, directory
, dlist
, filepath
, HUnit
, language-c
, lib
, pretty
, process
, shelly
, test-framework
, test-framework-hunit
, text
, transformers
}:
mkDerivation {
  pname = "c2hs";
  version = "0.28.8";
  sha256 = "390632cffc561c32483af474aac50168a68f0fa382096552e37749923617884c";
  revision = "1";
  editedCabalFile = "0hbv1j9b04gm617c5xqndr4iqidabwdpcn2dcrnaacc04ylchvl2";
  isLibrary = false;
  isExecutable = true;
  enableSeparateDataOutput = true;
  executableHaskellDepends = [
    array
    base
    bytestring
    containers
    directory
    dlist
    filepath
    language-c
    pretty
    process
  ];
  testHaskellDepends = [
    base
    filepath
    HUnit
    shelly
    test-framework
    test-framework-hunit
    text
    transformers
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/c2hs";
  description = "C->Haskell FFI tool that gives some cross-language type safety";
  license = lib.licenses.gpl2Only;
  mainProgram = "c2hs";
  broken = false;
}
