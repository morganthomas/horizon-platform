{ mkDerivation
, base
, bytestring
, case-insensitive
, containers
, criterion
, deepseq
, lib
, mtl
, parser-combinators
, scientific
, text
, transformers
, weigh
}:
mkDerivation {
  pname = "megaparsec";
  version = "9.2.2";
  sha256 = "a48b03e55c0b9efcc88ce4236186fb6eee3acb64336987dd9c98daf4d96aa234";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    case-insensitive
    containers
    deepseq
    mtl
    parser-combinators
    scientific
    text
    transformers
  ];
  benchmarkHaskellDepends = [
    base
    bytestring
    containers
    criterion
    deepseq
    text
    weigh
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/mrkkrp/megaparsec";
  description = "Monadic parser combinators";
  license = lib.licenses.bsd2;
  broken = false;
}
