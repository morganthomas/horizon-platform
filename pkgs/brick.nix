{ mkDerivation
, base
, bimap
, bytestring
, config-ini
, containers
, contravariant
, data-clist
, deepseq
, directory
, exceptions
, filepath
, lib
, microlens
, microlens-mtl
, microlens-th
, mtl
, QuickCheck
, stm
, template-haskell
, text
, text-zipper
, unix
, vector
, vty
, word-wrap
}:
mkDerivation {
  pname = "brick";
  version = "1.3";
  sha256 = "4b4320ff8e6161dfe7034c7deb911f4187551c389c1d6b14501b285f9031ed52";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bimap
    bytestring
    config-ini
    containers
    contravariant
    data-clist
    deepseq
    directory
    exceptions
    filepath
    microlens
    microlens-mtl
    microlens-th
    mtl
    stm
    template-haskell
    text
    text-zipper
    unix
    vector
    vty
    word-wrap
  ];
  testHaskellDepends = [
    base
    containers
    microlens
    QuickCheck
    vector
    vty
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/jtdaugherty/brick/";
  description = "A declarative terminal user interface library";
  license = lib.licenses.bsd3;
  broken = false;
}
