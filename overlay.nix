{ inputs, pkgs }:
final: prev: with pkgs.haskell.lib; {
  ChasingBottoms = prev.callHackage "ChasingBottoms" "1.3.1.12" { };

  OneTuple = prev.callHackage "OneTuple" "0.3.1" { };

  aeson = prev.callHackage "aeson" "2.1.0.0" { };

  ansi-terminal = prev.callHackage "ansi-terminal" "0.11.3" { };

  assoc = prev.callHackage "assoc" "1.0.2" { };

  async = prev.callHackage "async" "2.2.4" { };

  basement = doJailbreak (prev.callCabal2nix "basement" (inputs.foundation + /basement) { });

  base-compat = final.callHackage "base-compat" "0.12.2" { };

  base-compat-batteries = final.callHackage "base-compat-batteries" "0.12.2" { };

  base-orphans = dontCheck prev.base-orphans;
  binary-orphans = doJailbreak (dontCheck prev.binary-orphans);
  blaze-markup = doJailbreak prev.blaze-markup;
  boring = doJailbreak prev.boring;
  bsb-http-chunked = dontCheck (prev.bsb-http-chunked);
  bytes = doJailbreak prev.bytes;
  cabal-doctest = doJailbreak (prev.cabal-doctest);
  cborg = doJailbreak (prev.callCabal2nix "cborg" (inputs.cborg + /cborg) { });
  cborg-json = doJailbreak (prev.callCabal2nix "cborg-json" (inputs.cborg + /cborg-json) { });
  cereal = prev.callCabal2nix "cereal" inputs.cereal { };
  composite-base = doJailbreak (final.callHackage "composite-base" "0.8.1.0" { });
  composite-dhall = prev.callCabal2nix "composite-dhall" inputs.composite-dhall { };
  composite-lens-extra = prev.callCabal2nix "composite-dhall" inputs.composite-lens-extra { };
  conduit = dontCheck prev.conduit;
  constraints = doJailbreak prev.constraints;
  cryptohash-sha1 = doJailbreak prev.cryptohash-sha1;
  cryptonite = prev.callHackage "cryptonite" "0.30" { };
  data-fix = doJailbreak prev.data-fix;
  dec = doJailbreak prev.dec;
  dhall = doJailbreak prev.dhall;
  doctest = doJailbreak (prev.callHackage "doctest" "0.20.0" { });
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
  ghc-tcplugins-extra = final.callCabal2nix "ghc-tcplugins-extra" inputs.ghc-tcplugins-extra { };
  hashable = dontCheck (prev.callCabal2nix "hashable" inputs.hashable { });
  hedgehog = dontHaddock (prev.callCabal2nix "hedgehog" (inputs.hedgehog + /hedgehog) { });
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
  lens = doJailbreak (prev.callHackage "lens" "5.1" { });
  lens-aeson = prev.callHackage "lens-aeson" "1.2.1" { };
  lifted-async = doJailbreak prev.lifted-async;
  linear = doJailbreak prev.linear;
  lucid = doJailbreak prev.lucid;
  memory = prev.callCabal2nix "memory" inputs.memory { };
  network-byte-order = dontCheck (prev.network-byte-order);
  nothunks = dontCheck prev.nothunks;
  parallel = doJailbreak (final.callHackage "parallel" "3.2.2.0" { });
  polysemy = dontCheck prev.polysemy;
  polysemy-time = dontCheck (prev.callCabal2nix "polysemy-time" (inputs.polysemy-time + /packages/time) { });
  postgresql-libpq = doJailbreak prev.postgresql-libpq;
  postgresql-simple = doJailbreak prev.postgresql-simple;
  pretty-simple = dontCheck prev.pretty-simple;
  prettyprinter-ansi-terminal = dontCheck prev.prettyprinter-ansi-terminal;
  primitive = dontCheck (prev.callHackage "primitive" "0.7.4.0" { });
  proteaaudio = doJailbreak prev.proteaaudio;
  proteaaudio-sdl = doJailbreak prev.proteaaudio-sdl;
  quickcheck-instances = doJailbreak prev.quickcheck-instances;
  retry = dontCheck prev.retry;
  scientific = doJailbreak prev.scientific;
  sdl2 = dontCheck (final.callHackage "sdl2" "2.5.3.3" { });
  semialign = doJailbreak prev.semialign;
  serialise = prev.callCabal2nix "serialise" (inputs.cborg + /serialise) { };
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
  these = doJailbreak prev.these;
  th-lift-instances = prev.callCabal2nix "th-lift-instances" inputs.th-lift-instances { };
  time-compat = doJailbreak prev.time-compat;
  type-errors-pretty = dontCheck (doJailbreak prev.type-errors-pretty);
  type-errors = dontCheck (doJailbreak prev.type-errors);
  type-equality = doJailbreak prev.type-equality;
  unordered-containers = doJailbreak (prev.callHackage "unordered-containers" "0.2.19.1" { });
  vault = doJailbreak prev.vault;
  vector = dontCheck (prev.vector);
  vinyl = final.callHackage "vinyl" "0.14.3" { };
  warp = dontCheck (prev.warp);
  witherable = dontCheck prev.witherable;
}
