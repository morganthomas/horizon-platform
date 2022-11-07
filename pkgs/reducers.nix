{ mkDerivation
, array
, base
, bytestring
, containers
, fingertree
, hashable
, lib
, semigroupoids
, text
, transformers
, unordered-containers
}:
mkDerivation {
  pname = "reducers";
  version = "3.12.4";
  sha256 = "c066f545df7947613217256d210ecb59ba709294e7b06dad8c4d8a9263635e43";
  revision = "2";
  editedCabalFile = "1ji6rp0f857d0vp2kjqcck7avrjgqvqjgwnhdcxs3zbjkwpqyhfb";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array
    base
    bytestring
    containers
    fingertree
    hashable
    semigroupoids
    text
    transformers
    unordered-containers
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ekmett/reducers/";
  description = "Semigroups, specialized containers and a general map/reduce framework";
  license = lib.licenses.bsd3;
  broken = false;
}
