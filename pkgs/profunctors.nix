{ mkDerivation
, base
, base-orphans
, bifunctors
, comonad
, contravariant
, distributive
, lib
, tagged
, transformers
}:
mkDerivation {
  pname = "profunctors";
  version = "5.6.2";
  sha256 = "65955d7b50525a4a3bccdab1d982d2ae342897fd38140d5a94b5ef3800d8c92a";
  revision = "2";
  editedCabalFile = "1dhg8bys9qnfbvhy4cm4fivanmnik4rg0spshkwyp9s3j88qadix";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    base-orphans
    bifunctors
    comonad
    contravariant
    distributive
    tagged
    transformers
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ekmett/profunctors/";
  description = "Profunctors";
  license = lib.licenses.bsd3;
  broken = false;
}
