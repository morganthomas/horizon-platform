{ mkDerivation
, HUnit
, async
, base
, bytestring
, containers
, directory
, enclosed-exceptions
, exceptions
, filepath
, hspec
, hspec-contrib
, lib
, lifted-async
, lifted-base
, monad-control
, mtl
, process
, text
, time
, transformers
, transformers-base
, unix-compat
}:
mkDerivation {
  pname = "shelly";
  version = "1.10.0";
  sha256 = "c54000aff5ed59dc50f75754390c689aedb9792d3b327406caf146983380ff41";
  revision = "1";
  editedCabalFile = "07c1rjwvg2ldam6yaksvrr9f703b7d1rcw0482ns5yi2f7y1kczp";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    async
    base
    bytestring
    containers
    directory
    enclosed-exceptions
    exceptions
    filepath
    lifted-async
    lifted-base
    monad-control
    mtl
    process
    text
    time
    transformers
    transformers-base
    unix-compat
  ];
  testHaskellDepends = [
    base
    bytestring
    directory
    filepath
    hspec
    hspec-contrib
    HUnit
    lifted-async
    mtl
    text
    transformers
    unix-compat
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/yesodweb/Shelly.hs";
  description = "shell-like (systems) programming in Haskell";
  license = lib.licenses.bsd3;
  broken = false;
}
