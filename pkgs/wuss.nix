{ mkDerivation
, base
, bytestring
, connection
, lib
, network
, websockets
}:
mkDerivation {
  pname = "wuss";
  version = "2.0.0.2";
  sha256 = "02a04d38c11b1046ade12d35bbd9f165429ed02f554b06abf7b8fb4fd7c05812";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    connection
    network
    websockets
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Secure WebSocket (WSS) clients";
  license = lib.licenses.mit;
  broken = false;
}
