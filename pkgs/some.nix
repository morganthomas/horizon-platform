{ mkDerivation, base, deepseq, lib }:
mkDerivation {
  pname = "some";
  version = "1.0.4";
  sha256 = "446f9586d1cc9b7507f08ef7b178a7cff971bcf258d9658deacb7b65f18e3874";
  revision = "1";
  editedCabalFile = "0hwq21d0y2iwcrkdhqkq76fna90dsdzrkk6ryh9hbg71lf768ih9";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [ base deepseq ];
  testHaskellDepends = [ base ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/haskellari/some";
  description = "Existential type: Some";
  license = lib.licenses.bsd3;
  broken = false;
}
