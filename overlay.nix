{ inputs, pkgs }:
final: prev: with pkgs.haskell.lib; {

  Cabal = prev.callHackage "Cabal" "3.8.1.0" { };

  ChasingBottoms = prev.callHackage "ChasingBottoms" "1.3.1.12" { };

  OneTuple = prev.callHackage "OneTuple" "0.3.1" { };

  OpenGLRaw = prev.callHackage "OpenGLRaw" "3.3.4.1" { };

  aeson = prev.callHackage "aeson" "2.1.0.0" { };

  ansi-terminal = prev.callHackage "ansi-terminal" "0.11.3" { };

  assoc = prev.callHackage "assoc" "1.0.2" { };

  async = prev.callHackage "async" "2.2.4" { };

  basement = prev.callHackage "basement" "0.0.15" { };

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

  cereal = prev.callCabal2nix "cereal" inputs.cereal { };

  compact = doJailbreak (prev.callHackage "compact" "0.2.0.0" { });

  comonad = prev.callHackage "comonad" "5.0.8" { };

  composite-base = doJailbreak (prev.callHackage "composite-base" "0.8.1.0" { });

  composite-dhall = prev.callHackage "composite-dhall" "0.1.0.1" { };

  composite-lens-extra = prev.callHackage "composite-lens-extra" "0.1.0.0" { };

  conduit = dontCheck prev.conduit;

  constraints = doJailbreak prev.constraints;

  cryptohash-sha1 = doJailbreak prev.cryptohash-sha1;

  cryptonite = prev.callHackage "cryptonite" "0.30" { };

  data-fix = doJailbreak prev.data-fix;

  dec = doJailbreak prev.dec;

  dhall = doJailbreak (prev.callHackage "dhall" "1.41.2" { });

  doctest = dontCheck (prev.callCabal2nix "doctest" inputs.doctest { });

  double-conversion = prev.callCabal2nix "double-conversion" inputs.double-conversion { };

  email-validate = dontCheck prev.email-validate;

  extra = dontCheck prev.extra;

  fcf-containers = dontCheck prev.fcf-containers;

  first-class-families = doJailbreak prev.first-class-families;

  foldl = dontCheck (prev.foldl);

  foundation = doJailbreak (prev.callCabal2nix "foundation" (inputs.foundation + /foundation) { });

  generic-lens-lite = doJailbreak prev.generic-lens-lite;

  generic-optics-lite = doJailbreak prev.generic-optics-lite;

  ghc-byteorder = doJailbreak prev.ghc-byteorder;

  ghc-paths = prev.callHackage "ghc-paths" "0.1.0.12" { };

  ghc-tcplugins-extra = final.callCabal2nix "ghc-tcplugins-extra" inputs.ghc-tcplugins-extra { };

  hashable = prev.callHackage "hashable" "1.4.1.0" { };

  hashtables = prev.callHackage "hashtables" "1.3" { };

  hedgehog = dontHaddock (prev.callHackage "hedgehog" "1.2" { });

  hourglass = dontCheck prev.hourglass;

  hspec = doJailbreak prev.hspec;

  hspec-core = dontCheck (prev.callHackage "hspec-core" "2.10.0.1" { });

  hspec-discover = dontCheck (prev.callHackage "hspec-discover" "2.10.0.1" { });

  hspec-meta = dontCheck (prev.callHackage "hspec-meta" "2.9.3" { });

  http-client = dontCheck (prev.http-client);

  http-date = dontCheck (prev.http-date);

  http-types = dontCheck (prev.http-types);

  http2 = dontCheck prev.http2;

  incipit-base = doJailbreak prev.incipit-base;

  incipit-core = doJailbreak prev.incipit-core;

  indexed-traversable = doJailbreak (final.callHackage "indexed-traversable" "0.1.2" { });

  indexed-traversable-instances = doJailbreak (dontCheck prev.indexed-traversable-instances);

  integer-logarithms = final.callCabal2nix "integer-logarithms" inputs.integer-logarithms { };

  invariant = doJailbreak prev.invariant;

  iproute = dontCheck (prev.iproute);

  lens = doJailbreak (prev.callHackage "lens" "5.2" { });

  lens-aeson = prev.callHackage "lens-aeson" "1.2.1" { };

  lifted-async = doJailbreak prev.lifted-async;

  linear = doJailbreak prev.linear;

  lucid = doJailbreak prev.lucid;

  memory = prev.callCabal2nix "memory" inputs.memory { };

  network-byte-order = dontCheck (prev.network-byte-order);

  nothunks = dontCheck prev.nothunks;

  optics-core = prev.callHackage "optics-core" "0.4.1" { };

  optics-extra = doJailbreak (prev.callHackage "optics-extra" "0.4.2.1" { });

  optics-th = prev.callHackage "optics-th" "0.4.1" { };

  optics = doJailbreak (dontCheck (prev.callHackage "optics" "0.4.2" { }));

  parallel = doJailbreak (final.callHackage "parallel" "3.2.2.0" { });

  polysemy = dontCheck (prev.callHackage "polysemy" "1.7.1.0" { });

  polysemy-time = dontCheck (prev.callHackage "polysemy-time" "0.5.1.0" { });

  polysemy-zoo = doJailbreak (dontCheck (prev.callHackage "polysemy-zoo" "0.8.0.0" { }));

  postgresql-libpq = doJailbreak prev.postgresql-libpq;

  postgresql-simple = doJailbreak prev.postgresql-simple;

  pretty-simple = dontCheck prev.pretty-simple;

  prettyprinter-ansi-terminal = dontCheck prev.prettyprinter-ansi-terminal;

  primitive = dontCheck (prev.callHackage "primitive" "0.7.4.0" { });

  proteaaudio = doJailbreak prev.proteaaudio;

  proteaaudio-sdl = doJailbreak prev.proteaaudio-sdl;

  quickcheck-instances = doJailbreak prev.quickcheck-instances;

  retry = dontCheck prev.retry;

  scientific = prev.callHackage "scientific" "0.3.7.0" { };

  sdl2 = doJailbreak (dontCheck (final.callHackage "sdl2" "2.5.3.3" { }));

  sdl2-gfx = prev.callHackage "sdl2-gfx" "0.3.0.0" { };

  sdl2-image = prev.callHackage "sdl2-image" "2.1.0.0" { };

  sdl2-mixer = prev.callHackage "sdl2-mixer" "1.2.0.0" { };

  sdl2-ttf = prev.callHackage "sdl2-ttf" "2.1.3" { };

  semialign = doJailbreak prev.semialign;

  serialise = doJailbreak (prev.callCabal2nix "serialise" (inputs.cborg + /serialise) { });

  singleton-bool = doJailbreak prev.singleton-bool;

  some = doJailbreak prev.some;

  sop-core = doJailbreak prev.sop-core;

  split = doJailbreak prev.split;

  splitmix = doJailbreak (prev.splitmix);

  streaming-commons = dontCheck prev.streaming-commons;

  syb = dontCheck prev.syb;

  tasty = doJailbreak (prev.callCabal2nix "tasty" (inputs.tasty + /core) { });

  tasty-hedgehog = doJailbreak (prev.callCabal2nix "tasty-hedgehog" inputs.tasty-hedgehog { });

  tasty-hunit = doJailbreak (prev.callCabal2nix "tasty" (inputs.tasty + /hunit) { });

  tasty-wai = doJailbreak (prev.callHackage "tasty-wai" "0.1.2.0" { });

  these = doJailbreak prev.these;

  th-lift-instances = prev.callCabal2nix "th-lift-instances" inputs.th-lift-instances { };

  time-compat = doJailbreak prev.time-compat;

  type-errors-pretty = dontCheck (doJailbreak prev.type-errors-pretty);

  type-errors = dontCheck (doJailbreak prev.type-errors);

  type-equality = doJailbreak prev.type-equality;

  unordered-containers = doJailbreak (prev.callHackage "unordered-containers" "0.2.19.1" { });

  vault = doJailbreak prev.vault;

  vector = dontCheck (prev.callHackage "vector" "0.13.0.0" { });

  vector-algorithms = prev.callHackage "vector-algorithms" "0.9.0.1" { };

  vinyl = final.callHackage "vinyl" "0.14.3" { };

  warp = dontCheck (prev.warp);

  witherable = dontCheck prev.witherable;

}
