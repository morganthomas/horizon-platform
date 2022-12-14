{ mkDerivation
, Cabal
, aeson
, ansi-wl-pprint
, base
, bytestring
, containers
, deepseq
, directory
, distribution-nixpkgs
, fetchgit
, filepath
, hackage-db
, hopenssl
, hpack
, language-nix
, lens
, lib
, monad-par
, monad-par-extras
, mtl
, optparse-applicative
, pretty
, process
, split
, tasty
, tasty-golden
, text
, time
, transformers
, yaml
}:
mkDerivation {
  pname = "cabal2nix";
  version = "2.19.1";
  src = fetchgit {
    url = "https://github.com/NixOS/cabal2nix";
    sha256 = "1n4jy4xsrzywqvzicsca6kaw4bp0xdz5qfkvj7bkh4np9p3hnj08";
    rev = "8e97f51e4bd4e5b9ff79391aa599ed8547771954";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/cabal2nix/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    ansi-wl-pprint
    base
    bytestring
    Cabal
    containers
    deepseq
    directory
    distribution-nixpkgs
    filepath
    hackage-db
    hopenssl
    hpack
    language-nix
    lens
    optparse-applicative
    pretty
    process
    split
    text
    time
    transformers
    yaml
  ];
  executableHaskellDepends = [
    aeson
    base
    bytestring
    Cabal
    containers
    directory
    distribution-nixpkgs
    filepath
    hopenssl
    language-nix
    lens
    monad-par
    monad-par-extras
    mtl
    optparse-applicative
    pretty
  ];
  testHaskellDepends = [
    base
    Cabal
    containers
    directory
    filepath
    language-nix
    lens
    pretty
    process
    tasty
    tasty-golden
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  preCheck = ''
    export PATH="$PWD/dist/build/cabal2nix:$PATH"
    export HOME="$TMPDIR/home"
  '';
  homepage = "https://github.com/nixos/cabal2nix#readme";
  description = "Convert Cabal files into Nix build instructions";
  license = lib.licenses.bsd3;
  broken = false;
}
