# Haskell Horizon Platform

[horizon-haskell.net](https://horizon-haskell.net).

Horizon is a haskell package set targetting new builds of GHC.

## Updating the package set

The package set is generated from the `manifest.dhall` using the following command:

```
nix run .#horizon-gen-nix
```

This will generate both the `pkgs` folder and the `overlay.nix`. If you want to
regenerate a particular package in `pkgs`, delete that file from `pkgs`. To
regenerate the entire package set from scratch, delete the `pkgs` folder.

If you need to do additional manual overrides to the nix code, such as
`addPkgconfigDepends`, edit the `configuration.nix` overlay, which is applied
after `overlay.nix`.
