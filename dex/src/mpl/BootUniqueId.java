package mpl;

import java.io.FileInputStream;
import java.security.MessageDigest;

/**
 * Per-boot attestation uniqueId (detection ak / UNIQUE_ID_CONSISTENCY).
 *
 * The native cert generator's field schema has no uniqueId, so the value is derived in Java
 * and spliced into the attestation extension by {@link LeafSurgery}/{@code CertSurgery}.
 *
 * Value = SHA-256(boot_id || hbk), 32 bytes:
 * <ul>
 *   <li>{@code /proc/sys/kernel/random/boot_id} - stable for one boot, different across boots.</li>
 *   <li>{@code /data/adb/tricky_store/hbk} - 32 bytes written once by the module's service.sh,
 *       so two devices/modules do not share the same id. Unreadable -> fixed salt.</li>
 * </ul>
 * Cached per process, so every key generated in this process/boot reports the same bytes.
 *
 * This is deliberately <b>not</b> a hardware identifier: it carries no device secret and
 * changes on every boot, which is why handing it to an ordinary app (the detection asks for
 * INCLUDE_UNIQUE_ID without holding REQUEST_UNIQUE_ID_ATTESTATION) does not leak a real
 * device fingerprint.
 */
public final class BootUniqueId {

    private static final String BOOT_ID_PATH = "/proc/sys/kernel/random/boot_id";

    private static final String HBK_PATH = "/data/adb/tricky_store/hbk";

    private static final byte[] SALT =
            "maple-rs/tee16/unique-id/v1".getBytes();

    private static byte[] cached;

    private BootUniqueId() {
    }

    /** 32 bytes, identical for every key of the current boot, different after a reboot. */
    public static byte[] get() {
        synchronized (BootUniqueId.class) {
            if (cached == null) {
                cached = derive();
            }
            byte[] copy = new byte[cached.length];
            System.arraycopy(cached, 0, copy, 0, cached.length);
            return copy;
        }
    }

    private static byte[] derive() {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(unsigned(readFile(BOOT_ID_PATH)));
            md.update((byte) 0x1f);
            md.update(unsigned(readFile(HBK_PATH)));
            md.update((byte) 0x1e);
            md.update(SALT);
            return md.digest();
        } catch (Throwable t) {
            try {
                MessageDigest md = MessageDigest.getInstance("SHA-256");
                md.update(SALT);
                md.update((byte) 0x1f);
                md.update((byte) System.nanoTime());
                return md.digest();
            } catch (Throwable ignored) {
                return new byte[32];
            }
        }
    }

    private static byte[] unsigned(byte[] in) {
        return in == null ? new byte[0] : in;
    }

    private static byte[] readFile(String path) {
        FileInputStream in = null;
        try {
            in = new FileInputStream(path);
            byte[] buf = new byte[256];
            int n = in.read(buf);
            if (n <= 0) {
                return null;
            }
            byte[] out = new byte[n];
            System.arraycopy(buf, 0, out, 0, n);
            return out;
        } catch (Throwable t) {
            return null;
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable ignored) {
                    // ignore
                }
            }
        }
    }
}
