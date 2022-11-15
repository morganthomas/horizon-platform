{ mkDerivation
, aeson
, attoparsec
, base
, base64-bytestring
, blaze-html
, bytestring
, conduit
, containers
, criterion
, deepseq
, fast-logger
, file-embed
, hspec
, http-api-data
, lib
, lift-type
, monad-logger
, mtl
, path-pieces
, QuickCheck
, quickcheck-instances
, resource-pool
, resourcet
, scientific
, shakespeare
, silently
, template-haskell
, text
, th-lift-instances
, time
, transformers
, unliftio
, unliftio-core
, unordered-containers
, vault
, vector
}:
mkDerivation {
  pname = "persistent";
  version = "2.14.3.0";
  sha256 = "1288244f62d334dbe65cae6157098de38419b8445d5cc227281e688310189a19";
  revision = "1";
  editedCabalFile = "1qbi74kmjk07wgib2y6pscjbr8mazlj490928h5bvahw10jx3611";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    attoparsec
    base
    base64-bytestring
    blaze-html
    bytestring
    conduit
    containers
    fast-logger
    http-api-data
    lift-type
    monad-logger
    mtl
    path-pieces
    resource-pool
    resourcet
    scientific
    silently
    template-haskell
    text
    th-lift-instances
    time
    transformers
    unliftio
    unliftio-core
    unordered-containers
    vault
    vector
  ];
  testHaskellDepends = [
    aeson
    attoparsec
    base
    base64-bytestring
    blaze-html
    bytestring
    conduit
    containers
    fast-logger
    hspec
    http-api-data
    monad-logger
    mtl
    path-pieces
    QuickCheck
    quickcheck-instances
    resource-pool
    resourcet
    scientific
    shakespeare
    silently
    template-haskell
    text
    th-lift-instances
    time
    transformers
    unliftio
    unliftio-core
    unordered-containers
    vector
  ];
  benchmarkHaskellDepends = [
    base
    criterion
    deepseq
    file-embed
    template-haskell
    text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://www.yesodweb.com/book/persistent";
  description = "Type-safe, multi-backend data serialization";
  license = lib.licenses.mit;
  broken = false;
}
