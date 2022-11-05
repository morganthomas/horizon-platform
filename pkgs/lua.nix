{ mkDerivation, base, lib, lua5_4, tasty, tasty-hunit }:
mkDerivation {
  pname = "lua";
  version = "2.2.1";
  sha256 = "85546fb11ee349d3182ce11bd3046e644c2964fcfc39c797c2cd1a12e588961f";
  configureFlags = [ "-fsystem-lua" "-f-use-pkgconfig" ];
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  librarySystemDepends = [ lua5_4 ];
  testHaskellDepends = [ base tasty tasty-hunit ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://hslua.org/";
  description = "Lua, an embeddable scripting language";
  license = lib.licenses.mit;
  broken = false;
}
