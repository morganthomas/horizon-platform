{ mkDerivation
, base
, bytestring
, containers
, data-default
, lib
, stm
, text
}:
mkDerivation {
  pname = "incipit-base";
  version = "0.3.0.0";
  sha256 = "d12c13e0bd90276ec71595df68368cbbdaaf58ba79a171c805ec2285413ee41a";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    bytestring
    containers
    data-default
    stm
    text
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/tek/incipit-core#readme";
  description = "A Prelude for Polysemy – Base Reexports";
  license = "BSD-2-Clause-Patent";
  broken = false;
}
