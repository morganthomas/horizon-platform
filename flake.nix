{
  inputs = {
    cborg = {
      url = "github:parsonsmatt/cborg/05ca2063ff631667699bffbeee3a4a076943b905";
      flake = false;
    };
    cereal = {
      url = "github:GaloisInc/cereal";
      flake = false;
    };
    composite-lens-extra = {
      url = "git+https://gitlab.homotopic.tech/haskell/composite-lens-extra";
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
    flake-parts.url = "github:hercules-ci/flake-parts";
    flake-parts.inputs.nixpkgs.follows = "nixpkgs";
    foundation = {
      url = "github:parsonsmatt/foundation";
      flake = false;
    };
    hedgehog = {
      url = "github:hedgehogqa/haskell-hedgehog";
      flake = false;
    };
    ghc-tcplugins-extra = {
      url = "github:clash-lang/ghc-tcplugins-extra/8852d8ad94effa39e3400a243b21ae444df6c69e";
      flake = false;
    };
    lint-utils.url = "git+https://gitlab.homotopic.tech/nix/lint-utils";
    hashable = {
      url = "github:haskell-unordered-containers/hashable";
      flake = false;
    };
    haskell-flake.url = "github:srid/haskell-flake";
    integer-logarithms = {
      url = "github:haskellari/integer-logarithms";
      flake = false;
    };
    memory = {
      url = "github:parsonsmatt/hs-memory/0f760c8ba0b7d5aacf04a7294e87e5e4fff53f40";
      flake = false;
    };
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    tasty = {
      url = "github:UnkindPartition/tasty";
      flake = false;
    };
    tasty-hedgehog = {
      url = "github:locallycompact/tasty-hedgehog";
      flake = false;
    };
    th-lift-instances = {
      url = "github:bennofs/th-lift-instances";
      flake = false;
    };
    all-cabal-hashes = {
      url = "github:commercialhaskell/all-cabal-hashes?ref=hackage";
      flake = false;
    };
  };
  outputs = inputs@{ self, nixpkgs, flake-utils, lint-utils, ... }:
      let
        overlay-ach = final: prev: { all-cabal-hashes = inputs.all-cabal-hashes; };
        pkgs = import nixpkgs { system = "x86_64-linux"; overlays = [overlay-ach]; };
        overrides-hp = import ./overlay.nix { inherit inputs pkgs; };
        hp = pkgs.haskell.packages.ghc942.override {
          overrides = overrides-hp;
        };
        hp' = pkgs.lib.filterAttrs (n: v: v != null
                                       && builtins.typeOf v == "set"
                                       && pkgs.lib.hasAttr "type" v
                                       && v.type == "derivation"
                                       && v.meta.broken == false) hp;
      in
      {
        checks.x86_64-linux = {
          nixpkgs-fmt = lint-utils.outputs.linters.x86_64-linux.nixpkgs-fmt ./.;
        };
        packages.x86_64-linux = hp';
      };
}
