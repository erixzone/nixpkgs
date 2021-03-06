{ cabal, random }:

cabal.mkDerivation (self: {
  pname = "edit-distance";
  version = "0.2.1.2";
  sha256 = "08dxsp1ar8mr4xrjy37lzl0s1rjnqsdq30p09nclip5pyhcw7g44";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [ random ];
  meta = {
    homepage = "http://github.com/batterseapower/edit-distance";
    description = "Levenshtein and restricted Damerau-Levenshtein edit distances";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
