package mpl;

import java.nio.charset.StandardCharsets;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.Security;
import java.security.Signature;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import java.util.Base64;

/**
 * Self-test for the Soter export signature (RSASSA-PSS, SHA-256, MGF1-SHA-256, salt 20).
 * Mirrors App's provider setup (BouncyCastle is registered there) and prints every
 * candidate algorithm so the platform's capability is visible.
 */
public final class PssSelfTest {
    public static void main(String[] args) {
        try {
            try {
                Class<?> bc = Class.forName("org.bouncycastle.jce.provider.BouncyCastleProvider");
                Security.addProvider((java.security.Provider) bc.getDeclaredConstructor().newInstance());
                System.out.println("BC=registered");
            } catch (Throwable error) {
                System.out.println("BC=missing " + error);
            }
            PSSParameterSpec spec = new PSSParameterSpec(
                    "SHA-256", "MGF1", MGF1ParameterSpec.SHA256, 20, 1);
            String[] algorithms = {"RSASSA-PSS", "SHA256withRSA/PSS"};
            for (int i = 0; i < algorithms.length; i++) {
                try {
                    Signature probe = Signature.getInstance(algorithms[i]);
                    probe.setParameter(spec);
                    System.out.println("ALG_OK=" + algorithms[i] + " provider=" + probe.getProvider().getName());
                } catch (Throwable error) {
                    System.out.println("ALG_FAIL=" + algorithms[i] + " " + error);
                }
            }
            try {
                Signature bcProbe = Signature.getInstance("RSASSA-PSS", "BC");
                bcProbe.setParameter(spec);
                System.out.println("BC_PSS=OK provider=" + bcProbe.getProvider().getName());
            } catch (Throwable error) {
                System.out.println("BC_PSS=FAIL " + error);
            }
            KeyPairGenerator generator = KeyPairGenerator.getInstance("RSA");
            generator.initialize(2048);
            KeyPair pair = generator.generateKeyPair();
            byte[] json = ("{\"pub_key\":\"TESTKEY\",\"counter\":1,"
                    + "\"cpu_id\":\"0123456789abcdef\",\"uid\":10048}")
                    .getBytes(StandardCharsets.UTF_8);
            byte[] signature = null;
            try {
                signature = PssSigner.sign(pair.getPrivate(), json, 20);
                System.out.println("SIGN_WITH=PssSigner salt=20");
            } catch (Throwable error) {
                System.out.println("SIGN_PSS20_FAIL=" + error);
            }
            if (signature == null) {
                System.out.println("PSS_OK=false reason=no_pss_signer");
                return;
            }
            Signature verifier = null;
            try {
                verifier = Signature.getInstance("RSASSA-PSS", "BC");
            } catch (Throwable ignored) {
                verifier = Signature.getInstance("SHA256withRSA/PSS");
            }
            verifier.setParameter(spec);
            verifier.initVerify(pair.getPublic());
            verifier.update(json);
            Base64.Encoder b64 = Base64.getEncoder();
            System.out.println("PSS_OK=" + verifier.verify(signature));
            System.out.println("SIG_LEN=" + signature.length);
            System.out.println("PUB=" + b64.encodeToString(pair.getPublic().getEncoded()));
            System.out.println("JSON=" + b64.encodeToString(json));
            System.out.println("SIG=" + b64.encodeToString(signature));
        } catch (Throwable error) {
            error.printStackTrace(System.out);
        }
    }
}
