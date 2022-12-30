# Haskell Horizon Platform

[horizon-haskell.net](https://horizon-haskell.net).

Horizon is a haskell package set targetting new builds of GHC.

## Getting started

You an can use this package set instead of your haskell packages set in
nixpkgs. To see an example you can use the template supplied with this
repository.

```
mkdir myProject
cd myProject
nix flake init -t 'git+https://gitlab.homotopic.tech/horizon/horizon-templates'
```

## Updating the package set

The package set is generated from the `horizon.dhall` using the following command:

```
nix run .#horizon-gen-nix
```

This will generate both the packages folder and the package set file. If you
want to regenerate a particular package in the packages folder, delete that file
from the packages folder. To regenerate the entire package set from scratch,
delete the packages folder.

If you need to do additional manual overrides to the nix code, such as
`addPkgconfigDepends`, edit the `configuration.nix` overlay, which is applied
afterwards.
