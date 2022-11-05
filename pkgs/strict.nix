{ mkDerivation
, assoc
, base
, binary
, bytestring
, deepseq
, ghc-prim
, hashable
, lib
, text
, these
, transformers
}:
mkDerivation {
  pname = "strict";
  version = "0.4.0.1";
  sha256 = "dff6abc08ad637e51891bb8b475778c40926c51219eda60fd64f0d9680226241";
  revision = "4";
  editedCabalFile = "0pdzqhy7z70m8gxcr54jf04qhncl1jbvwybigb8lrnxqirs5l86n";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    assoc
    base
    binary
    bytestring
    deepseq
    ghc-prim
    hashable
    text
    these
    transformers
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell-strict/strict";
  description = "Strict data types and String IO";
  license = lib.licenses.bsd3;
  broken = false;
}
