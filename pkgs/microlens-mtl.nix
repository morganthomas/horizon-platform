{ mkDerivation
, base
, lib
, microlens
, mtl
, transformers
, transformers-compat
}:
mkDerivation {
  pname = "microlens-mtl";
  version = "0.2.0.2";
  sha256 = "66971668f376717fdbe75e3b8ac99d2efd89c746b41355f6d388a63352a43278";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    microlens
    mtl
    transformers
    transformers-compat
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/monadfix/microlens";
  description = "microlens support for Reader/Writer/State from mtl";
  license = lib.licenses.bsd3;
  broken = false;
}
