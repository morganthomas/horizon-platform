{ mkDerivation
, base
, deepseq
, lib
, template-haskell
, transformers
}:
mkDerivation {
  pname = "tagged";
  version = "0.8.6.1";
  sha256 = "f5e0fcf95f0bb4aa63f428f2c01955a41ea1a42cfcf39145ed631f59a9616c02";
  revision = "3";
  editedCabalFile = "19klgkhkca9qgq2ylc41z85x7piagjh8wranriy48dcfkgraw94a";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    deepseq
    template-haskell
    transformers
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/ekmett/tagged";
  description = "Haskell 98 phantom types to avoid unsafely passing dummy arguments";
  license = lib.licenses.bsd3;
  broken = false;
}
