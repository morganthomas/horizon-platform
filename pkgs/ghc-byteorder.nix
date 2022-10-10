{ mkDerivation, base, lib }:
mkDerivation {
  pname = "ghc-byteorder";
  version = "4.11.0.0.10";
  sha256 = "86e50a89798181db4f44ec3848fc52940c73098e88549a351ceb54fefc691fb6";
  revision = "3";
  editedCabalFile = "088rz5c0pq2r1w3msy0y9hl4gca8s8nblpcz7w2f5sx5pajg8flj";
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  description = "\"GHC.ByteOrder\" API Compatibility Layer";
  license = lib.licenses.bsd3;
}