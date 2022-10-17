{ mkDerivation, base, deepseq, ghc-prim, lib }:
mkDerivation {
  pname = "these-skinny";
  version = "0.7.5";
  sha256 = "726933193bb33d9731a2ed794c07c3ff8952fb0baef5ebbd7dc3b2a3e5746cd9";
  revision = "1";
  editedCabalFile = "1paqqcdbqr91gvvs0anq30pkdd37g70ql4v11lszl6dzjl6yy3d5";
  libraryHaskellDepends = [ base deepseq ghc-prim ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/chessai/these-skinny";
  description = "A fork of the 'these' package without the dependency bloat";
  license = lib.licenses.bsd3;
}