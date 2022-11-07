{pkgs, lib, callPackage, ...}:

self: with pkgs.haskell.lib; {
  Cabal = self.callPackage (./pkgs/Cabal.nix) { };

  Cabal-QuickCheck = self.callPackage (./pkgs/Cabal-QuickCheck.nix) { };

  Cabal-described = self.callPackage (./pkgs/Cabal-described.nix) { };

  Cabal-syntax = self.callPackage (./pkgs/Cabal-syntax.nix) { };

  Cabal-tree-diff = self.callPackage (./pkgs/Cabal-tree-diff.nix) { };

  ChasingBottoms = self.callPackage (./pkgs/ChasingBottoms.nix) { };

  Decimal = self.callPackage (./pkgs/Decimal.nix) { };

  Diff = self.callPackage (./pkgs/Diff.nix) { };

  Glob = self.callPackage (./pkgs/Glob.nix) { };

  HTTP = self.callPackage (./pkgs/HTTP.nix) { };

  HUnit = self.callPackage (./pkgs/HUnit.nix) { };

  HsYAML = self.callPackage (./pkgs/HsYAML.nix) { };

  JuicyPixels = self.callPackage (./pkgs/JuicyPixels.nix) { };

  ListLike = self.callPackage (./pkgs/ListLike.nix) { };

  MonadRandom = self.callPackage (./pkgs/MonadRandom.nix) { };

  OneTuple = self.callPackage (./pkgs/OneTuple.nix) { };

  Only = self.callPackage (./pkgs/Only.nix) { };

  OpenGLRaw = self.callPackage (./pkgs/OpenGLRaw.nix) { };

  PSQueue = self.callPackage (./pkgs/PSQueue.nix) { };

  PyF = self.callPackage (./pkgs/PyF.nix) { };

  QuickCheck = self.callPackage (./pkgs/QuickCheck.nix) { };

  SHA = self.callPackage (./pkgs/SHA.nix) { };

  StateVar = self.callPackage (./pkgs/StateVar.nix) { };

  abstract-deque = self.callPackage (./pkgs/abstract-deque.nix) { };

  abstract-par = self.callPackage (./pkgs/abstract-par.nix) { };

  adjunctions = self.callPackage (./pkgs/adjunctions.nix) { };

  aeson = self.callPackage (./pkgs/aeson.nix) { };

  aeson-pretty = self.callPackage (./pkgs/aeson-pretty.nix) { };

  aeson-yaml = self.callPackage (./pkgs/aeson-yaml.nix) { };

  alex = self.callPackage (./pkgs/alex.nix) { };

  algebraic-graphs = self.callPackage (./pkgs/algebraic-graphs.nix) { };

  ansi-terminal = self.callPackage (./pkgs/ansi-terminal.nix) { };

  ansi-wl-pprint = self.callPackage (./pkgs/ansi-wl-pprint.nix) { };

  apecs = self.callPackage (./pkgs/apecs.nix) { };

  appar = self.callPackage (./pkgs/appar.nix) { };

  asn1-encoding = self.callPackage (./pkgs/asn1-encoding.nix) { };

  asn1-parse = self.callPackage (./pkgs/asn1-parse.nix) { };

  asn1-types = self.callPackage (./pkgs/asn1-types.nix) { };

  assoc = self.callPackage (./pkgs/assoc.nix) { };

  async = self.callPackage (./pkgs/async.nix) { };

  atomic-primops = self.callPackage (./pkgs/atomic-primops.nix) { };

  atomic-write = self.callPackage (./pkgs/atomic-write.nix) { };

  attoparsec = self.callPackage (./pkgs/attoparsec.nix) { };

  attoparsec-binary = self.callPackage (./pkgs/attoparsec-binary.nix) { };

  attoparsec-iso8601 = self.callPackage (./pkgs/attoparsec-iso8601.nix) { };

  auto-update = self.callPackage (./pkgs/auto-update.nix) { };

  autodocodec = self.callPackage (./pkgs/autodocodec.nix) { };

  autodocodec-schema = self.callPackage (./pkgs/autodocodec-schema.nix) { };

  autodocodec-servant-multipart = self.callPackage (./pkgs/autodocodec-servant-multipart.nix) { };

  autodocodec-yaml = self.callPackage (./pkgs/autodocodec-yaml.nix) { };

  barbies = self.callPackage (./pkgs/barbies.nix) { };

  base-compat = self.callPackage (./pkgs/base-compat.nix) { };

  base-compat-batteries = self.callPackage (./pkgs/base-compat-batteries.nix) { };

  base-orphans = self.callPackage (./pkgs/base-orphans.nix) { };

  base16-bytestring = self.callPackage (./pkgs/base16-bytestring.nix) { };

  base64 = self.callPackage (./pkgs/base64.nix) { };

  base64-bytestring = self.callPackage (./pkgs/base64-bytestring.nix) { };

  basement = self.callPackage (./pkgs/basement.nix) { };

  bifunctors = self.callPackage (./pkgs/bifunctors.nix) { };

  bimap = self.callPackage (./pkgs/bimap.nix) { };

  binary-orphans = self.callPackage (./pkgs/binary-orphans.nix) { };

  bitvec = self.callPackage (./pkgs/bitvec.nix) { };

  blaze-builder = self.callPackage (./pkgs/blaze-builder.nix) { };

  blaze-html = self.callPackage (./pkgs/blaze-html.nix) { };

  blaze-markup = self.callPackage (./pkgs/blaze-markup.nix) { };

  blaze-textual = self.callPackage (./pkgs/blaze-textual.nix) { };

  boring = self.callPackage (./pkgs/boring.nix) { };

  breakpoint = self.callPackage (./pkgs/breakpoint.nix) { };

  brick = self.callPackage (./pkgs/brick.nix) { };

  bsb-http-chunked = self.callPackage (./pkgs/bsb-http-chunked.nix) { };

  byteable = self.callPackage (./pkgs/byteable.nix) { };

  byteorder = self.callPackage (./pkgs/byteorder.nix) { };

  bytes = self.callPackage (./pkgs/bytes.nix) { };

  bytestring-builder = self.callPackage (./pkgs/bytestring-builder.nix) { };

  bytestring-handle = self.callPackage (./pkgs/bytestring-handle.nix) { };

  c2hs = self.callPackage (./pkgs/c2hs.nix) { };

  cabal-doctest = self.callPackage (./pkgs/cabal-doctest.nix) { };

  cabal-install = self.callPackage (./pkgs/cabal-install.nix) { };

  cabal-install-solver = self.callPackage (./pkgs/cabal-install-solver.nix) { };

  cabal2nix = self.callPackage (./pkgs/cabal2nix.nix) { };

  cache = self.callPackage (./pkgs/cache.nix) { };

  call-stack = self.callPackage (./pkgs/call-stack.nix) { };

  case-insensitive = self.callPackage (./pkgs/case-insensitive.nix) { };

  cassava = self.callPackage (./pkgs/cassava.nix) { };

  cassava-megaparsec = self.callPackage (./pkgs/cassava-megaparsec.nix) { };

  cborg = self.callPackage (./pkgs/cborg.nix) { };

  cborg-json = self.callPackage (./pkgs/cborg-json.nix) { };

  cereal = self.callPackage (./pkgs/cereal.nix) { };

  cereal-vector = self.callPackage (./pkgs/cereal-vector.nix) { };

  charset = self.callPackage (./pkgs/charset.nix) { };

  checkers = self.callPackage (./pkgs/checkers.nix) { };

  chell = self.callPackage (./pkgs/chell.nix) { };

  chell-quickcheck = self.callPackage (./pkgs/chell-quickcheck.nix) { };

  citeproc = self.callPackage (./pkgs/citeproc.nix) { };

  clock = self.callPackage (./pkgs/clock.nix) { };

  cmdargs = self.callPackage (./pkgs/cmdargs.nix) { };

  co-log-core = self.callPackage (./pkgs/co-log-core.nix) { };

  co-log-polysemy = self.callPackage (./pkgs/co-log-polysemy.nix) { };

  code-page = self.callPackage (./pkgs/code-page.nix) { };

  colour = self.callPackage (./pkgs/colour.nix) { };

  colourista = self.callPackage (./pkgs/colourista.nix) { };

  commonmark = self.callPackage (./pkgs/commonmark.nix) { };

  commonmark-extensions = self.callPackage (./pkgs/commonmark-extensions.nix) { };

  commonmark-pandoc = self.callPackage (./pkgs/commonmark-pandoc.nix) { };

  comonad = self.callPackage (./pkgs/comonad.nix) { };

  compact = self.callPackage (./pkgs/compact.nix) { };

  compactable = self.callPackage (./pkgs/compactable.nix) { };

  composite-base = self.callPackage (./pkgs/composite-base.nix) { };

  composite-cassava = self.callPackage (./pkgs/composite-cassava.nix) { };

  composite-dhall = self.callPackage (./pkgs/composite-dhall.nix) { };

  composite-lens-extra = self.callPackage (./pkgs/composite-lens-extra.nix) { };

  composite-tuple = self.callPackage (./pkgs/composite-tuple.nix) { };

  concurrent-output = self.callPackage (./pkgs/concurrent-output.nix) { };

  conduit = self.callPackage (./pkgs/conduit.nix) { };

  conduit-extra = self.callPackage (./pkgs/conduit-extra.nix) { };

  config-ini = self.callPackage (./pkgs/config-ini.nix) { };

  connection = self.callPackage (./pkgs/connection.nix) { };

  constraints = self.callPackage (./pkgs/constraints.nix) { };

  constraints-extras = self.callPackage (./pkgs/constraints-extras.nix) { };

  contravariant = self.callPackage (./pkgs/contravariant.nix) { };

  cookie = self.callPackage (./pkgs/cookie.nix) { };

  cpphs = self.callPackage (./pkgs/cpphs.nix) { };

  criterion = self.callPackage (./pkgs/criterion.nix) { };

  criterion-measurement = self.callPackage (./pkgs/criterion-measurement.nix) { };

  crypto-api = self.callPackage (./pkgs/crypto-api.nix) { };

  crypto-api-tests = self.callPackage (./pkgs/crypto-api-tests.nix) { };

  cryptohash = self.callPackage (./pkgs/cryptohash.nix) { };

  cryptohash-md5 = self.callPackage (./pkgs/cryptohash-md5.nix) { };

  cryptohash-sha1 = self.callPackage (./pkgs/cryptohash-sha1.nix) { };

  cryptohash-sha256 = self.callPackage (./pkgs/cryptohash-sha256.nix) { };

  cryptonite = self.callPackage (./pkgs/cryptonite.nix) { };

  csv = self.callPackage (./pkgs/csv.nix) { };

  cursor = self.callPackage (./pkgs/cursor.nix) { };

  cursor-brick = self.callPackage (./pkgs/cursor-brick.nix) { };

  cursor-dirforest = self.callPackage (./pkgs/cursor-dirforest.nix) { };

  cursor-dirforest-brick = self.callPackage (./pkgs/cursor-dirforest-brick.nix) { };

  cursor-dirforest-gen = self.callPackage (./pkgs/cursor-dirforest-gen.nix) { };

  cursor-gen = self.callPackage (./pkgs/cursor-gen.nix) { };

  daemons = self.callPackage (./pkgs/daemons.nix) { };

  data-binary-ieee754 = self.callPackage (./pkgs/data-binary-ieee754.nix) { };

  data-clist = self.callPackage (./pkgs/data-clist.nix) { };

  data-default = self.callPackage (./pkgs/data-default.nix) { };

  data-default-class = self.callPackage (./pkgs/data-default-class.nix) { };

  data-default-instances-containers = self.callPackage (./pkgs/data-default-instances-containers.nix) { };

  data-default-instances-dlist = self.callPackage (./pkgs/data-default-instances-dlist.nix) { };

  data-default-instances-old-locale = self.callPackage (./pkgs/data-default-instances-old-locale.nix) { };

  data-fix = self.callPackage (./pkgs/data-fix.nix) { };

  data-sketches = self.callPackage (./pkgs/data-sketches.nix) { };

  data-sketches-core = self.callPackage (./pkgs/data-sketches-core.nix) { };

  dec = self.callPackage (./pkgs/dec.nix) { };

  deepseq-generics = self.callPackage (./pkgs/deepseq-generics.nix) { };

  dense-linear-algebra = self.callPackage (./pkgs/dense-linear-algebra.nix) { };

  dependent-map = self.callPackage (./pkgs/dependent-map.nix) { };

  dependent-sum = self.callPackage (./pkgs/dependent-sum.nix) { };

  deriving-aeson = self.callPackage (./pkgs/deriving-aeson.nix) { };

  derp = self.callPackage (./pkgs/derp.nix) { };

  dhall = self.callPackage (./pkgs/dhall.nix) { };

  dhall-json = self.callPackage (./pkgs/dhall-json.nix) { };

  dimensional = self.callPackage (./pkgs/dimensional.nix) { };

  direct-sqlite = self.callPackage (./pkgs/direct-sqlite.nix) { };

  dirforest = self.callPackage (./pkgs/dirforest.nix) { };

  distribution-nixpkgs = self.callPackage (./pkgs/distribution-nixpkgs.nix) { };

  distributive = self.callPackage (./pkgs/distributive.nix) { };

  dlist = self.callPackage (./pkgs/dlist.nix) { };

  doclayout = self.callPackage (./pkgs/doclayout.nix) { };

  doctemplates = self.callPackage (./pkgs/doctemplates.nix) { };

  doctest = self.callPackage (./pkgs/doctest.nix) { };

  doctest-exitcode-stdio = self.callPackage (./pkgs/doctest-exitcode-stdio.nix) { };

  doctest-lib = self.callPackage (./pkgs/doctest-lib.nix) { };

  doctest-parallel = self.callPackage (./pkgs/doctest-parallel.nix) { };

  dotgen = self.callPackage (./pkgs/dotgen.nix) { };

  double-conversion = self.callPackage (./pkgs/double-conversion.nix) { };

  easy-file = self.callPackage (./pkgs/easy-file.nix) { };

  echo = self.callPackage (./pkgs/echo.nix) { };

  ed25519 = self.callPackage (./pkgs/ed25519.nix) { };

  edit-distance = self.callPackage (./pkgs/edit-distance.nix) { };

  effectful = self.callPackage (./pkgs/effectful.nix) { };

  effectful-cache = self.callPackage (./pkgs/effectful-cache.nix) { };

  effectful-core = self.callPackage (./pkgs/effectful-core.nix) { };

  effectful-th = self.callPackage (./pkgs/effectful-th.nix) { };

  either = self.callPackage (./pkgs/either.nix) { };

  email-validate = self.callPackage (./pkgs/email-validate.nix) { };

  emojis = self.callPackage (./pkgs/emojis.nix) { };

  enclosed-exceptions = self.callPackage (./pkgs/enclosed-exceptions.nix) { };

  entropy = self.callPackage (./pkgs/entropy.nix) { };

  envparse = self.callPackage (./pkgs/envparse.nix) { };

  erf = self.callPackage (./pkgs/erf.nix) { };

  exact-pi = self.callPackage (./pkgs/exact-pi.nix) { };

  expiring-cache-map = self.callPackage (./pkgs/expiring-cache-map.nix) { };

  extensible-effects = self.callPackage (./pkgs/extensible-effects.nix) { };

  extensible-exceptions = self.callPackage (./pkgs/extensible-exceptions.nix) { };

  extra = self.callPackage (./pkgs/extra.nix) { };

  fail = self.callPackage (./pkgs/fail.nix) { };

  fast-logger = self.callPackage (./pkgs/fast-logger.nix) { };

  fcf-containers = self.callPackage (./pkgs/fcf-containers.nix) { };

  file-embed = self.callPackage (./pkgs/file-embed.nix) { };

  file-embed-lzma = self.callPackage (./pkgs/file-embed-lzma.nix) { };

  filemanip = self.callPackage (./pkgs/filemanip.nix) { };

  filepattern = self.callPackage (./pkgs/filepattern.nix) { };

  filtrable = self.callPackage (./pkgs/filtrable.nix) { };

  fin = self.callPackage (./pkgs/fin.nix) { };

  fingertree = self.callPackage (./pkgs/fingertree.nix) { };

  fingertree-psqueue = self.callPackage (./pkgs/fingertree-psqueue.nix) { };

  finite-field = self.callPackage (./pkgs/finite-field.nix) { };

  first-class-families = self.callPackage (./pkgs/first-class-families.nix) { };

  fixed = self.callPackage (./pkgs/fixed.nix) { };

  fmlist = self.callPackage (./pkgs/fmlist.nix) { };

  foldl = self.callPackage (./pkgs/foldl.nix) { };

  foreign-store = self.callPackage (./pkgs/foreign-store.nix) { };

  formatting = self.callPackage (./pkgs/formatting.nix) { };

  foundation = self.callPackage (./pkgs/foundation.nix) { };

  free = self.callPackage (./pkgs/free.nix) { };

  freer-simple = self.callPackage (./pkgs/freer-simple.nix) { };

  friendly-time = self.callPackage (./pkgs/friendly-time.nix) { };

  fsnotify = self.callPackage (./pkgs/fsnotify.nix) { };

  fuzzy-time = self.callPackage (./pkgs/fuzzy-time.nix) { };

  generic-deriving = self.callPackage (./pkgs/generic-deriving.nix) { };

  generic-lens-core = self.callPackage (./pkgs/generic-lens-core.nix) { };

  generic-lens-lite = self.callPackage (./pkgs/generic-lens-lite.nix) { };

  generic-monoid = self.callPackage (./pkgs/generic-monoid.nix) { };

  generic-optics = self.callPackage (./pkgs/generic-optics.nix) { };

  generic-optics-lite = self.callPackage (./pkgs/generic-optics-lite.nix) { };

  generic-random = self.callPackage (./pkgs/generic-random.nix) { };

  generically = self.callPackage (./pkgs/generically.nix) { };

  generics-sop = self.callPackage (./pkgs/generics-sop.nix) { };

  genvalidity = self.callPackage (./pkgs/genvalidity.nix) { };

  genvalidity-aeson = self.callPackage (./pkgs/genvalidity-aeson.nix) { };

  genvalidity-bytestring = self.callPackage (./pkgs/genvalidity-bytestring.nix) { };

  genvalidity-case-insensitive = self.callPackage (./pkgs/genvalidity-case-insensitive.nix) { };

  genvalidity-containers = self.callPackage (./pkgs/genvalidity-containers.nix) { };

  genvalidity-criterion = self.callPackage (./pkgs/genvalidity-criterion.nix) { };

  genvalidity-dirforest = self.callPackage (./pkgs/genvalidity-dirforest.nix) { };

  genvalidity-hspec = self.callPackage (./pkgs/genvalidity-hspec.nix) { };

  genvalidity-hspec-aeson = self.callPackage (./pkgs/genvalidity-hspec-aeson.nix) { };

  genvalidity-hspec-optics = self.callPackage (./pkgs/genvalidity-hspec-optics.nix) { };

  genvalidity-path = self.callPackage (./pkgs/genvalidity-path.nix) { };

  genvalidity-persistent = self.callPackage (./pkgs/genvalidity-persistent.nix) { };

  genvalidity-property = self.callPackage (./pkgs/genvalidity-property.nix) { };

  genvalidity-scientific = self.callPackage (./pkgs/genvalidity-scientific.nix) { };

  genvalidity-sydtest = self.callPackage (./pkgs/genvalidity-sydtest.nix) { };

  genvalidity-sydtest-aeson = self.callPackage (./pkgs/genvalidity-sydtest-aeson.nix) { };

  genvalidity-sydtest-hashable = self.callPackage (./pkgs/genvalidity-sydtest-hashable.nix) { };

  genvalidity-sydtest-lens = self.callPackage (./pkgs/genvalidity-sydtest-lens.nix) { };

  genvalidity-sydtest-persistent = self.callPackage (./pkgs/genvalidity-sydtest-persistent.nix) { };

  genvalidity-text = self.callPackage (./pkgs/genvalidity-text.nix) { };

  genvalidity-time = self.callPackage (./pkgs/genvalidity-time.nix) { };

  genvalidity-unordered-containers = self.callPackage (./pkgs/genvalidity-unordered-containers.nix) { };

  genvalidity-uuid = self.callPackage (./pkgs/genvalidity-uuid.nix) { };

  genvalidity-vector = self.callPackage (./pkgs/genvalidity-vector.nix) { };

  ghc-byteorder = self.callPackage (./pkgs/ghc-byteorder.nix) { };

  ghc-check = self.callPackage (./pkgs/ghc-check.nix) { };

  ghc-exactprint = self.callPackage (./pkgs/ghc-exactprint.nix) { };

  ghc-lib-parser = self.callPackage (./pkgs/ghc-lib-parser.nix) { };

  ghc-lib-parser-ex = self.callPackage (./pkgs/ghc-lib-parser-ex.nix) { };

  ghc-paths = self.callPackage (./pkgs/ghc-paths.nix) { };

  ghc-tcplugins-extra = self.callPackage (./pkgs/ghc-tcplugins-extra.nix) { };

  ghc-typelits-knownnat = self.callPackage (./pkgs/ghc-typelits-knownnat.nix) { };

  ghc-typelits-natnormalise = self.callPackage (./pkgs/ghc-typelits-natnormalise.nix) { };

  ghcid = self.callPackage (./pkgs/ghcid.nix) { };

  githash = self.callPackage (./pkgs/githash.nix) { };

  gitrev = self.callPackage (./pkgs/gitrev.nix) { };

  gridtables = self.callPackage (./pkgs/gridtables.nix) { };

  groups = self.callPackage (./pkgs/groups.nix) { };

  hackage-db = self.callPackage (./pkgs/hackage-db.nix) { };

  hackage-security = self.callPackage (./pkgs/hackage-security.nix) { };

  haddock-library = self.callPackage (./pkgs/haddock-library.nix) { };

  happy = self.callPackage (./pkgs/happy.nix) { };

  hashable = self.callPackage (./pkgs/hashable.nix) { };

  hashing = self.callPackage (./pkgs/hashing.nix) { };

  hashmap = self.callPackage (./pkgs/hashmap.nix) { };

  hashtables = self.callPackage (./pkgs/hashtables.nix) { };

  haskell-lexer = self.callPackage (./pkgs/haskell-lexer.nix) { };

  haskell-src-exts = self.callPackage (./pkgs/haskell-src-exts.nix) { };

  haskell-src-meta = self.callPackage (./pkgs/haskell-src-meta.nix) { };

  heaps = self.callPackage (./pkgs/heaps.nix) { };

  hedgehog = self.callPackage (./pkgs/hedgehog.nix) { };

  hedgehog-golden = self.callPackage (./pkgs/hedgehog-golden.nix) { };

  hie-bios = self.callPackage (./pkgs/hie-bios.nix) { };

  hie-compat = self.callPackage (./pkgs/hie-compat.nix) { };

  hiedb = self.callPackage (./pkgs/hiedb.nix) { };

  hinotify = self.callPackage (./pkgs/hinotify.nix) { };

  hledger = self.callPackage (./pkgs/hledger.nix) { };

  hledger-lib = self.callPackage (./pkgs/hledger-lib.nix) { };

  hlint = self.callPackage (./pkgs/hlint.nix) { };

  hopenssl = self.callPackage (./pkgs/hopenssl.nix) { };

  horizon-gen-nix = self.callPackage (./pkgs/horizon-gen-nix.nix) { };

  hosc = self.callPackage (./pkgs/hosc.nix) { };

  hourglass = self.callPackage (./pkgs/hourglass.nix) { };

  hpack = self.callPackage (./pkgs/hpack.nix) { };

  hpack-dhall = self.callPackage (./pkgs/hpack-dhall.nix) { };

  hscolour = self.callPackage (./pkgs/hscolour.nix) { };

  hslua = self.callPackage (./pkgs/hslua.nix) { };

  hslua-aeson = self.callPackage (./pkgs/hslua-aeson.nix) { };

  hslua-classes = self.callPackage (./pkgs/hslua-classes.nix) { };

  hslua-core = self.callPackage (./pkgs/hslua-core.nix) { };

  hslua-marshalling = self.callPackage (./pkgs/hslua-marshalling.nix) { };

  hslua-module-doclayout = self.callPackage (./pkgs/hslua-module-doclayout.nix) { };

  hslua-module-path = self.callPackage (./pkgs/hslua-module-path.nix) { };

  hslua-module-system = self.callPackage (./pkgs/hslua-module-system.nix) { };

  hslua-module-text = self.callPackage (./pkgs/hslua-module-text.nix) { };

  hslua-module-version = self.callPackage (./pkgs/hslua-module-version.nix) { };

  hslua-objectorientation = self.callPackage (./pkgs/hslua-objectorientation.nix) { };

  hslua-packaging = self.callPackage (./pkgs/hslua-packaging.nix) { };

  hspec = self.callPackage (./pkgs/hspec.nix) { };

  hspec-contrib = self.callPackage (./pkgs/hspec-contrib.nix) { };

  hspec-core = self.callPackage (./pkgs/hspec-core.nix) { };

  hspec-discover = self.callPackage (./pkgs/hspec-discover.nix) { };

  hspec-expectations = self.callPackage (./pkgs/hspec-expectations.nix) { };

  hspec-expectations-lifted = self.callPackage (./pkgs/hspec-expectations-lifted.nix) { };

  hspec-hedgehog = self.callPackage (./pkgs/hspec-hedgehog.nix) { };

  hspec-megaparsec = self.callPackage (./pkgs/hspec-megaparsec.nix) { };

  hspec-meta = self.callPackage (./pkgs/hspec-meta.nix) { };

  hspec-smallcheck = self.callPackage (./pkgs/hspec-smallcheck.nix) { };

  hspec-wai = self.callPackage (./pkgs/hspec-wai.nix) { };

  html = self.callPackage (./pkgs/html.nix) { };

  http-api-data = self.callPackage (./pkgs/http-api-data.nix) { };

  http-client = self.callPackage (./pkgs/http-client.nix) { };

  http-client-tls = self.callPackage (./pkgs/http-client-tls.nix) { };

  http-date = self.callPackage (./pkgs/http-date.nix) { };

  http-media = self.callPackage (./pkgs/http-media.nix) { };

  http-types = self.callPackage (./pkgs/http-types.nix) { };

  http2 = self.callPackage (./pkgs/http2.nix) { };

  httpd-shed = self.callPackage (./pkgs/httpd-shed.nix) { };

  ieee754 = self.callPackage (./pkgs/ieee754.nix) { };

  incipit-base = self.callPackage (./pkgs/incipit-base.nix) { };

  incipit-core = self.callPackage (./pkgs/incipit-core.nix) { };

  indexed-profunctors = self.callPackage (./pkgs/indexed-profunctors.nix) { };

  indexed-traversable = self.callPackage (./pkgs/indexed-traversable.nix) { };

  indexed-traversable-instances = self.callPackage (./pkgs/indexed-traversable-instances.nix) { };

  infer-license = self.callPackage (./pkgs/infer-license.nix) { };

  ini = self.callPackage (./pkgs/ini.nix) { };

  insert-ordered-containers = self.callPackage (./pkgs/insert-ordered-containers.nix) { };

  inspection-testing = self.callPackage (./pkgs/inspection-testing.nix) { };

  integer-logarithms = self.callPackage (./pkgs/integer-logarithms.nix) { };

  interpolate = self.callPackage (./pkgs/interpolate.nix) { };

  invariant = self.callPackage (./pkgs/invariant.nix) { };

  iproute = self.callPackage (./pkgs/iproute.nix) { };

  ipynb = self.callPackage (./pkgs/ipynb.nix) { };

  jira-wiki-markup = self.callPackage (./pkgs/jira-wiki-markup.nix) { };

  js-chart = self.callPackage (./pkgs/js-chart.nix) { };

  js-dgtable = self.callPackage (./pkgs/js-dgtable.nix) { };

  js-flot = self.callPackage (./pkgs/js-flot.nix) { };

  js-jquery = self.callPackage (./pkgs/js-jquery.nix) { };

  kan-extensions = self.callPackage (./pkgs/kan-extensions.nix) { };

  keys = self.callPackage (./pkgs/keys.nix) { };

  kvstore-effectful = self.callPackage (./pkgs/kvstore-effectful.nix) { };

  kvstore-effectful-cache = self.callPackage (./pkgs/kvstore-effectful-cache.nix) { };

  kvstore-effectful-spec = self.callPackage (./pkgs/kvstore-effectful-spec.nix) { };

  kvstore-effectful-statemap = self.callPackage (./pkgs/kvstore-effectful-statemap.nix) { };

  language-c = self.callPackage (./pkgs/language-c.nix) { };

  language-haskell-extract = self.callPackage (./pkgs/language-haskell-extract.nix) { };

  language-nix = self.callPackage (./pkgs/language-nix.nix) { };

  lens = self.callPackage (./pkgs/lens.nix) { };

  lens-aeson = self.callPackage (./pkgs/lens-aeson.nix) { };

  lens-family-core = self.callPackage (./pkgs/lens-family-core.nix) { };

  lens-family-th = self.callPackage (./pkgs/lens-family-th.nix) { };

  libsodium = self.callPackage (./pkgs/libsodium.nix) { };

  libxml = self.callPackage (./pkgs/libxml.nix) { };

  libyaml = self.callPackage (./pkgs/libyaml.nix) { };

  lift-type = self.callPackage (./pkgs/lift-type.nix) { };

  lifted-async = self.callPackage (./pkgs/lifted-async.nix) { };

  lifted-base = self.callPackage (./pkgs/lifted-base.nix) { };

  linear = self.callPackage (./pkgs/linear.nix) { };

  log-base = self.callPackage (./pkgs/log-base.nix) { };

  log-effectful = self.callPackage (./pkgs/log-effectful.nix) { };

  logging-facade = self.callPackage (./pkgs/logging-facade.nix) { };

  logict = self.callPackage (./pkgs/logict.nix) { };

  lpeg = self.callPackage (./pkgs/lpeg.nix) { };

  lsp = self.callPackage (./pkgs/lsp.nix) { };

  lsp-types = self.callPackage (./pkgs/lsp-types.nix) { };

  lua = self.callPackage (./pkgs/lua.nix) { };

  lua-arbitrary = self.callPackage (./pkgs/lua-arbitrary.nix) { };

  lucid = self.callPackage (./pkgs/lucid.nix) { };

  lucid-alpine = self.callPackage (./pkgs/lucid-alpine.nix) { };

  lucid-aria = self.callPackage (./pkgs/lucid-aria.nix) { };

  lucid-svg = self.callPackage (./pkgs/lucid-svg.nix) { };

  lukko = self.callPackage (./pkgs/lukko.nix) { };

  managed = self.callPackage (./pkgs/managed.nix) { };

  markdown-unlit = self.callPackage (./pkgs/markdown-unlit.nix) { };

  math-functions = self.callPackage (./pkgs/math-functions.nix) { };

  megaparsec = self.callPackage (./pkgs/megaparsec.nix) { };

  memory = self.callPackage (./pkgs/memory.nix) { };

  mersenne-random = self.callPackage (./pkgs/mersenne-random.nix) { };

  microlens = self.callPackage (./pkgs/microlens.nix) { };

  microlens-aeson = self.callPackage (./pkgs/microlens-aeson.nix) { };

  microlens-ghc = self.callPackage (./pkgs/microlens-ghc.nix) { };

  microlens-mtl = self.callPackage (./pkgs/microlens-mtl.nix) { };

  microlens-platform = self.callPackage (./pkgs/microlens-platform.nix) { };

  microlens-th = self.callPackage (./pkgs/microlens-th.nix) { };

  microspec = self.callPackage (./pkgs/microspec.nix) { };

  microstache = self.callPackage (./pkgs/microstache.nix) { };

  mmorph = self.callPackage (./pkgs/mmorph.nix) { };

  mockery = self.callPackage (./pkgs/mockery.nix) { };

  mod = self.callPackage (./pkgs/mod.nix) { };

  monad-control = self.callPackage (./pkgs/monad-control.nix) { };

  monad-logger = self.callPackage (./pkgs/monad-logger.nix) { };

  monad-loops = self.callPackage (./pkgs/monad-loops.nix) { };

  monad-par = self.callPackage (./pkgs/monad-par.nix) { };

  monad-par-extras = self.callPackage (./pkgs/monad-par-extras.nix) { };

  monad-parallel = self.callPackage (./pkgs/monad-parallel.nix) { };

  monad-peel = self.callPackage (./pkgs/monad-peel.nix) { };

  monad-time = self.callPackage (./pkgs/monad-time.nix) { };

  monads-tf = self.callPackage (./pkgs/monads-tf.nix) { };

  mono-traversable = self.callPackage (./pkgs/mono-traversable.nix) { };

  monoid-subclasses = self.callPackage (./pkgs/monoid-subclasses.nix) { };

  mtl-compat = self.callPackage (./pkgs/mtl-compat.nix) { };

  mwc-random = self.callPackage (./pkgs/mwc-random.nix) { };

  nanospec = self.callPackage (./pkgs/nanospec.nix) { };

  nats = self.callPackage (./pkgs/nats.nix) { };

  natural-transformation = self.callPackage (./pkgs/natural-transformation.nix) { };

  neat-interpolation = self.callPackage (./pkgs/neat-interpolation.nix) { };

  net-mqtt = self.callPackage (./pkgs/net-mqtt.nix) { };

  network = self.callPackage (./pkgs/network.nix) { };

  network-bsd = self.callPackage (./pkgs/network-bsd.nix) { };

  network-byte-order = self.callPackage (./pkgs/network-byte-order.nix) { };

  network-conduit-tls = self.callPackage (./pkgs/network-conduit-tls.nix) { };

  network-run = self.callPackage (./pkgs/network-run.nix) { };

  network-uri = self.callPackage (./pkgs/network-uri.nix) { };

  newtype-generics = self.callPackage (./pkgs/newtype-generics.nix) { };

  nothunks = self.callPackage (./pkgs/nothunks.nix) { };

  numtype-dk = self.callPackage (./pkgs/numtype-dk.nix) { };

  odd-jobs = self.callPackage (./pkgs/odd-jobs.nix) { };

  old-locale = self.callPackage (./pkgs/old-locale.nix) { };

  old-time = self.callPackage (./pkgs/old-time.nix) { };

  optics = self.callPackage (./pkgs/optics.nix) { };

  optics-core = self.callPackage (./pkgs/optics-core.nix) { };

  optics-extra = self.callPackage (./pkgs/optics-extra.nix) { };

  optics-th = self.callPackage (./pkgs/optics-th.nix) { };

  optional-args = self.callPackage (./pkgs/optional-args.nix) { };

  options = self.callPackage (./pkgs/options.nix) { };

  optparse-applicative = self.callPackage (./pkgs/optparse-applicative.nix) { };

  ordered-containers = self.callPackage (./pkgs/ordered-containers.nix) { };

  pandoc = self.callPackage (./pkgs/pandoc.nix) { };

  pandoc-lua-marshal = self.callPackage (./pkgs/pandoc-lua-marshal.nix) { };

  pandoc-types = self.callPackage (./pkgs/pandoc-types.nix) { };

  parallel = self.callPackage (./pkgs/parallel.nix) { };

  parsec = self.callPackage (./pkgs/parsec.nix) { };

  parsec-class = self.callPackage (./pkgs/parsec-class.nix) { };

  parser-combinators = self.callPackage (./pkgs/parser-combinators.nix) { };

  parsers = self.callPackage (./pkgs/parsers.nix) { };

  parsers-megaparsec = self.callPackage (./pkgs/parsers-megaparsec.nix) { };

  password = self.callPackage (./pkgs/password.nix) { };

  password-types = self.callPackage (./pkgs/password-types.nix) { };

  path = self.callPackage (./pkgs/path.nix) { };

  path-dhall-instance = self.callPackage (./pkgs/path-dhall-instance.nix) { };

  path-io = self.callPackage (./pkgs/path-io.nix) { };

  path-pieces = self.callPackage (./pkgs/path-pieces.nix) { };

  patience = self.callPackage (./pkgs/patience.nix) { };

  pcg-random = self.callPackage (./pkgs/pcg-random.nix) { };

  pcre-light = self.callPackage (./pkgs/pcre-light.nix) { };

  pcre2 = self.callPackage (./pkgs/pcre2.nix) { };

  pem = self.callPackage (./pkgs/pem.nix) { };

  persistent = self.callPackage (./pkgs/persistent.nix) { };

  persistent-template = self.callPackage (./pkgs/persistent-template.nix) { };

  pg-entity = self.callPackage (./pkgs/pg-entity.nix) { };

  pg-transact = self.callPackage (./pkgs/pg-transact.nix) { };

  pg-transact-effectful = self.callPackage (./pkgs/pg-transact-effectful.nix) { };

  pgp-wordlist = self.callPackage (./pkgs/pgp-wordlist.nix) { };

  pointed = self.callPackage (./pkgs/pointed.nix) { };

  polyparse = self.callPackage (./pkgs/polyparse.nix) { };

  polysemy = self.callPackage (./pkgs/polysemy.nix) { };

  polysemy-extra = self.callPackage (./pkgs/polysemy-extra.nix) { };

  polysemy-kvstore = self.callPackage (./pkgs/polysemy-kvstore.nix) { };

  polysemy-methodology = self.callPackage (./pkgs/polysemy-methodology.nix) { };

  polysemy-path = self.callPackage (./pkgs/polysemy-path.nix) { };

  polysemy-plugin = self.callPackage (./pkgs/polysemy-plugin.nix) { };

  polysemy-several = self.callPackage (./pkgs/polysemy-several.nix) { };

  polysemy-test = self.callPackage (./pkgs/polysemy-test.nix) { };

  polysemy-time = self.callPackage (./pkgs/polysemy-time.nix) { };

  polysemy-vinyl = self.callPackage (./pkgs/polysemy-vinyl.nix) { };

  polysemy-zoo = self.callPackage (./pkgs/polysemy-zoo.nix) { };

  port-utils = self.callPackage (./pkgs/port-utils.nix) { };

  postgres-options = self.callPackage (./pkgs/postgres-options.nix) { };

  postgresql-libpq = self.callPackage (./pkgs/postgresql-libpq.nix) { };

  postgresql-migration = self.callPackage (./pkgs/postgresql-migration.nix) { };

  postgresql-simple = self.callPackage (./pkgs/postgresql-simple.nix) { };

  postgresql-simple-migration = self.callPackage (./pkgs/postgresql-simple-migration.nix) { };

  pretty-hex = self.callPackage (./pkgs/pretty-hex.nix) { };

  pretty-show = self.callPackage (./pkgs/pretty-show.nix) { };

  pretty-simple = self.callPackage (./pkgs/pretty-simple.nix) { };

  prettyprinter = self.callPackage (./pkgs/prettyprinter.nix) { };

  prettyprinter-ansi-terminal = self.callPackage (./pkgs/prettyprinter-ansi-terminal.nix) { };

  primes = self.callPackage (./pkgs/primes.nix) { };

  primitive = self.callPackage (./pkgs/primitive.nix) { };

  primitive-addr = self.callPackage (./pkgs/primitive-addr.nix) { };

  process-extras = self.callPackage (./pkgs/process-extras.nix) { };

  profunctors = self.callPackage (./pkgs/profunctors.nix) { };

  prometheus-client = self.callPackage (./pkgs/prometheus-client.nix) { };

  prometheus-proc = self.callPackage (./pkgs/prometheus-proc.nix) { };

  proteaaudio-sdl = self.callPackage (./pkgs/proteaaudio-sdl.nix) { };

  psqueues = self.callPackage (./pkgs/psqueues.nix) { };

  pureMD5 = self.callPackage (./pkgs/pureMD5.nix) { };

  quickcheck-classes = self.callPackage (./pkgs/quickcheck-classes.nix) { };

  quickcheck-classes-base = self.callPackage (./pkgs/quickcheck-classes-base.nix) { };

  quickcheck-dynamic = self.callPackage (./pkgs/quickcheck-dynamic.nix) { };

  quickcheck-instances = self.callPackage (./pkgs/quickcheck-instances.nix) { };

  quickcheck-io = self.callPackage (./pkgs/quickcheck-io.nix) { };

  quickcheck-text = self.callPackage (./pkgs/quickcheck-text.nix) { };

  quickcheck-unicode = self.callPackage (./pkgs/quickcheck-unicode.nix) { };

  random = self.callPackage (./pkgs/random.nix) { };

  random-bytestring = self.callPackage (./pkgs/random-bytestring.nix) { };

  random-shuffle = self.callPackage (./pkgs/random-shuffle.nix) { };

  rdtsc = self.callPackage (./pkgs/rdtsc.nix) { };

  rebase = self.callPackage (./pkgs/rebase.nix) { };

  reducers = self.callPackage (./pkgs/reducers.nix) { };

  refact = self.callPackage (./pkgs/refact.nix) { };

  refined = self.callPackage (./pkgs/refined.nix) { };

  reflection = self.callPackage (./pkgs/reflection.nix) { };

  regex-applicative = self.callPackage (./pkgs/regex-applicative.nix) { };

  regex-base = self.callPackage (./pkgs/regex-base.nix) { };

  regex-compat = self.callPackage (./pkgs/regex-compat.nix) { };

  regex-pcre-builtin = self.callPackage (./pkgs/regex-pcre-builtin.nix) { };

  regex-posix = self.callPackage (./pkgs/regex-posix.nix) { };

  regex-tdfa = self.callPackage (./pkgs/regex-tdfa.nix) { };

  relude = self.callPackage (./pkgs/relude.nix) { };

  repline = self.callPackage (./pkgs/repline.nix) { };

  rere = self.callPackage (./pkgs/rere.nix) { };

  rerebase = self.callPackage (./pkgs/rerebase.nix) { };

  resolv = self.callPackage (./pkgs/resolv.nix) { };

  resource-pool = self.callPackage (./pkgs/resource-pool.nix) { };

  resourcet = self.callPackage (./pkgs/resourcet.nix) { };

  retry = self.callPackage (./pkgs/retry.nix) { };

  rope-utf16-splay = self.callPackage (./pkgs/rope-utf16-splay.nix) { };

  safe-coloured-text = self.callPackage (./pkgs/safe-coloured-text.nix) { };

  safe-coloured-text-terminfo = self.callPackage (./pkgs/safe-coloured-text-terminfo.nix) { };

  safe-exceptions = self.callPackage (./pkgs/safe-exceptions.nix) { };

  saltine = self.callPackage (./pkgs/saltine.nix) { };

  sandwich = self.callPackage (./pkgs/sandwich.nix) { };

  scientific = self.callPackage (./pkgs/scientific.nix) { };

  scotty = self.callPackage (./pkgs/scotty.nix) { };

  sdl2 = self.callPackage (./pkgs/sdl2.nix) { };

  sdl2-gfx = self.callPackage (./pkgs/sdl2-gfx.nix) { };

  sdl2-image = self.callPackage (./pkgs/sdl2-image.nix) { };

  sdl2-mixer = self.callPackage (./pkgs/sdl2-mixer.nix) { };

  sdl2-ttf = self.callPackage (./pkgs/sdl2-ttf.nix) { };

  selective = self.callPackage (./pkgs/selective.nix) { };

  semialign = self.callPackage (./pkgs/semialign.nix) { };

  semigroupoids = self.callPackage (./pkgs/semigroupoids.nix) { };

  semigroups = self.callPackage (./pkgs/semigroups.nix) { };

  semirings = self.callPackage (./pkgs/semirings.nix) { };

  serialise = self.callPackage (./pkgs/serialise.nix) { };

  servant = self.callPackage (./pkgs/servant.nix) { };

  servant-blaze = self.callPackage (./pkgs/servant-blaze.nix) { };

  servant-client = self.callPackage (./pkgs/servant-client.nix) { };

  servant-client-core = self.callPackage (./pkgs/servant-client-core.nix) { };

  servant-docs = self.callPackage (./pkgs/servant-docs.nix) { };

  servant-effectful = self.callPackage (./pkgs/servant-effectful.nix) { };

  servant-foreign = self.callPackage (./pkgs/servant-foreign.nix) { };

  servant-lucid = self.callPackage (./pkgs/servant-lucid.nix) { };

  servant-multipart = self.callPackage (./pkgs/servant-multipart.nix) { };

  servant-multipart-api = self.callPackage (./pkgs/servant-multipart-api.nix) { };

  servant-polysemy = self.callPackage (./pkgs/servant-polysemy.nix) { };

  servant-server = self.callPackage (./pkgs/servant-server.nix) { };

  servant-static-th = self.callPackage (./pkgs/servant-static-th.nix) { };

  servant-swagger = self.callPackage (./pkgs/servant-swagger.nix) { };

  servant-swagger-ui = self.callPackage (./pkgs/servant-swagger-ui.nix) { };

  servant-swagger-ui-core = self.callPackage (./pkgs/servant-swagger-ui-core.nix) { };

  setenv = self.callPackage (./pkgs/setenv.nix) { };

  shake = self.callPackage (./pkgs/shake.nix) { };

  shakespeare = self.callPackage (./pkgs/shakespeare.nix) { };

  shelly = self.callPackage (./pkgs/shelly.nix) { };

  should-not-typecheck = self.callPackage (./pkgs/should-not-typecheck.nix) { };

  silently = self.callPackage (./pkgs/silently.nix) { };

  simple-reflect = self.callPackage (./pkgs/simple-reflect.nix) { };

  simple-sendfile = self.callPackage (./pkgs/simple-sendfile.nix) { };

  singleton-bool = self.callPackage (./pkgs/singleton-bool.nix) { };

  singletons = self.callPackage (./pkgs/singletons.nix) { };

  skylighting = self.callPackage (./pkgs/skylighting.nix) { };

  skylighting-core = self.callPackage (./pkgs/skylighting-core.nix) { };

  skylighting-format-ansi = self.callPackage (./pkgs/skylighting-format-ansi.nix) { };

  skylighting-format-blaze-html = self.callPackage (./pkgs/skylighting-format-blaze-html.nix) { };

  skylighting-format-latex = self.callPackage (./pkgs/skylighting-format-latex.nix) { };

  slugify = self.callPackage (./pkgs/slugify.nix) { };

  smallcheck = self.callPackage (./pkgs/smallcheck.nix) { };

  socks = self.callPackage (./pkgs/socks.nix) { };

  some = self.callPackage (./pkgs/some.nix) { };

  sop-core = self.callPackage (./pkgs/sop-core.nix) { };

  sorted-list = self.callPackage (./pkgs/sorted-list.nix) { };

  souffle-haskell = self.callPackage (./pkgs/souffle-haskell.nix) { };

  special-values = self.callPackage (./pkgs/special-values.nix) { };

  split = self.callPackage (./pkgs/split.nix) { };

  splitmix = self.callPackage (./pkgs/splitmix.nix) { };

  spoon = self.callPackage (./pkgs/spoon.nix) { };

  sqlite-simple = self.callPackage (./pkgs/sqlite-simple.nix) { };

  statistics = self.callPackage (./pkgs/statistics.nix) { };

  stm-chans = self.callPackage (./pkgs/stm-chans.nix) { };

  store = self.callPackage (./pkgs/store.nix) { };

  store-core = self.callPackage (./pkgs/store-core.nix) { };

  streaming = self.callPackage (./pkgs/streaming.nix) { };

  streaming-commons = self.callPackage (./pkgs/streaming-commons.nix) { };

  strict = self.callPackage (./pkgs/strict.nix) { };

  string-conv = self.callPackage (./pkgs/string-conv.nix) { };

  string-conversions = self.callPackage (./pkgs/string-conversions.nix) { };

  string-interpolate = self.callPackage (./pkgs/string-interpolate.nix) { };

  string-qq = self.callPackage (./pkgs/string-qq.nix) { };

  stringbuilder = self.callPackage (./pkgs/stringbuilder.nix) { };

  swagger2 = self.callPackage (./pkgs/swagger2.nix) { };

  syb = self.callPackage (./pkgs/syb.nix) { };

  sydtest = self.callPackage (./pkgs/sydtest.nix) { };

  sydtest-discover = self.callPackage (./pkgs/sydtest-discover.nix) { };

  system-filepath = self.callPackage (./pkgs/system-filepath.nix) { };

  tabular = self.callPackage (./pkgs/tabular.nix) { };

  tagged = self.callPackage (./pkgs/tagged.nix) { };

  tagsoup = self.callPackage (./pkgs/tagsoup.nix) { };

  tar = self.callPackage (./pkgs/tar.nix) { };

  tasty = self.callPackage (./pkgs/tasty.nix) { };

  tasty-bench = self.callPackage (./pkgs/tasty-bench.nix) { };

  tasty-discover = self.callPackage (./pkgs/tasty-discover.nix) { };

  tasty-expected-failure = self.callPackage (./pkgs/tasty-expected-failure.nix) { };

  tasty-golden = self.callPackage (./pkgs/tasty-golden.nix) { };

  tasty-hedgehog = self.callPackage (./pkgs/tasty-hedgehog.nix) { };

  tasty-hslua = self.callPackage (./pkgs/tasty-hslua.nix) { };

  tasty-hspec = self.callPackage (./pkgs/tasty-hspec.nix) { };

  tasty-hunit = self.callPackage (./pkgs/tasty-hunit.nix) { };

  tasty-inspection-testing = self.callPackage (./pkgs/tasty-inspection-testing.nix) { };

  tasty-kat = self.callPackage (./pkgs/tasty-kat.nix) { };

  tasty-lua = self.callPackage (./pkgs/tasty-lua.nix) { };

  tasty-quickcheck = self.callPackage (./pkgs/tasty-quickcheck.nix) { };

  tasty-silver = self.callPackage (./pkgs/tasty-silver.nix) { };

  tasty-smallcheck = self.callPackage (./pkgs/tasty-smallcheck.nix) { };

  tasty-th = self.callPackage (./pkgs/tasty-th.nix) { };

  tasty-wai = self.callPackage (./pkgs/tasty-wai.nix) { };

  tdigest = self.callPackage (./pkgs/tdigest.nix) { };

  temporary = self.callPackage (./pkgs/temporary.nix) { };

  terminal-size = self.callPackage (./pkgs/terminal-size.nix) { };

  test-framework = self.callPackage (./pkgs/test-framework.nix) { };

  test-framework-hunit = self.callPackage (./pkgs/test-framework-hunit.nix) { };

  test-framework-quickcheck2 = self.callPackage (./pkgs/test-framework-quickcheck2.nix) { };

  test-framework-th = self.callPackage (./pkgs/test-framework-th.nix) { };

  texmath = self.callPackage (./pkgs/texmath.nix) { };

  text-conversions = self.callPackage (./pkgs/text-conversions.nix) { };

  text-display = self.callPackage (./pkgs/text-display.nix) { };

  text-icu = self.callPackage (./pkgs/text-icu.nix) { };

  text-manipulate = self.callPackage (./pkgs/text-manipulate.nix) { };

  text-metrics = self.callPackage (./pkgs/text-metrics.nix) { };

  text-rope = self.callPackage (./pkgs/text-rope.nix) { };

  text-short = self.callPackage (./pkgs/text-short.nix) { };

  text-zipper = self.callPackage (./pkgs/text-zipper.nix) { };

  tf-random = self.callPackage (./pkgs/tf-random.nix) { };

  th-abstraction = self.callPackage (./pkgs/th-abstraction.nix) { };

  th-compat = self.callPackage (./pkgs/th-compat.nix) { };

  th-env = self.callPackage (./pkgs/th-env.nix) { };

  th-expand-syns = self.callPackage (./pkgs/th-expand-syns.nix) { };

  th-extras = self.callPackage (./pkgs/th-extras.nix) { };

  th-lift = self.callPackage (./pkgs/th-lift.nix) { };

  th-lift-instances = self.callPackage (./pkgs/th-lift-instances.nix) { };

  th-orphans = self.callPackage (./pkgs/th-orphans.nix) { };

  th-reify-many = self.callPackage (./pkgs/th-reify-many.nix) { };

  th-utilities = self.callPackage (./pkgs/th-utilities.nix) { };

  these = self.callPackage (./pkgs/these.nix) { };

  these-skinny = self.callPackage (./pkgs/these-skinny.nix) { };

  tidal = self.callPackage (./pkgs/tidal.nix) { };

  time-compat = self.callPackage (./pkgs/time-compat.nix) { };

  time-effectful = self.callPackage (./pkgs/time-effectful.nix) { };

  time-manager = self.callPackage (./pkgs/time-manager.nix) { };

  timeit = self.callPackage (./pkgs/timeit.nix) { };

  timing-convenience = self.callPackage (./pkgs/timing-convenience.nix) { };

  tls = self.callPackage (./pkgs/tls.nix) { };

  tls-session-manager = self.callPackage (./pkgs/tls-session-manager.nix) { };

  tmp-postgres = self.callPackage (./pkgs/tmp-postgres.nix) { };

  torsor = self.callPackage (./pkgs/torsor.nix) { };

  transformers-base = self.callPackage (./pkgs/transformers-base.nix) { };

  transformers-compat = self.callPackage (./pkgs/transformers-compat.nix) { };

  tree-diff = self.callPackage (./pkgs/tree-diff.nix) { };

  trifecta = self.callPackage (./pkgs/trifecta.nix) { };

  tuple = self.callPackage (./pkgs/tuple.nix) { };

  turtle = self.callPackage (./pkgs/turtle.nix) { };

  type-equality = self.callPackage (./pkgs/type-equality.nix) { };

  type-errors = self.callPackage (./pkgs/type-errors.nix) { };

  type-errors-pretty = self.callPackage (./pkgs/type-errors-pretty.nix) { };

  typed-process = self.callPackage (./pkgs/typed-process.nix) { };

  typerep-map = self.callPackage (./pkgs/typerep-map.nix) { };

  uglymemo = self.callPackage (./pkgs/uglymemo.nix) { };

  unagi-chan = self.callPackage (./pkgs/unagi-chan.nix) { };

  unbounded-delays = self.callPackage (./pkgs/unbounded-delays.nix) { };

  unicode-collation = self.callPackage (./pkgs/unicode-collation.nix) { };

  unicode-data = self.callPackage (./pkgs/unicode-data.nix) { };

  unicode-transforms = self.callPackage (./pkgs/unicode-transforms.nix) { };

  uniplate = self.callPackage (./pkgs/uniplate.nix) { };

  universe-base = self.callPackage (./pkgs/universe-base.nix) { };

  unix-compat = self.callPackage (./pkgs/unix-compat.nix) { };

  unix-memory = self.callPackage (./pkgs/unix-memory.nix) { };

  unix-time = self.callPackage (./pkgs/unix-time.nix) { };

  unliftio = self.callPackage (./pkgs/unliftio.nix) { };

  unliftio-core = self.callPackage (./pkgs/unliftio-core.nix) { };

  unordered-containers = self.callPackage (./pkgs/unordered-containers.nix) { };

  uri-bytestring = self.callPackage (./pkgs/uri-bytestring.nix) { };

  uri-encode = self.callPackage (./pkgs/uri-encode.nix) { };

  utf8-string = self.callPackage (./pkgs/utf8-string.nix) { };

  utility-ht = self.callPackage (./pkgs/utility-ht.nix) { };

  uuid = self.callPackage (./pkgs/uuid.nix) { };

  uuid-types = self.callPackage (./pkgs/uuid-types.nix) { };

  validity = self.callPackage (./pkgs/validity.nix) { };

  validity-aeson = self.callPackage (./pkgs/validity-aeson.nix) { };

  validity-bytestring = self.callPackage (./pkgs/validity-bytestring.nix) { };

  validity-case-insensitive = self.callPackage (./pkgs/validity-case-insensitive.nix) { };

  validity-containers = self.callPackage (./pkgs/validity-containers.nix) { };

  validity-path = self.callPackage (./pkgs/validity-path.nix) { };

  validity-persistent = self.callPackage (./pkgs/validity-persistent.nix) { };

  validity-primitive = self.callPackage (./pkgs/validity-primitive.nix) { };

  validity-scientific = self.callPackage (./pkgs/validity-scientific.nix) { };

  validity-text = self.callPackage (./pkgs/validity-text.nix) { };

  validity-time = self.callPackage (./pkgs/validity-time.nix) { };

  validity-unordered-containers = self.callPackage (./pkgs/validity-unordered-containers.nix) { };

  validity-uuid = self.callPackage (./pkgs/validity-uuid.nix) { };

  validity-vector = self.callPackage (./pkgs/validity-vector.nix) { };

  vault = self.callPackage (./pkgs/vault.nix) { };

  vec = self.callPackage (./pkgs/vec.nix) { };

  vector = self.callPackage (./pkgs/vector.nix) { };

  vector-algorithms = self.callPackage (./pkgs/vector-algorithms.nix) { };

  vector-binary-instances = self.callPackage (./pkgs/vector-binary-instances.nix) { };

  vector-instances = self.callPackage (./pkgs/vector-instances.nix) { };

  vector-th-unbox = self.callPackage (./pkgs/vector-th-unbox.nix) { };

  vinyl = self.callPackage (./pkgs/vinyl.nix) { };

  void = self.callPackage (./pkgs/void.nix) { };

  vty = self.callPackage (./pkgs/vty.nix) { };

  wai = self.callPackage (./pkgs/wai.nix) { };

  wai-app-static = self.callPackage (./pkgs/wai-app-static.nix) { };

  wai-extra = self.callPackage (./pkgs/wai-extra.nix) { };

  wai-logger = self.callPackage (./pkgs/wai-logger.nix) { };

  wai-middleware-heartbeat = self.callPackage (./pkgs/wai-middleware-heartbeat.nix) { };

  wai-middleware-static = self.callPackage (./pkgs/wai-middleware-static.nix) { };

  warp = self.callPackage (./pkgs/warp.nix) { };

  warp-tls = self.callPackage (./pkgs/warp-tls.nix) { };

  websockets = self.callPackage (./pkgs/websockets.nix) { };

  weigh = self.callPackage (./pkgs/weigh.nix) { };

  with-utf8 = self.callPackage (./pkgs/with-utf8.nix) { };

  witherable = self.callPackage (./pkgs/witherable.nix) { };

  wizards = self.callPackage (./pkgs/wizards.nix) { };

  wl-pprint-annotated = self.callPackage (./pkgs/wl-pprint-annotated.nix) { };

  word-wrap = self.callPackage (./pkgs/word-wrap.nix) { };

  word8 = self.callPackage (./pkgs/word8.nix) { };

  x509 = self.callPackage (./pkgs/x509.nix) { };

  x509-store = self.callPackage (./pkgs/x509-store.nix) { };

  x509-system = self.callPackage (./pkgs/x509-system.nix) { };

  x509-validation = self.callPackage (./pkgs/x509-validation.nix) { };

  xml = self.callPackage (./pkgs/xml.nix) { };

  xml-conduit = self.callPackage (./pkgs/xml-conduit.nix) { };

  xml-types = self.callPackage (./pkgs/xml-types.nix) { };

  yaml = self.callPackage (./pkgs/yaml.nix) { };

  zip-archive = self.callPackage (./pkgs/zip-archive.nix) { };

}
