{ mkDerivation
, Cabal
, Glob
, HUnit
, QuickCheck
, aeson
, base
, bifunctors
, bytestring
, containers
, cryptonite
, deepseq
, directory
, filepath
, hspec
, hspec-discover
, http-client
, http-client-tls
, http-types
, infer-license
, interpolate
, lib
, mockery
, pretty
, scientific
, template-haskell
, temporary
, text
, transformers
, unordered-containers
, vector
, yaml
}:
mkDerivation {
  pname = "hpack";
  version = "0.35.0";
  sha256 = "c6bdbc2d48dac398d3c35120a11455f507639f275befc4fda0a26662db2231b2";
  revision = "1";
  editedCabalFile = "1x0rmra2fpfzmhhw090iila2drfdmb1y28ybypmgbi0asa1zl751";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    aeson
    base
    bifunctors
    bytestring
    Cabal
    containers
    cryptonite
    deepseq
    directory
    filepath
    Glob
    http-client
    http-client-tls
    http-types
    infer-license
    pretty
    scientific
    text
    transformers
    unordered-containers
    vector
    yaml
  ];
  executableHaskellDepends = [
    aeson
    base
    bifunctors
    bytestring
    Cabal
    containers
    cryptonite
    deepseq
    directory
    filepath
    Glob
    http-client
    http-client-tls
    http-types
    infer-license
    pretty
    scientific
    text
    transformers
    unordered-containers
    vector
    yaml
  ];
  testHaskellDepends = [
    aeson
    base
    bifunctors
    bytestring
    Cabal
    containers
    cryptonite
    deepseq
    directory
    filepath
    Glob
    hspec
    http-client
    http-client-tls
    http-types
    HUnit
    infer-license
    interpolate
    mockery
    pretty
    QuickCheck
    scientific
    template-haskell
    temporary
    text
    transformers
    unordered-containers
    vector
    yaml
  ];
  testToolDepends = [ hspec-discover ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/sol/hpack#readme";
  description = "A modern format for Haskell packages";
  license = lib.licenses.mit;
  broken = false;
}
