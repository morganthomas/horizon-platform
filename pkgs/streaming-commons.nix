{ mkDerivation
, QuickCheck
, array
, async
, base
, bytestring
, deepseq
, directory
, gauge
, hspec
, lib
, network
, process
, random
, stm
, text
, transformers
, unix
, zlib
}:
mkDerivation {
  pname = "streaming-commons";
  version = "0.2.2.4";
  sha256 = "56a1408cce710cddfb04d73757efba439c98fb8043515083a45136902214ccf2";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array
    async
    base
    bytestring
    directory
    network
    process
    random
    stm
    text
    transformers
    unix
    zlib
  ];
  testHaskellDepends = [
    array
    async
    base
    bytestring
    deepseq
    hspec
    network
    QuickCheck
    text
    unix
    zlib
  ];
  benchmarkHaskellDepends = [ base bytestring deepseq gauge text ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/fpco/streaming-commons";
  description = "Common lower-level functions needed by various streaming data libraries";
  license = lib.licenses.mit;
  broken = false;
}
