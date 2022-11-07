{ mkDerivation, aeson, base, constraints, lib, template-haskell }:
mkDerivation {
  pname = "constraints-extras";
  version = "0.3.2.1";
  sha256 = "d7f571c6634105e8fbb5ad6685775c7d06e84cd4ece51dfd4276e2fe34e65c70";
  revision = "1";
  editedCabalFile = "1smha6ljia9bfgdy1h0lkgi9464rwa9lnw7rqfi1c23pzyiw13lh";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base constraints template-haskell ];
  executableHaskellDepends = [ aeson base constraints ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/obsidiansystems/constraints-extras";
  description = "Utility package for constraints";
  license = lib.licenses.bsd3;
  mainProgram = "readme";
  broken = false;
}
