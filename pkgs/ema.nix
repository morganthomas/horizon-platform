{ mkDerivation, aeson, async, base, blaze-html, blaze-markup
, constraints-extras, containers, data-default, dependent-sum
, dependent-sum-template, directory, fetchgit, file-embed, filepath
, filepattern, fsnotify, generic-optics, generics-sop, http-types
, lib, lvar, monad-logger, monad-logger-extras, mtl
, neat-interpolation, optics-core, optparse-applicative, pandoc
, pandoc-types, raw-strings-qq, relude, sop-core, template-haskell
, text, time, unionmount, unliftio, url-slug, wai
, wai-middleware-static, wai-websockets, warp, websockets
}:
mkDerivation {
  pname = "ema";
  version = "0.8.2.0";
  src = fetchgit {
    url = "https://github.com/EmaApps/ema";
    sha256 = "0i7ijx85w1bhb98ppi5lj8ypq9jkhv2268cynj492dfd7hnbhzfv";
    rev = "be89ffe306a15ab4a16494c8593d989fabcc4486";
    fetchSubmodules = true;
  };
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    aeson async base blaze-html blaze-markup constraints-extras
    containers data-default dependent-sum dependent-sum-template
    directory file-embed filepath filepattern fsnotify generic-optics
    generics-sop http-types lvar monad-logger monad-logger-extras mtl
    neat-interpolation optics-core optparse-applicative pandoc
    pandoc-types relude sop-core template-haskell text time unionmount
    unliftio url-slug wai wai-middleware-static wai-websockets warp
    websockets
  ];
  testHaskellDepends = [
    base generics-sop raw-strings-qq template-haskell text url-slug
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://ema.srid.ca/";
  description = "Static site generator library with hot reload";
  license = lib.licenses.agpl3Only;
}