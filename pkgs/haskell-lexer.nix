{ mkDerivation, base, lib }:
mkDerivation {
  pname = "haskell-lexer";
  version = "1.1";
  sha256 = "313a15cc643322c8badd148867ce25ca1ffc191df9e7eeec5b10bc08c4b563d5";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/yav/haskell-lexer";
  description = "A fully compliant Haskell 98 lexer";
  license = lib.licenses.bsd3;
  broken = false;
}
