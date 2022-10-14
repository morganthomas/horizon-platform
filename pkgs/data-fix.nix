{ mkDerivation, base, deepseq, hashable, lib }:
mkDerivation {
  pname = "data-fix";
  version = "0.3.2";
  sha256 = "3a172d3bc0639c327345e965f9d9023e099425814b28dcdb7b60ff66d66219cc";
  revision = "3";
  editedCabalFile = "0z77i9y86wlc13396akl8qxq39rwpkhhcs5fadzk47bwn7v1gsmx";
  libraryHaskellDepends = [ base deepseq hashable ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/spell-music/data-fix";
  description = "Fixpoint data types";
  license = lib.licenses.bsd3;
}
