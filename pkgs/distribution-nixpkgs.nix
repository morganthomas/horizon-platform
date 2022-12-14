{ mkDerivation
, Cabal
, aeson
, base
, bytestring
, containers
, deepseq
, directory
, hspec
, language-nix
, lens
, lib
, pretty
, process
}:
mkDerivation {
  pname = "distribution-nixpkgs";
  version = "1.7.0";
  sha256 = "c9f04b175ea93074bea78b508e1e9c44a17f6151cafa375cfdbfe668b08ff900";
  revision = "1";
  editedCabalFile = "0xzrh7kfla9c43jjjnd2r13xsp994gdkxkwgav2kl50qxzdb88nx";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    aeson
    base
    bytestring
    Cabal
    containers
    deepseq
    language-nix
    lens
    pretty
    process
  ];
  testHaskellDepends = [
    aeson
    base
    Cabal
    deepseq
    directory
    hspec
    language-nix
    lens
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NixOS/cabal2nix/tree/master/distribution-nixpkgs#readme";
  description = "Types and functions to manipulate the Nixpkgs distribution";
  license = lib.licenses.bsd3;
  broken = false;
}
