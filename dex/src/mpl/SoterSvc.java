package mpl;

import android.os.Binder;
import android.os.Parcel;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;

/**
 * Service semantics of {@code com.tencent.soter.soterserver.ISoterService}.
 *
 * <p>Until p16r the forge answered every {@code resultCode} with 0 and kept a single in-memory
 * signing slot. That is enough for the one client on record (Duck only reads
 * {@code rc == 0 && session != 0}), but it is not what the shipped service does, and the
 * difference is observable by any client that asks a second question: {@code hasAuthKey} after
 * a removal, a repeated {@code finishSign}, an empty alias, an expired session.</p>
 *
 * <p><b>What the shipped service does</b> (measured against the device's own smali, see
 * SOTER-PARITY.md §2):</p>
 * <pre>
 *   tx1  generateAppSecureKey(uid)          -> TA code, 0 = ok, idempotent
 *   tx2  getAppSecureKey(uid)               -> rc default -1000, exception -200
 *   tx3  hasAskAlready(uid)                 -> real boolean
 *   tx4  generateAuthKey(uid, alias)        -> empty alias -202, else TA code
 *   tx5  removeAuthKey(uid, alias)          -> empty alias -202, really removes
 *   tx6  getAuthKey(uid, alias)             -> empty alias -202, absent alias -1000 + empty
 *   tx7  removeAllAuthKey(uid)              -> removes ASK and every AuthKey
 *   tx8  hasAuthKey(uid, alias)             -> empty alias false, else real boolean
 *   tx9  initSigh(uid, alias, challenge)    -> empty alias -202, empty challenge -203,
 *                                              success rc 0 + non-zero session
 *   tx10 finishSign(session)                -> session 0 -204, unknown/used/expired -204,
 *                                              success rc 0 + 256-byte signature
 * </pre>
 *
 * <p>The int codes come straight from {@code SoterService$c.smali}: {@code -0xca} (-202) at
 * {@code :2192} (removeAuthKey), {@code :2479} (generateAuthKey), {@code :2629} (initSigh) and
 * {@code :3456} (getAuthKey); {@code -0xcb} (-203) at {@code :2620}; {@code -0xcc} (-204) at
 * {@code :3069}; the {@code -1000} default at {@code :3292}/{@code :3479}; the {@code -200}
 * export-exception path at {@code :3530}.</p>
 *
 * <p><b>Session table.</b> The shipped service layer has no bookkeeping at all - the session
 * lives in the TA, and this file's evidence cannot show its TTL or one-shot rule. This
 * implementation therefore applies the conservative reading the SDK implies (one signature per
 * session, 30 s lifetime) and says so: it is an inference, not a measurement. Sessions are
 * bound to {@code (uid, alias, challenge)} and to the binder caller that created them, so a
 * session id leaked to another uid is refused.</p>
 *
 * <p><b>Test seams.</b> {@link #setCallerUidForTest(int)} and {@link #setTtlForTest(long)}
 * exist because the on-device probe runs as shell uid 2000 in a single process: it cannot
 * present two different binder uids, and waiting 30 s for a session to expire would make the
 * probe useless. Both default to the production values when unset and are never touched by
 * product code.</p>
 */
public final class SoterSvc {

    private static final String TAG = "MPL-SOTER";
    private static final String DESCRIPTOR = "com.tencent.soter.soterserver.ISoterService";

    // ------------------------------------------------------------------ error code space

    /** Success. */
    public static final int OK = 0;
    /** -200: the key could not be exported (generation, persistence or signing failed). */
    public static final int ERR_EXPORT = -200;
    /** -202: the alias argument was null or empty. */
    public static final int ERR_EMPTY_ALIAS = -202;
    /** -203: the challenge argument was null or empty. */
    public static final int ERR_EMPTY_CHALLENGE = -203;
    /** -204: the signing session is zero, unknown, already used, expired or not ours. */
    public static final int ERR_BAD_SESSION = -204;
    /** -1000: the untouched default of {@code SoterExportResult} - "nothing was exported". */
    public static final int ERR_DEFAULT = -1000;

