{ mkDerivation
, base
, bytestring
, directory
, filepath
, lib
, mtl
, unix-compat
}:
mkDerivation {
  pname = "filemanip";
  version = "0.3.6.3";
  sha256 = "8836da17baaaf02ca080c9990ece4e0b0c8d6a128f458f8b64fd07b225ca9846";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    directory
    filepath
    mtl
    unix-compat
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/bos/filemanip";
  description = "Expressive file and directory manipulation for Haskell";
  license = lib.licenses.bsd3;
  broken = false;
}
