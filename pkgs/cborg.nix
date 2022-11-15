{ mkDerivation
, aeson
, array
, base
, base-orphans
, base16-bytestring
, base64-bytestring
, bytestring
, containers
, deepseq
, ghc-bignum
, ghc-prim
, half
, lib
, primitive
, QuickCheck
, random
, scientific
, tasty
, tasty-hunit
, tasty-quickcheck
, text
, vector
}:
mkDerivation {
  pname = "cborg";
  version = "0.2.8.0";
  sha256 = "2e59c827c273b57af0fcbbfb62f6d15faeb399e0d89d57baf8adcc60e62ab01e";
  revision = "1";
  editedCabalFile = "13m2shrlpvg5s9d40a2463mmckzg50y8jb47zfd6i1rg6q3q6xx6";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array
    base
    bytestring
    containers
    deepseq
    ghc-bignum
    ghc-prim
    half
    primitive
    text
  ];
  testHaskellDepends = [
    aeson
    array
    base
    base-orphans
    base16-bytestring
    base64-bytestring
    bytestring
    deepseq
    half
    QuickCheck
    random
    scientific
    tasty
    tasty-hunit
    tasty-quickcheck
    text
    vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Concise Binary Object Representation (CBOR)";
  license = lib.licenses.bsd3;
  broken = false;
}