    /** Inferred session lifetime (see class comment; the device evidence cannot show the TA's). */
    static final long TTL_MS = 30000L;
    /** Upper bound on live sessions, so a hostile client cannot grow the table without limit. */
    static final int MAX_SESSIONS = 256;

    // ------------------------------------------------------------------ session state

    /** One {@code initSigh} session. Immutable except {@link #used}. */
    private static final class Session {
        /** uid the request declared (the app that asked, not necessarily the binder caller). */
        final int uid;
        /** {@code Binder.getCallingUid()} observed when the session was created. */
        final int binderUid;
        final String alias;
        final byte[] challenge;
        final long expiresAt;
        volatile boolean used;

        Session(int uid, int binderUid, String alias, byte[] challenge, long expiresAt) {
            this.uid = uid;
            this.binderUid = binderUid;
            this.alias = alias;
            this.challenge = challenge;
            this.expiresAt = expiresAt;
        }
    }

    private static final ConcurrentHashMap<Long, Session> SESSIONS =
            new ConcurrentHashMap<Long, Session>();
    /** Random, non-zero base that only ever increases: unguessable but strictly ordered. */
    private static final AtomicLong SEQ = new AtomicLong(seed());

    /** Test seams; 0 / -1 means "use the production behaviour". */
    private static volatile int callerOverride;
    private static volatile long ttlOverride = -1L;

    /**
     * Caller uid for the <b>binder-free</b> lane (p16socket).
     *
     * <p>The native control channel runs the forge on the daemon's socket thread, where
     * {@code Binder.getCallingUid()} answers for the daemon (or 0), not for the app that
     * issued the transaction. {@link mpl.SoterSocket} therefore publishes the uid the kernel
     * reported with the transaction here, per thread. The binder lane never sets this, so its
     * behaviour is unchanged.</p>
     */
    private static final ThreadLocal<Integer> EXTERNAL_CALLER = new ThreadLocal<Integer>();

    private SoterSvc() {
    }

    private static long seed() {
        try {
            return new SecureRandom().nextLong() & 0x3fffffffffffffffL;
        } catch (Throwable t) {
            return System.nanoTime() & 0x3fffffffffffffffL;
        }
    }

    // ------------------------------------------------------------------ test seams

    /** Probe hook: pretend the binder caller is {@code uid} (0 restores the real value). */
    public static void setCallerUidForTest(int uid) {
        callerOverride = uid;
    }

    /** Probe hook: session lifetime in milliseconds (-1 restores {@link #TTL_MS}). */
    public static void setTtlForTest(long millis) {
        ttlOverride = millis;
    }

    /** The uid this transaction is attributed to: binder caller, or the probe override. */
    public static int callerUid() {
        Integer external = EXTERNAL_CALLER.get();
        if (external != null && external.intValue() > 0) {
            return external.intValue();
        }
        int override = callerOverride;
        if (override > 0) {
            return override;
        }
        try {
            return Binder.getCallingUid();
        } catch (Throwable t) {
            return -1;
        }
    }

    /**
     * Bind the caller uid for the current thread while it services a transaction that
     * arrived over the native control channel. Always paired with {@link #endCallerUid()}.
     */
    public static void beginCallerUid(int uid) {
        EXTERNAL_CALLER.set(Integer.valueOf(uid));
    }

    /** Drop the thread's external caller uid (back to the binder/probe behaviour). */
    public static void endCallerUid() {
        EXTERNAL_CALLER.remove();
    }

    private static long ttl() {
        long override = ttlOverride;
        return override > 0 ? override : TTL_MS;
    }

    /** Live + used session count (probe/diagnostics). */
    public static int sessionCount() {
        return SESSIONS.size();
    }

    // ------------------------------------------------------------------ parcel reading

    /** The AIDL arguments one transaction carries, already defaulted. */
    private static final class Args {
        int uid = -1;
        String alias;
        String error;

