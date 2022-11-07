{ mkDerivation
, base
, haskell-src-exts
, lib
, tasty
, tasty-hunit
, template-haskell
}:
mkDerivation {
  pname = "tasty-th";
  version = "0.1.7";
  sha256 = "435aac8f317e2f8cb1aa96fb3f7c9003c1ac28e6d3ca4c3c23f5142178de512c";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    haskell-src-exts
    tasty
    template-haskell
  ];
  testHaskellDepends = [ base tasty-hunit ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/bennofs/tasty-th";
  description = "Automatic tasty test case discovery using TH";
  license = lib.licenses.bsd3;
  broken = false;
}
