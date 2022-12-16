{
  description = "haskell-template";
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    horizon-platform.url = "git+https://gitlab.homotopic.tech/horizon/horizon-platform";
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };
  outputs =
    inputs@
    { self
    , flake-utils
    , horizon-platform
    , nixpkgs
    , ...
    }:
    flake-utils.lib.eachSystem [ "x86_64-linux" ] (system:
    let
      pkgs = import nixpkgs { inherit system; };
      legacyPackages = with pkgs.haskell.lib.compose;
        horizon-platform.legacyPackages.${system}.override {
          overrides = hfinal: hprev: {
            haskell-template = hprev.callCabal2nix "haskell-template" ./. { };
          };
        };
    in
    {

      devShells.default = legacyPackages.haskell-template.env.overrideAttrs (attrs: {
        buildInputs = attrs.buildInputs ++ [
          legacyPackages.cabal-install
          pkgs.stylish-haskell
          pkgs.nixpkgs-fmt
        ];
      });

      packages.default = legacyPackages.haskell-template;

    });
}
