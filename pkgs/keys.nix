{ mkDerivation
, array
, base
, comonad
, containers
, free
, hashable
, lib
, semigroupoids
, semigroups
, tagged
, transformers
, transformers-compat
, unordered-containers
}:
mkDerivation {
  pname = "keys";
  version = "3.12.3";
  sha256 = "d51e4288a3cc89c5be3327a499212a651549a58af78d0dfeb2cd80e19ce66646";
  revision = "2";
  editedCabalFile = "1sb7ii9mhx77rhviqbmdc5r6wlimkmadxi1pyk7k3imdqcdzgjlp";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array
    base
    comonad
    containers
    free
    hashable
    semigroupoids
    semigroups
    tagged
    transformers
    transformers-compat
    unordered-containers
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ekmett/keys/";
  description = "Keyed functors and containers";
  license = lib.licenses.bsd3;
  broken = false;
}
