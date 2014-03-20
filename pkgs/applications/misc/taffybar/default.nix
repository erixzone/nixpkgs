{ cabal, cairo, dbus, dyre, filepath, gtk, gtkTraymanager
, HStringTemplate, HTTP, mtl, network, parsec, split, stm, text
, time, transformers, utf8String, X11, xdgBasedir, xmonad
, xmonadContrib
}:

cabal.mkDerivation (self: {
  pname = "taffybar";
  version = "0.3.0";
  sha256 = "02vpfbwfprca997ykk746ih7id0ls3i5pnb33gj3nrfgc59fkz7v";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    cairo dbus dyre filepath gtk gtkTraymanager HStringTemplate HTTP
    mtl network parsec split stm text time transformers utf8String X11
    xdgBasedir xmonad xmonadContrib
  ];
  pkgconfigDepends = [ gtk ];
  meta = {
    homepage = "http://github.com/travitch/taffybar";
    description = "A desktop bar similar to xmobar, but with more GUI";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})