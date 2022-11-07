{ mkDerivation, base, bifunctors, lib, tagged }:
mkDerivation {
  pname = "assoc";
  version = "1.0.2";
  sha256 = "d8988dc6e8718c7a3456515b769c9336aeeec730cf86fc5175247969ff8f144f";
  revision = "3";
  editedCabalFile = "0mrb12dx316q4gxyn68x2rl8jq0gd77zffd12r8j1r41l0xd9f4k";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base bifunctors tagged ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "swap and assoc: Symmetric and Semigroupy Bifunctors";
  license = lib.licenses.bsd3;
  broken = false;
}
