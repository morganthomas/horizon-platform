{ mkDerivation
, base
, containers
, ghc-prim
, lib
, template-haskell
}:
mkDerivation {
  pname = "th-abstraction";
  version = "0.4.5.0";
  sha256 = "00d5e24f247e328bd9898d5af5915c1e86b134b4d40baa680258635f95031526";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    containers
    ghc-prim
    template-haskell
  ];
  testHaskellDepends = [ base containers template-haskell ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/glguy/th-abstraction";
  description = "Nicer interface for reified information about data types";
  license = lib.licenses.isc;
  broken = false;
}
