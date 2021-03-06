{ cabal, cereal, lens, quickcheckInstances, tasty, tastyQuickcheck
, text, time, vector
}:

cabal.mkDerivation (self: {
  pname = "safecopy";
  version = "0.8.3";
  sha256 = "10xd42a1i84fwiy3db0ji4bd8ssk9jqysqwc00wdcdjyp50c333n";
  buildDepends = [ cereal text time vector ];
  testDepends = [
    cereal lens quickcheckInstances tasty tastyQuickcheck time vector
  ];
  meta = {
    homepage = "http://acid-state.seize.it/safecopy";
    description = "Binary serialization with version control";
    license = self.stdenv.lib.licenses.publicDomain;
    platforms = self.ghc.meta.platforms;
  };
})
