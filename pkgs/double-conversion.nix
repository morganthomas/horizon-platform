{ mkDerivation
, base
, bytestring
, fetchgit
, ghc-prim
, HUnit
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
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/double-conversion";
  description = "Fast conversion between single and double precision floating point and text";
  license = lib.licenses.bsd3;
}
