{ mkDerivation
, base
, basement
, bytestring
, deepseq
, foundation
, ghc-prim
, lib
}:
mkDerivation {
  pname = "memory";
  version = "0.18.0";
  sha256 = "fd4eb6f638e24b81b4e6cdd68772a531726f2f67686c8969d3407d82f7862e3e";
  libraryHaskellDepends = [
    base
    basement
    bytestring
    deepseq
    ghc-prim
  ];
  testHaskellDepends = [ base basement bytestring foundation ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/vincenthz/hs-memory";
  description = "memory and related abstraction stuff";
  license = lib.licenses.bsd3;
}
