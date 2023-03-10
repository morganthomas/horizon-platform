{ pkgs, haskellLib }:

with pkgs.haskell.lib;

final: prev: {

  digest = addExtraLibrary prev.digest pkgs.zlib;

  hopenssl = prev.hopenssl.override { openssl = pkgs.openssl_1_1; };

  libsodium = prev.callPackage ./pkgs/libsodium.nix { inherit (pkgs) libsodium; };

  saltine = addPkgconfigDepend prev.saltine pkgs.libsodium;

  splitmix = prev.callPackage ./pkgs/splitmix.nix { inherit (pkgs) testu01; };

  text-icu = prev.callPackage ./pkgs/text-icu.nix { icu-i18n = pkgs.icu; };

  X11-xft = addPkgconfigDepends prev.X11-xft [ pkgs.expat pkgs.xorg.libXau pkgs.xorg.libXdmcp ];

  zlib = prev.callPackage ./pkgs/zlib.nix { inherit (pkgs) zlib; };
}
