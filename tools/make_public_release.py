"""Build the public, keybox-free release archive from the internal package.

The public artifact must contain no key material, so `keybox.xml` is dropped and the
archive is rewritten deterministically (sorted entries, fixed timestamps).
"""
import hashlib
import os
import zipfile

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
import sys

VERSION = sys.argv[1] if len(sys.argv) > 1 else "6.0.25"
SRC = os.path.join(ROOT, "deliverables", "teesim-" + VERSION,
                   "TEESimulator-RS_MapleSU_" + VERSION + "_ksu.zip")
OUT_DIR = os.path.join(ROOT, "dist-release")
OUT = os.path.join(OUT_DIR, "TEESimulator-RS_MapleSU_" + VERSION + "_ksu.zip")


def main():
    os.makedirs(OUT_DIR, exist_ok=True)
    with zipfile.ZipFile(SRC) as source:
        entries = [(info.filename, source.read(info.filename))
                   for info in source.infolist() if not info.is_dir()]
    kept = [(name, data) for name, data in entries
            if os.path.basename(name) != "keybox.xml"]
    dropped = [name for name, _ in entries if os.path.basename(name) == "keybox.xml"]
    if not dropped:
        raise SystemExit("expected a keybox.xml to remove, found none")

    # MAPLESU_ZIP_STORED=1 writes entries without deflate. Some vendor `unzip`
    # binaries reject otherwise-valid deflate streams ("corrupt deflate stream"),
    # so the installer can be shipped as a stored archive.
    stored = os.environ.get("MAPLESU_ZIP_STORED") == "1"
    method = zipfile.ZIP_STORED if stored else zipfile.ZIP_DEFLATED
    with zipfile.ZipFile(OUT, "w", method, compresslevel=None if stored else 9) as target:
        for name, data in sorted(kept):
            info = zipfile.ZipInfo(name, date_time=(2026, 11, 3, 0, 0, 0))
            info.compress_type = method
            info.external_attr = 0o644 << 16
            info.create_system = 3
            target.writestr(info, data)

    with open(OUT, "rb") as handle:
        digest = hashlib.sha256(handle.read()).hexdigest()
    with open(os.path.join(OUT_DIR, "SHA256SUMS.txt"), "w",
              encoding="utf-8", newline="\n") as handle:
        handle.write("%s *%s\n" % (digest, os.path.basename(OUT)))
    print("dropped:", dropped)
    print("release:", OUT)
    print("sha256:", digest)
    print("size:", os.path.getsize(OUT))


if __name__ == "__main__":
    main()
