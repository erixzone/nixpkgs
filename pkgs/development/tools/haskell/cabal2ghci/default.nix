{ cabal, Cabal, cmdargs, stylishHaskell, systemFileio
, systemFilepath, text, unorderedContainers, yaml
}:

cabal.mkDerivation (self: {
  pname = "cabal2ghci";
  version = "0.0.1.1";
  sha256 = "1fg3pr25f78a6b8nqxvxki4z3fvgx4i6zkmpl992a0iarycqdrsg";
  isLibrary = false;
  isExecutable = true;
  buildDepends = [
    Cabal cmdargs stylishHaskell systemFileio systemFilepath text
    unorderedContainers yaml
  ];
  jailbreak = true;
  meta = {
    description = "A tool to generate .ghci file from .cabal";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
