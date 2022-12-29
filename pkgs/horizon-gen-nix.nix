{ mkDerivation
, Cabal-syntax
, base
, cabal2nix
, containers
, dhall
, directory
, distribution-nixpkgs
, either
, horizon-spec
, language-nix
, lens
, lib
, optparse-applicative
, path
, path-dhall-instance
, pretty
, silently
, sydtest
, text
}:
mkDerivation {
  pname = "horizon-gen-nix";
  version = "0.4.0";
  sha256 = "c27e7ee4e02876e8814d4e047baadfd6ebcec7f18953678f0f90176233531568";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    Cabal-syntax
    cabal2nix
    containers
    dhall
    directory
    distribution-nixpkgs
    either
    horizon-spec
    language-nix
    lens
    optparse-applicative
    path
    path-dhall-instance
    pretty
    silently
    text
  ];
  executableHaskellDepends = [ base directory path sydtest ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Generate nix expressions from horizon-spec definitions";
  license = lib.licenses.mit;
  broken = false;
}