        int uid() {
            return uid > 0 ? uid : callerUid();
        }
    }

    /**
     * Reads {@code int uid [, String kname]} out of an {@code ISoterService} request.
     *
     * <p>A malformed or foreign parcel is not an exception: it leaves {@link Args#error} set and
     * the caller falls back to the binder uid / treats the alias as empty, exactly the way the
     * AIDL stub would have rejected a bad request before reaching the implementation.</p>
     */
    private static Args args(Parcel data, boolean withAlias) {
        Args out = new Args();
        if (data == null) {
            out.error = "null parcel";
            return out;
        }
        try {
            data.enforceInterface(DESCRIPTOR);
            if (data.dataAvail() < 4) {
                out.error = "no uid (avail=" + data.dataAvail() + ")";
                return out;
            }
            int uid = data.readInt();
            if (uid < 0) {
                out.error = "negative uid " + uid;
            } else {
                out.uid = uid;
            }
            if (withAlias && data.dataAvail() > 0) {
                try {
                    out.alias = data.readString();
                } catch (Throwable t) {
                    out.alias = null;
                }
            }
        } catch (Throwable t) {
            out.error = String.valueOf(t);
        }
        return out;
    }

    // ------------------------------------------------------------------ key transactions

    /**
     * Codes 1 / 4 / 5 / 7 - the transactions that answer with a bare {@code int}.
     *
     * @return 0 on success; -202 for an empty alias (4, 5); -200 when the key could not be
     *         created or persisted
     */
    public static int intOp(int code, Parcel data) {
        Args a = args(data, code == 4 || code == 5);
        int uid = a.uid();
        try {
            switch (code) {
                case 1:
                    return generateAsk(uid);
                case 4:
                    if (isEmpty(a.alias)) {
                        log("generateAuthKey uid=" + uid + " rc=" + ERR_EMPTY_ALIAS
                                + " (empty alias)");
                        return ERR_EMPTY_ALIAS;
                    }
                    return generateAuth(uid, a.alias);
                case 5:
                    if (isEmpty(a.alias)) {
                        log("removeAuthKey uid=" + uid + " rc=" + ERR_EMPTY_ALIAS
                                + " (empty alias)");
                        return ERR_EMPTY_ALIAS;
                    }
                    return SoterKeys.removeAuth(uid, a.alias);
                case 7:
                    return SoterKeys.removeAll(uid);
                default:
                    return OK;
            }
        } catch (Throwable t) {
            log("intOp code=" + code + " uid=" + uid + " threw " + t);
            return ERR_EXPORT;
        }
    }

    /** Codes 3 / 8: the boolean transactions. Returns 1/0 (the smali writes it as an int). */
    public static int has(int code, Parcel data) {
        Args a = args(data, code == 8);
        int uid = a.uid();
        try {
            if (code == 3) {
                boolean value = hasAsk(uid);
                log("hasAskAlready uid=" + uid + " -> " + value
                        + " (" + SoterKeys.describe(uid) + ")");
                return value ? 1 : 0;
            }
            if (code == 8) {
                if (isEmpty(a.alias)) {
                    // The shipped service logs "kname is null" and returns false; it does not
                    // raise. Matching that keeps a client's "is this alias usable" probe safe.
                    log("hasAuthKey uid=" + uid + " -> false (empty alias)");
                    return 0;
                }
                boolean value = hasAuth(uid, a.alias);
                log("hasAuthKey uid=" + uid + " alias=" + a.alias + " -> " + value);
                return value ? 1 : 0;
            }
            return 0;
        } catch (Throwable t) {
            log("has code=" + code + " uid=" + uid + " threw " + t);
            return 0;
        }
    }

    /** True when this uid has an ASK: a real file, or the certificate lane's identity. */
    static boolean hasAsk(int uid) {
        if (SoterForge.identityPresent("ASK")) {
            return !SoterKeys.isGone(uid, null);
        }
        return SoterKeys.hasAsk(uid);
    }

