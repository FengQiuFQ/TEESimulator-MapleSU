package mpl;

import android.os.Parcel;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/** On-device verifier probe: touches every patched method so ART verifies it. */
public final class VerifyProbe {
    /** Counts every VerifyError the reflective calls surface (must stay 0). */
    private static int verifyFailures;
    /** Icon-loading diagnostic, persisted by {@link #markDone()}. */
    private static String diag;
    /** Result of the SoterInjector link test, persisted by {@link #markDone()}. */
    private static String statusLine;
    /** Every probe line, persisted by {@link #markDone()}. */
    private static final StringBuilder trail = new StringBuilder(8192);

    /**
     * Single output path: logcat for live viewing plus an in-memory trail.
     *
     * <p>logd rate-limits a fast burst from the shell uid and silently drops the tail of
     * it, so the tail of a 60-line probe run can be missing from logcat. The trail is
     * written to /data/local/tmp by {@link #markDone()}, which makes the file - not
     * logcat - the evidence.</p>
     */
    private static void log(String message) {
        trail.append(message).append('\n');
        try {
            android.util.Log.i("VERIFYPROBE", message);
        } catch (Throwable ignored) {
            // logging must never fail the probe
        }
    }
    private static Object zero(Class<?> t) {
        if (!t.isPrimitive()) return null;
        if (t == int.class) return Integer.valueOf(0);
        if (t == long.class) return Long.valueOf(0L);
        if (t == boolean.class) return Boolean.FALSE;
        if (t == byte.class) return Byte.valueOf((byte) 0);
        if (t == short.class) return Short.valueOf((short) 0);
        if (t == char.class) return Character.valueOf('\0');
        if (t == float.class) return Float.valueOf(0f);
        return Double.valueOf(0d);
    }

    private static void tryInvoke(String cls, String name, Object recv, Class<?>[] sig, Object[] args) {
        try {
            Class<?> c = Class.forName(cls);
            Method m = c.getDeclaredMethod(name, sig);
            m.setAccessible(true);
            try {
                m.invoke(recv, args);
                log(name + " -> ok");
            } catch (Throwable t) {
                Throwable r = t;
                while (r.getCause() != null) r = r.getCause();
                if (r instanceof VerifyError) verifyFailures++;
                log(name + " -> " + r.getClass().getSimpleName()
                        + (r instanceof VerifyError ? "  <<< VERIFY FAIL" : ""));
            }
        } catch (Throwable t) {
            log(name + " -> lookup fail " + t.getClass().getSimpleName());
        }
    }


    private static Object alloc(String cls) {        try {
            Class<?> u = Class.forName("sun.misc.Unsafe");
            java.lang.reflect.Field f = u.getDeclaredField("theUnsafe");
            f.setAccessible(true);
            Object unsafe = f.get(null);
            java.lang.reflect.Method m = u.getMethod("allocateInstance", Class.class);
            return m.invoke(unsafe, Class.forName(cls));
        } catch (Throwable t) {
            log("alloc(" + cls + ") fail " + t);
            return null;
        }
    }

    // ------------------------------------------------------------------ SOTER round trip

    private static final String SOTER_DESCRIPTOR = "com.tencent.soter.soterserver.ISoterService";

    private static Parcel soterData(int code, int uid, String a, String b, long session) {
        Parcel p = Parcel.obtain();
        p.writeInterfaceToken(SOTER_DESCRIPTOR);
        switch (code) {
            case 4:
            case 5:
            case 8:
                p.writeInt(uid);
                p.writeString(a);
                break;
            case 6:
                p.writeInt(uid);
                p.writeString(a);
                break;
            case 9:
                p.writeInt(uid);
                p.writeString(a);
                p.writeString(b);
                break;
            case 10:
                p.writeLong(session);
                break;
            case 11:
            case 12:
                break;
            case 13:
                p.writeString(a);
                break;
            default:
                p.writeInt(uid);
                break;
        }
        p.setDataPosition(0);
        return p;
    }

    /** Invoke w4.e.onPreTransact for one transaction and return the reply Parcel rewound. */
    private static Parcel soterCall(int code, Parcel data) throws Exception {
        Object r = soterFetch(code, 0, data);
        java.lang.reflect.Field f = r.getClass().getField("a");
        Parcel reply = (Parcel) f.get(r);
        reply.setDataPosition(0);
        return reply;
    }

    /** Same call, but with an explicit callingUid (p6) and the raw result object. */
    private static Object soterFetch(int code, int callingUid, Parcel data) throws Exception {
        Class<?> c = Class.forName("w4.e");
        Object inst = c.getField("a").get(null);
        Method m = c.getMethod("onPreTransact", long.class, android.os.IBinder.class,
                int.class, int.class, int.class, int.class, Parcel.class);
        return m.invoke(inst, Long.valueOf(0L), new android.os.Binder(),
                Integer.valueOf(code), Integer.valueOf(0), Integer.valueOf(callingUid),
                Integer.valueOf(0), data);
    }

    private static String body(byte[] blob) {
        try {
            if (blob == null || blob.length < 4) {
                return null;
            }
            int len = (blob[0] & 0xff) | ((blob[1] & 0xff) << 8)
                    | ((blob[2] & 0xff) << 16) | ((blob[3] & 0xff) << 24);
            return new String(blob, 4, len, "UTF-8");
        } catch (Throwable t) {
            return null;
        }
    }

    /** uid in a forged Soter JSON blob; Integer.MIN_VALUE when absent. */
    private static int jsonUid(String json) {
        if (json == null) {
            return Integer.MIN_VALUE;
        }
        try {
            int i = json.lastIndexOf("\"uid\":");
            if (i < 0) {
                return Integer.MIN_VALUE;
            }
            int j = i + 6;
            int k = j;
            if (k < json.length() && json.charAt(k) == '-') {
                k++;
            }
            int start = k;
            while (k < json.length() && Character.isDigit(json.charAt(k))) {
                k++;
            }
            if (k == start) {
                return Integer.MIN_VALUE;
            }
            return Integer.parseInt(json.substring(j, k));
        } catch (Throwable t) {
            return Integer.MIN_VALUE;
        }
    }

    private static boolean verifyAuth(byte[] data, byte[] sig) {
        return verifyAuthFor(10393, "duck_probe", data, sig);
    }

    /**
     * Verify {@code sig} over {@code data} with the public key the AuthKey blob for
     * {@code (uid, alias)} advertises.
     *
     * <p>Parity note: the AuthKey is per (uid, alias) now, so "does finishSign sign the
     * challenge" has to name the alias the session was opened for - the old global AuthKey no
     * longer exists.</p>
     */
    private static boolean verifyAuthFor(int uid, String alias, byte[] data, byte[] sig) {
        try {
            return verifyWithPub(body(mpl.SoterForge.authBlobFor(uid, alias, uid)), data, sig);
        } catch (Throwable t) {
            log("SOTER verify failed: " + t);
            return false;
        }
    }

