{ mkDerivation
, array
, base
, bytestring
, Cabal
, Cabal-syntax
, containers
, edit-distance
, filepath
, lib
, mtl
, pretty
, tasty
, tasty-hunit
, tasty-quickcheck
, transformers
}:
mkDerivation {
  pname = "cabal-install-solver";
  version = "3.8.1.0";
  sha256 = "df2369f6c37517a3b2625bc19057d9e206bbb40386bcb607f17dc7d2e588ffe7";
  libraryHaskellDepends = [
    array
    base
    bytestring
    Cabal
    Cabal-syntax
    containers
    edit-distance
    filepath
    mtl
    pretty
    transformers
  ];
  testHaskellDepends = [
    base
    Cabal
    Cabal-syntax
    tasty
    tasty-hunit
    tasty-quickcheck
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "http://www.haskell.org/cabal/";
  description = "The command-line interface for Cabal and Hackage";
  license = lib.licenses.bsd3;
}
