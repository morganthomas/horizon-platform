{ mkDerivation
, base
, base-compat
, base-orphans
, deepseq
, hashable
, HUnit
, lib
, QuickCheck
, tagged
, tasty
, tasty-hunit
, tasty-quickcheck
, time
}:
mkDerivation {
  pname = "time-compat";
  version = "1.9.6.1";
  sha256 = "ad07bb00eb9678c2136d3680752b00acc4cbc522654bb3199bf31c61ef1e6b80";
  revision = "4";
  editedCabalFile = "1n39yfk21xz8y1xvkh01651yysk2zp5qac22l5pq2hi7scczmxaw";
  libraryHaskellDepends = [
    base
    base-orphans
    deepseq
    hashable
    time
  ];
  testHaskellDepends = [
    base
    base-compat
    deepseq
    hashable
    HUnit
    QuickCheck
    tagged
    tasty
    tasty-hunit
    tasty-quickcheck
    time
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskellari/time-compat";
  description = "Compatibility package for time";
  license = lib.licenses.bsd3;
}
