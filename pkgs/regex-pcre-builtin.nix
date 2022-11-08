{ mkDerivation
, array
, base
, bytestring
, containers
, lib
, regex-base
, text
}:
mkDerivation {
  pname = "regex-pcre-builtin";
  version = "0.95.2.3.8.44";
  sha256 = "cacea6a45faf93df8afbf50ecb09f87acabfed0477cba4746205649eb52ec55e";
  revision = "2";
  editedCabalFile = "19ryjv8va9bjwhfk4v81lsvi91aj7aw1cflggywjpmw001qr419d";
  isLibrary = true;
  isExecutable = false;
  enableSeparateDataOutput = false;
  libraryHaskellDepends = [
    array
    base
    bytestring
    containers
    regex-base
    text
  ];
  enableLibraryProfiling = false;
  enableExecutableProfiling = false;
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  doBenchmark = false;
  hyperlinkSource = false;
  description = "PCRE Backend for \"Text.Regex\" (regex-base)";
  license = lib.licenses.bsd3;
  broken = false;
}
