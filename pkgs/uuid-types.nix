{ mkDerivation
, QuickCheck
, base
, binary
, bytestring
, deepseq
, ghc-byteorder
, hashable
, lib
, random
, tasty
, tasty-hunit
, tasty-quickcheck
, template-haskell
, text
}:
mkDerivation {
  pname = "uuid-types";
  version = "1.0.5";
  sha256 = "ad68b89b7a64c07dd5c250a11be2033ee929318ff51ec7b4e4b54e1b4deba7dd";
  revision = "3";
  editedCabalFile = "10hpjshw6z8xnjpga47cazfdd4i27qvy4ash13lza2lmwf36k9ww";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    binary
    bytestring
    deepseq
    hashable
    random
    template-haskell
    text
  ];
  testHaskellDepends = [
    base
    binary
    bytestring
    ghc-byteorder
    QuickCheck
    tasty
    tasty-hunit
    tasty-quickcheck
    template-haskell
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-hvr/uuid";
  description = "Type definitions for Universally Unique Identifiers";
  license = lib.licenses.bsd3;
  broken = false;
}
