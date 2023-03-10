{ mkDerivation
, HUnit
, array
, base
, binary
, bytestring
, containers
, digest
, directory
, filepath
, lib
, mtl
, pretty
, process
, temporary
, text
, time
, unix
, which
, zlib
}:
mkDerivation {
  pname = "zip-archive";
  version = "0.4.2.2";
  sha256 = "a4016b404356e5fe38a89fceb8c88b01251f7e3fe7832323a50a3f732a346709";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array
    base
    binary
    bytestring
    containers
    digest
    directory
    filepath
    mtl
    pretty
    text
    time
    unix
    zlib
  ];
  testHaskellDepends = [
    base
    bytestring
    directory
    filepath
    HUnit
    process
    temporary
    time
    unix
  ];
  testToolDepends = [ which ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/jgm/zip-archive";
  description = "Library for creating and modifying zip archives";
  license = lib.licenses.bsd3;
  broken = false;
}