    /** True when this uid has an AuthKey for {@code alias}. */
    static boolean hasAuth(int uid, String alias) {
        if (SoterForge.identityPresent("AUTH")) {
            return !SoterKeys.isGone(uid, alias);
        }
        return SoterKeys.hasAuth(uid, alias);
    }

    private static int generateAsk(int uid) {
        if (SoterForge.identityPresent("ASK")) {
            // The certificate lane's identity is provisioned by the daemon (root, keybox);
            // there is nothing for this process to generate - it only has to un-tombstone.
            SoterKeys.revive(uid, null);
            log("generateAppSecureKey uid=" + uid + " rc=0 (identity lane)");
            return OK;
        }
        int rc = SoterKeys.generateAsk(uid);
        log("generateAppSecureKey uid=" + uid + " rc=" + rc
                + " (" + SoterKeys.describe(uid) + ")");
        return rc;
    }

    private static int generateAuth(int uid, String alias) {
        if (SoterForge.identityPresent("AUTH")) {
            SoterKeys.revive(uid, alias);
            log("generateAuthKey uid=" + uid + " alias=" + alias + " rc=0 (identity lane)");
            return OK;
        }
        int rc = SoterKeys.generateAuth(uid, alias);
        log("generateAuthKey uid=" + uid + " alias=" + alias + " rc=" + rc
                + " (" + SoterKeys.describe(uid) + ")");
        return rc;
    }

    // ------------------------------------------------------------------ export transactions

    /**
     * Code 2, {@code getAppSecureKey(uid)}.
     *
     * <p>An ASK that was never generated is provisioned on first export: the SDK's own order is
     * generate-then-get, and a fresh install that only reads would otherwise get an error where
     * the reference client expects a model. A <i>removed</i> ASK is different - removal is
     * sticky, so the tombstone answers the {@code -1000} default with no export data, exactly
     * like a device whose ASK was deleted.</p>
     */
    public static SoterResult exportAsk(Parcel data) {
        Args a = args(data, false);
        int uid = a.uid();
        try {
            if (!SoterForge.identityPresent("ASK") && SoterKeys.isGone(uid, null)) {
                log("getAppSecureKey uid=" + uid + " rc=" + ERR_DEFAULT + " (removed)");
                return SoterResult.of(ERR_DEFAULT, null);
            }
            byte[] blob = SoterForge.askBlobFor(uid, callerUid());
            if (blob == null) {
                log("getAppSecureKey uid=" + uid + " rc=" + ERR_EXPORT + " (no key)");
                return SoterResult.of(ERR_EXPORT, null);
            }
            log("getAppSecureKey uid=" + uid + " rc=0 bytes=" + blob.length);
            return SoterResult.of(OK, blob);
        } catch (Throwable t) {
            log("getAppSecureKey uid=" + uid + " rc=" + ERR_EXPORT + " threw " + t);
            return SoterResult.of(ERR_EXPORT, null);
        }
    }

    /**
     * Code 6, {@code getAuthKey(uid, alias)}.
     *
     * <p>Three distinct answers, as the shipped service gives them: empty alias -202 (no TA
     * call at all), unknown alias -1000 with no export data (the SDK turns that into a null
     * model), and a real blob otherwise.</p>
     */
    public static SoterResult exportAuth(Parcel data) {
        Args a = args(data, true);
        int uid = a.uid();
        try {
            if (isEmpty(a.alias)) {
                log("getAuthKey uid=" + uid + " rc=" + ERR_EMPTY_ALIAS + " (empty alias)");
                return SoterResult.of(ERR_EMPTY_ALIAS, null);
            }
            if (!hasAuth(uid, a.alias)) {
                log("getAuthKey uid=" + uid + " alias=" + a.alias
                        + " rc=" + ERR_DEFAULT + " (absent)");
                return SoterResult.of(ERR_DEFAULT, null);
            }
            byte[] blob = SoterForge.authBlobFor(uid, a.alias, callerUid());
            if (blob == null) {
                log("getAuthKey uid=" + uid + " alias=" + a.alias
                        + " rc=" + ERR_EXPORT + " (no key)");
                return SoterResult.of(ERR_EXPORT, null);
            }
            log("getAuthKey uid=" + uid + " alias=" + a.alias + " rc=0 bytes=" + blob.length);
            return SoterResult.of(OK, blob);
        } catch (Throwable t) {
            log("getAuthKey uid=" + uid + " rc=" + ERR_EXPORT + " threw " + t);
            return SoterResult.of(ERR_EXPORT, null);
        }
    }

