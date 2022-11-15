{ mkDerivation
, base
, bytestring
, deepseq
, exceptions
, lib
, linear
, SDL2
, StateVar
, text
, transformers
, vector
, weigh
}:
mkDerivation {
  pname = "sdl2";
  version = "2.5.3.3";
  sha256 = "aa860444661daffc91ccc28a044bd15200f593443c601efe4f1872680f6f1ba8";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base
    bytestring
    exceptions
    linear
    StateVar
    text
    transformers
    vector
  ];
  librarySystemDepends = [ SDL2 ];
  libraryPkgconfigDepends = [ SDL2 ];
  testHaskellDepends = [ base deepseq linear vector weigh ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Both high- and low-level bindings to the SDL library (version 2.0.6+).";
  license = lib.licenses.bsd3;
  broken = false;
}
