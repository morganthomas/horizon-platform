{ mkDerivation, aeson, base, base-orphans, bytestring, containers
, deepseq, directory, filepath, lib, parsec, tasty, tasty-hunit
, text, transformers, unordered-containers, vector
}:
mkDerivation {
  pname = "microstache";
  version = "1.0.2.2";
  sha256 = "f0a1dbef45a137e1af0e29ea4b9585788217cc1c6f1db7d68a4f659916dd36ac";
  libraryHaskellDepends = [
    aeson base containers deepseq directory filepath parsec text
    transformers unordered-containers vector
  ];
  testHaskellDepends = [
    aeson base base-orphans bytestring containers parsec tasty
    tasty-hunit text
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskellari/microstache";
  description = "Mustache templates for Haskell";
  license = lib.licenses.bsd3;
}