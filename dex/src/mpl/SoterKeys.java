package mpl;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 * Durable key registry: one ASK per uid, one AuthKey per {@code (uid, alias)}.
 *
 * <p><b>Why this exists.</b> Until p16r the forge minted one process-wide RSA pair per role, so
 * every app shared the same ASK, every alias shared the same AuthKey, and a restart produced a
 * brand-new key. A real device's TA generates per-uid / per-(uid, alias) keys <i>once</i> and
 * keeps them for the lifetime of the install: {@code hasAskAlready} / {@code hasAuthKey} are
 * questions about persistent state, {@code generate*} is idempotent, and {@code remove*} really
 * removes. A memory-only registry would satisfy the API shape and still be a lie - it would
 * answer "yes" for a key that vanished with the process - so this class writes the material to
 * disk before it ever answers a query.</p>
 *
 * <p><b>Where the files live.</b> The forge runs inside {@code com.tencent.soter.soterserver}
 * (an ordinary application uid), so it can only touch that app's own private directory:
 * {@code /data/user/0/com.tencent.soter.soterserver/files/soter_keys}. {@code /data/adb} is
 * root-only and unreachable from the injected process, and the daemon has no upward channel to
 * learn which {@code (uid, alias)} pairs will appear at runtime - so the key is generated and
 * persisted by the process that will use it, at mode 0600, under the app-private files
 * directory. That directory is the same place {@code mpl.SoterIdentity} reads its pushed copy
 * from, and the daemon already re-owns / re-labels it for the service uid
 * ({@code SoterInjector.identityPushScript}). See RESULT-parity-impl.md for the trade-off.</p>
 *
 * <p><b>Layout</b> (one file per key, plus tombstone markers):</p>
 * <pre>
 *   ask-&lt;uid&gt;.key                 ASK key pair
 *   auth-&lt;uid&gt;-&lt;sha256(alias)&gt;.key AuthKey key pair; the alias is stored inside the file
 *   gone-ASK-&lt;uid&gt;.flag           "removeAllAuthKey was called" marker
 *   gone-AUTH-&lt;uid&gt;-&lt;hash&gt;.flag   "removeAuthKey was called" marker
 * </pre>
 *
 * <p>The tombstone is what makes removal visible even when the key material was never ours to
 * delete: with the certificate lane on ({@code mpl.SoterIdentity}), the ASK/AuthKey come from a
 * root-owned identity that the daemon re-pushes on every tick, so deleting the registry file
 * alone would let the identity resurrect the key. With the lane off the tombstone is redundant
 * but harmless.</p>
 *
 * <p><b>Failure policy.</b> Every public method is total. A key that cannot be generated,
 * persisted or parsed yields {@code null}/false and is logged once; no transaction is ever
 * failed by an exception from here.</p>
 */
public final class SoterKeys {

    private static final String TAG = "MPL-SOTER";

    /** The service's own files dir - the only path the injected forge may write to. */
    public static final String DIR =
            "/data/user/0/com.tencent.soter.soterserver/files/soter_keys";
    /** Pre-sdcardfs alias of the same directory. */
    public static final String DIR_LEGACY =
            "/data/data/com.tencent.soter.soterserver/files/soter_keys";
    /** Probe hook, same shape as {@code MPL_SOTER_IDENTITY_DIR} / {@code MPL_SCOPE_FILE}. */
    public static final String ENV_DIR = "MPL_SOTER_KEYS_DIR";

    /** Hard cap per uid so a client that invents a fresh alias per call cannot fill the disk. */
    public static final int MAX_AUTH_PER_UID = 64;

    /**
     * Reserved alias for entry points that carry no kname ({@code mpl.SoterForge.authBlob(int)},
     * the probe). It must never collapse onto the ASK: a real device's AuthKey is a different
     * key from its ASK, and the blob signature has to verify against the advertised pub_key.
     */
    public static final String DEFAULT_ALIAS = "mpl:default";

    private static final int MAGIC = 0x4d504c31; // 'MPL1'
    private static final Object LOCK = new Object();
    /** Decoded key pairs, keyed by {@link #cacheKey(String, int, String)}. Guarded by LOCK. */
    private static final Map<String, KeyPair> CACHE = new HashMap<String, KeyPair>();
    /** {@code null} = follow the default resolution; non-null = probe override. */
    private static volatile String overrideDir;

