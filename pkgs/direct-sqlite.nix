{ mkDerivation
, base
, base16-bytestring
, bytestring
, directory
, HUnit
, lib
, temporary
, text
}:
mkDerivation {
  pname = "direct-sqlite";
  version = "2.3.27";
  sha256 = "0319dd780712859fcacf0b8f1401088f76af3b651c7ec366e0231c15e73bd82e";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bytestring text ];
  testHaskellDepends = [
    base
    base16-bytestring
    bytestring
    directory
    HUnit
    temporary
    text
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/IreneKnapp/direct-sqlite";
  description = "Low-level binding to SQLite3. Includes UTF8 and BLOB support.";
  license = lib.licenses.bsd3;
  broken = false;
}
