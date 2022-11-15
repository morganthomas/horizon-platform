{ mkDerivation
, async
, base
, bytestring
, containers
, directory
, exceptions
, filepath
, hinotify
, lib
, monad-control
, random
, retry
, safe-exceptions
, sandwich
, temporary
, text
, time
, unix
, unix-compat
, unliftio
}:
mkDerivation {
  pname = "fsnotify";
  version = "0.4.1.0";
  sha256 = "d130fb4a871a181a3d1485f24da85aa49d6ff9022ce08f8401b4626143eaf7ef";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    async
    base
    bytestring
    containers
    directory
    filepath
    hinotify
    monad-control
    safe-exceptions
    text
    time
    unix
    unix-compat
  ];
  testHaskellDepends = [
    async
    base
    directory
    exceptions
    filepath
    random
    retry
    safe-exceptions
    sandwich
    temporary
    unix-compat
    unliftio
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-fswatch/hfsnotify";
  description = "Cross platform library for file change notification";
  license = lib.licenses.bsd3;
  broken = false;
}
