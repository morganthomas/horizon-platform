{ mkDerivation, base, ghc-prim, lib, unix }:
mkDerivation {
  pname = "base-compat";
  version = "0.12.2";
  sha256 = "a62adc883a5ac436f80e4ae02c3c56111cf1007492f267c291139a668d2150bd";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base ghc-prim unix ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "A compatibility layer for base";
  license = lib.licenses.mit;
  broken = false;
}
