{ mkDerivation
, array
, auto-update
, base
, bytestring
, directory
, easy-file
, filepath
, hspec
, hspec-discover
, lib
, text
, unix-compat
, unix-time
}:
mkDerivation {
  pname = "fast-logger";
  version = "3.1.1";
  sha256 = "435f6e7e0771b9b525550c292a941ab5726b233e7d91fdeca707e3cdb531a8e7";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array
    auto-update
    base
    bytestring
    directory
    easy-file
    filepath
    text
    unix-compat
    unix-time
  ];
  testHaskellDepends = [ base bytestring directory hspec ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/kazu-yamamoto/logger";
  description = "A fast logging system";
  license = lib.licenses.bsd3;
  broken = false;
}
