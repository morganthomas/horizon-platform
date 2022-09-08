{ inputs, pkgs }:
final: prev: with pkgs.haskell.lib; {

  Cabal = prev.callHackage "Cabal" "3.8.1.0" { };

  ChasingBottoms = prev.callHackage "ChasingBottoms" "1.3.1.12" { };

  JuicyPixels = prev.callHackage "JuicyPixels" "3.3.8" { };

  OneTuple = prev.callHackage "OneTuple" "0.3.1" { };

  OpenGLRaw = prev.callHackage "OpenGLRaw" "3.3.4.1" { };

  aeson = prev.callHackage "aeson" "2.1.0.0" { };

  ansi-terminal = prev.callHackage "ansi-terminal" "0.11.3" { };

  assoc = prev.callHackage "assoc" "1.0.2" { };

  async = prev.callHackage "async" "2.2.4" { };

  basement = prev.callHackage "basement" "0.0.15" { };

  base64 = doJailbreak (prev.callHackage "base64" "0.4.2.4" { });

  base-compat = prev.callHackage "base-compat" "0.12.2" { };

  base-compat-batteries = prev.callHackage "base-compat-batteries" "0.12.2" { };

  base-orphans = prev.callHackage "base-orphans" "0.8.7" { };

  binary-orphans = prev.callHackage "binary-orphans" "1.0.3" { };

  blaze-markup = prev.callHackage "blaze-markup" "0.8.2.8" { };

  boring = doJailbreak (prev.callHackage "boring" "0.2" { });

  bsb-http-chunked = dontCheck (prev.callHackage "bsb-http-chunked" "0.0.0.4" { });

  bytes = prev.callHackage "bytes" "0.17.2" { };

  cabal-doctest = prev.callHackage "cabal-doctest" "1.0.9" { };

  cborg = doJailbreak (prev.callCabal2nix "cborg" (inputs.cborg + /cborg) { });

  cborg-json = doJailbreak (prev.callCabal2nix "cborg-json" (inputs.cborg + /cborg-json) { });

  cereal = prev.callHackage "cereal" "0.5.8.3" { };

  citeproc = prev.callHackage "citeproc" "0.8.0.1" { };

  compact = doJailbreak (prev.callHackage "compact" "0.2.0.0" { });

  comonad = prev.callHackage "comonad" "5.0.8" { };

  composite-cassava = doJailbreak (prev.callHackage "composite-cassava" "0.0.3.1" { });

  composite-base = doJailbreak (prev.callHackage "composite-base" "0.8.1.0" { });

  composite-dhall = prev.callHackage "composite-dhall" "0.1.0.1" { };

  composite-lens-extra = prev.callHackage "composite-lens-extra" "0.1.0.0" { };

  composite-tuple = prev.callHackage "composite-tuple" "0.1.2.0" { };

  conduit = dontCheck (prev.callHackage "conduit" "1.3.4.2" { });

  conduit-extra = dontCheck (prev.callHackage "conduit-extra" "1.3.6" { });

  constraints = doJailbreak (prev.callHackage "constraints" "0.13.4" { });

  cryptohash-sha1 = doJailbreak (prev.callHackage "cryptohash-sha1" "0.11.100.1" { });

  cryptonite = prev.callHackage "cryptonite" "0.30" { };

  data-fix = doJailbreak (prev.callHackage "data-fix" "0.3.2" { });

  dec = doJailbreak (prev.callHackage "dec" "0.0.5" { });

  dhall = doJailbreak (prev.callHackage "dhall" "1.41.2" { });

  dimensional = dontCheck (prev.callHackage "dimensional" "1.5" { });

  doctest = dontCheck (prev.callCabal2nix "doctest" inputs.doctest { });

  double-conversion = prev.callCabal2nix "double-conversion" inputs.double-conversion { };

  email-validate = doJailbreak (dontCheck (prev.callHackage "email-validate" "2.3.2.16" { }));

  effectful-core = prev.callHackage "effectful-core" "2.1.0.0" { };

  effectful-th = prev.callHackage "effectful-th" "1.0.0.0" { };

  effectful = prev.callHackage "effectful" "2.1.0.0" { };

  extra = dontCheck (prev.callHackage "extra" "1.7.12" { });

  fcf-containers = dontCheck (prev.callHackage "fcf-containers" "0.7.1" { });

  finite-field = dontCheck (prev.callHackage "finite-field" "0.10.0" { });

  first-class-families = doJailbreak (dontCheck (prev.callHackage "first-class-families" "0.8.0.1" { }));

  foldl = dontCheck (prev.callHackage "foldl" "1.4.12" { });

  foundation = prev.callHackage "foundation" "0.0.29" { };

  generic-lens-lite = doJailbreak (prev.callHackage "generic-lens-lite" "0.1" { });

  generic-optics-lite = doJailbreak (prev.callHackage "generic-optics-lite" "0.1" { });

  ghc-byteorder = doJailbreak (prev.callHackage "ghc-byteorder" "4.11.0.0.10" { });

  ghc-paths = prev.callHackage "ghc-paths" "0.1.0.12" { };

  ghc-tcplugins-extra = prev.callHackage "ghc-tcplugins-extra" "0.4.3" { };

  hashable = prev.callHackage "hashable" "1.4.1.0" { };

  hashtables = prev.callHackage "hashtables" "1.3" { };

  hedgehog = dontHaddock (prev.callHackage "hedgehog" "1.2" { });

  hourglass = dontCheck (prev.callHackage "hourglass" "0.2.12" { });

  hslua-aeson = doJailbreak (prev.callHackage "hslua-aeson" "2.2.1" { });

  hspec = doJailbreak (prev.callHackage "hspec" "2.10.3" { });

  hspec-core = dontCheck (prev.callHackage "hspec-core" "2.10.0.1" { });

  hspec-discover = dontCheck (prev.callHackage "hspec-discover" "2.10.0.1" { });

  hspec-meta = dontCheck (prev.callHackage "hspec-meta" "2.9.3" { });

  http-client = dontCheck (prev.callHackage "http-client" "0.7.13.1" { });

  http-date = dontCheck (prev.callHackage "http-date" "0.0.11" {});

  http-types = dontCheck (prev.callHackage "http-types" "0.12.3" { });

  http2 = dontCheck (prev.callHackage "http2" "3.0.3" { });

  incipit-base = doJailbreak (prev.callHackage "incipit-base" "0.3.0.0" { });

  incipit-core = doJailbreak (prev.callHackage "incipit-core" "0.3.0.0" { });

  indexed-traversable = doJailbreak (final.callHackage "indexed-traversable" "0.1.2" { });

  indexed-traversable-instances = doJailbreak (dontCheck (prev.callHackage "indexed-traversable-instances" "0.1.1.1" { }));

  integer-logarithms = final.callHackage "integer-logarithms" "1.0.3.1" { };

  invariant = doJailbreak (prev.callHackage "invariant" "0.6" { });

  iproute = dontCheck (prev.callHackage "iproute" "1.7.12" { });

  lens = doJailbreak (prev.callHackage "lens" "5.2" { });

  lens-aeson = prev.callHackage "lens-aeson" "1.2.1" { };

  lifted-async = doJailbreak (prev.callHackage "lifted-async" "0.10.2.1" { });

  linear = doJailbreak (prev.callHackage "linear" "1.21.10" { });

  lucid = doJailbreak (prev.callHackage "lucid" "2.11.1" { });

  memory = prev.callCabal2nix "memory" inputs.memory { };

  network-byte-order = dontCheck (prev.callHackage "network-byte-order" "0.1.6" { });

  nothunks = dontCheck (prev.callHackage "nothunks" "0.1.3" { });

  optics-core = prev.callHackage "optics-core" "0.4.1" { };

  optics-extra = doJailbreak (prev.callHackage "optics-extra" "0.4.2.1" { });

  optics-th = prev.callHackage "optics-th" "0.4.1" { };

  optics = doJailbreak (dontCheck (prev.callHackage "optics" "0.4.2" { }));

  pandoc = prev.callHackage "pandoc" "2.19.2" { };

  parallel = doJailbreak (final.callHackage "parallel" "3.2.2.0" { });

  pcg-random = dontCheck (prev.callHackage "pcg-random" "0.1.3.7" { });

  polysemy = dontCheck (prev.callHackage "polysemy" "1.7.1.0" { });

  polysemy-extra = prev.callHackage "polysemy-extra" "0.2.1.0" { };

  polysemy-kvstore = prev.callHackage "polysemy-kvstore" "0.1.3.0" { };

  polysemy-methodology = doJailbreak (prev.callHackage "polysemy-methodology" "0.2.1.0" { });

  polysemy-path = doJailbreak (prev.callHackage "polysemy-path" "0.2.1.0" { });

  polysemy-plugin = dontCheck (doJailbreak (prev.callCabal2nix "polysemy-plugin" (inputs.polysemy + /polysemy-plugin) { }));

  polysemy-several = prev.callHackage "polysemy-several" "0.1.1.0" { };

  polysemy-time = dontCheck (prev.callHackage "polysemy-time" "0.5.1.0" { });

  polysemy-vinyl = doJailbreak (prev.callHackage "polysemy-vinyl" "0.1.5.0" { });

  polysemy-zoo = doJailbreak (dontCheck (prev.callHackage "polysemy-zoo" "0.8.0.0" { }));

  postgresql-libpq = doJailbreak (prev.callHackage "postgresql-libpq" "0.9.4.3" { });

  postgresql-simple = doJailbreak (prev.callHackage "postgresql-simple" "0.6.4" { });

  pretty-simple = dontCheck (prev.callHackage "pretty-simple" "4.1.1.0" { });

  prettyprinter-ansi-terminal = dontCheck (prev.callHackage "prettyprinter-ansi-terminal" "1.1.3" { });

  primitive = dontCheck (prev.callHackage "primitive" "0.7.4.0" { });

  proteaaudio-sdl = doJailbreak (prev.callHackage "proteaaudio-sdl" "0.9.2" { });

  quickcheck-dynamic = prev.callHackage "quickcheck-dynamic" "1.1.0" { };

  quickcheck-instances = doJailbreak (prev.callHackage "quickcheck-instances" "0.3.28" { });

  retry = dontCheck (prev.callHackage "retry" "0.9.3.0" { });

  scientific = prev.callHackage "scientific" "0.3.7.0" { };

  sdl2 = doJailbreak (dontCheck (final.callHackage "sdl2" "2.5.3.3" { }));

  sdl2-gfx = prev.callHackage "sdl2-gfx" "0.3.0.0" { };

  sdl2-image = prev.callHackage "sdl2-image" "2.1.0.0" { };

  sdl2-mixer = prev.callHackage "sdl2-mixer" "1.2.0.0" { };

  sdl2-ttf = prev.callHackage "sdl2-ttf" "2.1.3" { };

  semialign = doJailbreak (prev.callHackage "semialign" "1.2.0.1" { });

  servant = doJailbreak (prev.callCabal2nix "servant" (inputs.servant + /servant) { });

  servant-server = doJailbreak (prev.callCabal2nix "servant-server" (inputs.servant + /servant-server) { });

  servant-client-core = doJailbreak (prev.callCabal2nix "servant-client-core" (inputs.servant + /servant-client-core) { });

  servant-client = doJailbreak (prev.callCabal2nix "servant-client" (inputs.servant + /servant-client) { });

  servant-foreign = doJailbreak (prev.callCabal2nix "servant-foreign" (inputs.servant + /servant-foreign) { });

  servant-lucid = doJailbreak (prev.callHackage "servant-lucid" "0.9.0.5" { });

  serialise = doJailbreak (prev.callCabal2nix "serialise" (inputs.cborg + /serialise) { });

  shake = dontCheck (prev.callHackage "shake" "0.19.6" { });

  singleton-bool = doJailbreak (prev.callHackage "singleton-bool" "0.1.6" { });

  singletons = prev.callHackage "singletons" "3.0.2" { };

  some = doJailbreak (prev.callHackage "some" "1.0.4" { });

  sop-core = doJailbreak (prev.callHackage "sop-core" "0.5.0.1" { });

  split = doJailbreak (prev.callHackage "split" "0.2.3.3" { });

  splitmix = doJailbreak (dontCheck (prev.splitmix));

  streaming-commons = dontCheck (prev.callHackage "streaming-commons" "0.2.2.4" { });

  string-qq = doJailbreak (prev.callHackage "string-qq" "0.0.4" { });

  syb = dontCheck (prev.callHackage "syb" "0.7.2.1" { });

  tasty = doJailbreak (prev.callCabal2nix "tasty" (inputs.tasty + /core) { });

  tasty-discover = doJailbreak (prev.callHackage "tasty-discover" "5.0.0" { });

  tasty-hedgehog = doJailbreak (prev.callCabal2nix "tasty-hedgehog" inputs.tasty-hedgehog { });

  tasty-hunit = doJailbreak (prev.callCabal2nix "tasty" (inputs.tasty + /hunit) { });

  tasty-wai = doJailbreak (prev.callHackage "tasty-wai" "0.1.2.0" { });

  these = doJailbreak (prev.callHackage "these" "1.1.1.1" { });

  th-lift-instances = prev.callHackage "th-lift-instances" "0.1.20" { };

  tidal = doJailbreak (prev.callHackage "tidal" "1.8.1" { });

  time-compat = doJailbreak (prev.callHackage "time-compat" "1.9.6.1" { });

  type-errors-pretty = dontCheck (doJailbreak (prev.callHackage "type-errors-pretty" "0.0.1.2" { }));

  type-errors = dontCheck (doJailbreak (prev.callHackage "type-errors" "0.2.0.0" { }));

  type-equality = doJailbreak (prev.callHackage "type-equality" "1" { });

  unicode-data = dontCheck (prev.callCabal2nix "unicode-data" (inputs.unicode-data + /unicode-data) { });

  unordered-containers = doJailbreak (prev.callHackage "unordered-containers" "0.2.19.1" { });

  vault = doJailbreak (prev.callHackage "vault" "0.3.1.5" { });

  vector = dontCheck (prev.callHackage "vector" "0.13.0.0" { });

  vector-algorithms = prev.callHackage "vector-algorithms" "0.9.0.1" { };

  vinyl = final.callHackage "vinyl" "0.14.3" { };

  warp = dontCheck (prev.callHackage "warp" "3.3.22" { });

  warp-tls = dontCheck (prev.callHackage "warp-tls" "3.3.3" { });

  witherable = dontCheck (prev.callHackage "witherable" "0.4.2" { });

}
