{ mkDerivation, base, deepseq, hashable, lib }:
mkDerivation {
  pname = "data-fix";
  version = "0.3.2";
  sha256 = "3a172d3bc0639c327345e965f9d9023e099425814b28dcdb7b60ff66d66219cc";
  revision = "3";
  editedCabalFile = "0z77i9y86wlc13396akl8qxq39rwpkhhcs5fadzk47bwn7v1gsmx";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq hashable ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/spell-music/data-fix";
  description = "Fixpoint data types";
  license = lib.licenses.bsd3;
  broken = false;
}
