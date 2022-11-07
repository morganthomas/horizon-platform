{ pkgs, ... }:

with pkgs.haskell.lib;

final: prev: {

  libsodium = prev.callPackage ./pkgs/libsodium.nix { inherit (pkgs) libsodium; };

}
