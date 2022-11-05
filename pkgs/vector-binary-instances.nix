{ mkDerivation
, base
, binary
, bytestring
, deepseq
, lib
, tasty
, tasty-bench
, tasty-quickcheck
, vector
}:
mkDerivation {
  pname = "vector-binary-instances";
  version = "0.2.5.2";
  sha256 = "b72e3b2109a02c75cb8f07ef0aabba0dba6ec0148e21321a0a2b2197c9a2f54d";
  revision = "2";
  editedCabalFile = "149gn5n722r2skj5w46av3944fbw3882qkaydq7asm6zx5kc0nj6";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base binary vector ];
  testHaskellDepends = [ base binary tasty tasty-quickcheck vector ];
  benchmarkHaskellDepends = [
    base
    binary
    bytestring
    deepseq
    tasty-bench
    vector
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/bos/vector-binary-instances";
  description = "Instances of Data.Binary for vector";
  license = lib.licenses.bsd3;
  broken = false;
}