    // ------------------------------------------------------------------ signing session

    /**
     * Code 9, {@code initSigh(uid, kname, challenge)}.
     *
     * <p>Validation order is the shipped service's: alias first (-202), then challenge (-203).
     * The AuthKey is provisioned on demand: the reference client opens a session on a fresh
     * alias it never generated, and a real TA would answer that with an error - but refusing
     * here would turn a working client into a "SOTER unsupported" verdict, so the key is created
     * (and persisted) as part of opening the session, and that deviation is documented.</p>
     */
    public static SoterResult initSigh(Parcel data) {
        Args a = args(data, true);
        int caller = callerUid();
        String challenge = null;
        if (data != null) {
            try {
                // args() consumed token + uid + alias; the challenge is the next field.
                challenge = data.readString();
            } catch (Throwable t) {
                challenge = null;
            }
        }
        int uid = a.uid();
        if (isEmpty(a.alias)) {
            log("initSigh uid=" + uid + " rc=" + ERR_EMPTY_ALIAS + " (empty alias)");
            return SoterResult.session(0L, ERR_EMPTY_ALIAS);
        }
        if (challenge == null || challenge.length() == 0) {
            log("initSigh uid=" + uid + " alias=" + a.alias
                    + " rc=" + ERR_EMPTY_CHALLENGE + " (empty challenge)");
            return SoterResult.session(0L, ERR_EMPTY_CHALLENGE);
        }
        try {
            byte[] bytes = challenge.getBytes("UTF-8");
            if (!SoterForge.identityPresent("AUTH") && SoterKeys.ensureAuth(uid, a.alias) == null) {
                log("initSigh uid=" + uid + " alias=" + a.alias + " rc=" + ERR_EXPORT
                        + " (auth key unavailable)");
                return SoterResult.session(0L, ERR_EXPORT);
            }
            long id = nextSessionId();
            Session session = new Session(uid, caller, a.alias, bytes,
                    System.currentTimeMillis() + ttl());
            SESSIONS.put(Long.valueOf(id), session);
            reap();
            log("initSigh uid=" + uid + " alias=" + a.alias + " caller=" + caller
                    + " challengeLen=" + challenge.length() + " session=" + id + " rc=0"
                    + " live=" + SESSIONS.size());
            return SoterResult.session(id, OK);
        } catch (Throwable t) {
            log("initSigh uid=" + uid + " threw " + t);
            return SoterResult.session(0L, ERR_EXPORT);
        }
    }

