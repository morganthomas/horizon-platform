{ mkDerivation, base, boring, lib }:
mkDerivation {
  pname = "dec";
  version = "0.0.5";
  sha256 = "e18043c7c7e68168489f164921a02efede0c0175a5012ed5451ec2242338df88";
  libraryHaskellDepends = [ base boring ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/phadej/vec";
  description = "Decidable propositions";
  license = lib.licenses.bsd3;
}