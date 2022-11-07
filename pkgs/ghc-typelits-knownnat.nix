{ mkDerivation
, base
, ghc
, ghc-prim
, ghc-tcplugins-extra
, ghc-typelits-natnormalise
, lib
, tasty
, tasty-hunit
, tasty-quickcheck
, template-haskell
, transformers
}:
mkDerivation {
  pname = "ghc-typelits-knownnat";
  version = "0.7.7";
  sha256 = "c79018557e88cd1b3937d15d9fb75c4cc7e6b44856ad53b15ae4c421a385f92c";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    ghc
    ghc-prim
    ghc-tcplugins-extra
    ghc-typelits-natnormalise
    template-haskell
    transformers
  ];
  testHaskellDepends = [
    base
    ghc-typelits-natnormalise
    tasty
    tasty-hunit
    tasty-quickcheck
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "http://clash-lang.org/";
  description = "Derive KnownNat constraints from other KnownNat constraints";
  license = lib.licenses.bsd2;
  broken = false;
}
