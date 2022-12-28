let Prelude =
        env:DHALL_PRELUDE
      ? https://raw.githubusercontent.com/dhall-lang/dhall-lang/v20.1.0/Prelude/package.dhall
          sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let H =
      https://gitlab.homotopic.tech/horizon/horizon-spec/-/raw/0.4.1/dhall/package.dhall
        sha256:9f2def711ea8796cdb24fa837da6681f9a7e752f87aeff08eee9b494c6e3374c

let toStep
    : Text → Text
    = λ(x : Text) → ".#${x}"

let input =
      Prelude.Map.keys
        Text
        H.HaskellPackage.Type
        ( merge
            { MakePackageSet =
                λ(x : H.PackageSetExportSettings) → x.packageSet.packages
            , MakeOverlay = λ(x : H.OverlayExportSettings) → x.overlay
            }
            ./horizon.dhall
        )

let packages = Prelude.List.map Text Text toStep (input : List Text)

in      "nix build -L --no-link "
    ++  Prelude.List.fold
          Text
          packages
          Text
          (λ(x : Text) → λ(y : Text) → x ++ " " ++ y)
          ""
