{ mkDerivation
, base
, binary
, bytestring
, containers
, deepseq
, lib
, mtl
, primitive
, transformers
, vector
, zlib
}:
mkDerivation {
  pname = "JuicyPixels";
  version = "3.3.8";
  sha256 = "d3a0f6ca3515a1b3d526cbf79f2e0b0aab57f208ab216f9c26437bbcd86fb63e";
  libraryHaskellDepends = [
    base
    binary
    bytestring
    containers
    deepseq
    mtl
    primitive
    transformers
    vector
    zlib
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/Twinside/Juicy.Pixels";
  description = "Picture loading/serialization (in png, jpeg, bitmap, gif, tga, tiff and radiance)";
  license = lib.licenses.bsd3;
}
