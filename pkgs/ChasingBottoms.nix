{ mkDerivation
, array
, base
, containers
, lib
, mtl
, QuickCheck
, random
, syb
}:
mkDerivation {
  pname = "ChasingBottoms";
  version = "1.3.1.12";
  sha256 = "a018538c0196390c7ebb5c677ff5b81bd760d75ae2b21bae8ab8a47b00f6c9ef";
  libraryHaskellDepends = [
    base
    containers
    mtl
    QuickCheck
    random
    syb
  ];
  testHaskellDepends = [
    array
    base
    containers
    mtl
    QuickCheck
    random
    syb
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  description = "For testing partial and infinite values";
  license = lib.licenses.mit;
}