    /** Signature check against the {@code pub_key} embedded in a forged JSON body. */
    private static boolean verifyWithPub(String json, byte[] data, byte[] sig) {
        try {
            if (json == null || sig == null || data == null) {
                return false;
            }
            String b64 = json.substring(json.indexOf("pub_key\":\"") + 10,
                    json.indexOf("\",\"counter"));
            java.security.PublicKey pub = java.security.KeyFactory.getInstance("RSA")
                    .generatePublic(new java.security.spec.X509EncodedKeySpec(
                            android.util.Base64.decode(b64, android.util.Base64.DEFAULT)));
            java.security.Signature sv = java.security.Signature.getInstance("SHA256withRSA");
            sv.initVerify(pub);
            sv.update(data);
            return sv.verify(sig);
        } catch (Throwable t) {
            log("SOTER verify failed: " + t);
            return false;
        }
    }

    /** {@code pub_key} of a forged JSON body, or null. */
    private static String jsonPubKey(String json) {
        if (json == null) {
            return null;
        }
        try {
            int i = json.indexOf("pub_key\":\"");
            int j = json.indexOf("\",\"counter");
            if (i < 0 || j <= i) {
                return null;
            }
            return json.substring(i + 10, j);
        } catch (Throwable t) {
            return null;
        }
    }

    /**
     * Real-Parcel round trip through {@code w4.e}: proves the AIDL reply layout, that
     * getAuthKey returns a *different* key, that getDeviceId is no longer the literal
     * placeholder, and - the p16l fix - that finishSign signs the initSigh challenge.
     */
    private static void soterRoundTrip() {
        String challenge = "duck-probe-challenge-7f3a";
        try {
            int uid = 10393;
            Parcel r1 = soterCall(1, soterData(1, uid, null, null, 0L));
            log("SOTER tx1 generateAppSecureKey ex=" + r1.readInt()
                    + " rc=" + r1.readInt());

            Parcel r3 = soterCall(3, soterData(3, uid, null, null, 0L));
            int ex3 = r3.readInt();
            log("SOTER tx3 hasAskAlready ex=" + ex3
                    + " value=" + r3.readInt());

            Parcel r2 = soterCall(2, soterData(2, uid, null, null, 0L));
            int ex2 = r2.readInt();
            int p2 = r2.readInt();
            int rc2 = r2.readInt();
            byte[] ask = r2.createByteArray();
            int len2 = r2.readInt();
            String askJson = body(ask);
            log("SOTER tx2 getAppSecureKey ex=" + ex2
                    + " presence=" + p2 + " rc=" + rc2
                    + " bytes=" + (ask == null ? -1 : ask.length) + " len=" + len2);
            log("SOTER tx2 json=" + askJson);
            log("SOTER tx2 uidInBlob=" + jsonUid(askJson)
                    + " requested=" + uid + " match=" + (jsonUid(askJson) == uid));

            // Parity: getAuthKey no longer invents a key for an alias that was never generated
            // (an absent alias is -1000 with empty exportData), so the probe does what a real
            // client does - generate the AuthKey first.
            Parcel r4 = soterCall(4, soterData(4, uid, "duck_probe", null, 0L));
            log("SOTER tx4 generateAuthKey ex=" + r4.readInt() + " rc=" + r4.readInt());

            Parcel r6 = soterCall(6, soterData(6, uid, "duck_probe", null, 0L));
            int ex6 = r6.readInt();
            int p6 = r6.readInt();
            int rc6 = r6.readInt();
            byte[] auth = r6.createByteArray();
            int len6 = r6.readInt();
            String authJson = body(auth);
            log("SOTER tx6 getAuthKey ex=" + ex6
                    + " presence=" + p6 + " rc=" + rc6
                    + " bytes=" + (auth == null ? -1 : auth.length) + " len=" + len6);
            log("SOTER ASK/AuthKey differ="
                    + (askJson != null && authJson != null && !askJson.equals(authJson)));
            log("SOTER tx6 uidInBlob=" + jsonUid(authJson)
                    + " requested=" + uid + " match=" + (jsonUid(authJson) == uid));

            Parcel r9 = soterCall(9, soterData(9, uid, "duck_probe", challenge, 0L));
            int ex9 = r9.readInt();
            int p9 = r9.readInt();
            long session = r9.readLong();
            int rc9 = r9.readInt();
            log("SOTER tx9 initSigh ex=" + ex9 + " presence=" + p9
                    + " session=" + session + " rc=" + rc9);

            Parcel r10 = soterCall(10, soterData(10, uid, null, null, session));
            int ex10 = r10.readInt();
            int p10 = r10.readInt();
            int rc10 = r10.readInt();
            byte[] sig = r10.createByteArray();
            int len10 = r10.readInt();
            log("SOTER tx10 finishSign ex=" + ex10
                    + " presence=" + p10 + " rc=" + rc10
                    + " sig=" + (sig == null ? -1 : sig.length) + " len=" + len10);
            log("SOTER tx10 signs initSigh challenge: "
                    + verifyAuthFor(uid, "duck_probe", challenge.getBytes("UTF-8"), sig));

            Parcel r11 = soterCall(11, soterData(11, uid, null, null, 0L));
            int ex11 = r11.readInt();
            int p11 = r11.readInt();
            int rc11 = r11.readInt();
            byte[] dev = r11.createByteArray();
            int len11 = r11.readInt();
            String devStr = dev == null ? "null" : new String(dev, "UTF-8");
            log("SOTER tx11 getDeviceId ex=" + ex11
                    + " presence=" + p11 + " rc=" + rc11
                    + " value=" + devStr + " placeholder="
                    + "TEESIM-SOTER-0001".equals(devStr) + " len=" + len11);

            Parcel r12 = soterCall(12, soterData(12, uid, null, null, 0L));
            log("SOTER tx12 getVersion ex=" + r12.readInt()
                    + " value=" + r12.readInt());

            Parcel r13 = soterCall(13, soterData(13, uid, "key", null, 0L));
            log("SOTER tx13 getExtraParam ex=" + r13.readInt());
        } catch (Throwable t) {
            log("SOTER round trip failed: " + t);
        }
    }

    // ------------------------------------------------------------------ Soter uid source (p16n)

