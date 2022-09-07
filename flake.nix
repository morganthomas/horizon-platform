{
  inputs = {
    Cabal = {
      url = "git+https://gitlab.haskell.org/ghc/packages/Cabal";
      flake = false;
    };
    all-cabal-hashes = {
      url = "github:commercialhaskell/all-cabal-hashes?ref=hackage";
      flake = false;
    };
    cache-effectful = {
      url = "github:haskell-effectful/cache-effectful";
      flake = false;
    };
    cborg = {
      url = "github:parsonsmatt/cborg/05ca2063ff631667699bffbeee3a4a076943b905";
      flake = false;
    };
    doctest = {
      url = "github:parsonsmatt/doctest/a5f696b80bb8220d284e34d90f0b94291b859e77";
      flake = false;
    };
    double-conversion = {
      url = "github:haskell/double-conversion";
      flake = false;
    };
    ed25519 = {
      url = "git+https://gitlab.homotopic.tech/horizon/adopted/ed25519";
      flake = false;
    };
    flake-parts.url = "github:hercules-ci/flake-parts";
    flake-parts.inputs.nixpkgs.follows = "nixpkgs";
    lint-utils.url = "git+https://gitlab.homotopic.tech/nix/lint-utils";
    haskell-flake.url = "github:srid/haskell-flake";
    memory = {
      url = "github:parsonsmatt/hs-memory/0f760c8ba0b7d5aacf04a7294e87e5e4fff53f40";
      flake = false;
    };
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    polysemy = {
      url = "github:locallycompact/polysemy?ref=ghc-942";
      flake = false;
    };
    servant = {
      url = "github:TeofilC/servant?ref=ghc-9.4";
      flake = false;
    };
    tasty = {
      url = "github:UnkindPartition/tasty";
      flake = false;
    };
    tasty-hedgehog = {
      url = "github:locallycompact/tasty-hedgehog";
      flake = false;
    };
  };
  outputs = inputs@{ self, nixpkgs, flake-utils, lint-utils, ... }:
    flake-utils.lib.eachSystem [ "x86_64-linux" ] (system:
      let
        overlay-ach = final: prev: { all-cabal-hashes = inputs.all-cabal-hashes; };
        pkgs = import nixpkgs { inherit system; overlays = [ overlay-ach ]; };
        overrides-hp = import ./overlay.nix { inherit inputs pkgs; };
        hp = pkgs.haskell.packages.ghc942.override {
          overrides = overrides-hp;
        };
        hp' = pkgs.lib.filterAttrs
          (n: v: v != null
            && builtins.typeOf v == "set"
            && pkgs.lib.hasAttr "type" v
            && v.type == "derivation"
            && v.meta.broken == false)
          hp;
      in
      {
        checks = {
          nixpkgs-fmt = lint-utils.outputs.linters.x86_64-linux.nixpkgs-fmt ./.;
        };
        overrides.ghc942 = overrides-hp;
        packages = hp';
      });
}
