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
    composite-dhall = {
      url = "git+https://gitlab.homotopic.tech/haskell/composite-dhall";
      flake = false;
    };
    composite-lens-extra = {
      url = "git+https://gitlab.homotopic.tech/haskell/composite-lens-extra";
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
    polysemy-time = {
      url = "github:tek/polysemy-time";
      flake = false;
    };
  };
  outputs = inputs@{ self, nixpkgs, flake-utils, lint-utils, ... }:
    flake-utils.lib.eachSystem [ "x86_64-linux" ] (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        checks = {
          nixpkgs-fmt = lint-utils.outputs.linters.${system}.nixpkgs-fmt ./.;
        };
        overlays = import ./overlay.nix { inherit inputs pkgs; };
      });
}
