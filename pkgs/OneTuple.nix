{ mkDerivation, base, ghc-prim, hashable, lib, template-haskell }:
mkDerivation {
  pname = "OneTuple";
  version = "0.3.1";
  sha256 = "98853682d52fb4cc37a45cd186fbd77cf2565d3df5171acc4cf026427e103eef";
  revision = "3";
  editedCabalFile = "0g4siv8s6dlrdsivap2qy6ig08y5bjbs93jk192zmgkp8iscncpw";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ghc-prim template-haskell ];
  testHaskellDepends = [ base hashable template-haskell ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Singleton Tuple";
  license = lib.licenses.bsd3;
  broken = false;
}
