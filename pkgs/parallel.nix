{ mkDerivation, array, base, containers, deepseq, ghc-prim, lib }:
mkDerivation {
  pname = "parallel";
  version = "3.2.2.0";
  sha256 = "170453a71a2a8b31cca63125533f7771d7debeb639700bdabdd779c34d8a6ef6";
  revision = "5";
  editedCabalFile = "1q45wzpf2sda0244l55gakl3g5zqhcb27m86nhl3vslcjc35mpbf";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ array base containers deepseq ghc-prim ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Parallel programming library";
  license = lib.licenses.bsd3;
  broken = false;
}
