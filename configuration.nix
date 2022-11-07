{ pkgs, ... }:

with pkgs.haskell.lib;

final: prev: {

  saltine = addPkgconfigDepend prev.saltine pkgs.libsodium;

  libsodium = prev.callPackage ./pkgs/libsodium.nix { inherit (pkgs) libsodium; };

}