    private SoterKeys() {
    }

    // ------------------------------------------------------------------ paths

    /** Probe/test seam: force the registry directory ({@code null} restores the default). */
    public static void setDirForTest(String path) {
        synchronized (LOCK) {
            overrideDir = path;
            CACHE.clear();
        }
    }

    /** Directory the registry uses right now: override, env, service files dir, legacy. */
    public static String dirPath() {
        String forced = overrideDir;
        if (forced != null && forced.length() > 0) {
            return forced;
        }
        String env = env(ENV_DIR);
        if (env != null && env.length() > 0) {
            return env;
        }
        File pushed = new File(DIR);
        if (pushed.isDirectory()) {
            return DIR;
        }
        File parent = pushed.getParentFile();
        if (parent != null && parent.isDirectory() && parent.canWrite()) {
            return DIR;
        }
        File legacy = new File(DIR_LEGACY);
        File legacyParent = legacy.getParentFile();
        if (legacy.isDirectory() || (legacyParent != null && legacyParent.isDirectory())) {
            return DIR_LEGACY;
        }
        return DIR; // nothing writable exists yet; the create below surfaces the failure
    }

    private static String env(String name) {
        try {
            return System.getenv(name);
        } catch (Throwable t) {
            return null;
        }
    }

    private static File dir() {
        return new File(dirPath());
    }

    private static boolean ensureDir(File dir) {
        if (dir.isDirectory()) {
            return true;
        }
        if (!dir.mkdirs() && !dir.isDirectory()) {
            android.util.Log.i(TAG, "keys: cannot create " + dir);
            return false;
        }
        dir.setReadable(false, false);
        dir.setWritable(false, false);
        dir.setReadable(true, true);
        dir.setWritable(true, true);
        dir.setExecutable(true, true);
        return true;
    }

    // ------------------------------------------------------------------ file names

    private static String askName(int uid) {
        return "ask-" + uid + ".key";
    }

    private static String authName(int uid, String alias) {
        return "auth-" + uid + "-" + hash(alias) + ".key";
    }

    /** Tombstone: {@code alias == null} means the ASK. */
    private static String goneName(int uid, String alias) {
        return alias == null
                ? "gone-ASK-" + uid + ".flag"
                : "gone-AUTH-" + uid + "-" + hash(alias) + ".flag";
    }

    private static String cacheKey(String kind, int uid, String alias) {
        return kind + ":" + uid + ":" + (alias == null ? "" : alias);
    }

