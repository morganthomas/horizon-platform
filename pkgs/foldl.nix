{ mkDerivation
, base
, bytestring
, comonad
, containers
, contravariant
, criterion
, doctest
, hashable
, lib
, primitive
, profunctors
, random
, semigroupoids
, text
, transformers
, unordered-containers
, vector
}:
mkDerivation {
  pname = "foldl";
  version = "1.4.12";
  sha256 = "4f59360d96fb9ff10861944dd8a89b2448ea2b7dedc376546f4de80125f5c47d";
  revision = "5";
  editedCabalFile = "1b97k85zryid7x2ygi92ilv480ahfjn5yf1f4blllwyxn7zgvjv4";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    comonad
    containers
    contravariant
    hashable
    primitive
    profunctors
    random
    semigroupoids
    text
    transformers
    unordered-containers
    vector
  ];
  testHaskellDepends = [ base doctest ];
  benchmarkHaskellDepends = [ base criterion ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Composable, streaming, and efficient left folds";
  license = lib.licenses.bsd3;
  broken = false;
}
