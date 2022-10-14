{ mkDerivation, base, call-stack, fetchgit, lib, tasty }:
mkDerivation {
  pname = "tasty-hunit";
  version = "0.10.0.2";
  src = fetchgit {
    url = "https://github.com/UnkindPartition/tasty";
    sha256 = "0mbzw9plh5gffpdzbnw6749b45dpal29wdak2y04qlmjs42wxcv1";
    rev = "207d3453a64b414593512c1e968171d64a8dbe61";
    fetchSubmodules = true;
  };
  postUnpack = "sourceRoot+=/hunit/; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [ base call-stack tasty ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/UnkindPartition/tasty";
  description = "HUnit support for the Tasty test framework";
  license = lib.licenses.mit;
}
