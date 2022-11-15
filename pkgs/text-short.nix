{ mkDerivation
, base
, binary
, bytestring
, deepseq
, ghc-prim
, hashable
, lib
, tasty
, tasty-hunit
, tasty-quickcheck
, template-haskell
, text
}:
mkDerivation {
  pname = "text-short";
  version = "0.1.5";
  sha256 = "a35ec6cde2ada084c1a050dc5885be5ab01f851b93d744cf0facbc1c18002dda";
  revision = "1";
  editedCabalFile = "0gmmwwchy9312kz8kr5jhiamqrnjqxdqg1wkrww4289yfj1p7dzb";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    binary
    bytestring
    deepseq
    ghc-prim
    hashable
    template-haskell
    text
  ];
  testHaskellDepends = [
    base
    binary
    bytestring
    tasty
    tasty-hunit
    tasty-quickcheck
    template-haskell
    text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Memory-efficient representation of Unicode text strings";
  license = lib.licenses.bsd3;
  broken = false;
}
