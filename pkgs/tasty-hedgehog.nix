{ mkDerivation
, base
, fetchgit
, hedgehog
, lib
, tagged
, tasty
, tasty-expected-failure
}:
mkDerivation {
  pname = "tasty-hedgehog";
  version = "1.2.0.0";
  src = fetchgit {
    url = "https://github.com/locallycompact/tasty-hedgehog";
    sha256 = "1ql4wsah4zz2dizakgh3lfgbbq9c3c6nmypcp6fl3i96pbdj2bh5";
    rev = "4a3477578ed21aa82e5b74f387d08e5d750635d6";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base hedgehog tagged tasty ];
  testHaskellDepends = [
    base
    hedgehog
    tasty
    tasty-expected-failure
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/qfpl/tasty-hedgehog";
  description = "Integration for tasty and hedgehog";
  license = lib.licenses.bsd3;
  broken = false;
}
