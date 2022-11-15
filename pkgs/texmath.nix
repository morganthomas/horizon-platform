{ mkDerivation
, base
, bytestring
, containers
, directory
, filepath
, lib
, mtl
, pandoc-types
, parsec
, pretty-show
, split
, syb
, tagged
, tasty
, tasty-golden
, text
, xml
}:
mkDerivation {
  pname = "texmath";
  version = "0.12.5.4";
  sha256 = "98423b2e07d90d3f50afa7cd4755c8e65bc8712db248ba030bc478518646c8b6";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    containers
    mtl
    pandoc-types
    parsec
    split
    syb
    text
    xml
  ];
  testHaskellDepends = [
    base
    bytestring
    directory
    filepath
    pretty-show
    tagged
    tasty
    tasty-golden
    text
    xml
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/jgm/texmath";
  description = "Conversion between math formats";
  license = lib.licenses.gpl2Only;
  broken = false;
}
