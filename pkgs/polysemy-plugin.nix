{ mkDerivation
, Cabal
, base
, cabal-doctest
, containers
, doctest
, fetchgit
, ghc
, ghc-tcplugins-extra
, hspec
, hspec-discover
, inspection-testing
, lib
, polysemy
, should-not-typecheck
, syb
, transformers
}:
mkDerivation {
  pname = "polysemy-plugin";
  version = "0.4.3.1";
  src = fetchgit {
    url = "https://github.com/locallycompact/polysemy";
    sha256 = "1sy2jmwcg9aw4a6rji36djhkxhxnh50pqhaa3jhjfv2dsw652bcz";
    rev = "bd944ca000c1ca69602d4723e3859af431b9d0c4";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/polysemy-plugin/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [
    base
    containers
    ghc
    ghc-tcplugins-extra
    polysemy
    syb
    transformers
  ];
  testHaskellDepends = [
    base
    containers
    doctest
    ghc
    ghc-tcplugins-extra
    hspec
    inspection-testing
    polysemy
    should-not-typecheck
    syb
    transformers
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/polysemy-research/polysemy#readme";
  description = "Disambiguate obvious uses of effects";
  license = lib.licenses.bsd3;
  broken = false;
}
