{ mkDerivation
, HUnit
, async
, base
, base-compat
, base-compat-batteries
, bytestring
, clock
, containers
, criterion
, deepseq
, lib
, math-functions
, process
, random
, test-framework
, test-framework-hunit
, testu01
, tf-random
, vector
}:
mkDerivation {
  pname = "splitmix";
  version = "0.1.0.4";
  sha256 = "6d065402394e7a9117093dbb4530a21342c9b1e2ec509516c8a8d0ffed98ecaa";
  revision = "1";
  editedCabalFile = "1iqlg2d4mybqwzwp67c5a1yxzd47cbp4f7mrpa6d0ckypis2akl0";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq ];
  testHaskellDepends = [
    async
    base
    base-compat
    base-compat-batteries
    bytestring
    containers
    deepseq
    HUnit
    math-functions
    process
    random
    test-framework
    test-framework-hunit
    tf-random
    vector
  ];
  testSystemDepends = [ testu01 ];
  benchmarkHaskellDepends = [
    base
    clock
    containers
    criterion
    random
    tf-random
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Fast Splittable PRNG";
  license = lib.licenses.bsd3;
  broken = false;
}
