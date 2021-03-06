{ cabal, deepseq, filepath }:

cabal.mkDerivation (self: {
  pname = "process";
  version = "1.2.0.0";
  sha256 = "02il5pxibf0q9b46v0lgdxyc2wlk5kg1v8223ry6brg41zpcj71q";
  buildDepends = [ deepseq filepath ];
  meta = {
    description = "Process libraries";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.thoughtpolice ];
  };
})
