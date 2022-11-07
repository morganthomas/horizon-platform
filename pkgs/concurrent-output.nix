{ mkDerivation
, ansi-terminal
, async
, base
, directory
, exceptions
, lib
, process
, stm
, terminal-size
, text
, transformers
, unix
}:
mkDerivation {
  pname = "concurrent-output";
  version = "1.10.16";
  sha256 = "b0aa45d8707f504623ed8abc67873bc139fefdb3e391e054c6adad82e7029350";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    ansi-terminal
    async
    base
    directory
    exceptions
    process
    stm
    terminal-size
    text
    transformers
    unix
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "Ungarble output from several threads or commands";
  license = lib.licenses.bsd2;
  broken = false;
}
