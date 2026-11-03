package mpl;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.security.interfaces.RSAPrivateKey;
import javax.crypto.Cipher;

/**
 * RSASSA-PSS (EMSA-PSS) with an explicit salt length, implemented directly because
 * Android's "SHA256withRSA/PSS" ignores PSSParameterSpec and always uses
 * salt = digest length (verified on device: a Java-produced signature only verifies
 * with salt 32). The stock Soter TA uses salt 20 with SHA-256 and emBits = 2047,
 * so the encoding is done here and the raw RSA operation goes through
 * Cipher("RSA/ECB/NoPadding") in decrypt mode (signature = EM^d mod n).
 */
public final class PssSigner {
    private PssSigner() {
    }

    public static byte[] sign(PrivateKey key, byte[] message, int saltLength) throws Exception {
        if (!(key instanceof RSAPrivateKey)) {
            throw new IllegalArgumentException("RSAPrivateKey required");
        }
        RSAPrivateKey rsa = (RSAPrivateKey) key;
        int modulusBits = rsa.getModulus().bitLength();
        int emBits = modulusBits - 1;
        int emLen = (emBits + 7) / 8;

        MessageDigest sha256 = MessageDigest.getInstance("SHA-256");
        byte[] mHash = sha256.digest(message);
        int hLen = mHash.length;
        if (emLen < hLen + saltLength + 2) {
            throw new IllegalArgumentException("encoding error: emLen too small");
        }

        byte[] salt = new byte[saltLength];
        new SecureRandom().nextBytes(salt);

        byte[] mPrime = new byte[8 + hLen + saltLength];
        System.arraycopy(mHash, 0, mPrime, 8, hLen);
        System.arraycopy(salt, 0, mPrime, 8 + hLen, saltLength);
        byte[] h = sha256.digest(mPrime);

        byte[] db = new byte[emLen - hLen - 1];
        int psLen = db.length - saltLength - 1;
        db[psLen] = 0x01;
        System.arraycopy(salt, 0, db, psLen + 1, saltLength);

        byte[] dbMask = mgf1(h, db.length);
        byte[] maskedDb = new byte[db.length];
        for (int i = 0; i < db.length; i++) {
            maskedDb[i] = (byte) (db[i] ^ dbMask[i]);
        }
        int clearBits = 8 * emLen - emBits;
        if (clearBits > 0) {
            maskedDb[0] &= (byte) (0xff >>> clearBits);
        }

        byte[] encoded = new byte[emLen];
        System.arraycopy(maskedDb, 0, encoded, 0, maskedDb.length);
        System.arraycopy(h, 0, encoded, maskedDb.length, hLen);
        encoded[emLen - 1] = (byte) 0xbc;

        Cipher cipher = Cipher.getInstance("RSA/ECB/NoPadding");
        cipher.init(Cipher.DECRYPT_MODE, key);
        byte[] signature = cipher.doFinal(encoded);
        if (signature.length < emLen) {
            byte[] padded = new byte[emLen];
            System.arraycopy(signature, 0, padded, emLen - signature.length, signature.length);
            signature = padded;
        }
        return signature;
    }

    private static byte[] mgf1(byte[] seed, int length) throws Exception {
        MessageDigest sha256 = MessageDigest.getInstance("SHA-256");
        byte[] out = new byte[length];
        int offset = 0;
        for (int counter = 0; offset < length; counter++) {
            sha256.reset();
            sha256.update(seed);
            sha256.update(new byte[]{
                    (byte) (counter >>> 24), (byte) (counter >>> 16),
                    (byte) (counter >>> 8), (byte) counter});
            byte[] block = sha256.digest();
            int take = Math.min(block.length, length - offset);
            System.arraycopy(block, 0, out, offset, take);
            offset += take;
        }
        return out;
    }
}
