{ mkDerivation
, base
, hashable
, lib
, microlens
, microlens-ghc
, microlens-mtl
, microlens-th
, text
, unordered-containers
, vector
}:
mkDerivation {
  pname = "microlens-platform";
  version = "0.4.3.2";
  sha256 = "52075123128d894ab43e89aef94d079c2465c07035e40738052553202fe5d38a";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    hashable
    microlens
    microlens-ghc
    microlens-mtl
    microlens-th
    text
    unordered-containers
    vector
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://github.com/monadfix/microlens";
  description = "microlens + all batteries included (best for apps)";
  license = lib.licenses.bsd3;
  broken = false;
}
