{ mkDerivation
, array
, base
, bytestring
, containers
, directory
, filepath
, ghc
, ghc-boot
, lib
, transformers
}:
mkDerivation {
  pname = "hie-compat";
  version = "0.3.0.0";
  sha256 = "ab02e969106971f7ef980515f802447c579c088b2e227eb8982999605f392199";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array
    base
    bytestring
    containers
    directory
    filepath
    ghc
    ghc-boot
    transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/haskell-language-server/tree/master/hie-compat#readme";
  description = "HIE files for GHC 8.6 and other HIE file backports";
  license = lib.licenses.asl20;
  broken = false;
}
