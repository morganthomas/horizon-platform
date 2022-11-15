{
  inputs = {
    get-flake.url = "github:ursi/get-flake";
    lint-utils.url = "git+https://gitlab.homotopic.tech/nix/lint-utils";
    horizon-gen-nix = {
      flake = false;
      url = "git+https://gitlab.homotopic.tech/horizon/horizon-gen-nix";
    };
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs = inputs@{ self, nixpkgs, flake-utils, get-flake, horizon-gen-nix, lint-utils, ... }:
    flake-utils.lib.eachSystem [ "x86_64-linux" ] (system:
      let

        pkgs = nixpkgs.legacyPackages.${system};

        horizon-gen-nix-app = get-flake horizon-gen-nix;

        haskellLib = pkgs.haskell.lib.compose;

        legacyPackages = pkgs.callPackage (nixpkgs + /pkgs/development/haskell-modules) {
          buildHaskellPackages = pkgs.haskell.packages.ghc942;
          compilerConfig = pkgs.callPackage ./configuration-ghc-9.4.x.nix { inherit haskellLib; };
          configurationCommon = import ./configuration.nix;
          configurationNix = { pkgs, haskellLib }: self: super: { };
          ghc = pkgs.haskell.compiler.ghc942;
          inherit haskellLib;
          initialPackages = import ./overlay.nix;
          nonHackagePackages = self: super: { };
        };

        packages = pkgs.lib.filterAttrs
          (n: v: v != null
            && builtins.typeOf v == "set"
            && pkgs.lib.hasAttr "type" v
            && v.type == "derivation"
            && v.meta.broken == false)
          legacyPackages;

        horizon-gen-gitlab-ci = pkgs.writers.writeBashBin "gen-gitlab-ci" "${pkgs.dhall-json}/bin/dhall-to-yaml --file .gitlab-ci.dhall";

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
          dhall-format = lint-utils.outputs.linters.x86_64-linux.dhall-format ./.;
          nixpkgs-fmt = lint-utils.outputs.linters.x86_64-linux.nixpkgs-fmt ./.;
        };

        inherit legacyPackages;

        inherit packages;

      });
}
