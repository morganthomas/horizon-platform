{ mkDerivation
, array
, base
, bytestring
, bytestring-handle
, containers
, criterion
, deepseq
, directory
, filepath
, lib
, QuickCheck
, tasty
, tasty-quickcheck
, time
}:
mkDerivation {
  pname = "tar";
  version = "0.5.1.1";
  sha256 = "b384449f62b2b0aa3e6d2cb1004b8060b01f21ec93e7b63e7af6d8fad8a9f1de";
  revision = "5";
  editedCabalFile = "15dqywn1lsyqb0nq1amj70mh1i079b7xwr02wbpcdzmdljg9c55w";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array
    base
    bytestring
    containers
    deepseq
    directory
    filepath
    time
  ];
  testHaskellDepends = [
    array
    base
    bytestring
    bytestring-handle
    containers
    deepseq
    directory
    filepath
    QuickCheck
    tasty
    tasty-quickcheck
    time
  ];
  benchmarkHaskellDepends = [
    array
    base
    bytestring
    containers
    criterion
    deepseq
    directory
    filepath
    time
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Reading, writing and manipulating \".tar\" archive files.";
  license = lib.licenses.bsd3;
  broken = false;
}
