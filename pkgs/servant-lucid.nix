{ mkDerivation
, base
, http-media
, lib
, lucid
, servant
, servant-server
, text
, wai
, warp
}:
mkDerivation {
  pname = "servant-lucid";
  version = "0.9.0.5";
  sha256 = "df55d4cb266bb95f31f658bef0e13c17a7b16e13068cc9931160620885911d7a";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base http-media lucid servant text ];
  testHaskellDepends = [ base lucid servant-server wai warp ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://haskell-servant.readthedocs.org/";
  description = "Servant support for lucid";
  license = lib.licenses.bsd3;
  broken = false;
}