    /**
     * p16n: the ASK/AuthKey reply uid must come from the request Parcel (the AIDL argument),
     * and any parcel the forge cannot parse must fall back to {@code Binder.getCallingUid()}
     * *without* throwing - a throw out of {@code onPreTransact} would hand the transaction to
     * the real (TA-less) service.
     *
     * <p>Cases 1 and 2 are the positive proof: the parcel says 10494, the probe process is
     * uid 2000, so a reply carrying 10494 can only have read the parcel. Cases 3-5 are the
     * exception-safety proof: foreign token, truncated payload and a null Parcel all answer
     * with the binder uid and a well-formed blob.</p>
     */
    private static void soterUidFallback() {
        int callingUid;
        try {
            callingUid = android.os.Binder.getCallingUid();
        } catch (Throwable t) {
            callingUid = -1;
        }
        try {
            Parcel reply = soterCall(2, soterData(2, 10494, null, null, 0L));
            reply.readInt();
            reply.readInt();
            reply.readInt();
            int got = jsonUid(body(reply.createByteArray()));
            log("SOTER uid parcel ask=10494 got=" + got
                    + " match=" + (got == 10494));
        } catch (Throwable t) {
            log("SOTER uid parcel ask threw " + t);
        }
        try {
            // Parity: an AuthKey has to exist before getAuthKey will export one.
            soterCall(4, soterData(4, 10494, "alias_probe", null, 0L));
            Parcel reply = soterCall(6, soterData(6, 10494, "alias_probe", null, 0L));
            reply.readInt();
            reply.readInt();
            reply.readInt();
            int got = jsonUid(body(reply.createByteArray()));
            log("SOTER uid parcel auth=10494 got=" + got
                    + " match=" + (got == 10494));
        } catch (Throwable t) {
            log("SOTER uid parcel auth threw " + t);
        }
        try {
            Parcel data = Parcel.obtain();
            data.writeString("com.example.NotSoter");
            data.writeInt(10494);
            data.setDataPosition(0);
            Parcel reply = soterCall(2, data);
            reply.readInt();
            reply.readInt();
            reply.readInt();
            int got = jsonUid(body(reply.createByteArray()));
            log("SOTER uid foreignToken got=" + got
                    + " expect=" + callingUid + " fallback=" + (got == callingUid));
        } catch (Throwable t) {
            log("SOTER uid foreignToken threw " + t);
        }
        try {
            Parcel data = Parcel.obtain();
            data.writeInterfaceToken(SOTER_DESCRIPTOR);
            data.setDataPosition(0);
            Parcel reply = soterCall(2, data);
            reply.readInt();
            reply.readInt();
            reply.readInt();
            int got = jsonUid(body(reply.createByteArray()));
            log("SOTER uid truncated got=" + got
                    + " expect=" + callingUid + " fallback=" + (got == callingUid));
        } catch (Throwable t) {
            log("SOTER uid truncated threw " + t);
        }
        try {
            byte[] blob = mpl.SoterForge.askBlob((android.os.Parcel) null);
            int got = jsonUid(body(blob));
            log("SOTER uid nullParcel got=" + got
                    + " expect=" + callingUid + " fallback=" + (got == callingUid)
                    + " bytes=" + (blob == null ? -1 : blob.length));
        } catch (Throwable t) {
            log("SOTER uid nullParcel threw " + t);
        }
    }

    // ------------------------------------------------------------------ Soter parity (p16x)

    /** Failed parity assertions in this run (must be 0). */
    private static int parityFailures;

    /** True when the certificate lane supplies the keys (MPL_SOTER_CERTS=on + material). */
    private static boolean identityLane() {
        try {
            return mpl.SoterForge.identityPresent("ASK");
        } catch (Throwable t) {
            return false;
        }
    }

    /** One check that a lane deliberately does not run. */
    private static void skip(String name, String why) {
        log("PARITY SKIP " + name + "  [" + why + "]");
    }

    private static void check(String name, boolean ok, String detail) {
        if (!ok) {
            parityFailures++;
        }
        log("PARITY " + (ok ? "PASS " : "FAIL ") + name
                + (detail == null || detail.length() == 0 ? "" : "  [" + detail + "]"));
    }

    /** Reply of an int transaction: {exception, resultCode}. */
    private static int[] intReply(int code, Parcel data) throws Exception {
        Parcel r = soterCall(code, data);
        return new int[]{r.readInt(), r.readInt()};
    }

    /** Reply of an export transaction: {exception, presence, rc, data, len}. */
    private static Object[] exportReply(int code, Parcel data) throws Exception {
        Parcel r = soterCall(code, data);
        int ex = r.readInt();
        int presence = r.readInt();
        int rc = r.readInt();
        byte[] payload = r.createByteArray();
        int len = r.readInt();
        return new Object[]{Integer.valueOf(ex), Integer.valueOf(presence), Integer.valueOf(rc),
                payload, Integer.valueOf(len)};
    }

    private static int exportRc(Object[] reply) {
        return ((Integer) reply[2]).intValue();
    }

    /** Never null: the SDK dereferences {@code exportData.length}. */
    private static byte[] exportData(Object[] reply) {
        byte[] data = (byte[]) reply[3];
        return data == null ? new byte[0] : data;
    }

    /** Reply of initSigh: {exception, presence, session, rc}. */
    private static Object[] sessionReply(Parcel data) throws Exception {
        Parcel r = soterCall(9, data);
        int ex = r.readInt();
        int presence = r.readInt();
        long session = r.readLong();
        int rc = r.readInt();
        return new Object[]{Integer.valueOf(ex), Integer.valueOf(presence),
                Long.valueOf(session), Integer.valueOf(rc)};
    }

    private static String shortKey(String key) {
        if (key == null) {
            return "null";
        }
        return key.length() <= 20 ? key : key.substring(0, 20) + "...";
    }

