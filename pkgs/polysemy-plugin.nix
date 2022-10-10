{ mkDerivation, base, Cabal, cabal-doctest, containers, doctest
, fetchgit, ghc, ghc-tcplugins-extra, hspec, hspec-discover
, inspection-testing, lib, polysemy, should-not-typecheck, syb
, transformers
}:
mkDerivation {
  pname = "polysemy-plugin";
  version = "0.4.0.0";
  src = fetchgit {
    url = "https://github.com/locallycompact/polysemy";
    sha256 = "0g75az24xc0694hakmkfwxmwd6bm79v48j42yjibiixy14dj1d5g";
    rev = "5942a398ef02bbbe94bedd68f8628390ed223107";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/polysemy-plugin/; echo source root reset to $sourceRoot";
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [
    base containers ghc ghc-tcplugins-extra polysemy syb transformers
  ];
  testHaskellDepends = [
    base containers doctest ghc ghc-tcplugins-extra hspec
    inspection-testing polysemy should-not-typecheck syb transformers
  ];
  testToolDepends = [ hspec-discover ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/polysemy-research/polysemy#readme";
  description = "Disambiguate obvious uses of effects";
  license = lib.licenses.bsd3;
}