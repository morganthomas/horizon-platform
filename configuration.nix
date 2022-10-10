{ pkgs, ... }:

with pkgs.haskell.lib;

final: prev: {

  saltine = addPkgconfigDepend prev.saltine pkgs.libsodium;

}
