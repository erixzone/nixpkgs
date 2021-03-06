{ cabal, bifunctors, mtl, profunctors, semigroupoids, semigroups
, transformers, vector
}:

cabal.mkDerivation (self: {
  pname = "these";
  version = "0.4.2";
  sha256 = "0hs59i07k1lkynvdpymjvl1va2frc3aq6wyrmbi7mz3vmz0bjcp7";
  buildDepends = [
    bifunctors mtl profunctors semigroupoids semigroups transformers
    vector
  ];
  jailbreak = true;
  meta = {
    homepage = "https://github.com/isomorphism/these";
    description = "An either-or-both data type, with corresponding hybrid error/writer monad transformer";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
