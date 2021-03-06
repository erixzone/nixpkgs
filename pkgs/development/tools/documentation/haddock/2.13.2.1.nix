{ cabal, alex, Cabal, deepseq, filepath, ghcPaths, happy, xhtml }:

cabal.mkDerivation (self: {
  pname = "haddock";
  version = "2.13.2.1";
  sha256 = "0kpk3bmlyd7cb6s39ix8s0ak65xhrln9mg481y3h24lf5syy5ky9";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [ Cabal deepseq filepath ghcPaths xhtml ];
  testDepends = [ Cabal deepseq filepath ];
  buildTools = [ alex happy ];
  doCheck = false;
  meta = {
    homepage = "http://www.haskell.org/haddock/";
    description = "A documentation-generation tool for Haskell libraries";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
