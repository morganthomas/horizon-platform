{ mkDerivation
, OneTuple
, QuickCheck
, base
, binary
, lib
, quickcheck-instances
, tagged
, tasty
, tasty-quickcheck
, transformers
}:
mkDerivation {
  pname = "binary-orphans";
  version = "1.0.3";
  sha256 = "e2e554823ce6758cbbfb64acb8b5905d3c226eab18b5fcaf5d7c79252114602c";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base binary transformers ];
  testHaskellDepends = [
    base
    binary
    OneTuple
    QuickCheck
    quickcheck-instances
    tagged
    tasty
    tasty-quickcheck
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Compatibility package for binary; provides instances";
  license = lib.licenses.bsd3;
  broken = false;
}
