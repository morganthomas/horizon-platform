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

    aeson = prev.callPackage (./pkgs/aeson.nix) { };

    ansi-terminal = prev.callPackage (./pkgs/ansi-terminal.nix) { };

    apecs = prev.callPackage (./pkgs/apecs.nix) { };

    assoc = prev.callPackage (./pkgs/assoc.nix) { };

    async = prev.callPackage (./pkgs/async.nix) { };

    autodocodec-yaml = prev.callPackage (./pkgs/autodocodec-yaml.nix) { };

    base-compat = prev.callPackage (./pkgs/base-compat.nix) { };

    base-compat-batteries = prev.callPackage (./pkgs/base-compat-batteries.nix) { };

    base64 = prev.callPackage (./pkgs/base64.nix) { };

    basement = prev.callPackage (./pkgs/basement.nix) { };

    bimap = prev.callPackage (./pkgs/bimap.nix) { };

    binary-orphans = prev.callPackage (./pkgs/binary-orphans.nix) { };

    blaze-markup = prev.callPackage (./pkgs/blaze-markup.nix) { };

    boring = prev.callPackage (./pkgs/boring.nix) { };

    brick = prev.callPackage (./pkgs/brick.nix) { };

    bsb-http-chunked = prev.callPackage (./pkgs/bsb-http-chunked.nix) { };

    bytes = prev.callPackage (./pkgs/bytes.nix) { };

    cabal-doctest = prev.callPackage (./pkgs/cabal-doctest.nix) { };

    cabal-install = prev.callPackage (./pkgs/cabal-install.nix) { };

    cabal-install-solver = prev.callPackage (./pkgs/cabal-install-solver.nix) { };

    cabal2nix = prev.callPackage (./pkgs/cabal2nix.nix) { };

    cborg = prev.callPackage (./pkgs/cborg.nix) { };

    cborg-json = prev.callPackage (./pkgs/cborg-json.nix) { };

    cereal = prev.callPackage (./pkgs/cereal.nix) { };

    citeproc = prev.callPackage (./pkgs/citeproc.nix) { };

    co-log-core = prev.callPackage (./pkgs/co-log-core.nix) { };

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

    constraints = prev.callPackage (./pkgs/constraints.nix) { };

    cryptohash-sha1 = prev.callPackage (./pkgs/cryptohash-sha1.nix) { };

    cryptonite = prev.callPackage (./pkgs/cryptonite.nix) { };

    data-fix = prev.callPackage (./pkgs/data-fix.nix) { };

    dec = prev.callPackage (./pkgs/dec.nix) { };

    dhall = prev.callPackage (./pkgs/dhall.nix) { };

    dimensional = prev.callPackage (./pkgs/dimensional.nix) { };

    distribution-nixpkgs = prev.callPackage (./pkgs/distribution-nixpkgs.nix) { };

    doctest = prev.callPackage (./pkgs/doctest.nix) { };

    double-conversion = prev.callPackage (./pkgs/double-conversion.nix) { };

    ed25519 = prev.callPackage (./pkgs/ed25519.nix) { };

    effectful = prev.callPackage (./pkgs/effectful.nix) { };

    effectful-cache = prev.callPackage (./pkgs/effectful-cache.nix) { };

    effectful-core = prev.callPackage (./pkgs/effectful-core.nix) { };

    effectful-th = prev.callPackage (./pkgs/effectful-th.nix) { };

    ema = prev.callPackage (./pkgs/ema.nix) { };

    email-validate = prev.callPackage (./pkgs/email-validate.nix) { };

    extra = prev.callPackage (./pkgs/extra.nix) { };

    fcf-containers = prev.callPackage (./pkgs/fcf-containers.nix) { };

    finite-field = prev.callPackage (./pkgs/finite-field.nix) { };

    first-class-families = prev.callPackage (./pkgs/first-class-families.nix) { };

    foldl = prev.callPackage (./pkgs/foldl.nix) { };

    foundation = prev.callPackage (./pkgs/foundation.nix) { };

    fourmolu = prev.callPackage (./pkgs/fourmolu.nix) { };

    generic-lens-core = prev.callPackage (./pkgs/generic-lens-core.nix) { };

    generic-lens-lite = prev.callPackage (./pkgs/generic-lens-lite.nix) { };

    generic-optics = prev.callPackage (./pkgs/generic-optics.nix) { };

    generic-optics-lite = prev.callPackage (./pkgs/generic-optics-lite.nix) { };

    generics-sop = prev.callPackage (./pkgs/generics-sop.nix) { };

    genvalidity-aeson = prev.callPackage (./pkgs/genvalidity-aeson.nix) { };

    genvalidity-bytestring = prev.callPackage (./pkgs/genvalidity-bytestring.nix) { };

    genvalidity-hspec = prev.callPackage (./pkgs/genvalidity-hspec.nix) { };

    genvalidity-scientific = prev.callPackage (./pkgs/genvalidity-scientific.nix) { };

    genvalidity-sydtest-aeson = prev.callPackage (./pkgs/genvalidity-sydtest-aeson.nix) { };

    genvalidity-text = prev.callPackage (./pkgs/genvalidity-text.nix) { };

    genvalidity-unordered-containers = prev.callPackage (./pkgs/genvalidity-unordered-containers.nix) { };

    genvalidity-vector = prev.callPackage (./pkgs/genvalidity-vector.nix) { };

    ghc-byteorder = prev.callPackage (./pkgs/ghc-byteorder.nix) { };

    ghc-check = prev.callPackage (./pkgs/ghc-check.nix) { };

    ghc-exactprint = prev.callPackage (./pkgs/ghc-exactprint.nix) { };

    ghc-lib-parser = prev.callPackage (./pkgs/ghc-lib-parser.nix) { };

    ghc-lib-parser-ex = prev.callPackage (./pkgs/ghc-lib-parser-ex.nix) { };

    ghc-paths = prev.callPackage (./pkgs/ghc-paths.nix) { };

    ghc-tcplugins-extra = prev.callPackage (./pkgs/ghc-tcplugins-extra.nix) { };

    hackage-security = prev.callPackage (./pkgs/hackage-security.nix) { };

    hashable = prev.callPackage (./pkgs/hashable.nix) { };

    hashing = prev.callPackage (./pkgs/hashing.nix) { };

    hashtables = prev.callPackage (./pkgs/hashtables.nix) { };

    haskell-src-meta = prev.callPackage (./pkgs/haskell-src-meta.nix) { };

    hedgehog = prev.callPackage (./pkgs/hedgehog.nix) { };

    hedgehog-golden = prev.callPackage (./pkgs/hedgehog-golden.nix) { };

    hie-compat = prev.callPackage (./pkgs/hie-compat.nix) { };

    hiedb = prev.callPackage (./pkgs/hiedb.nix) { };

    hlint = prev.callPackage (./pkgs/hlint.nix) { };

    hnix = prev.callPackage (./pkgs/hnix.nix) { };

    horizon-gen-nix = prev.callPackage (./pkgs/horizon-gen-nix.nix) { };

    hourglass = prev.callPackage (./pkgs/hourglass.nix) { };

    hpack = prev.callPackage (./pkgs/hpack.nix) { };

    hslua-aeson = prev.callPackage (./pkgs/hslua-aeson.nix) { };

    hspec = prev.callPackage (./pkgs/hspec.nix) { };

    hspec-core = prev.callPackage (./pkgs/hspec-core.nix) { };

    hspec-discover = prev.callPackage (./pkgs/hspec-discover.nix) { };

    hspec-meta = prev.callPackage (./pkgs/hspec-meta.nix) { };

    http-client = prev.callPackage (./pkgs/http-client.nix) { };

    http-date = prev.callPackage (./pkgs/http-date.nix) { };

    http-types = prev.callPackage (./pkgs/http-types.nix) { };

    http2 = prev.callPackage (./pkgs/http2.nix) { };

    incipit-base = prev.callPackage (./pkgs/incipit-base.nix) { };

    incipit-core = prev.callPackage (./pkgs/incipit-core.nix) { };

    indexed-traversable = prev.callPackage (./pkgs/indexed-traversable.nix) { };

    indexed-traversable-instances = prev.callPackage (./pkgs/indexed-traversable-instances.nix) { };

    infer-license = prev.callPackage (./pkgs/infer-license.nix) { };

    integer-logarithms = prev.callPackage (./pkgs/integer-logarithms.nix) { };

    invariant = prev.callPackage (./pkgs/invariant.nix) { };

    iproute = prev.callPackage (./pkgs/iproute.nix) { };

    lens = prev.callPackage (./pkgs/lens.nix) { };

    lens-aeson = prev.callPackage (./pkgs/lens-aeson.nix) { };

    lens-family-th = prev.callPackage (./pkgs/lens-family-th.nix) { };

    lifted-async = prev.callPackage (./pkgs/lifted-async.nix) { };

    linear = prev.callPackage (./pkgs/linear.nix) { };

    lsp = prev.callPackage (./pkgs/lsp.nix) { };

    lsp-types = prev.callPackage (./pkgs/lsp-types.nix) { };

    lucid = prev.callPackage (./pkgs/lucid.nix) { };

    memory = prev.callPackage (./pkgs/memory.nix) { };

    monad-par = prev.callPackage (./pkgs/monad-par.nix) { };

    monoid-subclasses = prev.callPackage (./pkgs/monoid-subclasses.nix) { };

    net-mqtt = prev.callPackage (./pkgs/net-mqtt.nix) { };

    network-byte-order = prev.callPackage (./pkgs/network-byte-order.nix) { };

    newtype-generics = prev.callPackage (./pkgs/newtype-generics.nix) { };

    nothunks = prev.callPackage (./pkgs/nothunks.nix) { };

    optics = prev.callPackage (./pkgs/optics.nix) { };

    optics-core = prev.callPackage (./pkgs/optics-core.nix) { };

    optics-extra = prev.callPackage (./pkgs/optics-extra.nix) { };

    optics-th = prev.callPackage (./pkgs/optics-th.nix) { };

    pandoc = prev.callPackage (./pkgs/pandoc.nix) { };

    parallel = prev.callPackage (./pkgs/parallel.nix) { };

    pcg-random = prev.callPackage (./pkgs/pcg-random.nix) { };

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

    postgresql-simple = prev.callPackage (./pkgs/postgresql-simple.nix) { };

    pretty-simple = prev.callPackage (./pkgs/pretty-simple.nix) { };

    prettyprinter-ansi-terminal = prev.callPackage (./pkgs/prettyprinter-ansi-terminal.nix) { };

    primitive = prev.callPackage (./pkgs/primitive.nix) { };

    proteaaudio-sdl = prev.callPackage (./pkgs/proteaaudio-sdl.nix) { };

    quickcheck-dynamic = prev.callPackage (./pkgs/quickcheck-dynamic.nix) { };

    quickcheck-instances = prev.callPackage (./pkgs/quickcheck-instances.nix) { };

    rebase = prev.callPackage (./pkgs/rebase.nix) { };

    relude = prev.callPackage (./pkgs/relude.nix) { };

    rerebase = prev.callPackage (./pkgs/rerebase.nix) { };

    retry = prev.callPackage (./pkgs/retry.nix) { };

    rope-utf16-splay = prev.callPackage (./pkgs/rope-utf16-splay.nix) { };

    safe-coloured-text = prev.callPackage (./pkgs/safe-coloured-text.nix) { };

    saltine = prev.callPackage (./pkgs/saltine.nix) { };

    scientific = prev.callPackage (./pkgs/scientific.nix) { };

    scotty = prev.callPackage (./pkgs/scotty.nix) { };

    sdl2 = prev.callPackage (./pkgs/sdl2.nix) { };

    sdl2-gfx = prev.callPackage (./pkgs/sdl2-gfx.nix) { };

    sdl2-image = prev.callPackage (./pkgs/sdl2-image.nix) { };

    sdl2-mixer = prev.callPackage (./pkgs/sdl2-mixer.nix) { };

    sdl2-ttf = prev.callPackage (./pkgs/sdl2-ttf.nix) { };

    semialign = prev.callPackage (./pkgs/semialign.nix) { };

    serialise = prev.callPackage (./pkgs/serialise.nix) { };

    servant = prev.callPackage (./pkgs/servant.nix) { };

    servant-client = prev.callPackage (./pkgs/servant-client.nix) { };

    servant-client-core = prev.callPackage (./pkgs/servant-client-core.nix) { };

    servant-foreign = prev.callPackage (./pkgs/servant-foreign.nix) { };

    servant-lucid = prev.callPackage (./pkgs/servant-lucid.nix) { };

    servant-multipart = prev.callPackage (./pkgs/servant-multipart.nix) { };

    servant-multipart-api = prev.callPackage (./pkgs/servant-multipart-api.nix) { };

    shake = prev.callPackage (./pkgs/shake.nix) { };

    shelly = prev.callPackage (./pkgs/shelly.nix) { };

    singleton-bool = prev.callPackage (./pkgs/singleton-bool.nix) { };

    singletons = prev.callPackage (./pkgs/singletons.nix) { };

    some = prev.callPackage (./pkgs/some.nix) { };

    sop-core = prev.callPackage (./pkgs/sop-core.nix) { };

    split = prev.callPackage (./pkgs/split.nix) { };

    streaming-commons = prev.callPackage (./pkgs/streaming-commons.nix) { };

    string-interpolate = prev.callPackage (./pkgs/string-interpolate.nix) { };

    string-qq = prev.callPackage (./pkgs/string-qq.nix) { };

    stylish-haskell = prev.callPackage (./pkgs/stylish-haskell.nix) { };

    syb = prev.callPackage (./pkgs/syb.nix) { };

    sydtest = prev.callPackage (./pkgs/sydtest.nix) { };

    sydtest-discover = prev.callPackage (./pkgs/sydtest-discover.nix) { };

    tasty = prev.callPackage (./pkgs/tasty.nix) { };

    tasty-discover = prev.callPackage (./pkgs/tasty-discover.nix) { };

    tasty-hedgehog = prev.callPackage (./pkgs/tasty-hedgehog.nix) { };

    tasty-hunit = prev.callPackage (./pkgs/tasty-hunit.nix) { };

    tasty-wai = prev.callPackage (./pkgs/tasty-wai.nix) { };

    text-metrics = prev.callPackage (./pkgs/text-metrics.nix) { };

    text-zipper = prev.callPackage (./pkgs/text-zipper.nix) { };

    th-extras = prev.callPackage (./pkgs/th-extras.nix) { };

    th-lift-instances = prev.callPackage (./pkgs/th-lift-instances.nix) { };

    these = prev.callPackage (./pkgs/these.nix) { };

    tidal = prev.callPackage (./pkgs/tidal.nix) { };

    time-compat = prev.callPackage (./pkgs/time-compat.nix) { };

    type-equality = prev.callPackage (./pkgs/type-equality.nix) { };

    type-errors = prev.callPackage (./pkgs/type-errors.nix) { };

    type-errors-pretty = prev.callPackage (./pkgs/type-errors-pretty.nix) { };

    unicode-collation = prev.callPackage (./pkgs/unicode-collation.nix) { };

    unicode-data = prev.callPackage (./pkgs/unicode-data.nix) { };

    unicode-transforms = prev.callPackage (./pkgs/unicode-transforms.nix) { };

    unordered-containers = prev.callPackage (./pkgs/unordered-containers.nix) { };

    vault = prev.callPackage (./pkgs/vault.nix) { };

    vector = prev.callPackage (./pkgs/vector.nix) { };

    vector-algorithms = prev.callPackage (./pkgs/vector-algorithms.nix) { };

    vinyl = prev.callPackage (./pkgs/vinyl.nix) { };

    vty = prev.callPackage (./pkgs/vty.nix) { };

    wai-middleware-static = prev.callPackage (./pkgs/wai-middleware-static.nix) { };

    warp = prev.callPackage (./pkgs/warp.nix) { };

    warp-tls = prev.callPackage (./pkgs/warp-tls.nix) { };

    with-utf8 = prev.callPackage (./pkgs/with-utf8.nix) { };

    witherable = prev.callPackage (./pkgs/witherable.nix) { };

    xml-conduit = prev.callPackage (./pkgs/xml-conduit.nix) { };

}
