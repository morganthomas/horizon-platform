{ mkDerivation
, ansi-terminal
, base
, containers
, fetchgit
, lib
, optparse-applicative
, stm
, tagged
, transformers
, unix
}:
mkDerivation {
  pname = "tasty";
  version = "1.4.2.3";
  src = fetchgit {
    url = "https://github.com/UnkindPartition/tasty";
    sha256 = "0mbzw9plh5gffpdzbnw6749b45dpal29wdak2y04qlmjs42wxcv1";
    rev = "207d3453a64b414593512c1e968171d64a8dbe61";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/core/; echo source root reset to $sourceRoot";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    ansi-terminal
    base
    containers
    optparse-applicative
    stm
    tagged
    transformers
    unix
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/UnkindPartition/tasty";
  description = "Modern and extensible testing framework";
  license = lib.licenses.mit;
  broken = false;
}
