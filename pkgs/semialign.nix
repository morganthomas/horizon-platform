{ mkDerivation
, base
, containers
, hashable
, indexed-traversable
, indexed-traversable-instances
, lib
, semigroupoids
, tagged
, these
, transformers
, unordered-containers
, vector
}:
mkDerivation {
  pname = "semialign";
  version = "1.2.0.1";
  sha256 = "d900697041ae4b0cca3243273a2b3e80bcf74d937405d6a5ff34dc33ee952132";
  revision = "3";
  editedCabalFile = "0dbcdnksik508i12arh3s6bis6779lx5f1df0jkc0bp797inhd7f";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    containers
    hashable
    indexed-traversable
    indexed-traversable-instances
    semigroupoids
    tagged
    these
    transformers
    unordered-containers
    vector
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskellari/these";
  description = "Align and Zip type-classes from the common Semialign ancestor";
  license = lib.licenses.bsd3;
  broken = false;
}
