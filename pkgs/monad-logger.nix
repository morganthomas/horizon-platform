{ mkDerivation
, base
, bytestring
, conduit
, conduit-extra
, exceptions
, fast-logger
, lib
, lifted-base
, monad-control
, monad-loops
, mtl
, resourcet
, stm
, stm-chans
, template-haskell
, text
, transformers
, transformers-base
, transformers-compat
, unliftio-core
}:
mkDerivation {
  pname = "monad-logger";
  version = "0.3.37";
  sha256 = "0604d581a039c5d1d61c9dce7331c63cf2a68482ee32f0ff38927d24882a47fc";
  revision = "2";
  editedCabalFile = "1kkw07kk8gv7d9iarradqcqzjpdfh5shjlhfbf2v25mmcpchp6hd";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    conduit
    conduit-extra
    exceptions
    fast-logger
    lifted-base
    monad-control
    monad-loops
    mtl
    resourcet
    stm
    stm-chans
    template-haskell
    text
    transformers
    transformers-base
    transformers-compat
    unliftio-core
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/snoyberg/monad-logger#readme";
  description = "A class of monads which can log messages";
  license = lib.licenses.mit;
  broken = false;
}
