{ mkDerivation, base, containers, lib, QuickCheck, tagged
, transformers
}:
mkDerivation {
  pname = "universe-base";
  version = "1.1.3";
  sha256 = "c59dfe99b76435d13483eff888e020a282ae8451b7b692dc98f348dcec95db52";
  revision = "3";
  editedCabalFile = "0hnd5vxsncwyjsindfmsvp9jbixanhmzczhrmd8s8g6imgb0mzyk";
  libraryHaskellDepends = [ base containers tagged transformers ];
  testHaskellDepends = [ base containers QuickCheck ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/dmwit/universe";
  description = "A class for finite and recursively enumerable types";
  license = lib.licenses.bsd3;
}