    private static String readText(java.io.File file) {
        java.io.FileInputStream in = null;
        try {
            in = new java.io.FileInputStream(file);
            byte[] buffer = new byte[(int) file.length()];
            int read = 0;
            while (read < buffer.length) {
                int n = in.read(buffer, read, buffer.length - read);
                if (n <= 0) {
                    break;
                }
                read += n;
            }
            return new String(buffer, 0, read, "UTF-8").trim();
        } catch (Throwable t) {
            return null;
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable ignored) {
                    // best effort
                }
            }
        }
    }

    private static void writeText(java.io.File file, String text) {
        java.io.FileOutputStream out = null;
        try {
            out = new java.io.FileOutputStream(file, false);
            out.write(text.getBytes("UTF-8"));
        } catch (Throwable t) {
            log("PARITY write " + file + " failed: " + t);
        } finally {
            if (out != null) {
                try {
                    out.close();
                } catch (Throwable ignored) {
                    // best effort
                }
            }
        }
    }

    /**
     * The p16x parity cases: error code space (P1-4), key registry (P0-2) and the
     * initSigh/finishSign session state machine (P0-1).
     *
     * <p>Every destructive case starts with a {@code removeAllAuthKey} reset so a second run of
     * the probe against the same registry directory sees the same preconditions. The one uid
     * that is deliberately NOT reset (10510) carries the restart proof: run 1 generates and
     * records its AuthKey, run 2 must find the same key.</p>
     */
    private static void soterParity() {
        parityFailures = 0;
        final String alias = "parity_a";
        try {
            // ---- P1-4: the error code space ------------------------------------------
            int[] r4 = intReply(4, soterData(4, 10501, "", null, 0L));
            check("tx4 generateAuthKey empty alias -> -202", r4[1] == -202, "rc=" + r4[1]);

            int[] r5 = intReply(5, soterData(5, 10501, "", null, 0L));
            check("tx5 removeAuthKey empty alias -> -202", r5[1] == -202, "rc=" + r5[1]);

            Object[] r6e = exportReply(6, soterData(6, 10501, "", null, 0L));
            check("tx6 getAuthKey empty alias -> -202 + no data",
                    exportRc(r6e) == -202 && exportData(r6e).length == 0,
                    "rc=" + exportRc(r6e) + " bytes=" + exportData(r6e).length);

            Object[] r9e = sessionReply(soterData(9, 10501, "", "c", 0L));
            check("tx9 initSigh empty alias -> -202 + session 0",
                    ((Integer) r9e[3]).intValue() == -202 && ((Long) r9e[2]).longValue() == 0L,
                    "rc=" + r9e[3] + " session=" + r9e[2]);

            Object[] r9c = sessionReply(soterData(9, 10501, alias, "", 0L));
            check("tx9 initSigh empty challenge -> -203 + session 0",
                    ((Integer) r9c[3]).intValue() == -203 && ((Long) r9c[2]).longValue() == 0L,
                    "rc=" + r9c[3] + " session=" + r9c[2]);

            Object[] r10z = exportReply(10, soterData(10, 10501, null, null, 0L));
            check("tx10 finishSign session 0 -> -204 + no data",
                    exportRc(r10z) == -204 && exportData(r10z).length == 0,
                    "rc=" + exportRc(r10z) + " bytes=" + exportData(r10z).length);

            Object[] r10u = exportReply(10, soterData(10, 10501, null, null, 0x123456789L));
            check("tx10 finishSign unknown session -> -204", exportRc(r10u) == -204,
                    "rc=" + exportRc(r10u));

            // ---- P0-2: durable key registry ------------------------------------------
            int[] reset = intReply(7, soterData(7, 10502, null, null, 0L));
            check("tx7 removeAllAuthKey -> 0", reset[1] == 0, "rc=" + reset[1]);

            int[] ask0 = intReply(3, soterData(3, 10502, null, null, 0L));
            check("hasAskAlready false right after removal", ask0[1] == 0, "value=" + ask0[1]);

            int[] genAsk = intReply(1, soterData(1, 10502, null, null, 0L));
            check("tx1 generateAppSecureKey -> 0", genAsk[1] == 0, "rc=" + genAsk[1]);

            int[] ask1 = intReply(3, soterData(3, 10502, null, null, 0L));
            check("hasAskAlready true after generate", ask1[1] == 1, "value=" + ask1[1]);

            int[] auth0 = intReply(8, soterData(8, 10502, "a1", null, 0L));
            check("hasAuthKey false before generate", auth0[1] == 0, "value=" + auth0[1]);

            int[] genAuth = intReply(4, soterData(4, 10502, "a1", null, 0L));
            check("tx4 generateAuthKey -> 0", genAuth[1] == 0, "rc=" + genAuth[1]);

            int[] auth1 = intReply(8, soterData(8, 10502, "a1", null, 0L));
            check("hasAuthKey true after generate", auth1[1] == 1, "value=" + auth1[1]);

            int[] authEmpty = intReply(8, soterData(8, 10502, "", null, 0L));
            check("hasAuthKey empty alias -> false", authEmpty[1] == 0, "value=" + authEmpty[1]);

            Object[] known = exportReply(6, soterData(6, 10502, "a1", null, 0L));
            String keyFirst = jsonPubKey(body(exportData(known)));
            check("tx6 known alias -> rc 0 + blob",
                    exportRc(known) == 0 && exportData(known).length > 0,
                    "rc=" + exportRc(known) + " bytes=" + exportData(known).length);

            int[] genAgain = intReply(4, soterData(4, 10502, "a1", null, 0L));
            String keySecond = jsonPubKey(body(exportData(
                    exportReply(6, soterData(6, 10502, "a1", null, 0L)))));
            check("generateAuthKey is idempotent (same key, no rotation)",
                    genAgain[1] == 0 && keyFirst != null && keyFirst.equals(keySecond),
                    "same=" + (keyFirst != null && keyFirst.equals(keySecond)));

            int[] removed = intReply(5, soterData(5, 10502, "a1", null, 0L));
            check("tx5 removeAuthKey -> 0", removed[1] == 0, "rc=" + removed[1]);

            int[] authAfter = intReply(8, soterData(8, 10502, "a1", null, 0L));
            check("hasAuthKey false after removal", authAfter[1] == 0, "value=" + authAfter[1]);

            Object[] gone = exportReply(6, soterData(6, 10502, "a1", null, 0L));
            check("getAuthKey after removal -> -1000 + no data",
                    exportRc(gone) == -1000 && exportData(gone).length == 0,
                    "rc=" + exportRc(gone) + " bytes=" + exportData(gone).length);

            // per-(uid, alias) keys: two aliases and the ASK must be three different keys
            intReply(4, soterData(4, 10503, "k1", null, 0L));
            intReply(4, soterData(4, 10503, "k2", null, 0L));
            String ka = jsonPubKey(body(exportData(
                    exportReply(6, soterData(6, 10503, "k1", null, 0L)))));
            String kb = jsonPubKey(body(exportData(
                    exportReply(6, soterData(6, 10503, "k2", null, 0L)))));
            String kask = jsonPubKey(body(exportData(
                    exportReply(2, soterData(2, 10503, null, null, 0L)))));
            if (identityLane()) {
                // The certificate lane answers every (uid, alias) from the one daemon-
                // provisioned identity: its chain has to match the advertised pub_key, so a
                // per-alias key is impossible there by construction (documented deviation).
                skip("per-alias AuthKeys and the ASK are three distinct keys", "identity lane");
            } else {
                check("per-alias AuthKeys and the ASK are three distinct keys",
                        ka != null && kb != null && kask != null
                                && !ka.equals(kb) && !ka.equals(kask) && !kb.equals(kask),
                        "aliasDiff=" + (ka != null && !ka.equals(kb)));
            }

            // ---- -200: a real export failure (uncreatable registry directory) --------
            if (identityLane()) {
                skip("tx2 unexportable ASK -> -200 + no data",
                        "identity lane does not read the registry");
            } else {
                mpl.SoterKeys.setDirForTest("/proc/mpl_nope");
                try {
                    Object[] broken = exportReply(2, soterData(2, 10504, null, null, 0L));
                    check("tx2 unexportable ASK -> -200 + no data",
                            exportRc(broken) == -200 && exportData(broken).length == 0,
                            "rc=" + exportRc(broken));
                } finally {
                    mpl.SoterKeys.setDirForTest(null);
                }
            }

            // ---- P0-1: the session state machine ------------------------------------
            String challenge = "parity-challenge-5c1f";
            Object[] s1 = sessionReply(soterData(9, 10505, "s1", challenge, 0L));
            long session1 = ((Long) s1[2]).longValue();
            check("initSigh success -> rc 0 + non-zero session",
                    ((Integer) s1[3]).intValue() == 0 && session1 != 0L,
                    "rc=" + s1[3] + " session=" + session1);

            Object[] signed = exportReply(10, soterData(10, 10505, null, null, session1));
            check("finishSign success -> rc 0 + 256 B signature",
                    exportRc(signed) == 0 && exportData(signed).length == 256,
                    "rc=" + exportRc(signed) + " sig=" + exportData(signed).length);
            check("finishSign signs the initSigh challenge with the alias AuthKey",
                    verifyAuthFor(10505, "s1", challenge.getBytes("UTF-8"), exportData(signed)),
                    null);

            Object[] reuse = exportReply(10, soterData(10, 10505, null, null, session1));
            check("finishSign is one-shot (same session again -> -204)",
                    exportRc(reuse) == -204, "rc=" + exportRc(reuse));

            Object[] s2 = sessionReply(soterData(9, 10505, "s1", challenge, 0L));
            long session2 = ((Long) s2[2]).longValue();
            check("session ids are non-zero and increasing",
                    session2 != 0L && session2 > session1, "s1=" + session1 + " s2=" + session2);

            mpl.SoterSvc.setTtlForTest(250L);
            Object[] s3 = sessionReply(soterData(9, 10505, "s1", challenge, 0L));
            long session3 = ((Long) s3[2]).longValue();
            Thread.sleep(700L);
            Object[] expired = exportReply(10, soterData(10, 10505, null, null, session3));
            mpl.SoterSvc.setTtlForTest(-1L);
            check("expired session -> -204",
                    ((Integer) s3[3]).intValue() == 0 && exportRc(expired) == -204,
                    "rc=" + exportRc(expired));

            mpl.SoterSvc.setCallerUidForTest(12345);
            Object[] s4 = sessionReply(soterData(9, 10506, "s1", challenge, 0L));
            long session4 = ((Long) s4[2]).longValue();
            mpl.SoterSvc.setCallerUidForTest(54321);
            Object[] foreign = exportReply(10, soterData(10, 10506, null, null, session4));
            mpl.SoterSvc.setCallerUidForTest(0);
            check("session is bound to its uid (foreign caller -> -204)",
                    ((Integer) s4[3]).intValue() == 0 && exportRc(foreign) == -204,
                    "initRc=" + s4[3] + " foreignRc=" + exportRc(foreign));

            // ---- restart persistence: run 1 primes, run 2 must see the same key ------
            if (identityLane()) {
                skip("same AuthKey after a process restart (disk registry)",
                        "identity lane key is the pushed chain, not the registry");
                log("PARITY-SUMMARY failures=" + parityFailures);
                return;
            }
            java.io.File marker = new java.io.File("/data/local/tmp/mpl_parity_key.txt");
            String previous = marker.isFile() ? readText(marker) : null;
            int[] preAsk = intReply(3, soterData(3, 10510, null, null, 0L));
            int[] preAuth = intReply(8, soterData(8, 10510, "persist", null, 0L));

            int[] persistGenAsk = intReply(1, soterData(1, 10510, null, null, 0L));
            int[] persistGenAuth = intReply(4, soterData(4, 10510, "persist", null, 0L));
            String persistKey = jsonPubKey(body(exportData(
                    exportReply(6, soterData(6, 10510, "persist", null, 0L)))));
            int[] postAuth = intReply(8, soterData(8, 10510, "persist", null, 0L));

            log("PARITY state uid=10510 before: ask=" + preAsk[1] + " auth=" + preAuth[1]
                    + " | after: genAsk=" + persistGenAsk[1] + " genAuth=" + persistGenAuth[1]
                    + " hasAuth=" + postAuth[1] + " pub=" + shortKey(persistKey));
            if (previous == null) {
                writeText(marker, persistKey == null ? "" : persistKey);
                log("PARITY PRIMED uid=10510 key=" + shortKey(persistKey)
                        + " (run 2 re-reads it from disk)");
                check("first run generated the persistence key",
                        persistKey != null && persistKey.length() > 0, null);
            } else {
                check("same AuthKey after a process restart (disk registry)",
                        previous.equals(persistKey),
                        "disk=" + shortKey(previous) + " now=" + shortKey(persistKey));
                check("hasAskAlready survives a process restart", preAsk[1] == 1,
                        "value=" + preAsk[1]);
                check("hasAuthKey survives a process restart", preAuth[1] == 1,
                        "value=" + preAuth[1]);
            }

            // Last on purpose: feeding the interceptor a Parcel with no interface token makes
            // enforceInterface() throw on a parcel that came from this process' own pool, and
            // on this Android build the reply buffers obtained afterwards can come back with
            // the write cursor left at the end of stale contents, which garbles every later
            // reply read. That is a property of driving a Binder interceptor from app_process
            // with synthetic parcels - 40 transactions in a row without such a request stay
            // byte-exact - not of the service. Keeping it last means it cannot mask the
            // assertions above; the refusal itself is still measured.
            Parcel junk = Parcel.obtain();
            junk.writeInt(7);
            junk.setDataPosition(0);
            Object[] r10j = exportReply(10, junk);
            check("tx10 unreadable request -> -204 + no data (no fallback)",
                    exportRc(r10j) == -204 && exportData(r10j).length == 0,
                    "rc=" + exportRc(r10j) + " bytes=" + exportData(r10j).length);

            log("PARITY-SUMMARY failures=" + parityFailures);
        } catch (Throwable t) {
            parityFailures++;
            log("PARITY FATAL " + t);
            log("PARITY-SUMMARY failures=" + parityFailures);
        }
    }

    // ------------------------------------------------------------------ Soter scope (p16p)

    /**
     * Root-independent redirect for the policy file. {@code SoterPolicy} has the same hook,
     * so the probe (uid 2000) can drive states it could never reach through
     * {@code /data/adb} or saterserver's private dir.
     */
    private static java.io.File scopeProbeFile() {
        String path = null;
        try {
            path = System.getenv("MPL_SCOPE_FILE");
        } catch (Throwable t) {
            path = null;
        }
        if (path == null || path.trim().length() == 0) {
            return null;
        }
        return new java.io.File(path.trim());
    }

    private static void writeScope(java.io.File file, String text) throws java.io.IOException {
        java.io.FileOutputStream out = new java.io.FileOutputStream(file, false);
        try {
            out.write(text.getBytes("UTF-8"));
            out.flush();
        } finally {
            out.close();
        }
    }

    /**
     * p16p: the four states {@code SoterPolicy.allow(int)} has to answer correctly.
     *
     * <p>The decisive one is "no file at all": the scope feature must fail <i>open</i>, so a
     * missing or unreadable configuration can never silently switch the forge off.</p>
     */
    private static void soterScopeStates() {
        java.io.File file = scopeProbeFile();
        if (file == null) {
            log("SCOPE states SKIPPED (MPL_SCOPE_FILE unset)"
                    + " allow(123)=" + mpl.SoterPolicy.allow(123)
                    + " defaultAll=" + mpl.SoterPolicy.defaultAll());
            return;
        }
        try {
            // 1) no file -> allow everyone (upstream behaviour)
            file.delete();
            mpl.SoterPolicy.reload();
            log("SCOPE nofile allow(10123)="
                    + mpl.SoterPolicy.allow(10123) + " expect=true defaultAll="
                    + mpl.SoterPolicy.defaultAll() + " src=" + mpl.SoterPolicy.source());

            // 2) file lists 10123: hit forges, miss passes through
            writeScope(file, "10123\n");
            mpl.SoterPolicy.reload();
            log("SCOPE file allow(10123)="
                    + mpl.SoterPolicy.allow(10123) + " expect=true allow(10124)="
                    + mpl.SoterPolicy.allow(10124) + " expect=false n="
                    + mpl.SoterPolicy.uids().size());

            // 3) empty file -> allow everyone again
            writeScope(file, "");
            mpl.SoterPolicy.reload();
            log("SCOPE empty allow(10124)="
                    + mpl.SoterPolicy.allow(10124) + " expect=true defaultAll="
                    + mpl.SoterPolicy.defaultAll());

            // 4) pkg=uid form and a comment line
            writeScope(file, "# probe\ncom.example.x=10124\n");
            mpl.SoterPolicy.reload();
            log("SCOPE pkg=uid allow(10124)="
                    + mpl.SoterPolicy.allow(10124) + " expect=true allow(10123)="
                    + mpl.SoterPolicy.allow(10123) + " expect=false");
        } catch (Throwable t) {
            log("SCOPE states failed: " + t);
        } finally {
            file.delete();
            mpl.SoterPolicy.reload();
        }
    }

    /**
     * p16p/p16q end-to-end: the inserted gate must decide on the uid the <b>request Parcel
     * declares</b> and hand a scoped-out uid the <i>real</i> service's answer.
     * {@code onPreTransact} returns {@code v4.d} (a reply Parcel) when it forges and
     * {@code v4.c} (the pass-through singleton, exactly what the {@code method==null} branch
     * above returns) when it does not - so the returned class is the proof.
     */
    private static void soterScopeGate() {
        java.io.File file = scopeProbeFile();
        if (file == null) {
            log("SCOPE gate SKIPPED (MPL_SCOPE_FILE unset)");
            return;
        }
        try {
            // Only 10123 is in scope. The probe's own uid is 2000, so any case where the
            // caller uid and the parcel uid disagree is decisive about which one is used.
            writeScope(file, "10123\n");
            mpl.SoterPolicy.reload();

            // A: parcel says 10123 (in scope), binder caller is 2000 (NOT in scope).
            //    A per-app gate that keys on the caller would deny here; the request uid is
            //    what the policy must honour, so this MUST be forged with the blob carrying
            //    the parcel uid. The same call also proves the Parcel position is restored:
            //    allowFor reads the uid, then SoterForge reads the very same Parcel again
            //    (interface token + uid + kname) and still gets 10123.
            Parcel parcelA = soterData(2, 10123, null, null, 0L);
            int posBefore = parcelA.dataPosition();
            boolean allowedA = mpl.SoterPolicy.allowFor(parcelA, 2, 2000);
            int posAfter = parcelA.dataPosition();
            Object resultA = soterFetch(2, 2000, parcelA);
            String nameA = resultA == null ? "null" : resultA.getClass().getName();
            boolean forgedA = "v4.d".equals(nameA);
            int blobUidA = -1;
            if (forgedA) {
                String jsonA = body(replyBlob(resultA));
                blobUidA = jsonUid(jsonA);
            }
            log("SCOPE gate A parcelUid=10123 caller=2000(not in scope) -> " + nameA
                    + " forged=" + forgedA + " allowFor=" + allowedA
                    + " pos=" + posBefore + "->" + posAfter
                    + " blobUid=" + blobUidA + " gateUid==blobUid=" + (blobUidA == 10123));

            // B: the mirror image - parcel says 20000 (NOT in scope) while the binder caller
            //    is 10123 (in scope). Must pass through, i.e. NOT forged.
            Object resultB = soterFetch(2, 10123, soterData(2, 20000, null, null, 0L));
            String nameB = resultB == null ? "null" : resultB.getClass().getName();
            log("SCOPE gate B parcelUid=20000 caller=10123(in scope) -> " + nameB
                    + " passthrough=" + "v4.c".equals(nameB));

            // C: transaction 11 (getDeviceId) has no uid argument, so the caller uid is the
            //    only source. In scope -> forged.
            Object resultC = soterFetch(11, 10123, soterData(11, 0, null, null, 0L));
            String nameC = resultC == null ? "null" : resultC.getClass().getName();
            log("SCOPE gate C code=11(no uid arg) caller=10123 -> " + nameC
                    + " forged=" + "v4.d".equals(nameC));

            // D: same no-uid transaction from an out-of-scope caller -> pass through.
            Object resultD = soterFetch(11, 20000, soterData(11, 0, null, null, 0L));
            String nameD = resultD == null ? "null" : resultD.getClass().getName();
            log("SCOPE gate D code=11(no uid arg) caller=20000 -> " + nameD
                    + " passthrough=" + "v4.c".equals(nameD));

            // E: code 2 whose Parcel has the token but no uid field at all -> the unreadable
            //    path must fall back to the caller, never throw.
            Parcel truncated = Parcel.obtain();
            truncated.writeInterfaceToken(SOTER_DESCRIPTOR);
            truncated.setDataPosition(0);
            Object resultE = soterFetch(2, 20000, truncated);
            String nameE = resultE == null ? "null" : resultE.getClass().getName();
            log("SCOPE gate E code=2 truncated parcel caller=20000 -> " + nameE
                    + " passthrough=" + "v4.c".equals(nameE));
        } catch (Throwable t) {
            log("SCOPE gate failed: " + t);
        } finally {
            file.delete();
            mpl.SoterPolicy.reload();
        }
    }

    /** The byte-array payload of a forged reply ({@code v4.d}): ex, presence, rc, blob. */
    private static byte[] replyBlob(Object reply) throws Exception {
        java.lang.reflect.Field field = reply.getClass().getField("a");
        Parcel parcel = (Parcel) field.get(reply);
        parcel.setDataPosition(0);
        parcel.readInt(); // exception code
        parcel.readInt(); // presence
        parcel.readInt(); // rc
        return parcel.createByteArray();
    }

    // ------------------------------------------------------------------ icon loading (p16p)

    /**
     * Why does every app icon come back as the generic placeholder? {@code
     * ApplicationPackageManager.loadIcon} silently falls back to {@code sym_def_app_icon}
     * when the icon resource cannot be loaded, so the failure has to be pulled apart by
     * hand: the declared resource id, the drawable class, and the package Resources.
     */
    private static void iconDiag() {
        StringBuilder report = new StringBuilder(512);
        try {
            if (android.os.Looper.getMainLooper() == null) {
                android.os.Looper.prepareMainLooper();
            }
            Class<?> at = Class.forName("android.app.ActivityThread");
            Object thread = null;
            try {
                thread = at.getMethod("currentActivityThread").invoke(null);
            } catch (Throwable ignored) {
                thread = null;
            }
            if (thread == null) {
                thread = at.getMethod("systemMain").invoke(null);
            }
            android.content.Context ctx =
                    (android.content.Context) at.getMethod("getSystemContext").invoke(thread);
            android.content.pm.PackageManager pm = ctx.getPackageManager();
            String[] pkgs = {"com.anycheck.app", "com.android.contacts"};
            for (int i = 0; i < pkgs.length; i++) {
                String pkg = pkgs[i];
                try {
                    android.content.pm.ApplicationInfo ai =
                            pm.getApplicationInfo(pkg, 0);
                    int round = -1;
                    try {
                        round = ((Integer) android.content.pm.ApplicationInfo.class
                                .getField("roundIcon").get(ai)).intValue();
                    } catch (Throwable ignored) {
                        round = -1;
                    }
                    report.append("ICON ").append(pkg).append(" icon=0x")
                            .append(Integer.toHexString(ai.icon)).append(" roundIcon=0x")
                            .append(Integer.toHexString(round)).append(" src=")
                            .append(ai.sourceDir).append('\n');
                    try {
                        android.graphics.drawable.Drawable d = pm.getApplicationIcon(ai);
                        report.append("ICON ").append(pkg).append(" getApplicationIcon -> ")
                                .append(d == null ? "null"
                                        : d.getClass().getName() + " intrinsic="
                                        + d.getIntrinsicWidth() + "x"
                                        + d.getIntrinsicHeight())
                                .append('\n');
                    } catch (Throwable t) {
                        report.append("ICON ").append(pkg)
                                .append(" getApplicationIcon threw ").append(t).append('\n');
                    }
                    try {
                        android.content.res.Resources r = pm.getResourcesForApplication(ai);
                        android.graphics.drawable.Drawable d2 = r.getDrawable(ai.icon, null);
                        report.append("ICON ").append(pkg).append(" resources.getDrawable -> ")
                                .append(d2 == null ? "null"
                                        : d2.getClass().getName() + " intrinsic="
                                        + d2.getIntrinsicWidth() + "x"
                                        + d2.getIntrinsicHeight())
                                .append('\n');
                    } catch (Throwable t) {
                        report.append("ICON ").append(pkg)
                                .append(" getResourcesForApplication threw ").append(t)
                                .append('\n');
                    }
                } catch (Throwable t) {
                    report.append("ICON ").append(pkg).append(" diag threw ").append(t)
                            .append('\n');
                }
            }
        } catch (Throwable t) {
            report.append("ICON diag failed: ").append(t).append('\n');
        }
        // logd rate-limits a burst from the shell uid, so the report also goes to the marker
        // file; the log line is best effort.
        diag = report.toString();
        try {
            log(diag.replace('\n', '|'));
        } catch (Throwable ignored) {
            // best effort
        }
    }

    // ------------------------------------------------------------------ G02 round trip

    private static android.system.keystore2.Authorization[] usageAuths(int limit) {
        android.system.keystore2.Authorization a = new android.system.keystore2.Authorization();
        a.keyParameter = new android.hardware.security.keymint.KeyParameter();
        a.keyParameter.tag = 805306773;
        a.keyParameter.value = android.hardware.security.keymint.KeyParameterValue.integer(limit);
        return new android.system.keystore2.Authorization[]{a};
    }

    private static int usageValue(android.system.keystore2.Authorization[] auths, int fallback) {
        if (auths == null) {
            return fallback;
        }
        for (int i = 0; i < auths.length; i++) {
            if (auths[i] == null || auths[i].keyParameter == null) {
                continue;
            }
            if (auths[i].keyParameter.tag != 805306773) {
                continue;
            }
            try {
                return auths[i].keyParameter.value.getInteger();
            } catch (Throwable t) {
                return fallback;
            }
        }
        return fallback;
    }

    /**
     * Prove the G02 rewrite on device without the module being installed: seed the module's
     * real {@code usageCounters} map by reflection, then check that the 405 authorization a
     * getKeyEntry reply would carry now reports the live remaining count - through both the
     * authorization-list path and the cached {@code KeyEntryResponse} path - and that the
     * p16l ledger mirror still reports 0 once the module entry is gone.
     */
    private static void usageRoundTrip() {
        int uid = 10495;
        String alias = "u52_probe_remaining";
        try {
            log("G02 adjust(no counter) -> "
                    + usageValue(mpl.UsagePolicy.adjust(usageAuths(2), uid, alias), -1)
                    + " (expect 2 = declared limit)");

            Class<?> kc = Class.forName(
                    "org.matrix.TEESimulator.interception.keystore.shim.KeyMintSecurityLevelInterceptor");
            java.lang.reflect.Field cf = kc.getDeclaredField("usageCounters");
            cf.setAccessible(true);
            java.util.Map map = (java.util.Map) cf.get(null);
            Object id = Class.forName(
                            "org.matrix.TEESimulator.interception.keystore.KeyIdentifier")
                    .getConstructor(int.class, String.class)
                    .newInstance(Integer.valueOf(uid), alias);
            map.put(id, new java.util.concurrent.atomic.AtomicInteger(1));
            log("G02 mapSize=" + map.size() + " key=" + id);

            log("G02 adjust(map counter=1) -> "
                    + usageValue(mpl.UsagePolicy.adjust(usageAuths(2), uid, alias), -1)
                    + " (expect 1)");

            android.system.keystore2.KeyEntryResponse resp =
                    new android.system.keystore2.KeyEntryResponse();
            resp.metadata = new android.system.keystore2.KeyMetadata();
            resp.metadata.authorizations = usageAuths(2);
            mpl.UsagePolicy.adjustResponse(resp, uid, alias);
            log("G02 adjustResponse(cached reply) -> "
                    + usageValue(resp.metadata.authorizations, -1) + " (expect 1)");

            map.remove(id);
            mpl.UsagePolicy.onFinish(id, 0);
            log("G02 adjust(ledger=0, map removed) -> "
                    + usageValue(mpl.UsagePolicy.adjust(usageAuths(2), uid, alias), -1)
                    + " (expect 0)");
        } catch (Throwable t) {
            log("G02 round trip failed: " + t);
        }
    }

    public static void main(String[] a) {
        // Focused run: only the scope cases, so the MPL-SOTER decision lines land at the
        // front of the log burst and survive logd's rate limiting intact.
        if ("scope".equals(System.getenv("MPL_PROBE_SCOPE_ONLY"))) {
            log("SCOPE-ONLY run");
            soterScopeStates();
            soterScopeGate();
            markDone();
            return;
        }
        try {
            // t4.l(KeyParameter[])  (stage B2 field writes)
            try {
                Class<?> lc = Class.forName("t4.l");
                Constructor<?> k = lc.getConstructor(Class.forName("[Landroid.hardware.security.keymint.KeyParameter;"));
                Object l = k.newInstance((Object) java.lang.reflect.Array.newInstance(
                        Class.forName("android.hardware.security.keymint.KeyParameter"), 0));
                log("t4.l ctor -> ok");
            } catch (Throwable t) {
                Throwable r = t; while (r.getCause() != null) r = r.getCause();
                log("t4.l ctor -> " + r.getClass().getSimpleName()
                        + (r instanceof VerifyError ? "  <<< VERIFY FAIL" : ""));
            }
            tryInvoke("org.matrix.TEESimulator.interception.keystore.shim.AuthorizeCreate", "check", null,
                    new Class<?>[]{Class.forName("t4.l"), Class.forName("t4.l"),
                            Class.forName("[Landroid.hardware.security.keymint.KeyParameter;")},
                    new Object[]{null, null, null});
            tryInvoke("org.matrix.TEESimulator.interception.keystore.InterceptorUtils", "patchAuthorizations", null,
                    new Class<?>[]{Class.forName("[Landroid.system.keystore2.Authorization;"), int.class},
                    new Object[]{null, Integer.valueOf(0)});
            tryInvoke("org.matrix.TEESimulator.interception.keystore.shim.KeyMintSecurityLevelInterceptor",
                    "handleGenerateKey", null,
                    new Class<?>[]{long.class, int.class, int.class, android.os.Parcel.class},
                    new Object[]{Long.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), null});
            tryInvoke("org.matrix.TEESimulator.interception.keystore.shim.KeyMintSecurityLevelInterceptor",
                    "handleCreateOperation", null,
                    new Class<?>[]{long.class, int.class, int.class, android.os.Parcel.class},
                    new Object[]{Long.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), null});
            Object interceptor = alloc("org.matrix.TEESimulator.interception.keystore.shim.KeyMintSecurityLevelInterceptor");
            tryInvoke("org.matrix.TEESimulator.interception.keystore.shim.KeyMintSecurityLevelInterceptor",
                    "buildKeyEntryResponse", interceptor,
                    new Class<?>[]{int.class, java.util.List.class, Class.forName("t4.l"),
                            Class.forName("android.system.keystore2.KeyDescriptor")},
                    new Object[]{Integer.valueOf(0), null, null, null});
            Object binder = alloc("org.matrix.TEESimulator.interception.keystore.shim.SoftwareOperationBinder");
            tryInvoke("org.matrix.TEESimulator.interception.keystore.shim.SoftwareOperationBinder",
                    "abort", binder, new Class<?>[]{}, new Object[]{});
            Object op = alloc("org.matrix.TEESimulator.interception.keystore.shim.SoftwareOperation");
            tryInvoke("org.matrix.TEESimulator.interception.keystore.shim.SoftwareOperation",
                    "checkInputLength", op, new Class<?>[]{byte[].class},
                    new Object[]{new byte[40000]});
            // Soter payload self-check: parse JSON, verify the trailing RSA signature
            try {
                byte[] blob = mpl.SoterForge.askBlob(10393);
                int len = (blob[0] & 0xff) | ((blob[1] & 0xff) << 8) | ((blob[2] & 0xff) << 16) | ((blob[3] & 0xff) << 24);
                byte[] body = new byte[len];
                System.arraycopy(blob, 4, body, 0, len);
                byte[] sig = new byte[blob.length - 4 - len];
                System.arraycopy(blob, 4 + len, sig, 0, sig.length);
                String json = new String(body, "UTF-8");
                log("SOTER blob=" + blob.length + " json=" + json.substring(0, Math.min(60, json.length())) + "... sig=" + sig.length);
                String b64 = json.substring(json.indexOf("pub_key\":\"") + 10, json.indexOf("\",\"counter"));
                java.security.PublicKey pub = java.security.KeyFactory.getInstance("RSA")
                        .generatePublic(new java.security.spec.X509EncodedKeySpec(android.util.Base64.decode(b64, android.util.Base64.DEFAULT)));
                java.security.Signature sv = java.security.Signature.getInstance("SHA256withRSA");
                sv.initVerify(pub);
                sv.update(body);
                log("SOTER signature verifies: " + sv.verify(sig));
            } catch (Throwable t2) {
                log("SOTER check failed: " + t2);
            }
            try {
                byte[] askB = mpl.SoterForge.askBlob(10393);
                byte[] authB = mpl.SoterForge.authBlob(10393);
                log("SOTER ask=" + askB.length + " auth=" + authB.length
                        + " differ=" + (askB.length != authB.length || !java.util.Arrays.equals(askB, authB)));
            } catch (Throwable t3) {
                log("SOTER auth check failed: " + t3);
            }
            Object soter = alloc("w4.e");
            tryInvoke("w4.e", "onPreTransact", soter,
                    new Class<?>[]{long.class, android.os.IBinder.class, int.class, int.class,
                            int.class, int.class, android.os.Parcel.class},
                    new Object[]{Long.valueOf(0), null, Integer.valueOf(2), Integer.valueOf(0),
                            Integer.valueOf(0), Integer.valueOf(0), null});
            // p16l: drive the SOTER forge through real Parcels so the reply layout and the
            // initSigh -> finishSign challenge binding are proven on device, not just verified.
            soterRoundTrip();
            soterUidFallback();
            // p16x: error space, key registry and the signing session state machine.
            soterParity();
            // p16p: the per-uid scope gate. Run after the round trips: those call
            // onPreTransact with callingUid=0, which the scope file would deny.
            soterScopeStates();
            soterScopeGate();
            usageRoundTrip();
            // p16l: the two newly injected methods that no other call reaches must still
            // verify and link: logServedChain (cached getKeyEntry reply) and the finish lambda.
            tryInvoke("org.matrix.TEESimulator.interception.keystore.Keystore2Interceptor",
                    "logServedChain",
                    alloc("org.matrix.TEESimulator.interception.keystore.Keystore2Interceptor"),
                    new Class<?>[]{int.class, long.class, String.class,
                            Class.forName("android.system.keystore2.KeyEntryResponse")},
                    new Object[]{Integer.valueOf(0), Long.valueOf(0L), "u52_probe_remaining", null});
            tryInvoke("org.matrix.TEESimulator.interception.keystore.shim.KeyMintSecurityLevelInterceptor",
                    "k", null,
                    new Class<?>[]{java.util.concurrent.atomic.AtomicInteger.class,
                            Class.forName("org.matrix.TEESimulator.interception.keystore.KeyIdentifier"),
                            Integer.class},
                    new Object[]{new java.util.concurrent.atomic.AtomicInteger(2),
                            Class.forName("org.matrix.TEESimulator.interception.keystore.KeyIdentifier")
                                    .getConstructor(int.class, String.class)
                                    .newInstance(Integer.valueOf(10495), "u52_probe_finish"),
                            Integer.valueOf(2)});
            // p16l: the new G02 entry points must at least link (no VerifyError/NoClassDefFound).
            try {
                mpl.UsagePolicy.adjustResponse(null, 10393, null);
                mpl.UsagePolicy.adjust(null, 10393, null);
                mpl.UsagePolicy.adjustUid(null, 10393);
                mpl.UsagePolicy.onFinish(null, 1);
                log("UsagePolicy entry points -> ok");            } catch (Throwable t) {
                log("UsagePolicy entry points -> " + t);
            }
            // p16m: force ART to verify the rewritten keep-alive bridge / injector classes.
            try {
                Class.forName("mpl.SoterBridge");
                Class.forName("mpl.SoterInjector");
                Class.forName("mpl.SoterPolicy");
                Class.forName("mpl.ScopeCli");
                log("SoterBridge/SoterInjector/SoterPolicy/ScopeCli load -> ok");
            } catch (Throwable t) {
                log("SoterBridge/SoterInjector load -> " + t);
            }
            // p16p: SoterInjector.status() links the class the daemon actually runs (the
            // scope push lives in its tick path); invoking it proves the method resolves.
            try {
                Object status = Class.forName("mpl.SoterInjector")
                        .getMethod("status").invoke(null);
                statusLine = "SoterInjector.status() -> " + status;
                log(statusLine);
            } catch (Throwable t) {
                statusLine = "SoterInjector.status() -> " + t;
                log(statusLine);
            }
            log("PROBE-DONE");
        } catch (Throwable t) {
            log("probe failed: " + t);
        }
        iconDiag();
        markDone();
    }

    /**
     * Completion marker on disk. The probe's log lines are the evidence, but logd may drop
     * the tail of a fast burst from the shell uid, and "the last line is missing" must not
     * be readable as "the probe crashed". This file is written by the same process after
     * the last probe step, so its presence is unambiguous.
     */
    private static void markDone() {
        String text = "PROBE-DONE\n"
                + "verifyFailures=" + verifyFailures + "\n"
                + "time=" + new java.util.Date() + "\n"
                + (statusLine == null ? "" : statusLine + "\n")
                + (diag == null ? "" : "--- icon diag ---\n" + diag)
                + "--- probe log ---\n" + trail;
        try {
            log("PROBE-SUMMARY verifyFailures=" + verifyFailures);
        } catch (Throwable ignored) {
        }
        try {
            java.io.FileOutputStream out =
                    new java.io.FileOutputStream("/data/local/tmp/mpl_probe_done.txt", false);
            try {
                out.write(text.getBytes("UTF-8"));
                out.flush();
            } finally {
                out.close();
            }
        } catch (Throwable ignored) {
            // a read-only /data/local/tmp must not turn a passing probe into a failing one
        }
    }
}
