{
  inputs = {
    get-flake.url = "github:ursi/get-flake";
    lint-utils.url = "git+https://gitlab.homotopic.tech/nix/lint-utils";
    horizon-gen-nix = {
      url = "git+https://gitlab.homotopic.tech/horizon/horizon-gen-nix?rev=8eb5ffc81cd8331f340546d746a786c7b2f021a6";
      flake = false;
    };
    horizon-platform = {
      url = "git+https://gitlab.homotopic.tech/horizon/horizon-platform";
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
    , horizon-platform
    , lint-utils
    , nixpkgs
    , ...
    }:
    flake-utils.lib.eachSystem [ "x86_64-linux" ]
      (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      with pkgs.lib;
      with pkgs.writers;
      with lint-utils.writers.${system};
      let

        horizon-gen-nix-app = get-flake horizon-gen-nix;

        horizon-platform-prev = get-flake horizon-platform;

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

        run-impure-tests = writePorcelainOrDieBin {
          name = "run-impure-tests";
          src = ./.;
          command = ''
            export PATH=$PATH:${pkgs.nix-prefetch-git}/bin:${pkgs.cabal-install}/bin
            cabal update
            rm pkgs -rf && nix run .#horizon-gen-nix;
            nixpkgs-fmt pkgs/*
          '';
          advice = "Try removing the offending packages from pkgs/ and running nix run .#horizon-gen-nix";
        };

        run-impure-tests-app = {
          type = "app";
          program = "${run-impure-tests}/bin/run-impure-tests";
        };

        procex = import ./shell/default.nix { haskellPackages = horizon-platform-prev.legacyPackages.${system}; inherit (pkgs) runCommand writeShellScriptBin; };
      in
      {

        apps = {

          horizon-gen-nix = horizon-gen-nix-app.outputs.apps.${system}.horizon-gen-nix;

          horizon-gen-gitlab-ci = {
            type = "app";
            program = "${horizon-gen-gitlab-ci}/bin/gen-gitlab-ci";
          };

          procex = {
            type = "app";
            program = "${procex}/bin/procex-shell";
          };

          run-impure-tests = run-impure-tests-app;
        };

        checks = with lint-utils.linters.${system}; {
          dhall-format = dhall-format { src = self; };
          nixpkgs-fmt = nixpkgs-fmt { src = self; };
          stylish-haskell = stylish-haskell { src = self; };
        };

        inherit legacyPackages;

        inherit packages;

      });
}
