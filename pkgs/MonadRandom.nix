{ mkDerivation
, base
, lib
, mtl
, primitive
, random
, transformers
, transformers-compat
}:
mkDerivation {
  pname = "MonadRandom";
  version = "0.5.3";
  sha256 = "27184dadda0a49abac0208a1e6576b14217a60dc45b6839cd9e90af25ee00a9f";
  revision = "2";
  editedCabalFile = "1diy29if7w1c9ckc465mrrb52fm0zmd8zzym1h5ryh5a58qafwhr";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    mtl
    primitive
    random
    transformers
    transformers-compat
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Random-number generation monad";
  license = lib.licenses.bsd3;
  broken = false;
}
