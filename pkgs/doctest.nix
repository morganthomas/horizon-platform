{ mkDerivation
, base
, base-compat
, code-page
, deepseq
, directory
, exceptions
, fetchgit
, filepath
, ghc
, ghc-paths
, hspec
, hspec-core
, hspec-discover
, HUnit
, lib
, mockery
, process
, QuickCheck
, setenv
, silently
, stringbuilder
, syb
, transformers
}:
mkDerivation {
  pname = "doctest";
  version = "0.20.0";
  src = fetchgit {
    url = "https://github.com/sol/doctest";
    sha256 = "1i29zi7qgbkjz7cg4s1qdgjblfvb601kcc7jizlh2vghskjmxi77";
    rev = "4eb97c213acf7abe965a3a1b67397199ed155f3c";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base
    base-compat
    code-page
    deepseq
    directory
    exceptions
    filepath
    ghc
    ghc-paths
    process
    syb
    transformers
  ];
  executableHaskellDepends = [
    base
    base-compat
    code-page
    deepseq
    directory
    exceptions
    filepath
    ghc
    ghc-paths
    process
    syb
    transformers
  ];
  testHaskellDepends = [
    base
    base-compat
    code-page
    deepseq
    directory
    exceptions
    filepath
    ghc
    ghc-paths
    hspec
    hspec-core
    HUnit
    mockery
    process
    QuickCheck
    setenv
    silently
    stringbuilder
    syb
    transformers
  ];
  testToolDepends = [ hspec-discover ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/sol/doctest#readme";
  description = "Test interactive Haskell examples";
  license = lib.licenses.mit;
  mainProgram = "doctest";
}
