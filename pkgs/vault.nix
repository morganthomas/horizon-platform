{ mkDerivation
, base
, containers
, hashable
, lib
, unordered-containers
}:
mkDerivation {
  pname = "vault";
  version = "0.3.1.5";
  sha256 = "ac2a6b6adf58598c5c8faa931ae961a8a2aa50ddb2f0f7a2044ff6e8c3d433a0";
  revision = "2";
  editedCabalFile = "1bjwv3nv8jfhrdxa5kn3gvgxmyalpq7592bvyl7bpvcc7bbkfkf3";
  libraryHaskellDepends = [
    base
    containers
    hashable
    unordered-containers
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/HeinrichApfelmus/vault";
  description = "a persistent store for values of arbitrary types";
  license = lib.licenses.bsd3;
}
