{ mkDerivation, base, lib }:
mkDerivation {
  pname = "singletons";
  version = "3.0.2";
  sha256 = "f568ee129ef6438a4325f145f17fa4a3074b3564c72fd35ba1f68dcee14d5e82";
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "http://www.github.com/goldfirere/singletons";
  description = "Basic singleton types and definitions";
  license = lib.licenses.bsd3;
}
