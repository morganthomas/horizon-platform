{ mkDerivation
, base
, clock
, directory
, filepath
, lib
, process
, QuickCheck
, quickcheck-instances
, time
, unix
}:
mkDerivation {
  pname = "extra";
  version = "1.7.12";
  sha256 = "e571a9ec1d8865f0fbb0e0ba1eb575f783b0365c80db19b54a93600bae43b03c";
  libraryHaskellDepends = [
    base
    clock
    directory
    filepath
    process
    time
    unix
  ];
  testHaskellDepends = [
    base
    directory
    filepath
    QuickCheck
    quickcheck-instances
    unix
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/ndmitchell/extra#readme";
  description = "Extra functions I use";
  license = lib.licenses.bsd3;
}
