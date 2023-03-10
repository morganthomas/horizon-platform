{ mkDerivation
, base
, containers
, ghc-prim
, lib
, text
, unordered-containers
}:
mkDerivation {
  pname = "ekg-core";
  version = "0.1.1.7";
  sha256 = "45813f2b94fde0b92c7979bd37de52f09b8b645560f5789276c3acfc7934db12";
  revision = "2";
  editedCabalFile = "05h0jz42s1d3bjcvzbp3dv5rvil4ar244mdqdvzbf60z848ppygl";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    containers
    ghc-prim
    text
    unordered-containers
  ];
  benchmarkHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/tibbe/ekg-core";
  description = "Tracking of system metrics";
  license = lib.licenses.bsd3;
  broken = false;
}
