{ mkDerivation, base, Cabal, directory, lib }:
mkDerivation {
  pname = "ghc-paths";
  version = "0.1.0.12";
  sha256 = "6ecbe676d073cb07989c61ce4c5709c4e67cbefdd2d55a4095f9388b6fe2c484";
  revision = "4";
  editedCabalFile = "1d5za4k498q48wk6cz0jm3d68rh5ldz6adr8vp24nn7jv17g770w";
  setupHaskellDepends = [ base Cabal directory ];
  libraryHaskellDepends = [ base ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  description = "Knowledge of GHC's installation directories";
  license = lib.licenses.bsd3;
}
