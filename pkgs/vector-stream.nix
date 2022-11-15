{ mkDerivation, base, ghc-prim, lib }:
mkDerivation {
  pname = "vector-stream";
  version = "0.1.0.0";
  sha256 = "a888210f6467f155090653734be5cc920406a07227e0d3adb59096716fdb806c";
  revision = "1";
  editedCabalFile = "18sm3vd1qim9r3m40wgvnmcrfz1zl051yy84dffnp4si9vfgic09";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ghc-prim ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskell/vector";
  description = "Efficient Streams";
  license = lib.licenses.bsd3;
  broken = false;
}
