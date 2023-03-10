{ mkDerivation
, HUnit
, base
, bytestring
, fetchgit
, ghc-prim
, lib
, system-cxx-std-lib
, test-framework
, test-framework-hunit
, test-framework-quickcheck2
, text
}:
mkDerivation {
  pname = "double-conversion";
  version = "2.0.4.1";
  src = fetchgit {
    url = "https://github.com/haskell/double-conversion";
    sha256 = "0z27zd1nyydz6hirbbdyhqmd4nbxcn7vcfx6jvlygrm4jwmhkr9b";
    rev = "5d092e0664442eaac8ae1d101dba57ce9b1c9b03";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    ghc-prim
    system-cxx-std-lib
    text
  ];
  testHaskellDepends = [
    base
    bytestring
    HUnit
    test-framework
    test-framework-hunit
    test-framework-quickcheck2
    text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/double-conversion";
  description = "Fast conversion between single and double precision floating point and text";
  license = lib.licenses.bsd3;
  broken = false;
}