    /** 16 hex chars of SHA-256(text); a filename-safe, collision-resistant alias token. */
    static String hash(String text) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] d = md.digest((text == null ? "" : text).getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder(16);
            for (int i = 0; i < 8; i++) {
                int b = d[i] & 0xff;
                if (b < 16) {
                    sb.append('0');
                }
                sb.append(Integer.toHexString(b));
            }
            return sb.toString();
        } catch (Throwable t) {
            // SHA-256 is mandatory on every Android; this is unreachable, but a hash must exist.
            return "0000000000000000";
        }
    }

    // ------------------------------------------------------------------ queries

    /** {@code hasAskAlready(uid)} - true only when the ASK is actually on disk. */
    public static boolean hasAsk(int uid) {
        synchronized (LOCK) {
            if (isGoneLocked(uid, null)) {
                return false;
            }
            if (CACHE.containsKey(cacheKey("ASK", uid, null))) {
                return true;
            }
            return new File(dir(), askName(uid)).isFile();
        }
    }

    /** {@code hasAuthKey(uid, alias)} - true only when that alias' AuthKey is on disk. */
    public static boolean hasAuth(int uid, String alias) {
        if (alias == null || alias.length() == 0) {
            return false;
        }
        synchronized (LOCK) {
            if (isGoneLocked(uid, alias)) {
                return false;
            }
            if (CACHE.containsKey(cacheKey("AUTH", uid, alias))) {
                return true;
            }
            return new File(dir(), authName(uid, alias)).isFile();
        }
    }

    /** True when an explicit removal happened and no regeneration cleared it yet. */
    public static boolean isGone(int uid, String alias) {
        synchronized (LOCK) {
            return isGoneLocked(uid, alias);
        }
    }

    private static boolean isGoneLocked(int uid, String alias) {
        return new File(dir(), goneName(uid, alias)).isFile();
    }

    // ------------------------------------------------------------------ get-or-create

    /** Key pair for {@code uid}'s ASK, generating and persisting it on first use. Null on failure. */
    public static KeyPair ensureAsk(int uid) {
        synchronized (LOCK) {
            KeyPair cached = CACHE.get(cacheKey("ASK", uid, null));
            if (cached != null) {
                return cached;
            }
            File file = new File(dir(), askName(uid));
            KeyPair loaded = load(file, "ASK", uid, null);
            if (loaded != null) {
                CACHE.put(cacheKey("ASK", uid, null), loaded);
                return loaded;
            }
            KeyPair fresh = generate(file, "ASK", uid, null);
            if (fresh != null) {
                CACHE.put(cacheKey("ASK", uid, null), fresh);
            }
            return fresh;
        }
    }

    /** Key pair for {@code (uid, alias)}, generating and persisting it on first use. */
    public static KeyPair ensureAuth(int uid, String alias) {
        if (alias == null || alias.length() == 0) {
            return null;
        }
        synchronized (LOCK) {
            KeyPair cached = CACHE.get(cacheKey("AUTH", uid, alias));
            if (cached != null) {
                return cached;
            }
            File file = new File(dir(), authName(uid, alias));
            KeyPair loaded = load(file, "AUTH", uid, alias);
            if (loaded != null) {
                CACHE.put(cacheKey("AUTH", uid, alias), loaded);
                return loaded;
            }
            pruneAuth(uid);
            KeyPair fresh = generate(file, "AUTH", uid, alias);
            if (fresh != null) {
                CACHE.put(cacheKey("AUTH", uid, alias), fresh);
            }
            return fresh;
        }
    }

    /**
     * Existing key for {@code (uid, alias)} or null - never generates.
     *
     * <p>{@code getAuthKey} uses this: the SDK treats an absent alias as "no model" and a real
     * TA does not create a key as a side effect of a read.</p>
     */
    public static KeyPair authIfPresent(int uid, String alias) {
        if (alias == null || alias.length() == 0) {
            return null;
        }
        synchronized (LOCK) {
            KeyPair cached = CACHE.get(cacheKey("AUTH", uid, alias));
            if (cached != null) {
                return cached;
            }
            KeyPair loaded = load(new File(dir(), authName(uid, alias)), "AUTH", uid, alias);
            if (loaded != null) {
                CACHE.put(cacheKey("AUTH", uid, alias), loaded);
            }
            return loaded;
        }
    }

    // ------------------------------------------------------------------ mutation

    /** {@code generateAppSecureKey}: idempotent - an existing ASK is returned unchanged. */
    public static int generateAsk(int uid) {
        KeyPair pair = ensureAsk(uid);
        if (pair == null) {
            return SoterSvc.ERR_EXPORT;
        }
        clearGone(uid, null);
        android.util.Log.i(TAG, "keys: ask uid=" + uid + " " + describe(uid));
        return SoterSvc.OK;
    }

    /** {@code generateAuthKey}: idempotent, and re-creates a previously removed alias. */
    public static int generateAuth(int uid, String alias) {
        KeyPair pair = ensureAuth(uid, alias);
        if (pair == null) {
            return SoterSvc.ERR_EXPORT;
        }
        clearGone(uid, alias);
        android.util.Log.i(TAG, "keys: auth uid=" + uid + " alias=" + alias + " " + describe(uid));
        return SoterSvc.OK;
    }

    /** {@code removeAuthKey}: delete the file, drop the cache entry and leave a tombstone. */
    public static int removeAuth(int uid, String alias) {
        if (alias == null || alias.length() == 0) {
            return SoterSvc.ERR_EMPTY_ALIAS;
        }
        boolean deleted;
        synchronized (LOCK) {
            deleted = new File(dir(), authName(uid, alias)).delete();
            CACHE.remove(cacheKey("AUTH", uid, alias));
            deleted |= writeGone(uid, alias);
        }
        android.util.Log.i(TAG, "keys: removeAuth uid=" + uid + " alias=" + alias
                + " deleted=" + deleted + " " + describe(uid));
        return SoterSvc.OK;
    }

    /** {@code removeAllAuthKey}: really delete this uid's ASK and every AuthKey. */
    public static int removeAll(int uid) {
        int removed = 0;
        synchronized (LOCK) {
            File dir = dir();
            File ask = new File(dir, askName(uid));
            if (ask.delete()) {
                removed++;
            }
            CACHE.remove(cacheKey("ASK", uid, null));
            String prefix = "auth-" + uid + "-";
            String suffix = ".key";
            File[] files = dir.listFiles();
            if (files != null) {
                for (int i = 0; i < files.length; i++) {
                    String name = files[i].getName();
                    if (name.startsWith(prefix) && name.endsWith(suffix)) {
                        if (files[i].delete()) {
                            removed++;
                        }
                    }
                }
            }
            // The alias is part of the cache key, so drop every AUTH entry of this uid.
            ArrayList<String> stale = new ArrayList<String>();
            String marker = "AUTH:" + uid + ":";
            for (String key : CACHE.keySet()) {
                if (key.startsWith(marker)) {
                    stale.add(key);
                }
            }
            for (int i = 0; i < stale.size(); i++) {
                CACHE.remove(stale.get(i));
            }
            writeGone(uid, null);
        }
        android.util.Log.i(TAG, "keys: removeAll uid=" + uid + " files=" + removed
                + " " + describe(uid));
        return SoterSvc.OK;
    }

    private static boolean writeGone(int uid, String alias) {
        File marker = new File(dir(), goneName(uid, alias));
        FileOutputStream out = null;
        try {
            if (!ensureDir(marker.getParentFile())) {
                return false;
            }
            out = new FileOutputStream(marker, false);
            out.write("1\n".getBytes("UTF-8"));
            out.flush();
            return true;
        } catch (Throwable t) {
            android.util.Log.i(TAG, "keys: tombstone " + marker + " failed: " + t);
            return false;
        } finally {
            close(out);
        }
    }

    /**
     * Clears a tombstone without touching key material.
     *
     * <p>Used when the certificate lane supplies the key: there is nothing for this process to
     * generate, but an explicit "generate" must still make {@code hasAskAlready} /
     * {@code hasAuthKey} true again.</p>
     */
    public static void revive(int uid, String alias) {
        clearGone(uid, alias);
    }

    private static void clearGone(int uid, String alias) {        synchronized (LOCK) {
            File marker = new File(dir(), goneName(uid, alias));
            if (marker.isFile() && !marker.delete()) {
                android.util.Log.i(TAG, "keys: cannot clear tombstone " + marker);
            }
        }
    }

    // ------------------------------------------------------------------ generation / io

    private static KeyPair generate(File file, String kind, int uid, String alias) {
        KeyPair pair;
        try {
            KeyPairGenerator generator = KeyPairGenerator.getInstance("RSA");
            generator.initialize(2048);
            pair = generator.generateKeyPair();
        } catch (Throwable t) {
            android.util.Log.i(TAG, "keys: keygen failed kind=" + kind + " uid=" + uid + ": " + t);
            return null;
        }
        if (!ensureDir(file.getParentFile())) {
            return null;
        }
        long started = System.currentTimeMillis();
        boolean ok = store(file, kind, uid, alias, pair);
        android.util.Log.i(TAG, "keys: generated " + file.getName() + " ok=" + ok
                + " ms=" + (System.currentTimeMillis() - started));
        return ok ? pair : null;
    }

    /**
     * Writes the pair atomically: {@code .tmp} + fsync + rename, then mode 0600.
     *
     * <p>A half-written key file would be worse than no key at all: {@link #load} would reject
     * it and the next transaction would silently mint a <i>different</i> key for an app that
     * already received the public half.</p>
     */
    private static boolean store(File file, String kind, int uid, String alias, KeyPair pair) {
        File tmp = new File(file.getAbsolutePath() + ".tmp");
        FileOutputStream fos = null;
        DataOutputStream out = null;
        try {
            byte[] priv = pair.getPrivate().getEncoded();
            byte[] pub = pair.getPublic().getEncoded();
            fos = new FileOutputStream(tmp, false);
            out = new DataOutputStream(fos);
            out.writeInt(MAGIC);
            out.writeUTF(kind);
            out.writeInt(uid);
            out.writeUTF(alias == null ? "" : alias);
            out.writeInt(priv.length);
            out.write(priv);
            out.writeInt(pub.length);
            out.write(pub);
            out.flush();
            fos.getFD().sync();
            out.close();
            out = null;
            fos = null;
            // 0600, owner-only: the material is a private key.
            tmp.setReadable(false, false);
            tmp.setWritable(false, false);
            tmp.setReadable(true, true);
            tmp.setWritable(true, true);
            tmp.setExecutable(false, false);
            if (!tmp.renameTo(file)) {
                // rename over an existing file is allowed on Linux, so this is a real failure.
                file.delete();
                if (!tmp.renameTo(file)) {
                    android.util.Log.i(TAG, "keys: rename failed " + tmp + " -> " + file);
                    tmp.delete();
                    return false;
                }
            }
            return true;
        } catch (Throwable t) {
            android.util.Log.i(TAG, "keys: store failed " + file + ": " + t);
            tmp.delete();
            return false;
        } finally {
            close(out);
            close(fos);
        }
    }

    /** Reads and validates one key file; null on absent/corrupt/foreign content. */
    private static KeyPair load(File file, String kind, int uid, String alias) {
        if (!file.isFile()) {
            return null;
        }
        DataInputStream in = null;
        try {
            in = new DataInputStream(new FileInputStream(file));
            int magic = in.readInt();
            String storedKind = in.readUTF();
            int storedUid = in.readInt();
            String storedAlias = in.readUTF();
            if (magic != MAGIC || !kind.equals(storedKind) || storedUid != uid
                    || !(alias == null ? "" : alias).equals(storedAlias)) {
                android.util.Log.i(TAG, "keys: " + file.getName() + " does not match "
                        + kind + "/" + uid + "/" + alias + " (hash collision?)");
                return null;
            }
            byte[] priv = new byte[in.readInt()];
            in.readFully(priv);
            byte[] pub = new byte[in.readInt()];
            in.readFully(pub);
            KeyFactory factory = KeyFactory.getInstance("RSA");
            PrivateKey privateKey = factory.generatePrivate(new PKCS8EncodedKeySpec(priv));
            PublicKey publicKey = factory.generatePublic(new X509EncodedKeySpec(pub));
            if (privateKey == null || publicKey == null) {
                return null;
            }
            return new KeyPair(publicKey, privateKey);
        } catch (Throwable t) {
            android.util.Log.i(TAG, "keys: load " + file + " failed: " + t);
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

    /** Keeps at most {@link #MAX_AUTH_PER_UID} AuthKeys for one uid, oldest first. */
    private static void pruneAuth(int uid) {
        File dir = dir();
        String prefix = "auth-" + uid + "-";
        String suffix = ".key";
        File[] files = dir.listFiles();
        if (files == null) {
            return;
        }
        ArrayList<String> own = new ArrayList<String>();
        ArrayList<Long> stamps = new ArrayList<Long>();
        for (int i = 0; i < files.length; i++) {
            String name = files[i].getName();
            if (name.startsWith(prefix) && name.endsWith(suffix)) {
                own.add(name);
                stamps.add(Long.valueOf(files[i].lastModified()));
            }
        }
        int excess = own.size() - MAX_AUTH_PER_UID + 1;
        while (excess > 0) {
            int oldest = -1;
            long best = Long.MAX_VALUE;
            for (int i = 0; i < own.size(); i++) {
                if (stamps.get(i).longValue() < best) {
                    best = stamps.get(i).longValue();
                    oldest = i;
                }
            }
            if (oldest < 0) {
                return;
            }
            String name = own.remove(oldest);
            stamps.remove(oldest);
            new File(dir, name).delete();
            android.util.Log.i(TAG, "keys: pruned " + name + " uid=" + uid);
            excess--;
        }
    }

    private static void close(java.io.Closeable stream) {
        if (stream == null) {
            return;
        }
        try {
            stream.close();
        } catch (Throwable ignored) {
            // best effort
        }
    }

    /** One-line inventory, for the forge log and the probe. */
    public static String describe(int uid) {
        File dir = dir();
        int ask = new File(dir, askName(uid)).isFile() ? 1 : 0;
        int auth = 0;
        String prefix = "auth-" + uid + "-";
        File[] files = dir.listFiles();
        if (files != null) {
            for (int i = 0; i < files.length; i++) {
                String name = files[i].getName();
                if (name.startsWith(prefix) && name.endsWith(".key")) {
                    auth++;
                }
            }
        }
        return "dir=" + dirPath() + " ask=" + ask + " auth=" + auth
                + " goneAsk=" + (isGone(uid, null) ? 1 : 0);
    }
}
