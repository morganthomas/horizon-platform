{ mkDerivation, base, lib, mtl, QuickCheck, random }:
mkDerivation {
  pname = "quickcheck-dynamic";
  version = "2.0.0";
  sha256 = "78082446894d9522a1e9f9589f758fef2fcb7778d9427fe8ce1cedc156ea48ed";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base mtl QuickCheck random ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/input-output-hk/quickcheck-dynamic#readme";
  description = "A library for stateful property-based testing";
  license = lib.licenses.asl20;
  broken = false;
}
