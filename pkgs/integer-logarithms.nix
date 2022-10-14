{ mkDerivation
, array
, base
, ghc-bignum
, ghc-prim
, lib
, QuickCheck
, smallcheck
, tasty
, tasty-hunit
, tasty-quickcheck
, tasty-smallcheck
}:
mkDerivation {
  pname = "integer-logarithms";
  version = "1.0.3.1";
  sha256 = "9b0a9f9fab609b15cd015865721fb05f744a1bc77ae92fd133872de528bbea7f";
  revision = "3";
  editedCabalFile = "0z81yksgx20d0rva41blsjcp3jsp1qy9sy385fpig0l074fzv6ym";
  libraryHaskellDepends = [ array base ghc-bignum ghc-prim ];
  testHaskellDepends = [
    base
    QuickCheck
    smallcheck
    tasty
    tasty-hunit
    tasty-quickcheck
    tasty-smallcheck
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskellari/integer-logarithms";
  description = "Integer logarithms";
  license = lib.licenses.mit;
}
