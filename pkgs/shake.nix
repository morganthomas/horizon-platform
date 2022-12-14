{ mkDerivation
, QuickCheck
, base
, binary
, bytestring
, deepseq
, directory
, extra
, filepath
, filepattern
, hashable
, heaps
, js-dgtable
, js-flot
, js-jquery
, lib
, primitive
, process
, random
, time
, transformers
, unix
, unordered-containers
, utf8-string
}:
mkDerivation {
  pname = "shake";
  version = "0.19.6";
  sha256 = "7d9db837bfd67acaaabdb3cea29acc15559ede82dd9f75d438589268031cd542";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base
    binary
    bytestring
    deepseq
    directory
    extra
    filepath
    filepattern
    hashable
    heaps
    js-dgtable
    js-flot
    js-jquery
    primitive
    process
    random
    time
    transformers
    unix
    unordered-containers
    utf8-string
  ];
  executableHaskellDepends = [
    base
    binary
    bytestring
    deepseq
    directory
    extra
    filepath
    filepattern
    hashable
    heaps
    js-dgtable
    js-flot
    js-jquery
    primitive
    process
    random
    time
    transformers
    unix
    unordered-containers
    utf8-string
  ];
  testHaskellDepends = [
    base
    binary
    bytestring
    deepseq
    directory
    extra
    filepath
    filepattern
    hashable
    heaps
    js-dgtable
    js-flot
    js-jquery
    primitive
    process
    QuickCheck
    random
    time
    transformers
    unix
    unordered-containers
    utf8-string
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://shakebuild.com";
  description = "Build system library, like Make, but more accurate dependencies";
  license = lib.licenses.bsd3;
  broken = false;
}
