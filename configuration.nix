{ pkgs, haskellLib }:

with pkgs.haskell.lib;

final: prev: {

  digest = addExtraLibrary prev.digest pkgs.zlib;

  libsodium = prev.callPackage ./pkgs/libsodium.nix { inherit (pkgs) libsodium; };

  saltine = addPkgconfigDepend prev.saltine pkgs.libsodium;

  splitmix = prev.callPackage ./pkgs/splitmix.nix { inherit (pkgs) testu01; };

  text-icu = prev.callPackage ./pkgs/text-icu.nix { inherit (pkgs) icu-i18n; };

  zlib = prev.callPackage ./pkgs/zlib.nix { inherit (pkgs) zlib; };
}
