{
  inputs = {
    lint-utils.url = "git+https://gitlab.homotopic.tech/nix/lint-utils";
    horizon-gen-nix.url = "git+https://gitlab.homotopic.tech/horizon/horizon-gen-nix";
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };
  outputs = inputs@{ self, nixpkgs, flake-utils, horizon-gen-nix, lint-utils, ... }:
    flake-utils.lib.eachSystem [ "x86_64-linux" ] (system:
      let
        pkgs = import nixpkgs { inherit system; };
        overrides-hp = import ./overlay.nix { inherit inputs pkgs; };
        configuration = import ./configuration.nix { inherit inputs pkgs; };
        hp = pkgs.haskell.packages.ghc942.override {
          overrides = pkgs.lib.composeManyExtensions [ overrides-hp configuration ];
        };
        hp' = pkgs.lib.filterAttrs
          (n: v: v != null
            && builtins.typeOf v == "set"
            && pkgs.lib.hasAttr "type" v
            && v.type == "derivation"
            && v.meta.broken == false)
          hp;
        horizon-gen-gitlab-ci = pkgs.writers.writeBashBin "gen-gitlab-ci" "${pkgs.dhall-json}/bin/dhall-to-yaml --file .gitlab-ci.dhall";
      in
      {
        apps = {
          horizon-gen-nix = {
            type = "app";
            program = "${horizon-gen-nix.outputs.packages.x86_64-linux.default}/bin/horizon-gen-nix";
          };
          horizon-gen-gitlab-ci = {
            type = "app";
            program = "${horizon-gen-gitlab-ci}/bin/gen-gitlab-ci";
          };
        };
        checks = {
          dhall-format = lint-utils.outputs.linters.x86_64-linux.dhall-format ./.;
          nixpkgs-fmt = lint-utils.outputs.linters.x86_64-linux.nixpkgs-fmt ./.;
        };
        overrides.ghc942 = overrides-hp;
        packages = hp';
      });
}
