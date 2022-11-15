{ mkDerivation
, base
, binary
, blaze-html
, bytestring
, containers
, lib
, pretty-show
, skylighting-core
, skylighting-format-ansi
, skylighting-format-blaze-html
, skylighting-format-latex
, text
}:
mkDerivation {
  pname = "skylighting";
  version = "0.13.1.1";
  sha256 = "8bd0c8ec6572aed659718be82d9038f82a8a70de4f67ade5f3f1884f4e585c05";
  configureFlags = [ "-fexecutable" ];
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    base
    binary
    containers
    skylighting-core
    skylighting-format-ansi
    skylighting-format-blaze-html
    skylighting-format-latex
  ];
  executableHaskellDepends = [
    base
    blaze-html
    bytestring
    containers
    pretty-show
    text
  ];
  enableLibraryProfiling = true;
  enableExecutableProfiling = true;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  homepage = "https://github.com/jgm/skylighting";
  description = "syntax highlighting library";
  license = lib.licenses.gpl2Only;
  mainProgram = "skylighting";
  broken = false;
}
