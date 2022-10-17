{ mkDerivation, aeson, ansi-terminal, array, base, bytestring
, Cabal, containers, Diff, directory, dlist, exceptions, fetchgit
, filepath, ghc-lib-parser, gitrev, hspec, hspec-discover
, hspec-megaparsec, lib, megaparsec, MemoTrie, mtl
, optparse-applicative, path, path-io, pretty, process, QuickCheck
, syb, template-haskell, temporary, text, th-lift-instances, yaml
}:
mkDerivation {
  pname = "fourmolu";
  version = "0.8.2.0";
  src = fetchgit {
    url = "https://github.com/fourmolu/fourmolu";
    sha256 = "0y4gdwimyvh6ha86hwjp62b9cnjwsb0svd3jcwjjaffcikwalbvs";
    rev = "c6d7156b5f3e8287960a76e777c40b62ebfdbcb3";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson ansi-terminal array base bytestring Cabal containers Diff
    directory dlist exceptions filepath ghc-lib-parser megaparsec
    MemoTrie mtl syb template-haskell text th-lift-instances yaml
  ];
  executableHaskellDepends = [
    base containers directory filepath ghc-lib-parser gitrev
    optparse-applicative text yaml
  ];
  testHaskellDepends = [
    base containers Diff directory filepath ghc-lib-parser hspec
    hspec-megaparsec megaparsec path path-io pretty process QuickCheck
    temporary text
  ];
  testToolDepends = [ hspec-discover ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  hyperlinkSource = false;
  homepage = "https://github.com/parsonsmatt/fourmolu";
  description = "A formatter for Haskell source code";
  license = lib.licenses.bsd3;
  mainProgram = "fourmolu";
}