{ mkDerivation
, base
, Cabal-syntax
, cabal2nix
, containers
, data-fix
, dhall
, directory
, fetchgit
, language-nix
, lens
, lib
, megaparsec
, path
, path-dhall-instance
, pretty
, text
}:
mkDerivation {
  pname = "horizon-gen-nix";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://gitlab.homotopic.tech/horizon/horizon-gen-nix";
    sha256 = "0x10wdjqs411l902i0b5vlr7rw30al2sd6r614yi5g63zrylahs3";
    rev = "918df757ce5c9244232c1e3a1e05e9d9e3ab4f09";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    Cabal-syntax
    cabal2nix
    containers
    data-fix
    dhall
    directory
    language-nix
    lens
    megaparsec
    path
    path-dhall-instance
    pretty
    text
  ];
  executableHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Short description of your package";
  license = lib.licenses.bsd3;
  mainProgram = "horizon-gen-nix";
  broken = false;
}
