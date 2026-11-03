package mpl;

import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Minimal DER reader / writer used for X.509 "surgery".
 *
 * <p>Design goals, in order:</p>
 * <ol>
 *   <li><b>Byte fidelity.</b> Every parsed node keeps the exact original TLV slice.
 *       While a node is untouched, {@link Node#serialize()} returns that slice
 *       verbatim, so parse-then-serialize is bit-identical even for inputs that use
 *       a non-minimal length encoding. Only nodes that are actually modified (and
 *       their ancestors) are re-encoded, and re-encoding rebuilds just the header
 *       plus the concatenation of the children, which keeps every untouched child
 *       byte-identical.</li>
 *   <li><b>No external dependencies.</b> java.* only, Java 8 syntax, no lambdas,
 *       no java.nio.file. Safe for an Android app_process (API 36) host.</li>
 *   <li><b>Fail closed.</b> Malformed input raises {@link DerException}; callers
 *       turn that into a null result.</li>
 * </ol>
 *
 * <p>Only the subset of BER/DER needed by X.509 is accepted: definite lengths
 * (short and long form) and single or multi byte tags. Indefinite length and
 * lengths above 2 GiB are rejected.</p>
 */
public final class Der {

    public static final int TAG_BOOLEAN = 0x01;
    public static final int TAG_INTEGER = 0x02;
    public static final int TAG_BIT_STRING = 0x03;
    public static final int TAG_OCTET_STRING = 0x04;
    public static final int TAG_NULL = 0x05;
    public static final int TAG_OID = 0x06;
    public static final int TAG_ENUMERATED = 0x0A;
    public static final int TAG_UTF8_STRING = 0x0C;
    public static final int TAG_PRINTABLE_STRING = 0x13;
    public static final int TAG_UTC_TIME = 0x17;
    public static final int TAG_GENERALIZED_TIME = 0x18;
    public static final int TAG_SEQUENCE = 0x30;
    public static final int TAG_SET = 0x31;

    /** Context-specific constructed tag with number {@code n}, i.e. 0xA0 | n. */
    public static int CONTEXT_CONSTRUCTED = 0xA0;
    /** Context-specific primitive tag with number {@code n}, i.e. 0x80 | n. */
    public static int CONTEXT_PRIMITIVE = 0x80;

    private static final int MAX_DEPTH = 64;
    private static final byte[] EMPTY = new byte[0];

    private Der() {
    }

    /** Thrown for any structurally invalid DER input. */
    public static final class DerException extends RuntimeException {
        private static final long serialVersionUID = 1L;

        public DerException(String message) {
            super(message);
        }
    }

    // ------------------------------------------------------------------
    // Node
    // ------------------------------------------------------------------

    /**
     * One DER TLV. Constructed nodes expose their children and can have a child
     * replaced; primitive nodes expose their content bytes and can have the value
     * replaced. Nodes are mutated in place and dirty-marked up the ancestor chain so
     * that serialization stays byte-exact everywhere else.
     */
    public static final class Node {

        private final byte[] tagBytes;
        private final byte[] rawBytes;
        private byte[] valueBytes;
        private Node[] kids;
        private Node parentNode;
        private boolean dirty;

        private Node(byte[] tagBytes, byte[] rawBytes, byte[] valueBytes, Node[] kids) {
            this.tagBytes = tagBytes;
            this.rawBytes = rawBytes;
            this.valueBytes = valueBytes;
            this.kids = kids;
        }

        /** First identifier octet, e.g. 0x30 for SEQUENCE. */
        public int tag() {
            return tagBytes[0] & 0xFF;
        }

        /** Complete identifier octets (may be longer than one byte for high tag numbers). */
        public byte[] tagBytes() {
            return tagBytes.clone();
        }

        /** True when the encoding is constructed (identifier bit 0x20). */
        public boolean isConstructed() {
            return (tagBytes[0] & 0x20) != 0;
        }

        public int childCount() {
            return kids == null ? 0 : kids.length;
        }

        public Node child(int index) {
            if (kids == null || index < 0 || index >= kids.length) {
                throw new DerException("child index out of range: " + index + " (count " + childCount() + ")");
            }
            return kids[index];
        }

        /** Content octets of a primitive node (empty for a constructed node). */
        public byte[] value() {
            return valueBytes == null ? EMPTY : valueBytes.clone();
        }

        public int valueLength() {
            return valueBytes == null ? 0 : valueBytes.length;
        }

        /**
         * Replaces a child; only the ancestors' length headers are re-encoded.
         *
         * @throws DerException when this node has no parsed children or index is invalid
         */
        public void replaceChild(int index, Node replacement) {
            if (kids == null || index < 0 || index >= kids.length) {
                throw new DerException("replaceChild: index out of range: " + index);
            }
            if (replacement == null) {
                throw new DerException("replaceChild: null replacement");
            }
            kids[index] = replacement;
            replacement.parentNode = this;
            markDirty();
        }

        /**
         * Replaces the content octets of a primitive node (e.g. the inner OCTET STRING
         * of a KeyDescription uniqueId).
         */
        public void setValue(byte[] newValue) {
            if (isConstructed() || kids != null) {
                throw new DerException("setValue: node is constructed");
            }
            if (newValue == null) {
                throw new DerException("setValue: null value");
            }
            valueBytes = newValue.clone();
            markDirty();
        }

        private void markDirty() {
            dirty = true;
            Node p = parentNode;
            while (p != null) {
                p.dirty = true;
                p = p.parentNode;
            }
        }

        /**
         * Full TLV encoding of this node. Untouched nodes return their original bytes;
         * modified nodes are rebuilt as {@code tag || minimal-length || children}.
         */
        public byte[] serialize() {
            if (!dirty && rawBytes != null) {
                return rawBytes.clone();
            }
            byte[] content;
            if (kids != null) {
                ByteArrayOutputStream out = new ByteArrayOutputStream(256);
                for (int i = 0; i < kids.length; i++) {
                    byte[] part = kids[i].serialize();
                    out.write(part, 0, part.length);
                }
                content = out.toByteArray();
            } else {
                content = valueBytes == null ? EMPTY : valueBytes;
            }
            return tlv(tagBytes, content);
        }

        /** Decodes the OBJECT IDENTIFIER content, or returns null for a non-OID node. */
        public String oid() {
            if (tag() != TAG_OID || valueBytes == null) {
                return null;
            }
            return oidString(valueBytes);
        }

        /** Number of bytes actually stored for this node's value/children. */
        public int rawLength() {
            return rawBytes == null ? -1 : rawBytes.length;
        }
    }

    // ------------------------------------------------------------------
    // Parsing
    // ------------------------------------------------------------------

    /** Parses exactly one DER value that must consume the whole array. */
    public static Node parse(byte[] data) {
        if (data == null) {
            throw new DerException("parse: null input");
        }
        if (data.length == 0) {
            throw new DerException("parse: empty input");
        }
        int[] pos = new int[] { 0 };
        Node node = read(data, 0, data.length, 0, pos);
        if (pos[0] != data.length) {
            throw new DerException("parse: trailing bytes after DER value (" + (data.length - pos[0]) + ")");
        }
        return node;
    }

    private static Node read(byte[] data, int off, int end, int depth, int[] pos) {
        if (depth > MAX_DEPTH) {
            throw new DerException("parse: nesting deeper than " + MAX_DEPTH);
        }
        int p = off;
        if (p >= end) {
            throw new DerException("parse: truncated identifier");
        }
        int first = data[p++] & 0xFF;
        int tagLen = 1;
        if ((first & 0x1F) == 0x1F) {
            while (true) {
                if (p >= end) {
                    throw new DerException("parse: truncated high-tag-number identifier");
                }
                int b = data[p++] & 0xFF;
                tagLen++;
                if (tagLen > 5) {
                    throw new DerException("parse: identifier longer than 5 octets");
                }
                if ((b & 0x80) == 0) {
                    break;
                }
            }
        }
        byte[] tagBytes = Arrays.copyOfRange(data, off, off + tagLen);

        if (p >= end) {
            throw new DerException("parse: truncated length");
        }
        int lengthOctet = data[p++] & 0xFF;
        int valueLen;
        if (lengthOctet < 0x80) {
            valueLen = lengthOctet;
        } else {
            int n = lengthOctet & 0x7F;
            if (n == 0) {
                throw new DerException("parse: indefinite length is not DER");
            }
            if (n > 4) {
                throw new DerException("parse: length field longer than 4 octets");
            }
            if (p + n > end) {
                throw new DerException("parse: truncated long-form length");
            }
            long v = 0;
            for (int i = 0; i < n; i++) {
                v = (v << 8) | (data[p++] & 0xFF);
            }
            if (v < 0 || v > Integer.MAX_VALUE - 16) {
                throw new DerException("parse: length out of supported range: " + v);
            }
            valueLen = (int) v;
        }

        int contentStart = p;
        long contentEndLong = (long) contentStart + (long) valueLen;
        if (contentEndLong > end) {
            throw new DerException("parse: content runs past end of input");
        }
        int contentEnd = (int) contentEndLong;

        boolean constructed = (first & 0x20) != 0;
        Node[] kids = null;
        byte[] value = null;
        if (constructed) {
            List<Node> parsed = new ArrayList<Node>();
            int q = contentStart;
            boolean childrenOk = true;
            try {
                while (q < contentEnd) {
                    int[] sub = new int[] { q };
                    Node child = read(data, q, contentEnd, depth + 1, sub);
                    q = sub[0];
                    parsed.add(child);
                }
            } catch (DerException e) {
                childrenOk = false;
            }
            if (childrenOk && q == contentEnd) {
                kids = parsed.toArray(new Node[parsed.size()]);
            } else {
                // Opaque constructed value: keep the bytes, refuse structural edits,
                // and still round-trip exactly.
                value = Arrays.copyOfRange(data, contentStart, contentEnd);
            }
        } else {
            value = Arrays.copyOfRange(data, contentStart, contentEnd);
        }

        byte[] raw = Arrays.copyOfRange(data, off, contentEnd);
        pos[0] = contentEnd;
        Node node = new Node(tagBytes, raw, value, kids);
        if (kids != null) {
            // Parent links are what makes dirty propagation reach the length headers
            // on the ancestor chain; a parsed subtree must carry them too.
            for (int i = 0; i < kids.length; i++) {
                kids[i].parentNode = node;
            }
        }
        return node;
    }

    // ------------------------------------------------------------------
    // Encoding
    // ------------------------------------------------------------------

    public static byte[] tlv(int tag, byte[] content) {
        return tlv(new byte[] { (byte) tag }, content);
    }

    public static byte[] tlv(byte[] tagBytes, byte[] content) {
        if (tagBytes == null || tagBytes.length == 0) {
            throw new DerException("tlv: empty tag");
        }
        int len = content == null ? 0 : content.length;
        byte[] lenBytes = encodeLength(len);
        byte[] out = new byte[tagBytes.length + lenBytes.length + len];
        System.arraycopy(tagBytes, 0, out, 0, tagBytes.length);
        System.arraycopy(lenBytes, 0, out, tagBytes.length, lenBytes.length);
        if (len > 0) {
            System.arraycopy(content, 0, out, tagBytes.length + lenBytes.length, len);
        }
        return out;
    }

    private static byte[] encodeLength(int len) {
        if (len < 0) {
            throw new DerException("encodeLength: negative length");
        }
        if (len < 0x80) {
            return new byte[] { (byte) len };
        }
        int bytes = (32 - Integer.numberOfLeadingZeros(len) + 7) / 8;
        byte[] out = new byte[bytes + 1];
        out[0] = (byte) (0x80 | bytes);
        for (int i = 0; i < bytes; i++) {
            out[bytes - i] = (byte) (len >>> (8 * i));
        }
        return out;
    }

    public static byte[] concat(byte[]... parts) {
        int total = 0;
        for (int i = 0; i < parts.length; i++) {
            if (parts[i] != null) {
                total += parts[i].length;
            }
        }
        byte[] out = new byte[total];
        int at = 0;
        for (int i = 0; i < parts.length; i++) {
            if (parts[i] != null && parts[i].length > 0) {
                System.arraycopy(parts[i], 0, out, at, parts[i].length);
                at += parts[i].length;
            }
        }
        return out;
    }

    public static byte[] sequence(byte[]... parts) {
        return tlv(TAG_SEQUENCE, concat(parts));
    }

    public static byte[] set(byte[]... parts) {
        return tlv(TAG_SET, concat(parts));
    }

    public static byte[] octetString(byte[] value) {
        return tlv(TAG_OCTET_STRING, value);
    }

    public static byte[] bitString(byte[] value) {
        return bitString(0, value);
    }

    public static byte[] bitString(int unusedBits, byte[] value) {
        if (unusedBits < 0 || unusedBits > 7) {
            throw new DerException("bitString: bad unused-bit count: " + unusedBits);
        }
        byte[] content = new byte[(value == null ? 0 : value.length) + 1];
        content[0] = (byte) unusedBits;
        if (value != null && value.length > 0) {
            System.arraycopy(value, 0, content, 1, value.length);
        }
        return tlv(TAG_BIT_STRING, content);
    }

    public static byte[] nullValue() {
        return new byte[] { (byte) TAG_NULL, 0x00 };
    }

    /** Encodes a non-negative or negative integer from its big-endian two's complement content. */
    public static byte[] integerContent(byte[] content) {
        return tlv(TAG_INTEGER, content);
    }

    public static byte[] integer(long value) {
        return tlv(TAG_INTEGER, minimalIntegerBytes(value));
    }

    public static byte[] enumerated(long value) {
        return tlv(TAG_ENUMERATED, minimalIntegerBytes(value));
    }

    private static byte[] minimalIntegerBytes(long value) {
        byte[] out = new byte[8];
        long v = value;
        for (int i = 7; i >= 0; i--) {
            out[i] = (byte) v;
            v >>= 8;
        }
        int start = 0;
        while (start < 7) {
            byte b = out[start];
            byte next = out[start + 1];
            if (b == 0x00 && (next & 0x80) == 0) {
                start++;
            } else if (b == (byte) 0xFF && (next & 0x80) != 0) {
                start++;
            } else {
                break;
            }
        }
        return Arrays.copyOfRange(out, start, 8);
    }

    public static byte[] utf8String(String s) {
        return tlv(TAG_UTF8_STRING, utf8(s));
    }

    public static byte[] printableString(String s) {
        return tlv(TAG_PRINTABLE_STRING, ascii(s));
    }

    public static byte[] utcTime(String s) {
        return tlv(TAG_UTC_TIME, ascii(s));
    }

    /** Context-specific constructed tag, e.g. 0 for [0] EXPLICIT version. */
    public static byte[] context(int number, byte[] content) {
        if (number < 0 || number > 30) {
            throw new DerException("context: tag number out of range: " + number);
        }
        return tlv(CONTEXT_CONSTRUCTED | number, content);
    }

    public static byte[] oid(String dotted) {
        if (dotted == null || dotted.length() == 0) {
            throw new DerException("oid: empty");
        }
        String[] parts = dotted.split("\\.");
        if (parts.length < 2) {
            throw new DerException("oid: needs at least two arcs: " + dotted);
        }
        long[] arcs = new long[parts.length];
        for (int i = 0; i < parts.length; i++) {
            try {
                arcs[i] = Long.parseLong(parts[i].trim());
            } catch (NumberFormatException e) {
                throw new DerException("oid: bad arc in " + dotted);
            }
            if (arcs[i] < 0) {
                throw new DerException("oid: negative arc in " + dotted);
            }
        }
        if (arcs[0] > 2 || (arcs[0] < 2 && arcs[1] > 39)) {
            throw new DerException("oid: invalid first arcs in " + dotted);
        }
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        writeBase128(out, arcs[0] * 40 + arcs[1]);
        for (int i = 2; i < arcs.length; i++) {
            writeBase128(out, arcs[i]);
        }
        return tlv(TAG_OID, out.toByteArray());
    }

    private static void writeBase128(ByteArrayOutputStream out, long value) {
        int groups = 1;
        long v = value;
        while (v >= 0x80) {
            v >>>= 7;
            groups++;
        }
        for (int i = groups - 1; i >= 0; i--) {
            int b = (int) ((value >>> (7 * i)) & 0x7F);
            if (i != 0) {
                b |= 0x80;
            }
            out.write(b);
        }
    }

    /** Decodes OBJECT IDENTIFIER content octets to dotted form. */
    public static String oidString(byte[] content) {
        if (content == null || content.length == 0) {
            throw new DerException("oidString: empty content");
        }
        StringBuilder sb = new StringBuilder(32);
        int first = content[0] & 0xFF;
        int arc1 = first / 40;
        if (arc1 > 2) {
            arc1 = 2;
        }
        sb.append(arc1).append('.').append(first - arc1 * 40);
        long acc = 0;
        int accBits = 0;
        for (int i = 1; i < content.length; i++) {
            int b = content[i] & 0xFF;
            acc = (acc << 7) | (b & 0x7F);
            accBits += 7;
            if (accBits > 63) {
                throw new DerException("oidString: arc too large");
            }
            if ((b & 0x80) == 0) {
                sb.append('.').append(acc);
                acc = 0;
                accBits = 0;
            }
        }
        return sb.toString();
    }

    private static byte[] ascii(String s) {
        if (s == null) {
            throw new DerException("ascii: null");
        }
        byte[] out = new byte[s.length()];
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c > 0x7F) {
                throw new DerException("ascii: non-ASCII character");
            }
            out[i] = (byte) c;
        }
        return out;
    }

    private static byte[] utf8(String s) {
        if (s == null) {
            throw new DerException("utf8: null");
        }
        try {
            return s.getBytes("UTF-8");
        } catch (java.io.UnsupportedEncodingException e) {
            throw new DerException("utf8: unsupported encoding");
        }
    }

    /** Utility: true when {@code node} is a SEQUENCE. */
    public static boolean isSequence(Node node) {
        return node != null && node.tag() == TAG_SEQUENCE;
    }
}
