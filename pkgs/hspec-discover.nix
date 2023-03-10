{ mkDerivation
, QuickCheck
, base
, directory
, filepath
, hspec-meta
, lib
, mockery
}:
mkDerivation {
  pname = "hspec-discover";
  version = "2.10.0.1";
  sha256 = "3f55defbe8d5493ff73ffdf84cbe8550fbb44d73f796ab31b5387a4c128047fc";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base directory filepath ];
  executableHaskellDepends = [ base directory filepath ];
  testHaskellDepends = [
    base
    directory
    filepath
    hspec-meta
    mockery
    QuickCheck
  ];
  testToolDepends = [ hspec-meta ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://hspec.github.io/";
  description = "Automatically discover and run Hspec tests";
  license = lib.licenses.mit;
  broken = false;
}
