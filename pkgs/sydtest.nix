{ mkDerivation
, Diff
, MonadRandom
, QuickCheck
, async
, autodocodec
, autodocodec-yaml
, base
, bytestring
, containers
, dlist
, envparse
, filepath
, lib
, mtl
, optparse-applicative
, path
, path-io
, pretty-show
, quickcheck-io
, random
, random-shuffle
, safe
, safe-coloured-text
, safe-coloured-text-terminfo
, split
, stm
, sydtest-discover
, text
}:
mkDerivation {
  pname = "sydtest";
  version = "0.14.0.0";
  sha256 = "1lfg04b2fi1hn6h3bwgjmjaabgnw3m71k10h34pcvfn0lmzwqqq3";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    async
    autodocodec
    autodocodec-yaml
    base
    bytestring
    containers
    Diff
    dlist
    envparse
    filepath
    MonadRandom
    mtl
    optparse-applicative
    path
    path-io
    pretty-show
    QuickCheck
    quickcheck-io
    random
    random-shuffle
    safe
    safe-coloured-text
    safe-coloured-text-terminfo
    split
    stm
    text
  ];
  testHaskellDepends = [
    base
    bytestring
    path
    path-io
    QuickCheck
    random
    safe-coloured-text
    stm
    text
  ];
  testToolDepends = [ sydtest-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/NorfairKing/sydtest#readme";
  description = "A modern testing framework for Haskell with good defaults and advanced testing features";
  license = "unknown";
  broken = false;
}