    /**
     * Code 10, {@code finishSign(signSession)}.
     *
     * <p>This is the p16r P0-3 fix point. The old code fell back to "the last payload" and then
     * to the constant {@code "TEESIM-SOTER-SIGN"} whenever the session did not match, so an
     * invalid session produced a perfectly valid-looking signature over the wrong bytes - the
     * most dangerous possible answer. There is now exactly one path: a live, unused, unexpired
     * session that belongs to the caller is signed once, and everything else is
     * {@code -204} with no export data.</p>
     */
    public static SoterResult finishSign(Parcel data) {
        long id = 0L;
        if (data != null) {
            try {
                data.enforceInterface(DESCRIPTOR);
                id = data.readLong();
            } catch (Throwable t) {
                // An unreadable request is an invalid session. Falling back to "the last one"
                // is exactly the p16r bug this method exists to remove.
                id = 0L;
            }
        }
        if (id == 0L) {
            log("finishSign session=0 rc=" + ERR_BAD_SESSION + " (zero session)");
            return SoterResult.of(ERR_BAD_SESSION, null);
        }
        Session session = SESSIONS.get(Long.valueOf(id));
        if (session == null) {
            log("finishSign session=" + id + " rc=" + ERR_BAD_SESSION + " (unknown)");
            return SoterResult.of(ERR_BAD_SESSION, null);
        }
        if (session.used) {
            log("finishSign session=" + id + " rc=" + ERR_BAD_SESSION + " (already used)");
            return SoterResult.of(ERR_BAD_SESSION, null);
        }
        long now = System.currentTimeMillis();
        if (now > session.expiresAt) {
            SESSIONS.remove(Long.valueOf(id));
            log("finishSign session=" + id + " rc=" + ERR_BAD_SESSION + " (expired by "
                    + (now - session.expiresAt) + "ms)");
            return SoterResult.of(ERR_BAD_SESSION, null);
        }
        int caller = callerUid();
        if (caller > 0 && caller != session.binderUid && caller != session.uid) {
            // The session is bound to (uid, alias, challenge); a different process must not be
            // able to spend somebody else's session even if it guessed the id.
            log("finishSign session=" + id + " rc=" + ERR_BAD_SESSION + " (uid " + caller
                    + " != owner " + session.binderUid + "/" + session.uid + ")");
            return SoterResult.of(ERR_BAD_SESSION, null);
        }
        try {
            byte[] signature = SoterForge.signChallenge(session.uid, session.alias,
                    session.challenge);
            if (signature == null) {
                log("finishSign session=" + id + " rc=" + ERR_EXPORT + " (no auth key)");
                return SoterResult.of(ERR_EXPORT, null);
            }
            session.used = true;
            log("finishSign session=" + id + " alias=" + session.alias + " uid=" + session.uid
                    + " rc=0 sig=" + signature.length);
            return SoterResult.of(OK, signature);
        } catch (Throwable t) {
            log("finishSign session=" + id + " threw " + t);
            return SoterResult.of(ERR_EXPORT, null);
        }
    }

    // ------------------------------------------------------------------ session bookkeeping

    private static long nextSessionId() {
        long id;
        do {
            id = SEQ.incrementAndGet();
        } while (id == 0L || SESSIONS.containsKey(Long.valueOf(id)));
        return id;
    }

    /**
     * Drops expired sessions, then - if the table is still full - the entry that expires first.
     *
     * <p>Used sessions are kept until their TTL runs out so a repeated {@code finishSign} can be
     * reported as "already used" instead of "unknown"; either way it is refused.</p>
     */
    private static void reap() {
        long now = System.currentTimeMillis();
        Iterator<Map.Entry<Long, Session>> it = SESSIONS.entrySet().iterator();
        while (it.hasNext()) {
            Session session = it.next().getValue();
            if (now > session.expiresAt) {
                it.remove();
            }
        }
        while (SESSIONS.size() >= MAX_SESSIONS) {
            Long oldest = null;
            long best = Long.MAX_VALUE;
            for (Map.Entry<Long, Session> entry : SESSIONS.entrySet()) {
                Session session = entry.getValue();
                // Prefer dropping spent sessions before live ones.
                long rank = (session.used ? 0L : (1L << 62)) + session.expiresAt;
                if (rank < best) {
                    best = rank;
                    oldest = entry.getKey();
                }
            }
            if (oldest == null) {
                return;
            }
            SESSIONS.remove(oldest);
            log("initSigh evicted session=" + oldest + " (table cap " + MAX_SESSIONS + ")");
        }
    }

    // ------------------------------------------------------------------ helpers

    private static boolean isEmpty(String value) {
        return value == null || value.length() == 0;
    }

    private static void log(String message) {
        android.util.Log.i(TAG, "svc: " + message);
    }

    /** Session id list, for the probe's leak/debug output. */
    public static List<Long> sessionIds() {
        return new ArrayList<Long>(SESSIONS.keySet());
    }
}
