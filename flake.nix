{
  inputs = {
    get-flake.url = "github:ursi/get-flake";
    lint-utils.url = "git+https://gitlab.homotopic.tech/nix/lint-utils";
    horizon-gen-nix = {
      url = "git+https://gitlab.homotopic.tech/horizon/horizon-gen-nix?rev=066b21b5b0c3b7b2bee1b5954f89ae0b7845ade9";
      flake = false;
    };
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs =
    inputs@
    { self
    , get-flake
    , flake-utils
    , horizon-gen-nix
    , lint-utils
    , nixpkgs
    , ...
    }:
    flake-utils.lib.eachSystem [ "x86_64-linux" ] (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
    in
    with pkgs.lib;
    with pkgs.writers;
    let

      horizon-gen-nix-app = get-flake horizon-gen-nix;

      haskellLib = pkgs.haskell.lib.compose;

      legacyPackages = pkgs.callPackage (nixpkgs + /pkgs/development/haskell-modules) {
        buildHaskellPackages = pkgs.haskell.packages.ghc942;
        compilerConfig = pkgs.callPackage ./configuration-ghc-9.4.x.nix { inherit haskellLib; };
        configurationCommon = import ./configuration.nix;
        configurationNix = { pkgs, haskellLib }: self: super: { };
        ghc = pkgs.haskell.compiler.ghc942;
        inherit haskellLib;
        initialPackages = import ./initial-packages.nix;
        nonHackagePackages = self: super: { };
      };

      packages = filterAttrs
        (n: v: v != null
          && builtins.typeOf v == "set"
          && pkgs.lib.hasAttr "type" v
          && v.type == "derivation"
          && v.meta.broken == false)
        legacyPackages;

      horizon-gen-gitlab-ci = writeBashBin "gen-gitlab-ci" "${pkgs.dhall-json}/bin/dhall-to-yaml --file .gitlab-ci.dhall";

      run-impure-tests = lint-utils.writers.writePorcelainOrDieBin {
        name = "run-impure-tests";
        src = ./.;
        command = ''
          cabal update
          export PATH=$PATH:${pkgs.nix-prefetch-git}/bin
          rm pkgs -rf && nix run .#horizon-gen-nix make-package-set;
          nixpkgs-fmt pkgs/*
        '';
        advice = "Try removing the offending packages from pkgs/ and running nix run .#horizon-gen-nix make-package-set";
      };

      run-impure-tests-app = {
        type = "app";
        program = "${run-impure-tests}/bin/run-impure-tests";
      };

    in
    {

      apps = {

        horizon-gen-nix = horizon-gen-nix-app.outputs.apps.${system}.horizon-gen-nix;

        horizon-gen-gitlab-ci = {
          type = "app";
          program = "${horizon-gen-gitlab-ci}/bin/gen-gitlab-ci";
        };

      };

      checks = {
        dhall-format = lint-utils.outputs.linters.${system}.dhall-format ./.;
        nixpkgs-fmt = lint-utils.outputs.linters.${system}.nixpkgs-fmt ./.;
      };

      inherit legacyPackages;

      inherit packages;

    });
}
