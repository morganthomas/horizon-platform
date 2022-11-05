{pkgs, ...}:

final: prev: with pkgs.haskell.lib; {
  Cabal = prev.callPackage (./pkgs/Cabal.nix) { };

  Cabal-QuickCheck = prev.callPackage (./pkgs/Cabal-QuickCheck.nix) { };

  Cabal-described = prev.callPackage (./pkgs/Cabal-described.nix) { };

  Cabal-syntax = prev.callPackage (./pkgs/Cabal-syntax.nix) { };

  Cabal-tree-diff = prev.callPackage (./pkgs/Cabal-tree-diff.nix) { };

  ChasingBottoms = prev.callPackage (./pkgs/ChasingBottoms.nix) { };

  HTTP = prev.callPackage (./pkgs/HTTP.nix) { };

  JuicyPixels = prev.callPackage (./pkgs/JuicyPixels.nix) { };

  OneTuple = prev.callPackage (./pkgs/OneTuple.nix) { };

  OpenGLRaw = prev.callPackage (./pkgs/OpenGLRaw.nix) { };

  PyF = prev.callPackage (./pkgs/PyF.nix) { };

  adjunctions = prev.callPackage (./pkgs/adjunctions.nix) { };

  aeson = prev.callPackage (./pkgs/aeson.nix) { };

  aeson-pretty = prev.callPackage (./pkgs/aeson-pretty.nix) { };

  aeson-yaml = prev.callPackage (./pkgs/aeson-yaml.nix) { };

  ansi-terminal = prev.callPackage (./pkgs/ansi-terminal.nix) { };

  ansi-wl-pprint = prev.callPackage (./pkgs/ansi-wl-pprint.nix) { };

  apecs = prev.callPackage (./pkgs/apecs.nix) { };

  asn1-encoding = prev.callPackage (./pkgs/asn1-encoding.nix) { };

  asn1-parse = prev.callPackage (./pkgs/asn1-parse.nix) { };

  asn1-types = prev.callPackage (./pkgs/asn1-types.nix) { };

  assoc = prev.callPackage (./pkgs/assoc.nix) { };

  async = prev.callPackage (./pkgs/async.nix) { };

  atomic-primops = prev.callPackage (./pkgs/atomic-primops.nix) { };

  attoparsec = prev.callPackage (./pkgs/attoparsec.nix) { };

  attoparsec-binary = prev.callPackage (./pkgs/attoparsec-binary.nix) { };

  attoparsec-iso8601 = prev.callPackage (./pkgs/attoparsec-iso8601.nix) { };

  autodocodec = prev.callPackage (./pkgs/autodocodec.nix) { };

  autodocodec-schema = prev.callPackage (./pkgs/autodocodec-schema.nix) { };

  autodocodec-servant-multipart = prev.callPackage (./pkgs/autodocodec-servant-multipart.nix) { };

  autodocodec-yaml = prev.callPackage (./pkgs/autodocodec-yaml.nix) { };

  barbies = prev.callPackage (./pkgs/barbies.nix) { };

  base-compat = prev.callPackage (./pkgs/base-compat.nix) { };

  base-compat-batteries = prev.callPackage (./pkgs/base-compat-batteries.nix) { };

  base64 = prev.callPackage (./pkgs/base64.nix) { };

  basement = prev.callPackage (./pkgs/basement.nix) { };

  bifunctors = prev.callPackage (./pkgs/bifunctors.nix) { };

  bimap = prev.callPackage (./pkgs/bimap.nix) { };

  binary-orphans = prev.callPackage (./pkgs/binary-orphans.nix) { };

  bitvec = prev.callPackage (./pkgs/bitvec.nix) { };

  blaze-html = prev.callPackage (./pkgs/blaze-html.nix) { };

  blaze-markup = prev.callPackage (./pkgs/blaze-markup.nix) { };

  blaze-textual = prev.callPackage (./pkgs/blaze-textual.nix) { };

  boring = prev.callPackage (./pkgs/boring.nix) { };

  breakpoint = prev.callPackage (./pkgs/breakpoint.nix) { };

  brick = prev.callPackage (./pkgs/brick.nix) { };

  bsb-http-chunked = prev.callPackage (./pkgs/bsb-http-chunked.nix) { };

  bytes = prev.callPackage (./pkgs/bytes.nix) { };

  cabal-doctest = prev.callPackage (./pkgs/cabal-doctest.nix) { };

  cabal-install = prev.callPackage (./pkgs/cabal-install.nix) { };

  cabal-install-solver = prev.callPackage (./pkgs/cabal-install-solver.nix) { };

  cabal2nix = prev.callPackage (./pkgs/cabal2nix.nix) { };

  cache = prev.callPackage (./pkgs/cache.nix) { };

  case-insensitive = prev.callPackage (./pkgs/case-insensitive.nix) { };

  cassava = prev.callPackage (./pkgs/cassava.nix) { };

  cassava-megaparsec = prev.callPackage (./pkgs/cassava-megaparsec.nix) { };

  cborg = prev.callPackage (./pkgs/cborg.nix) { };

  cborg-json = prev.callPackage (./pkgs/cborg-json.nix) { };

  cereal = prev.callPackage (./pkgs/cereal.nix) { };

  charset = prev.callPackage (./pkgs/charset.nix) { };

  citeproc = prev.callPackage (./pkgs/citeproc.nix) { };

  co-log-core = prev.callPackage (./pkgs/co-log-core.nix) { };

  co-log-polysemy = prev.callPackage (./pkgs/co-log-polysemy.nix) { };

  commonmark = prev.callPackage (./pkgs/commonmark.nix) { };

  commonmark-extensions = prev.callPackage (./pkgs/commonmark-extensions.nix) { };

  commonmark-pandoc = prev.callPackage (./pkgs/commonmark-pandoc.nix) { };

  comonad = prev.callPackage (./pkgs/comonad.nix) { };

  compact = prev.callPackage (./pkgs/compact.nix) { };

  compactable = prev.callPackage (./pkgs/compactable.nix) { };

  composite-base = prev.callPackage (./pkgs/composite-base.nix) { };

  composite-cassava = prev.callPackage (./pkgs/composite-cassava.nix) { };

  composite-dhall = prev.callPackage (./pkgs/composite-dhall.nix) { };

  composite-lens-extra = prev.callPackage (./pkgs/composite-lens-extra.nix) { };

  composite-tuple = prev.callPackage (./pkgs/composite-tuple.nix) { };

  conduit = prev.callPackage (./pkgs/conduit.nix) { };

  conduit-extra = prev.callPackage (./pkgs/conduit-extra.nix) { };

  config-ini = prev.callPackage (./pkgs/config-ini.nix) { };

  connection = prev.callPackage (./pkgs/connection.nix) { };

  constraints = prev.callPackage (./pkgs/constraints.nix) { };

  criterion = prev.callPackage (./pkgs/criterion.nix) { };

  cryptohash = prev.callPackage (./pkgs/cryptohash.nix) { };

  cryptohash-sha1 = prev.callPackage (./pkgs/cryptohash-sha1.nix) { };

  cryptonite = prev.callPackage (./pkgs/cryptonite.nix) { };

  cursor = prev.callPackage (./pkgs/cursor.nix) { };

  cursor-brick = prev.callPackage (./pkgs/cursor-brick.nix) { };

  cursor-dirforest = prev.callPackage (./pkgs/cursor-dirforest.nix) { };

  cursor-dirforest-brick = prev.callPackage (./pkgs/cursor-dirforest-brick.nix) { };

  cursor-dirforest-gen = prev.callPackage (./pkgs/cursor-dirforest-gen.nix) { };

  data-fix = prev.callPackage (./pkgs/data-fix.nix) { };

  dec = prev.callPackage (./pkgs/dec.nix) { };

  deriving-aeson = prev.callPackage (./pkgs/deriving-aeson.nix) { };

  dhall = prev.callPackage (./pkgs/dhall.nix) { };

  dhall-json = prev.callPackage (./pkgs/dhall-json.nix) { };

  dimensional = prev.callPackage (./pkgs/dimensional.nix) { };

  dirforest = prev.callPackage (./pkgs/dirforest.nix) { };

  distribution-nixpkgs = prev.callPackage (./pkgs/distribution-nixpkgs.nix) { };

  distributive = prev.callPackage (./pkgs/distributive.nix) { };

  doctemplates = prev.callPackage (./pkgs/doctemplates.nix) { };

  doctest = prev.callPackage (./pkgs/doctest.nix) { };

  doctest-parallel = prev.callPackage (./pkgs/doctest-parallel.nix) { };

  double-conversion = prev.callPackage (./pkgs/double-conversion.nix) { };

  ed25519 = prev.callPackage (./pkgs/ed25519.nix) { };

  effectful = prev.callPackage (./pkgs/effectful.nix) { };

  effectful-cache = prev.callPackage (./pkgs/effectful-cache.nix) { };

  effectful-core = prev.callPackage (./pkgs/effectful-core.nix) { };

  effectful-th = prev.callPackage (./pkgs/effectful-th.nix) { };

  either = prev.callPackage (./pkgs/either.nix) { };

  email-validate = prev.callPackage (./pkgs/email-validate.nix) { };

  extra = prev.callPackage (./pkgs/extra.nix) { };

  fcf-containers = prev.callPackage (./pkgs/fcf-containers.nix) { };

  filepattern = prev.callPackage (./pkgs/filepattern.nix) { };

  fin = prev.callPackage (./pkgs/fin.nix) { };

  finite-field = prev.callPackage (./pkgs/finite-field.nix) { };

  first-class-families = prev.callPackage (./pkgs/first-class-families.nix) { };

  foldl = prev.callPackage (./pkgs/foldl.nix) { };

  foundation = prev.callPackage (./pkgs/foundation.nix) { };

  free = prev.callPackage (./pkgs/free.nix) { };

  fsnotify = prev.callPackage (./pkgs/fsnotify.nix) { };

  fuzzy-time = prev.callPackage (./pkgs/fuzzy-time.nix) { };

  generic-lens-core = prev.callPackage (./pkgs/generic-lens-core.nix) { };

  generic-lens-lite = prev.callPackage (./pkgs/generic-lens-lite.nix) { };

  generic-monoid = prev.callPackage (./pkgs/generic-monoid.nix) { };

  generic-optics = prev.callPackage (./pkgs/generic-optics.nix) { };

  generic-optics-lite = prev.callPackage (./pkgs/generic-optics-lite.nix) { };

  generics-sop = prev.callPackage (./pkgs/generics-sop.nix) { };

  genvalidity = prev.callPackage (./pkgs/genvalidity.nix) { };

  genvalidity-aeson = prev.callPackage (./pkgs/genvalidity-aeson.nix) { };

  genvalidity-bytestring = prev.callPackage (./pkgs/genvalidity-bytestring.nix) { };

  genvalidity-case-insensitive = prev.callPackage (./pkgs/genvalidity-case-insensitive.nix) { };

  genvalidity-containers = prev.callPackage (./pkgs/genvalidity-containers.nix) { };

  genvalidity-criterion = prev.callPackage (./pkgs/genvalidity-criterion.nix) { };

  genvalidity-dirforest = prev.callPackage (./pkgs/genvalidity-dirforest.nix) { };

  genvalidity-hspec = prev.callPackage (./pkgs/genvalidity-hspec.nix) { };

  genvalidity-hspec-optics = prev.callPackage (./pkgs/genvalidity-hspec-optics.nix) { };

  genvalidity-path = prev.callPackage (./pkgs/genvalidity-path.nix) { };

  genvalidity-persistent = prev.callPackage (./pkgs/genvalidity-persistent.nix) { };

  genvalidity-property = prev.callPackage (./pkgs/genvalidity-property.nix) { };

  genvalidity-scientific = prev.callPackage (./pkgs/genvalidity-scientific.nix) { };

  genvalidity-sydtest = prev.callPackage (./pkgs/genvalidity-sydtest.nix) { };

  genvalidity-sydtest-aeson = prev.callPackage (./pkgs/genvalidity-sydtest-aeson.nix) { };

  genvalidity-sydtest-hashable = prev.callPackage (./pkgs/genvalidity-sydtest-hashable.nix) { };

  genvalidity-sydtest-lens = prev.callPackage (./pkgs/genvalidity-sydtest-lens.nix) { };

  genvalidity-sydtest-persistent = prev.callPackage (./pkgs/genvalidity-sydtest-persistent.nix) { };

  genvalidity-text = prev.callPackage (./pkgs/genvalidity-text.nix) { };

  genvalidity-time = prev.callPackage (./pkgs/genvalidity-time.nix) { };

  genvalidity-unordered-containers = prev.callPackage (./pkgs/genvalidity-unordered-containers.nix) { };

  genvalidity-uuid = prev.callPackage (./pkgs/genvalidity-uuid.nix) { };

  genvalidity-vector = prev.callPackage (./pkgs/genvalidity-vector.nix) { };

  ghc-byteorder = prev.callPackage (./pkgs/ghc-byteorder.nix) { };

  ghc-check = prev.callPackage (./pkgs/ghc-check.nix) { };

  ghc-exactprint = prev.callPackage (./pkgs/ghc-exactprint.nix) { };

  ghc-lib-parser = prev.callPackage (./pkgs/ghc-lib-parser.nix) { };

  ghc-lib-parser-ex = prev.callPackage (./pkgs/ghc-lib-parser-ex.nix) { };

  ghc-paths = prev.callPackage (./pkgs/ghc-paths.nix) { };

  ghc-tcplugins-extra = prev.callPackage (./pkgs/ghc-tcplugins-extra.nix) { };

  ghc-typelits-knownnat = prev.callPackage (./pkgs/ghc-typelits-knownnat.nix) { };

  ghc-typelits-natnormalise = prev.callPackage (./pkgs/ghc-typelits-natnormalise.nix) { };

  ghcid = prev.callPackage (./pkgs/ghcid.nix) { };

  gitrev = prev.callPackage (./pkgs/gitrev.nix) { };

  hackage-security = prev.callPackage (./pkgs/hackage-security.nix) { };

  haddock-library = prev.callPackage (./pkgs/haddock-library.nix) { };

  hashable = prev.callPackage (./pkgs/hashable.nix) { };

  hashing = prev.callPackage (./pkgs/hashing.nix) { };

  hashtables = prev.callPackage (./pkgs/hashtables.nix) { };

  haskell-src-meta = prev.callPackage (./pkgs/haskell-src-meta.nix) { };

  hedgehog = prev.callPackage (./pkgs/hedgehog.nix) { };

  hedgehog-golden = prev.callPackage (./pkgs/hedgehog-golden.nix) { };

  hie-bios = prev.callPackage (./pkgs/hie-bios.nix) { };

  hie-compat = prev.callPackage (./pkgs/hie-compat.nix) { };

  hiedb = prev.callPackage (./pkgs/hiedb.nix) { };

  hinotify = prev.callPackage (./pkgs/hinotify.nix) { };

  hledger = prev.callPackage (./pkgs/hledger.nix) { };

  hledger-lib = prev.callPackage (./pkgs/hledger-lib.nix) { };

  hlint = prev.callPackage (./pkgs/hlint.nix) { };

  hnix = prev.callPackage (./pkgs/hnix.nix) { };

  horizon-gen-nix = prev.callPackage (./pkgs/horizon-gen-nix.nix) { };

  hourglass = prev.callPackage (./pkgs/hourglass.nix) { };

  hpack = prev.callPackage (./pkgs/hpack.nix) { };

  hpack-dhall = prev.callPackage (./pkgs/hpack-dhall.nix) { };

  hslua = prev.callPackage (./pkgs/hslua.nix) { };

  hslua-aeson = prev.callPackage (./pkgs/hslua-aeson.nix) { };

  hslua-classes = prev.callPackage (./pkgs/hslua-classes.nix) { };

  hslua-core = prev.callPackage (./pkgs/hslua-core.nix) { };

  hslua-marshalling = prev.callPackage (./pkgs/hslua-marshalling.nix) { };

  hslua-module-doclayout = prev.callPackage (./pkgs/hslua-module-doclayout.nix) { };

  hslua-module-path = prev.callPackage (./pkgs/hslua-module-path.nix) { };

  hslua-module-system = prev.callPackage (./pkgs/hslua-module-system.nix) { };

  hslua-module-text = prev.callPackage (./pkgs/hslua-module-text.nix) { };

  hslua-module-version = prev.callPackage (./pkgs/hslua-module-version.nix) { };

  hslua-objectorientation = prev.callPackage (./pkgs/hslua-objectorientation.nix) { };

  hslua-packaging = prev.callPackage (./pkgs/hslua-packaging.nix) { };

  hspec = prev.callPackage (./pkgs/hspec.nix) { };

  hspec-contrib = prev.callPackage (./pkgs/hspec-contrib.nix) { };

  hspec-core = prev.callPackage (./pkgs/hspec-core.nix) { };

  hspec-discover = prev.callPackage (./pkgs/hspec-discover.nix) { };

  hspec-meta = prev.callPackage (./pkgs/hspec-meta.nix) { };

  http-api-data = prev.callPackage (./pkgs/http-api-data.nix) { };

  http-client = prev.callPackage (./pkgs/http-client.nix) { };

  http-client-tls = prev.callPackage (./pkgs/http-client-tls.nix) { };

  http-date = prev.callPackage (./pkgs/http-date.nix) { };

  http-media = prev.callPackage (./pkgs/http-media.nix) { };

  http-types = prev.callPackage (./pkgs/http-types.nix) { };

  http2 = prev.callPackage (./pkgs/http2.nix) { };

  incipit-base = prev.callPackage (./pkgs/incipit-base.nix) { };

  incipit-core = prev.callPackage (./pkgs/incipit-core.nix) { };

  indexed-traversable = prev.callPackage (./pkgs/indexed-traversable.nix) { };

  indexed-traversable-instances = prev.callPackage (./pkgs/indexed-traversable-instances.nix) { };

  infer-license = prev.callPackage (./pkgs/infer-license.nix) { };

  insert-ordered-containers = prev.callPackage (./pkgs/insert-ordered-containers.nix) { };

  inspection-testing = prev.callPackage (./pkgs/inspection-testing.nix) { };

  integer-logarithms = prev.callPackage (./pkgs/integer-logarithms.nix) { };

  invariant = prev.callPackage (./pkgs/invariant.nix) { };

  iproute = prev.callPackage (./pkgs/iproute.nix) { };

  ipynb = prev.callPackage (./pkgs/ipynb.nix) { };

  kan-extensions = prev.callPackage (./pkgs/kan-extensions.nix) { };

  keys = prev.callPackage (./pkgs/keys.nix) { };

  kvstore-effectful = prev.callPackage (./pkgs/kvstore-effectful.nix) { };

  kvstore-effectful-cache = prev.callPackage (./pkgs/kvstore-effectful-cache.nix) { };

  kvstore-effectful-spec = prev.callPackage (./pkgs/kvstore-effectful-spec.nix) { };

  kvstore-effectful-statemap = prev.callPackage (./pkgs/kvstore-effectful-statemap.nix) { };

  language-nix = prev.callPackage (./pkgs/language-nix.nix) { };

  lens = prev.callPackage (./pkgs/lens.nix) { };

  lens-aeson = prev.callPackage (./pkgs/lens-aeson.nix) { };

  lens-family-th = prev.callPackage (./pkgs/lens-family-th.nix) { };

  libsodium = prev.callPackage (./pkgs/libsodium.nix) { };

  libyaml = prev.callPackage (./pkgs/libyaml.nix) { };

  lifted-async = prev.callPackage (./pkgs/lifted-async.nix) { };

  lifted-base = prev.callPackage (./pkgs/lifted-base.nix) { };

  linear = prev.callPackage (./pkgs/linear.nix) { };

  log-base = prev.callPackage (./pkgs/log-base.nix) { };

  log-effectful = prev.callPackage (./pkgs/log-effectful.nix) { };

  lpeg = prev.callPackage (./pkgs/lpeg.nix) { };

  lsp = prev.callPackage (./pkgs/lsp.nix) { };

  lsp-types = prev.callPackage (./pkgs/lsp-types.nix) { };

  lua = prev.callPackage (./pkgs/lua.nix) { };

  lua-arbitrary = prev.callPackage (./pkgs/lua-arbitrary.nix) { };

  lucid = prev.callPackage (./pkgs/lucid.nix) { };

  lucid-alpine = prev.callPackage (./pkgs/lucid-alpine.nix) { };

  lucid-aria = prev.callPackage (./pkgs/lucid-aria.nix) { };

  lucid-svg = prev.callPackage (./pkgs/lucid-svg.nix) { };

  lukko = prev.callPackage (./pkgs/lukko.nix) { };

  math-functions = prev.callPackage (./pkgs/math-functions.nix) { };

  megaparsec = prev.callPackage (./pkgs/megaparsec.nix) { };

  memory = prev.callPackage (./pkgs/memory.nix) { };

  microlens-aeson = prev.callPackage (./pkgs/microlens-aeson.nix) { };

  microstache = prev.callPackage (./pkgs/microstache.nix) { };

  mockery = prev.callPackage (./pkgs/mockery.nix) { };

  monad-control = prev.callPackage (./pkgs/monad-control.nix) { };

  monad-logger = prev.callPackage (./pkgs/monad-logger.nix) { };

  monad-par = prev.callPackage (./pkgs/monad-par.nix) { };

  monad-time = prev.callPackage (./pkgs/monad-time.nix) { };

  mono-traversable = prev.callPackage (./pkgs/mono-traversable.nix) { };

  monoid-subclasses = prev.callPackage (./pkgs/monoid-subclasses.nix) { };

  mwc-random = prev.callPackage (./pkgs/mwc-random.nix) { };

  net-mqtt = prev.callPackage (./pkgs/net-mqtt.nix) { };

  network-byte-order = prev.callPackage (./pkgs/network-byte-order.nix) { };

  network-uri = prev.callPackage (./pkgs/network-uri.nix) { };

  newtype-generics = prev.callPackage (./pkgs/newtype-generics.nix) { };

  nothunks = prev.callPackage (./pkgs/nothunks.nix) { };

  odd-jobs = prev.callPackage (./pkgs/odd-jobs.nix) { };

  optics = prev.callPackage (./pkgs/optics.nix) { };

  optics-core = prev.callPackage (./pkgs/optics-core.nix) { };

  optics-extra = prev.callPackage (./pkgs/optics-extra.nix) { };

  optics-th = prev.callPackage (./pkgs/optics-th.nix) { };

  optparse-applicative = prev.callPackage (./pkgs/optparse-applicative.nix) { };

  pandoc = prev.callPackage (./pkgs/pandoc.nix) { };

  pandoc-lua-marshal = prev.callPackage (./pkgs/pandoc-lua-marshal.nix) { };

  pandoc-types = prev.callPackage (./pkgs/pandoc-types.nix) { };

  parallel = prev.callPackage (./pkgs/parallel.nix) { };

  parsers = prev.callPackage (./pkgs/parsers.nix) { };

  password = prev.callPackage (./pkgs/password.nix) { };

  password-types = prev.callPackage (./pkgs/password-types.nix) { };

  path = prev.callPackage (./pkgs/path.nix) { };

  path-io = prev.callPackage (./pkgs/path-io.nix) { };

  pcg-random = prev.callPackage (./pkgs/pcg-random.nix) { };

  pcre2 = prev.callPackage (./pkgs/pcre2.nix) { };

  pem = prev.callPackage (./pkgs/pem.nix) { };

  persistent = prev.callPackage (./pkgs/persistent.nix) { };

  pg-entity = prev.callPackage (./pkgs/pg-entity.nix) { };

  pg-transact = prev.callPackage (./pkgs/pg-transact.nix) { };

  pg-transact-effectful = prev.callPackage (./pkgs/pg-transact-effectful.nix) { };

  pointed = prev.callPackage (./pkgs/pointed.nix) { };

  polysemy = prev.callPackage (./pkgs/polysemy.nix) { };

  polysemy-extra = prev.callPackage (./pkgs/polysemy-extra.nix) { };

  polysemy-kvstore = prev.callPackage (./pkgs/polysemy-kvstore.nix) { };

  polysemy-methodology = prev.callPackage (./pkgs/polysemy-methodology.nix) { };

  polysemy-path = prev.callPackage (./pkgs/polysemy-path.nix) { };

  polysemy-plugin = prev.callPackage (./pkgs/polysemy-plugin.nix) { };

  polysemy-several = prev.callPackage (./pkgs/polysemy-several.nix) { };

  polysemy-time = prev.callPackage (./pkgs/polysemy-time.nix) { };

  polysemy-vinyl = prev.callPackage (./pkgs/polysemy-vinyl.nix) { };

  polysemy-zoo = prev.callPackage (./pkgs/polysemy-zoo.nix) { };

  postgresql-libpq = prev.callPackage (./pkgs/postgresql-libpq.nix) { };

  postgresql-migration = prev.callPackage (./pkgs/postgresql-migration.nix) { };

  postgresql-simple = prev.callPackage (./pkgs/postgresql-simple.nix) { };

  postgresql-simple-migration = prev.callPackage (./pkgs/postgresql-simple-migration.nix) { };

  pretty-show = prev.callPackage (./pkgs/pretty-show.nix) { };

  pretty-simple = prev.callPackage (./pkgs/pretty-simple.nix) { };

  prettyprinter-ansi-terminal = prev.callPackage (./pkgs/prettyprinter-ansi-terminal.nix) { };

  primitive = prev.callPackage (./pkgs/primitive.nix) { };

  primitive-addr = prev.callPackage (./pkgs/primitive-addr.nix) { };

  profunctors = prev.callPackage (./pkgs/profunctors.nix) { };

  prometheus-client = prev.callPackage (./pkgs/prometheus-client.nix) { };

  prometheus-proc = prev.callPackage (./pkgs/prometheus-proc.nix) { };

  proteaaudio-sdl = prev.callPackage (./pkgs/proteaaudio-sdl.nix) { };

  psqueues = prev.callPackage (./pkgs/psqueues.nix) { };

  quickcheck-classes = prev.callPackage (./pkgs/quickcheck-classes.nix) { };

  quickcheck-dynamic = prev.callPackage (./pkgs/quickcheck-dynamic.nix) { };

  quickcheck-instances = prev.callPackage (./pkgs/quickcheck-instances.nix) { };

  rebase = prev.callPackage (./pkgs/rebase.nix) { };

  reducers = prev.callPackage (./pkgs/reducers.nix) { };

  refined = prev.callPackage (./pkgs/refined.nix) { };

  reflection = prev.callPackage (./pkgs/reflection.nix) { };

  regex-tdfa = prev.callPackage (./pkgs/regex-tdfa.nix) { };

  relude = prev.callPackage (./pkgs/relude.nix) { };

  rere = prev.callPackage (./pkgs/rere.nix) { };

  rerebase = prev.callPackage (./pkgs/rerebase.nix) { };

  resource-pool = prev.callPackage (./pkgs/resource-pool.nix) { };

  resourcet = prev.callPackage (./pkgs/resourcet.nix) { };

  retry = prev.callPackage (./pkgs/retry.nix) { };

  rope-utf16-splay = prev.callPackage (./pkgs/rope-utf16-splay.nix) { };

  safe-coloured-text = prev.callPackage (./pkgs/safe-coloured-text.nix) { };

  safe-coloured-text-terminfo = prev.callPackage (./pkgs/safe-coloured-text-terminfo.nix) { };

  safe-exceptions = prev.callPackage (./pkgs/safe-exceptions.nix) { };

  saltine = prev.callPackage (./pkgs/saltine.nix) { };

  scientific = prev.callPackage (./pkgs/scientific.nix) { };

  scotty = prev.callPackage (./pkgs/scotty.nix) { };

  sdl2 = prev.callPackage (./pkgs/sdl2.nix) { };

  sdl2-gfx = prev.callPackage (./pkgs/sdl2-gfx.nix) { };

  sdl2-image = prev.callPackage (./pkgs/sdl2-image.nix) { };

  sdl2-mixer = prev.callPackage (./pkgs/sdl2-mixer.nix) { };

  sdl2-ttf = prev.callPackage (./pkgs/sdl2-ttf.nix) { };

  semialign = prev.callPackage (./pkgs/semialign.nix) { };

  semigroupoids = prev.callPackage (./pkgs/semigroupoids.nix) { };

  semigroups = prev.callPackage (./pkgs/semigroups.nix) { };

  semirings = prev.callPackage (./pkgs/semirings.nix) { };

  serialise = prev.callPackage (./pkgs/serialise.nix) { };

  servant = prev.callPackage (./pkgs/servant.nix) { };

  servant-blaze = prev.callPackage (./pkgs/servant-blaze.nix) { };

  servant-client = prev.callPackage (./pkgs/servant-client.nix) { };

  servant-client-core = prev.callPackage (./pkgs/servant-client-core.nix) { };

  servant-docs = prev.callPackage (./pkgs/servant-docs.nix) { };

  servant-effectful = prev.callPackage (./pkgs/servant-effectful.nix) { };

  servant-foreign = prev.callPackage (./pkgs/servant-foreign.nix) { };

  servant-lucid = prev.callPackage (./pkgs/servant-lucid.nix) { };

  servant-multipart = prev.callPackage (./pkgs/servant-multipart.nix) { };

  servant-multipart-api = prev.callPackage (./pkgs/servant-multipart-api.nix) { };

  servant-polysemy = prev.callPackage (./pkgs/servant-polysemy.nix) { };

  servant-server = prev.callPackage (./pkgs/servant-server.nix) { };

  servant-static-th = prev.callPackage (./pkgs/servant-static-th.nix) { };

  servant-swagger = prev.callPackage (./pkgs/servant-swagger.nix) { };

  servant-swagger-ui = prev.callPackage (./pkgs/servant-swagger-ui.nix) { };

  servant-swagger-ui-core = prev.callPackage (./pkgs/servant-swagger-ui-core.nix) { };

  shake = prev.callPackage (./pkgs/shake.nix) { };

  shelly = prev.callPackage (./pkgs/shelly.nix) { };

  simple-sendfile = prev.callPackage (./pkgs/simple-sendfile.nix) { };

  singleton-bool = prev.callPackage (./pkgs/singleton-bool.nix) { };

  singletons = prev.callPackage (./pkgs/singletons.nix) { };

  skylighting = prev.callPackage (./pkgs/skylighting.nix) { };

  skylighting-core = prev.callPackage (./pkgs/skylighting-core.nix) { };

  skylighting-format-ansi = prev.callPackage (./pkgs/skylighting-format-ansi.nix) { };

  skylighting-format-blaze-html = prev.callPackage (./pkgs/skylighting-format-blaze-html.nix) { };

  skylighting-format-latex = prev.callPackage (./pkgs/skylighting-format-latex.nix) { };

  slugify = prev.callPackage (./pkgs/slugify.nix) { };

  socks = prev.callPackage (./pkgs/socks.nix) { };

  some = prev.callPackage (./pkgs/some.nix) { };

  sop-core = prev.callPackage (./pkgs/sop-core.nix) { };

  souffle-haskell = prev.callPackage (./pkgs/souffle-haskell.nix) { };

  split = prev.callPackage (./pkgs/split.nix) { };

  sqlite-simple = prev.callPackage (./pkgs/sqlite-simple.nix) { };

  statistics = prev.callPackage (./pkgs/statistics.nix) { };

  streaming-commons = prev.callPackage (./pkgs/streaming-commons.nix) { };

  strict = prev.callPackage (./pkgs/strict.nix) { };

  string-interpolate = prev.callPackage (./pkgs/string-interpolate.nix) { };

  string-qq = prev.callPackage (./pkgs/string-qq.nix) { };

  swagger2 = prev.callPackage (./pkgs/swagger2.nix) { };

  syb = prev.callPackage (./pkgs/syb.nix) { };

  sydtest = prev.callPackage (./pkgs/sydtest.nix) { };

  sydtest-discover = prev.callPackage (./pkgs/sydtest-discover.nix) { };

  tagged = prev.callPackage (./pkgs/tagged.nix) { };

  tasty = prev.callPackage (./pkgs/tasty.nix) { };

  tasty-discover = prev.callPackage (./pkgs/tasty-discover.nix) { };

  tasty-expected-failure = prev.callPackage (./pkgs/tasty-expected-failure.nix) { };

  tasty-golden = prev.callPackage (./pkgs/tasty-golden.nix) { };

  tasty-hedgehog = prev.callPackage (./pkgs/tasty-hedgehog.nix) { };

  tasty-hslua = prev.callPackage (./pkgs/tasty-hslua.nix) { };

  tasty-hunit = prev.callPackage (./pkgs/tasty-hunit.nix) { };

  tasty-lua = prev.callPackage (./pkgs/tasty-lua.nix) { };

  tasty-quickcheck = prev.callPackage (./pkgs/tasty-quickcheck.nix) { };

  tasty-wai = prev.callPackage (./pkgs/tasty-wai.nix) { };

  test-framework = prev.callPackage (./pkgs/test-framework.nix) { };

  test-framework-hunit = prev.callPackage (./pkgs/test-framework-hunit.nix) { };

  test-framework-quickcheck2 = prev.callPackage (./pkgs/test-framework-quickcheck2.nix) { };

  texmath = prev.callPackage (./pkgs/texmath.nix) { };

  text-display = prev.callPackage (./pkgs/text-display.nix) { };

  text-manipulate = prev.callPackage (./pkgs/text-manipulate.nix) { };

  text-metrics = prev.callPackage (./pkgs/text-metrics.nix) { };

  text-short = prev.callPackage (./pkgs/text-short.nix) { };

  text-zipper = prev.callPackage (./pkgs/text-zipper.nix) { };

  tf-random = prev.callPackage (./pkgs/tf-random.nix) { };

  th-expand-syns = prev.callPackage (./pkgs/th-expand-syns.nix) { };

  th-extras = prev.callPackage (./pkgs/th-extras.nix) { };

  th-lift-instances = prev.callPackage (./pkgs/th-lift-instances.nix) { };

  th-orphans = prev.callPackage (./pkgs/th-orphans.nix) { };

  th-reify-many = prev.callPackage (./pkgs/th-reify-many.nix) { };

  these = prev.callPackage (./pkgs/these.nix) { };

  these-skinny = prev.callPackage (./pkgs/these-skinny.nix) { };

  tidal = prev.callPackage (./pkgs/tidal.nix) { };

  time-compat = prev.callPackage (./pkgs/time-compat.nix) { };

  time-effectful = prev.callPackage (./pkgs/time-effectful.nix) { };

  tls = prev.callPackage (./pkgs/tls.nix) { };

  tree-diff = prev.callPackage (./pkgs/tree-diff.nix) { };

  trifecta = prev.callPackage (./pkgs/trifecta.nix) { };

  type-equality = prev.callPackage (./pkgs/type-equality.nix) { };

  type-errors = prev.callPackage (./pkgs/type-errors.nix) { };

  type-errors-pretty = prev.callPackage (./pkgs/type-errors-pretty.nix) { };

  typed-process = prev.callPackage (./pkgs/typed-process.nix) { };

  typerep-map = prev.callPackage (./pkgs/typerep-map.nix) { };

  unagi-chan = prev.callPackage (./pkgs/unagi-chan.nix) { };

  unicode-collation = prev.callPackage (./pkgs/unicode-collation.nix) { };

  unicode-data = prev.callPackage (./pkgs/unicode-data.nix) { };

  unicode-transforms = prev.callPackage (./pkgs/unicode-transforms.nix) { };

  uniplate = prev.callPackage (./pkgs/uniplate.nix) { };

  universe-base = prev.callPackage (./pkgs/universe-base.nix) { };

  unliftio = prev.callPackage (./pkgs/unliftio.nix) { };

  unliftio-core = prev.callPackage (./pkgs/unliftio-core.nix) { };

  unordered-containers = prev.callPackage (./pkgs/unordered-containers.nix) { };

  uri-encode = prev.callPackage (./pkgs/uri-encode.nix) { };

  uuid = prev.callPackage (./pkgs/uuid.nix) { };

  uuid-types = prev.callPackage (./pkgs/uuid-types.nix) { };

  validity = prev.callPackage (./pkgs/validity.nix) { };

  validity-aeson = prev.callPackage (./pkgs/validity-aeson.nix) { };

  validity-bytestring = prev.callPackage (./pkgs/validity-bytestring.nix) { };

  validity-case-insensitive = prev.callPackage (./pkgs/validity-case-insensitive.nix) { };

  validity-containers = prev.callPackage (./pkgs/validity-containers.nix) { };

  validity-path = prev.callPackage (./pkgs/validity-path.nix) { };

  validity-persistent = prev.callPackage (./pkgs/validity-persistent.nix) { };

  validity-primitive = prev.callPackage (./pkgs/validity-primitive.nix) { };

  validity-scientific = prev.callPackage (./pkgs/validity-scientific.nix) { };

  validity-text = prev.callPackage (./pkgs/validity-text.nix) { };

  validity-time = prev.callPackage (./pkgs/validity-time.nix) { };

  validity-unordered-containers = prev.callPackage (./pkgs/validity-unordered-containers.nix) { };

  validity-uuid = prev.callPackage (./pkgs/validity-uuid.nix) { };

  validity-vector = prev.callPackage (./pkgs/validity-vector.nix) { };

  vault = prev.callPackage (./pkgs/vault.nix) { };

  vec = prev.callPackage (./pkgs/vec.nix) { };

  vector = prev.callPackage (./pkgs/vector.nix) { };

  vector-algorithms = prev.callPackage (./pkgs/vector-algorithms.nix) { };

  vector-instances = prev.callPackage (./pkgs/vector-instances.nix) { };

  vector-th-unbox = prev.callPackage (./pkgs/vector-th-unbox.nix) { };

  vinyl = prev.callPackage (./pkgs/vinyl.nix) { };

  void = prev.callPackage (./pkgs/void.nix) { };

  vty = prev.callPackage (./pkgs/vty.nix) { };

  wai = prev.callPackage (./pkgs/wai.nix) { };

  wai-app-static = prev.callPackage (./pkgs/wai-app-static.nix) { };

  wai-extra = prev.callPackage (./pkgs/wai-extra.nix) { };

  wai-logger = prev.callPackage (./pkgs/wai-logger.nix) { };

  wai-middleware-heartbeat = prev.callPackage (./pkgs/wai-middleware-heartbeat.nix) { };

  wai-middleware-static = prev.callPackage (./pkgs/wai-middleware-static.nix) { };

  warp = prev.callPackage (./pkgs/warp.nix) { };

  warp-tls = prev.callPackage (./pkgs/warp-tls.nix) { };

  with-utf8 = prev.callPackage (./pkgs/with-utf8.nix) { };

  witherable = prev.callPackage (./pkgs/witherable.nix) { };

  x509 = prev.callPackage (./pkgs/x509.nix) { };

  x509-store = prev.callPackage (./pkgs/x509-store.nix) { };

  x509-system = prev.callPackage (./pkgs/x509-system.nix) { };

  x509-validation = prev.callPackage (./pkgs/x509-validation.nix) { };

  xml-conduit = prev.callPackage (./pkgs/xml-conduit.nix) { };

  yaml = prev.callPackage (./pkgs/yaml.nix) { };

}
