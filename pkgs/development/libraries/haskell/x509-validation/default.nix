{ cabal, asn1Encoding, asn1Types, byteable, cryptohash
, cryptoPubkey, cryptoPubkeyTypes, dataDefaultClass, filepath, mtl
, network, pem, time, x509, x509Store
}:

cabal.mkDerivation (self: {
  pname = "x509-validation";
  version = "1.5.0";
  sha256 = "1xarn00ipi77whly5yjlpqa0xd25lj0jf4xk8ylp4ba58hvcxqrn";
  buildDepends = [
    asn1Encoding asn1Types byteable cryptohash cryptoPubkey
    cryptoPubkeyTypes dataDefaultClass filepath mtl network pem time
    x509 x509Store
  ];
  meta = {
    homepage = "http://github.com/vincenthz/hs-certificate";
    description = "X.509 Certificate and CRL validation";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
