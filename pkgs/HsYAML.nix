{ mkDerivation
, base
, bytestring
, containers
, deepseq
, lib
, mtl
, parsec
, QuickCheck
, tasty
, tasty-quickcheck
, text
, transformers
}:
mkDerivation {
  pname = "HsYAML";
  version = "0.2.1.1";
  sha256 = "465bb4fc90979c19bedf6db2053f9ac54537b4912d5827d7e2135d42ef5ef628";
  revision = "1";
  editedCabalFile = "0jmbgrjywcblrd8k6zzv2b5givdz83f479y15v5gs0r93z25xpmv";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    containers
    deepseq
    mtl
    parsec
    text
    transformers
  ];
  testHaskellDepends = [
    base
    bytestring
    containers
    mtl
    QuickCheck
    tasty
    tasty-quickcheck
    text
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-hvr/HsYAML";
  description = "Pure Haskell YAML 1.2 processor";
  license = lib.licenses.gpl2Only;
  broken = false;
}
