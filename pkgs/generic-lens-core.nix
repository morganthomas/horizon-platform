{ mkDerivation, base, indexed-profunctors, lib, text }:
mkDerivation {
  pname = "generic-lens-core";
  version = "2.2.1.0";
  sha256 = "8ee6f17baa52db80763a46814be391418441861b2e519bed8c047db37c622422";
  revision = "1";
  editedCabalFile = "1dbjhd6k7ypqa9f4h9v2xndgb4mjhfli3n1vjm8r8ga0kfndbqfn";
  libraryHaskellDepends = [ base indexed-profunctors text ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/kcsongor/generic-lens";
  description = "Generically derive traversals, lenses and prisms";
  license = lib.licenses.bsd3;
}
