{ mkDerivation
, aeson
, base
, incipit-core
, lib
, polysemy-test
, stm
, tasty
, template-haskell
, time
, torsor
}:
mkDerivation {
  pname = "polysemy-time";
  version = "0.5.1.0";
  sha256 = "857dbbe99e6e6a1a061aa9cac88a630f2bddc0c748ed8ec8d076b3b44d11e59a";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    incipit-core
    stm
    template-haskell
    time
    torsor
  ];
  testHaskellDepends = [
    base
    incipit-core
    polysemy-test
    tasty
    time
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/tek/polysemy-time#readme";
  description = "Polysemy effects for time";
  license = "BSD-2-Clause-Patent";
  broken = false;
}
