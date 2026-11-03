package mpl;

/**
 * One Soter reply: the {@code resultCode} plus the payload field of the parcelable envelope.
 *
 * <p>The AIDL reply objects are {@code SoterExportResult(rc, byte[] exportData, int len)},
 * {@code SoterSignResult(rc, byte[] exportData, int len)} and
 * {@code SoterSessionResult(long session, int rc)}. {@code w4/e.smali} writes the envelope
 * field by field, so a call that both decides the code and produces the bytes has to hand two
 * values back. This holder is that pair - deliberately fields, not getters, so the smali can
 * use {@code iget}/{@code iget-wide} without a second call.</p>
 *
 * <p>Fields:</p>
 * <ul>
 *   <li>{@link #rc} - {@code resultCode}; 0 is success, the negative values are the Soter
 *       service error space (see {@link SoterSvc});</li>
 *   <li>{@link #data} - never null, an empty array means "no exportData" (the SDK dereferences
 *       it, so a null would NPE on the client);</li>
 *   <li>{@link #session} - the {@code initSigh} session id, 0 for every other transaction.</li>
 * </ul>
 */
public final class SoterResult {

    /** {@code resultCode}. */
    public int rc;
    /** Export payload; empty (never null) when there is nothing to export. */
    public byte[] data;
    /** Session id for {@code initSigh}; 0 elsewhere. */
    public long session;

    public SoterResult() {
        this.data = new byte[0];
    }

    /** Export/sign reply: code + payload. */
    public static SoterResult of(int rc, byte[] data) {
        SoterResult result = new SoterResult();
        result.rc = rc;
        result.data = data == null ? new byte[0] : data;
        return result;
    }

    /** {@code initSigh} reply: session id + code. */
    public static SoterResult session(long session, int rc) {
        SoterResult result = new SoterResult();
        result.session = session;
        result.rc = rc;
        return result;
    }
}
