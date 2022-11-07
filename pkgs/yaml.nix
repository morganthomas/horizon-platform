{ mkDerivation
, aeson
, attoparsec
, base
, base-compat
, bytestring
, conduit
, containers
, directory
, filepath
, hspec
, HUnit
, lib
, libyaml
, mockery
, mtl
, raw-strings-qq
, resourcet
, scientific
, template-haskell
, temporary
, text
, transformers
, unordered-containers
, vector
}:
mkDerivation {
  pname = "yaml";
  version = "0.11.8.0";
  sha256 = "f61a4e829bb75e17f5da39ea7b9d8d221a100a0f0cb1258bb9584a1829cd0ae8";
  revision = "2";
  editedCabalFile = "1dix5jm3d380vjr9l6wqz54zk883kilk8rijlvjp6b13mjxwcj1l";
  configureFlags = [ "-fsystem-libyaml" ];
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    attoparsec
    base
    bytestring
    conduit
    containers
    directory
    filepath
    libyaml
    mtl
    resourcet
    scientific
    template-haskell
    text
    transformers
    unordered-containers
    vector
  ];
  testHaskellDepends = [
    aeson
    attoparsec
    base
    base-compat
    bytestring
    conduit
    containers
    directory
    filepath
    hspec
    HUnit
    libyaml
    mockery
    mtl
    raw-strings-qq
    resourcet
    scientific
    template-haskell
    temporary
    text
    transformers
    unordered-containers
    vector
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/snoyberg/yaml#readme";
  description = "Support for parsing and rendering YAML documents";
  license = lib.licenses.bsd3;
  broken = false;
}
