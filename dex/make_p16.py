"""Build tee16-fix classes_p16.dex from the read-only p15 smali tree.

Pipeline (identical shape to work/tee16-smoke/make_smoke.py, which was already
validated end-to-end):

  copy  work/soter-app-lane/dex/smali_p15      ->  work/tee16-fix/dex/smali_tree
  patch smali_tree/**  (textual anchors, every anchor must match exactly once)
  (later) javac -> d8 -> baksmali for the new mpl/* helper classes
  assemble smali_tree  ->  classes_p16.dex
  header self-check: magic / checksum(adler32) / signature(sha1) / file_size
  diff surface report vs smali_p15

Staged rollout - each stage is a separate flag so a partially finished lane can
always be built and shipped:

  stage_a  N/O/Q/S lifecycle (SoftwareOperationBinder.abort + checkInputLength)
  stage_b  G05 APPLICATION_ID binding        (mpl/KeyParams + Lt4/l + AuthorizeCreate)
  stage_c  ag MAX_USES_PER_BOOT              (mpl/OpPolicy + createOperation hook)
  stage_d  G02 remaining usage               (mpl/UsagePolicy + getKeyEntry hooks)
  stage_ef ab/ak subject DER + uniqueId      (mpl/BootUniqueId, mpl/CertSurgery stub, hooks)
  stage_p  per-uid Soter scope gate          (mpl/SoterPolicy.allowFor + w4/e pre-dispatch gate)
"""
import hashlib
import os
import shutil
import struct
import subprocess
import sys
import zlib

REPO = r"D:\Maple_Workflow\MapleSU"
BASE = os.path.join(REPO, "work", "soter-app-lane", "dex", "smali_p15")
HERE = os.path.join(REPO, "work", "tee16-fix", "dex")
TREE = os.path.join(HERE, "smali_tree")
JARS = os.path.join(REPO, ".analysis", "pro-integration-implementation-20261027",
                    "tee-package-08", "work", "jars")
SDK = r"D:\Maple_Env\Android\Sdk"
ANDROID_JAR = os.path.join(SDK, "platforms", "android-35", "android.jar")
D8 = os.path.join(SDK, "build-tools", "37.0.0", "d8.bat")
JAVAC = r"C:\Program Files\Microsoft\jdk-21.0.12.101-hotspot\bin\javac.exe"
DEX = os.path.join(HERE, "classes_p16.dex")
LOG = os.path.join(HERE, "build.log")

SHIM = os.path.join(TREE, "org", "matrix", "TEESimulator", "interception", "keystore", "shim")
KS = os.path.join(TREE, "org", "matrix", "TEESimulator", "interception", "keystore")
K = os.path.join(SHIM, "KeyMintSecurityLevelInterceptor.smali")
# u4/g.i(File) —— target.txt 的解析器（前缀 !pkg/?pkg 就在这里判定）
TARGET_CONF = os.path.join(TREE, "u4", "g.smali")

STAGES = ["a", "b", "c", "d", "g", "ef", "s", "s4", "s5", "m", "h", "p", "x", "y"]

LOG_LINES = []


def log(msg):
    print(msg)
    LOG_LINES.append(msg)


# --------------------------------------------------------------------------- #
# smali edit helpers
# --------------------------------------------------------------------------- #

def _read(path):
    return open(path, encoding="utf-8").read()


def _write(path, text):
    open(path, "w", encoding="utf-8", newline="\n").write(text)


def patch_text(path, old, new, tag, label=None):
    """Replace `old` with `new`, requiring exactly one occurrence."""
    text = _read(path)
    n = text.count(old)
    if n != 1:
        raise SystemExit("[%s] anchor matched %d times (want 1) in %s"
                         % (tag, n, os.path.relpath(path, TREE)))
    _write(path, text.replace(old, new))
    log("patched %-4s %s" % (tag, label or os.path.relpath(path, TREE)))


# --------------------------------------------------------------------------- #
# stage A - lifecycle  (N FINISH_LIFECYCLE / O ABORT_LIFECYCLE / Q UPDATE_OVERFLOW /
#                       S FINISH_OVERFLOW)
# --------------------------------------------------------------------------- #

A_OLD_ABORT = """.method public declared-synchronized abort()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperationBinder;->operation:Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;

    invoke-virtual {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->abort()V
"""

A_NEW_ABORT = """.method public declared-synchronized abort()V
    .registers 3

    monitor-enter p0

    :try_start_1
    # MPL-P16-A1: abort() is a terminal transition in KeyMint. A handle that is already
    # finished (or pruned) must answer -28 INVALID_OPERATION_HANDLE, never "silently ok".
    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperationBinder;->operation:Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;

    invoke-virtual {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->getFinalized()Z

    move-result v1

    if-eqz v1, :mpl_p16_a1_ok

    new-instance v0, Landroid/os/ServiceSpecificException;

    sget-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getInvalidOperationHandle()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw v0

    :mpl_p16_a1_ok
    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperationBinder;->operation:Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;

    invoke-virtual {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->abort()V
"""

A_OLD_LEN = """    :cond_9
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;
"""

A_NEW_LEN = """    :cond_9
    # MPL-P16-A2: TOO_MUCH_DATA is a terminal KeyMint error - the handle is invalidated
    # before the exception leaves, so a following update/finish/abort all get -28.
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->finalized:Z

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;
"""


def stage_a():
    patch_text(os.path.join(SHIM, "SoftwareOperationBinder.smali"),
               A_OLD_ABORT, A_NEW_ABORT, "A1",
               "SoftwareOperationBinder.abort()V  (.registers 2->3, finalized guard)")
    patch_text(os.path.join(SHIM, "SoftwareOperation.smali"),
               A_OLD_LEN, A_NEW_LEN, "A2",
               "SoftwareOperation.checkInputLength([B)V  (:cond_9 finalizes first)")


# --------------------------------------------------------------------------- #
# mpl/* helper classes: javac (against SDK android.jar + local stubs) -> d8 -> baksmali
# --------------------------------------------------------------------------- #

def build_mpl():
    src = os.path.join(HERE, "src", "mpl")
    stubs = os.path.join(HERE, "src", "stubs")
    if not os.path.isdir(src) or not os.listdir(src):
        log("mpl  : no java sources yet, skipped")
        return
    classes = os.path.join(HERE, "classes")
    d8out = os.path.join(HERE, "d8out")
    bak = os.path.join(HERE, "baksmali")
    stub_bin = os.path.join(HERE, "stubs_bin")
    for d in (classes, d8out, bak, stub_bin):
        if os.path.isdir(d):
            shutil.rmtree(d)
        os.makedirs(d)

    # 1) compile-time-only stubs for @hide/system classes, kept OUT of the dex
    stub_files = []
    for root, _d, files in os.walk(stubs):
        for f in files:
            if f.endswith(".java"):
                stub_files.append(os.path.join(root, f))
    if stub_files:
        cmd = [JAVAC, "-source", "8", "-target", "8", "-nowarn", "-encoding", "UTF-8",
               "-classpath", ANDROID_JAR, "-d", stub_bin] + sorted(stub_files)
        r = subprocess.run(cmd, capture_output=True, text=True)
        if r.returncode != 0:
            log((r.stdout or "")[-4000:])
            log((r.stderr or "")[-8000:])
            raise SystemExit("javac (stubs) failed")
        log("stubs: %d files compiled (compile-time only, not dexed)" % len(stub_files))

    # 2) the real helpers
    cp = os.pathsep.join([ANDROID_JAR, stub_bin])
    java_files = sorted(os.path.join(src, f) for f in os.listdir(src) if f.endswith(".java"))
    cmd = [JAVAC, "-source", "8", "-target", "8", "-nowarn", "-encoding", "UTF-8",
           "-classpath", cp, "-d", classes] + java_files
    r = subprocess.run(cmd, capture_output=True, text=True)
    log("javac: rc=%d" % r.returncode)
    if r.stdout.strip():
        log(r.stdout.strip()[-4000:])
    if r.stderr.strip():
        log(r.stderr.strip()[-8000:])
    if r.returncode != 0:
        raise SystemExit("javac failed")
    cls = []
    for root, _d, files in os.walk(classes):
        for f in files:
            if f.endswith(".class"):
                cls.append(os.path.join(root, f))
    cmd = ["cmd", "/c", D8, "--release", "--min-api", "21", "--lib", ANDROID_JAR,
           "--output", d8out] + cls
    r = subprocess.run(cmd, capture_output=True, text=True)
    log("d8   : rc=%d" % r.returncode)
    if r.returncode != 0:
        log((r.stdout or "")[-4000:])
        log((r.stderr or "")[-8000:])
        raise SystemExit("d8 failed")
    cmd = ["java", "-cp", JARS + r"\*", "org.jf.baksmali.Main", "disassemble",
           os.path.join(d8out, "classes.dex"), "-o", bak]
    r = subprocess.run(cmd, capture_output=True, text=True)
    log("baksmali: rc=%d" % r.returncode)
    if r.returncode != 0:
        log((r.stderr or "")[-8000:])
        raise SystemExit("baksmali failed")
    # A class rebuilt from java replaces whatever smali_p15 shipped for it (SoterInjector /
    # SoterBridge were prebuilt there), including any stale `$1` inner-class file that the
    # new javac output no longer produces.
    for java_file in java_files:
        stem = os.path.basename(java_file)[:-5]
        for old in sorted(os.listdir(os.path.join(TREE, "mpl"))):
            if old == stem + ".smali" or old.startswith(stem + "$"):
                os.remove(os.path.join(TREE, "mpl", old))
                log("mpl  : - stale mpl/%s (rebuilt from %s.java)" % (old, stem))
    for f in sorted(os.listdir(os.path.join(bak, "mpl"))):
        shutil.copy2(os.path.join(bak, "mpl", f), os.path.join(TREE, "mpl", f))
        log("mpl  : + mpl/%s" % f)


# --------------------------------------------------------------------------- #
# build
# --------------------------------------------------------------------------- #

def assemble(out):
    if os.path.exists(out):
        os.remove(out)  # smali refuses to replace an existing file silently
    cmd = ["java", "-cp", JARS + r"\*", "org.jf.smali.Main", "assemble", TREE, "-o", out]
    r = subprocess.run(cmd, capture_output=True, text=True)
    if r.returncode != 0:
        log((r.stdout or "")[-4000:])
        log((r.stderr or "")[-12000:])
        raise SystemExit("assemble failed rc=%d" % r.returncode)
    log("assemble: ok")


def header_check(path):
    data = open(path, "rb").read()
    magic = data[:8]
    checksum = struct.unpack_from("<I", data, 8)[0]
    sig = data[12:32]
    fsize = struct.unpack_from("<I", data, 32)[0]
    ok_magic = magic == b"dex\n035\0"
    ok_ck = (zlib.adler32(data[12:]) & 0xFFFFFFFF) == checksum
    ok_sig = hashlib.sha1(data[32:]).digest() == sig
    ok_size = fsize == len(data)
    log("dex      : %d bytes" % len(data))
    log("sha256   : %s" % hashlib.sha256(data).hexdigest())
    log("magic    : %s ok=%s" % (magic, ok_magic))
    log("checksum : 0x%08x ok=%s" % (checksum, ok_ck))
    log("signature: %s ok=%s" % (sig.hex(), ok_sig))
    log("file_size: %d ok=%s" % (fsize, ok_size))
    if not (ok_magic and ok_ck and ok_sig and ok_size):
        raise SystemExit("dex header self-check failed")


def diff_surface():
    changed = []
    for root, _d, files in os.walk(TREE):
        for f in files:
            p = os.path.join(root, f)
            rel = os.path.relpath(p, TREE).replace(os.sep, "/")
            old = os.path.join(BASE, rel)
            if not os.path.exists(old):
                changed.append("+ " + rel)
                continue
            if open(old, "rb").read() != open(p, "rb").read():
                changed.append("M " + rel)
    for root, _d, files in os.walk(BASE):
        for f in files:
            rel = os.path.relpath(os.path.join(root, f), BASE).replace(os.sep, "/")
            if not os.path.exists(os.path.join(TREE, rel)):
                changed.append("- " + rel)
    log("changed vs smali_p15 (%d):" % len(changed))
    for c in sorted(changed):
        log("   " + c)
    return sorted(changed)


# --------------------------------------------------------------------------- #
# stage B+E: tag fields on t4/l (601 APPLICATION_ID, 1007 raw subject DER)
# --------------------------------------------------------------------------- #

L = os.path.join(TREE, "t4", "l.smali")
AUTHZ = os.path.join(SHIM, "AuthorizeCreate.smali")

B_OLD_FIELDS = "# instance fields\n.field public final A:Ljava/util/Date;"

B_NEW_FIELDS = """# instance fields
.field public applicationId:[B

.field public certSubjectDer:[B

.field public final A:Ljava/util/Date;"""

B_OLD_TAIL = """    :cond_331
    return-void
.end method"""

B_NEW_TAIL = """    :cond_331
    # MPL-P16-B: keep the raw tag 601 / tag 1007 payloads on the parameter object.
    # v0 still holds the KeyParameter[] here; p0 (=v57) is not encodable in a 22c field
    # access, so copy `this` into the dead low register v2 first.
    move-object/from16 v2, p0

    invoke-static {v0}, Lmpl/KeyParams;->applicationId([Landroid/hardware/security/keymint/KeyParameter;)[B

    move-result-object v1

    iput-object v1, v2, Lt4/l;->applicationId:[B

    invoke-static {v0}, Lmpl/KeyParams;->certSubjectDer([Landroid/hardware/security/keymint/KeyParameter;)[B

    move-result-object v1

    iput-object v1, v2, Lt4/l;->certSubjectDer:[B

    return-void
.end method"""

A_OLD_CHECK = """.method public final check(Lt4/l;Lt4/l;[Landroid/hardware/security/keymint/KeyParameter;)Ljava/lang/Integer;
    .registers 6
"""

A_NEW_CHECK = """.method public final check(Lt4/l;Lt4/l;[Landroid/hardware/security/keymint/KeyParameter;)Ljava/lang/Integer;
    .registers 6

    # MPL-P16-B: G05 APPLICATION_ID(601) binding (j)
    invoke-static {p1, p2, p3}, Lmpl/OpPolicy;->allow(Lt4/l;Lt4/l;[Landroid/hardware/security/keymint/KeyParameter;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :mpl_p16_authz_ok

    return-object v0

    :mpl_p16_authz_ok
    # MPL-P16-C: ag MAX_USES_PER_BOOT(404) per-boot budget, keyed by the cached param object
    invoke-static {p1, p1}, Lmpl/OpPolicy;->allowMaxUses(Ljava/lang/Object;Lt4/l;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :mpl_p16_authz_ok2

    return-object v0

    :mpl_p16_authz_ok2
"""


def stage_b():
    patch_text(L, B_OLD_FIELDS, B_NEW_FIELDS, "B1",
               "t4/l: +applicationId +certSubjectDer fields")
    patch_text(L, B_OLD_TAIL, B_NEW_TAIL, "B2",
               "t4/l.<init>(KeyParameter[]): populate the two raw-tag fields")
    patch_text(AUTHZ, A_OLD_CHECK, A_NEW_CHECK, "B3",
               "AuthorizeCreate.check: OpPolicy.allow + allowMaxUses")


# --------------------------------------------------------------------------- #
# stage E: verbatim CERTIFICATE_SUBJECT DER wins over the re-encoded X500Name
# --------------------------------------------------------------------------- #

def stage_e():
    """ab SUBJECT_FIDELITY is handled inside mpl.LeafSurgery (it rewrites the leaf subject
    with the caller's verbatim DER and re-signs). No smali edit is needed - the earlier
    register-overlay variant failed ART verification (clobbered a live register)."""
    log("stage E: delegated to mpl/LeafSurgery (no smali edit)")


# --------------------------------------------------------------------------- #
# stage F: keep INCLUDE_UNIQUE_ID and splice a per-boot uniqueId into the leaf
# --------------------------------------------------------------------------- #

F_OLD_BRANCH = "    const v13, 0x700000ca"
F_NEW_BRANCH = "    const v13, 0x12345678"

F_OLD_PAIR = """    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
"""

F_NEW_PAIR = """    # MPL-P16-F: ak INCLUDE_UNIQUE_ID - the native encoder has no uniqueId field, so a
    # per-boot 32-byte value is spliced into KeyDescription index 5 and the leaf is
    # re-signed with the keybox key. patchChain returns the original list on any failure.
    move-object/from16 v13, v0

    move-object/from16 v14, p2

    invoke-static/range {v13 .. v15}, Lmpl/LeafSurgery;->patchChain(Ljava/util/List;Lt4/l;[B)Ljava/util/List;

    move-result-object v13

    # patchChain returns null to mean "keep the chain the native library produced".
    if-eqz v13, :mpl_p16_f_keep

    move-object/from16 v0, v13

    :mpl_p16_f_keep

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
"""


def stage_f():
    patch_text(K, F_OLD_BRANCH, F_NEW_BRANCH, "F1",
               "handleGenerateKey: strip filter tag 0x700000ca -> never-matching constant "
               "(keeps INCLUDE_UNIQUE_ID, control flow untouched)")
    patch_text(K, F_OLD_PAIR, F_NEW_PAIR, "F2",
               "generateAttestedKeyPairNative: LeafSurgery.patchChain before Pair")

# --------------------------------------------------------------------------- #
# stage D: G02 remaining usage  (405 value in the getKeyEntry reply)
# --------------------------------------------------------------------------- #

D_OLD_REG = """.method private final buildKeyEntryResponse(ILjava/util/List;Lt4/l;Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 8
"""

D_NEW_REG = """.method private final buildKeyEntryResponse(ILjava/util/List;Lt4/l;Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 10

    # MPL-P16-D: keep uid (v3) and the request alias (v4); buildKeyEntryResponse overwrites
    # p1 with the authorizations and p4 with the response metadata later on.
    move/from16 v3, p1

    iget-object v4, p4, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;
"""

D_OLD_AUTH = """    invoke-static {p3, p1, p2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->access$toAuthorizations(Lt4/l;II)[Landroid/system/keystore2/Authorization;

    move-result-object p1

    iput-object p1, p4, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;
"""

D_NEW_AUTH = """    invoke-static {p3, p1, p2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->access$toAuthorizations(Lt4/l;II)[Landroid/system/keystore2/Authorization;

    move-result-object p1

    # MPL-P16-D: report the live remaining count instead of the declared 405 limit.
    invoke-static {p1, v3, v4}, Lmpl/UsagePolicy;->adjust([Landroid/system/keystore2/Authorization;ILjava/lang/String;)[Landroid/system/keystore2/Authorization;

    move-result-object p1

    iput-object p1, p4, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;
"""


def stage_d():
    patch_text(K, D_OLD_REG, D_NEW_REG, "D1",
               "buildKeyEntryResponse: capture uid+alias, .registers 8->10")
    patch_text(K, D_OLD_AUTH, D_NEW_AUTH, "D2",
               "buildKeyEntryResponse: UsagePolicy.adjust -> live remaining count")

# --------------------------------------------------------------------------- #
# stage D2: wrap InterceptorUtils.patchAuthorizations so every keystore2 reply
# (the path that actually carries the live 405 value) is adjusted.
# --------------------------------------------------------------------------- #

IU = os.path.join(KS, "InterceptorUtils.smali")
K2 = os.path.join(KS, "Keystore2Interceptor.smali")

D2_SIG = ".method public final patchAuthorizations([Landroid/system/keystore2/Authorization;I)[Landroid/system/keystore2/Authorization;"
D2_NEWSIG = ".method public final patchAuthorizations0([Landroid/system/keystore2/Authorization;I)[Landroid/system/keystore2/Authorization;"

D2_WRAPPER = """.method public final patchAuthorizations([Landroid/system/keystore2/Authorization;I)[Landroid/system/keystore2/Authorization;
    .registers 4

    # MPL-P16-D2: keystore2 replies carry the stored USAGE_COUNT_LIMIT; rewrite it to the
    # live remaining count from the module's own usageCounters map before the framework
    # turns it into KeyInfo.getRemainingUsageCount().
    invoke-virtual {p0, p1, p2}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->patchAuthorizations0([Landroid/system/keystore2/Authorization;I)[Landroid/system/keystore2/Authorization;

    move-result-object v0

    invoke-static {v0, p2}, Lmpl/UsagePolicy;->adjustUid([Landroid/system/keystore2/Authorization;I)[Landroid/system/keystore2/Authorization;

    move-result-object v0

    return-object v0
.end method
"""


def stage_d2():
    patch_text(IU, D2_SIG, D2_NEWSIG, "D2a",
               "InterceptorUtils.patchAuthorizations renamed -> patchAuthorizations0")
    text = _read(IU)
    # append the wrapper right after the renamed method body
    marker = ".end method"
    idx = text.index(D2_NEWSIG)
    end = text.index(marker, idx) + len(marker)
    text = text[:end] + "\n\n" + D2_WRAPPER + text[end:]
    _write(IU, text)
    log("patched D2b InterceptorUtils: + patchAuthorizations wrapper")
    old = "->patchAuthorizations([Landroid/system/keystore2/Authorization;I)"
    txt = _read(K2)
    n = txt.count(old)
    if n != 3:
        raise SystemExit("expected 3 patchAuthorizations calls in Keystore2Interceptor, found %d" % n)
    _write(K2, txt)  # calls stay untouched: they now hit the wrapper by name
    log("checked D2c Keystore2Interceptor: 3 call sites still resolve to the wrapper")

# --------------------------------------------------------------------------- #
# stage S: Soter forge payloads (Duck: zero signature / cpu_id / uid / counter)
# --------------------------------------------------------------------------- #

SOTER = os.path.join(TREE, "w4", "e.smali")

S1_OLD = """    sget-object p0, Lw4/e;->a:Lw4/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lw4/e;->d:La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    array-length p0, p0
"""

S1_NEW = """    # MPL-P16-S1: ASK/AuthKey now carry a positive counter, a device-derived cpu_id, the
    # calling uid, and a genuine RSA signature instead of 256 zero bytes.
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Lmpl/SoterForge;->askBlob(I)[B

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    array-length p0, p0
"""

S2_OLD = """    sget-object p0, Lw4/e;->f:[B

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    array-length p0, p0
"""

S2_NEW = """    # MPL-P16-S2: finishSign returns a real RSA signature, not 256 zero bytes.
    invoke-static {}, Lmpl/SoterForge;->finishSign()[B

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    array-length p0, p0
"""


def stage_s():
    patch_text(SOTER, S1_OLD, S1_NEW, "S1",
               "Soter getAppSecureKey/getAuthKey: real payload via mpl/SoterForge.askBlob")
    patch_text(SOTER, S2_OLD, S2_NEW, "S2",
               "Soter finishSign: real RSA signature via mpl/SoterForge.finishSign")

# --------------------------------------------------------------------------- #
# stage M: startup build marker (lets logcat prove which dex the daemon loaded)
# --------------------------------------------------------------------------- #

APP = os.path.join(TREE, "org", "matrix", "TEESimulator", "App.smali")

M_OLD = """    invoke-static {}, Lmpl/SoterInjector;->start()V
"""

M_NEW = """    # MPL-BUILD: startup marker so a device log proves which dex is active.
    const-string v0, "MPL-BUILD"

    const-string v1, "p16n: soter uid <- request parcel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lmpl/SoterInjector;->start()V
"""


def stage_m():
    patch_text(APP, M_OLD, M_NEW, "M1",
               "App: log MPL-BUILD startup marker")

# --------------------------------------------------------------------------- #
# stage H: one-shot vendor Soter HAL probe (mpl/HalProbe)
# --------------------------------------------------------------------------- #
#
# Switch-gated: App.main only reaches HalProbe.runAtStartup(), which returns immediately
# unless /data/adb/tricky_store/run_hal_probe exists. The probe itself runs on its own
# daemon thread (a hung TA transaction must never delay the interceptors) and writes
# /sdcard/Download/soter_hal_probe.json. Nothing in the existing startup path changes.

H_ANCHOR = """    invoke-static {}, Lmpl/SoterInjector;->start()V
"""

H_NEW = """    # MPL-HALPROBE: one-shot, switch-gated vendor Soter HAL probe + residual sample scan.
    # No switch file -> no thread, no binder transaction, no file write; never throws.
    invoke-static {}, Lmpl/HalProbe;->runAtStartup()V

    invoke-static {}, Lmpl/SoterInjector;->start()V
"""


def stage_h():
    patch_text(APP, H_ANCHOR, H_NEW, "H1",
               "App: switch-gated HalProbe.runAtStartup() before SoterInjector")

# --- S3: separate AuthKey blob + realistic getVersion ------------------------ #

S3_TABLE_OLD = """    .packed-switch 0x1
        :pswitch_10a
        :pswitch_da
        :pswitch_c7
        :pswitch_10a
        :pswitch_10a
        :pswitch_da
        :pswitch_10a
        :pswitch_c7
        :pswitch_ac
        :pswitch_8d
        :pswitch_6e
        :pswitch_5b
        :pswitch_43
"""

S3_TABLE_NEW = """    .packed-switch 0x1
        :pswitch_10a
        :pswitch_da
        :pswitch_c7
        :pswitch_10a
        :pswitch_10a
        :pswitch_mpl_auth
        :pswitch_10a
        :pswitch_c7
        :pswitch_ac
        :pswitch_8d
        :pswitch_6e
        :pswitch_5b
        :pswitch_43
"""

S3_ANCHOR = """    :pswitch_da
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
"""

S3_AUTH_CASE = """    # MPL-P16-S3: getAuthKey must return the AUTH key, not the ASK again.
    :pswitch_mpl_auth
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Lmpl/SoterForge;->authBlob(I)[B

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    array-length p0, p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    new-instance p0, Lv4/d;

    invoke-direct {p0, p3}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_da
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
"""

S3_VER_OLD = """    :pswitch_5b
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
"""

S3_VER_NEW = """    :pswitch_5b
    # MPL-P16-S3: real Soter reports a version number, not 1.
    const/4 p0, 0x3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
"""


def stage_s3():
    patch_text(SOTER, S3_TABLE_OLD, S3_TABLE_NEW, "S3a",
               "soterserver switch: code 6 -> separate getAuthKey handler")
    patch_text(SOTER, S3_ANCHOR, S3_AUTH_CASE, "S3b",
               "soterserver: new getAuthKey case using SoterForge.authBlob")
    patch_text(SOTER, S3_VER_OLD, S3_VER_NEW, "S3c",
               "soterserver: getVersion returns 3")


# --------------------------------------------------------------------------- #
# stage G2: G02 remaining-usage, served from the cached KeyEntryResponse
# --------------------------------------------------------------------------- #

K2_ENTRY = os.path.join(KS, "Keystore2Interceptor.smali")

G2_LOG_OLD = """.method private final logServedChain(IJLjava/lang/String;Landroid/system/keystore2/KeyEntryResponse;)V
    .registers 6
"""

G2_LOG_NEW = """.method private final logServedChain(IJLjava/lang/String;Landroid/system/keystore2/KeyEntryResponse;)V
    .registers 9

    # MPL-P16-G2a: for a key the module generated, Keystore2Interceptor.onPreTransact answers
    # getKeyEntry from a cached KeyEntryResponse and returns it verbatim; every 405 in that
    # object is the value frozen at generation time. p16h/p16k adjusted only the two reply
    # *builders*, so the second remaining() lookup replayed limit=2 - measured on device as
    # "adjust ... limit=2 -> no live counter (null)" followed by remaining=2->2.
    # logServedChain runs immediately before each of the three cached returns and carries
    # (uid, alias-or-"keyid:N", response), so it is the one choke point.
    move-object/from16 v0, p5

    move/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lmpl/UsagePolicy;->adjustResponse(Landroid/system/keystore2/KeyEntryResponse;ILjava/lang/String;)V
"""

G2_FINISH_OLD = """.method private static final handleCreateOperation$lambda$0$14(Ljava/util/concurrent/atomic/AtomicInteger;Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Ljava/lang/Integer;)La/h;
    .registers 4

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0
"""

G2_FINISH_NEW = """.method private static final handleCreateOperation$lambda$0$14(Ljava/util/concurrent/atomic/AtomicInteger;Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Ljava/lang/Integer;)La/h;
    .registers 6

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    # MPL-P16-G2b: mirror the module's post-decrement value, keyed by the exact
    # KeyIdentifier it used, so a map that cannot be found by (uid, alias) still reports
    # the right remaining count. (uid, alias) is also kept, for the reply hooks.
    move-object/from16 v1, p1

    move/from16 v2, p0

    invoke-static {v1, v2}, Lmpl/UsagePolicy;->onFinish(Ljava/lang/Object;I)V
"""


def stage_g2():
    patch_text(K2_ENTRY, G2_LOG_OLD, G2_LOG_NEW, "G2a",
               "Keystore2Interceptor.logServedChain: UsagePolicy.adjustResponse (.registers 6->9)")
    patch_text(K, G2_FINISH_OLD, G2_FINISH_NEW, "G2b",
               "handleCreateOperation finish lambda: UsagePolicy.onFinish mirror (.registers 4->6)")


# --------------------------------------------------------------------------- #
# stage S4: Soter interceptor evidence + real challenge signing + device id
# --------------------------------------------------------------------------- #

S4_TX_OLD = """    const/4 p0, 0x1

    const-string p1, "obtain(...)"

    const/4 p2, 0x0

    packed-switch p4, :pswitch_data_11e
"""

S4_TX_NEW = """    const/4 p0, 0x1

    const-string p1, "obtain(...)"

    const/4 p2, 0x0

    # MPL-P16-S4a: entry proof. p16h/p16k logged only inside askBlob/authBlob, so a Duck run
    # with no MPL-SOTER line was read as "the forge was never called". Transaction 1
    # (generateAppSecureKey) never reaches those helpers, so that reading was unsound: every
    # intercepted code is logged here, before dispatch.
    invoke-static {p4}, Lmpl/SoterForge;->logTx(I)V

    packed-switch p4, :pswitch_data_11e
"""

S4_INIT_OLD = """    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    const-wide/16 p0, 0x1

    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V
"""

S4_INIT_NEW = """    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    # MPL-P16-S4b: initSigh(uid, kname, challenge) - cache the caller's challenge and report
    # a real session id instead of the constant 1. The request Parcel (p8) is ours to read;
    # SoterForge.initSign swallows any malformed payload and returns -1.
    move-object/from16 p0, p8

    invoke-static {p0}, Lmpl/SoterForge;->initSign(Landroid/os/Parcel;)J

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V
"""

S4_SIGN_OLD = """    # MPL-P16-S2: finishSign returns a real RSA signature, not 256 zero bytes.
    invoke-static {}, Lmpl/SoterForge;->finishSign()[B
"""

S4_SIGN_NEW = """    # MPL-P16-S4c: finishSign(session) must sign the challenge handed to initSigh, not a
    # constant. The session id comes out of the request Parcel (enforced inside).
    move-object/from16 p0, p8

    invoke-static {p0}, Lmpl/SoterForge;->finishSignFromParcel(Landroid/os/Parcel;)[B
"""

S4_DEV_OLD = """    sget-object p0, Lw4/e;->e:[B

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V
"""

S4_DEV_NEW = """    # MPL-P16-S4d: getDeviceId must not answer the literal TEESIM-SOTER-0001 on every device.
    invoke-static {}, Lmpl/SoterForge;->deviceId()[B

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V
"""

S4_VER_OLD = """    :pswitch_5b
    # MPL-P16-S3: real Soter reports a version number, not 1.
    const/4 p0, 0x3
"""

S4_VER_NEW = """    :pswitch_5b
    # MPL-P16-S4e: the shipped saterserver on this device reports 1; 3 was our invention.
    const/4 p0, 0x1
"""


def stage_s4():
    patch_text(SOTER, S4_TX_OLD, S4_TX_NEW, "S4a",
               "soterserver: log every intercepted transaction (MPL-SOTER txn code=)")
    patch_text(SOTER, S4_INIT_OLD, S4_INIT_NEW, "S4b",
               "soterserver: initSigh caches challenge + real session id")
    patch_text(SOTER, S4_SIGN_OLD, S4_SIGN_NEW, "S4c",
               "soterserver: finishSign(session) signs the cached challenge")
    patch_text(SOTER, S4_DEV_OLD, S4_DEV_NEW, "S4d",
               "soterserver: getDeviceId device-derived via SoterForge.deviceId")
    patch_text(SOTER, S4_VER_OLD, S4_VER_NEW, "S4e",
               "soterserver: getVersion back to 1 (device firmware value)")


# --------------------------------------------------------------------------- #
# stage S5: the reply JSON uid is the *requested* uid (AIDL argument), not
#           Binder.getCallingUid()
#
# Duck p16m report: "blob uid 10276 instead of the requested uid 10494". The
# keep-alive binding is held by the module daemon, so the service-observed caller
# can be the intermediary (10276) instead of the app that asked (10494). The AIDL
# stub puts the requested uid right after the interface token, so the request
# Parcel is the only correct source:
#     getAppSecureKey(int uid)          -> token, int uid
#     getAuthKey(int uid, String kname) -> token, int uid, String kname
# Reading happens in mpl.SoterForge.blobFromParcel, which catches every failure
# and falls back to Binder.getCallingUid(), so a malformed parcel can never make
# onPreTransact throw and hand the transaction back to the real service.
# --------------------------------------------------------------------------- #

S5_SAVE_OLD = """    invoke-static {p4}, Lmpl/SoterForge;->logTx(I)V

    packed-switch p4, :pswitch_data_11e
"""

S5_SAVE_NEW = """    invoke-static {p4}, Lmpl/SoterForge;->logTx(I)V

    # MPL-P16-S5a: keep the request Parcel (p8) in a local before dispatch. Every branch
    # below reuses p0..p3 as scratch; p8 itself is only read directly by :pswitch_8d
    # (finishSign) and :pswitch_ac (initSigh). v0 is dead after the logTransaction$default
    # range call above, so the type change to Landroid/os/Parcel; is verifier-safe.
    move-object/from16 v0, p8

    packed-switch p4, :pswitch_data_11e
"""

S5_ASK_OLD = """    # MPL-P16-S1: ASK/AuthKey now carry a positive counter, a device-derived cpu_id, the
    # calling uid, and a genuine RSA signature instead of 256 zero bytes.
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Lmpl/SoterForge;->askBlob(I)[B
"""

S5_ASK_NEW = """    # MPL-P16-S5b: getAppSecureKey(int uid) - the reply JSON must echo the uid the caller
    # ASKED for, read from the request Parcel (v0). Binder.getCallingUid() is the fallback
    # inside SoterForge, not the source: the daemon-held keep-alive binding can attribute
    # this transaction to the intermediary (10276) instead of the app (10494).
    invoke-static {v0}, Lmpl/SoterForge;->askBlob(Landroid/os/Parcel;)[B
"""

S5_AUTH_OLD = """    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Lmpl/SoterForge;->authBlob(I)[B
"""

S5_AUTH_NEW = """    # MPL-P16-S5c: getAuthKey(int uid, String kname) - uid and alias both come from the
    # request Parcel; the alias is logged so a per-alias key split needs no new build hook.
    invoke-static {v0}, Lmpl/SoterForge;->authBlob(Landroid/os/Parcel;)[B
"""

S5_MARKER = "# MPL-P16-S5a:"


def stage_s5():
    """Idempotent: stage s4 also applies this, so the lane's usual build line keeps the fix."""
    if S5_MARKER in _read(SOTER):
        log("stage S5: already applied, skipped")
        return
    patch_text(SOTER, S5_SAVE_OLD, S5_SAVE_NEW, "S5a",
               "soterserver: keep the request Parcel in v0 before packed-switch")
    patch_text(SOTER, S5_ASK_OLD, S5_ASK_NEW, "S5b",
               "soterserver: getAppSecureKey uid <- request Parcel (SoterForge.askBlob(Parcel))")
    patch_text(SOTER, S5_AUTH_OLD, S5_AUTH_NEW, "S5c",
               "soterserver: getAuthKey uid+alias <- request Parcel (SoterForge.authBlob(Parcel))")


# --------------------------------------------------------------------------- #
# stage P: per-application (per-uid) scope gate on the Soter forge
#
# Upstream w4/e.onPreTransact forks unconditionally: every caller gets the forged
# ASK/AuthKey blob. p16p/p16q put a policy check in front of the dispatch, so a uid
# that is not in the module's scope list is answered by the *real* service - the same
# Lv4/c;->a pass-through that the method==null branch a few instructions above
# returns, so no new return shape is invented.
#
# Register proof (the gate must not add a register):
#   .registers 18 = v0..v8 + p0..p8 (this, long, IBinder, code, flags, uid, pid,
#   Parcel). p6 = callingUid: v4/g.onPreTransact logs logTransaction(v4, v5) with
#   move v4,p6 / move/from16 v5,p7, and upstream KeystoreInterceptor runs its own
#   per-uid policy call `u4/g->d(p6)` from the same slot. p4 = transaction code.
#   v1 is dead at the insertion point: its last write is `move-wide v1, p1` feeding
#   the logTransaction$default range call, and no pswitch branch reads v1 before
#   writing it. v0 holds the request Parcel (S5a) and is only READ here.
#   The method carries no try/catch, so the exception table cannot be affected.
#
# p16q: the gate moved *after* S5a's `move-object/from16 v0, p8`, because the decision
# now keys on the uid declared inside the request Parcel - allowFor(v0, p4, p6) -
# instead of the binder caller uid. p8 is not touched.
# --------------------------------------------------------------------------- #

P_GATE_OLD = """    move-object/from16 v0, p8

    packed-switch p4, :pswitch_data_11e
"""

P_GATE_NEW = """    move-object/from16 v0, p8

    # MPL-P16-P2: per-app scope gate (mpl/SoterPolicy.allowFor). The key is the uid the
    # REQUEST declares (first int argument of codes 1..9), not the binder caller: the
    # daemon-held keep-alive binding can make the service see an intermediary uid (p16n
    # measured 10276 for a call made by 10494), which would turn a per-app policy into
    # all-or-nothing for every relayed transaction. allowFor saves and restores the
    # Parcel position, so the SoterForge reads further down still see the token and uid.
    # allow() is fail-open: no scope file, an empty one, or any read error means "forge
    # for every app". A denied uid gets Lv4/c;->a - the very pass-through the
    # method==null branch above returns, so the real saterserver answers.
    # v1 is dead here and no pswitch branch reads it; .registers stays 18 and this
    # method has no exception table.
    invoke-static {v0, p4, p6}, Lmpl/SoterPolicy;->allowFor(Landroid/os/Parcel;II)Z

    move-result v1

    if-eqz v1, :mpl_scope_deny

    goto :mpl_scope_go

    :mpl_scope_deny
    sget-object v1, Lv4/c;->a:Lv4/c;

    return-object v1

    :mpl_scope_go

    packed-switch p4, :pswitch_data_11e
"""


def stage_p():
    patch_text(SOTER, P_GATE_OLD, P_GATE_NEW, "P2",
               "soterserver: per-uid scope gate (Parcel uid first) before the packed-switch")


# --------------------------------------------------------------------------- #
# stage X: Soter service semantics (the PARITY work)
#
# Everything below replaces the reply *decision* in w4/e.smali, never the reply *shape*:
# each branch keeps its presence/field order and only swaps the constant it used to write
# for the value mpl.SoterSvc returns. The Java layer (mpl/SoterSvc, mpl/SoterKeys,
# mpl/SoterResult) is where the error space, the session state machine and the key registry
# live; this stage only wires the six dispatch targets to it.
#
# Register proof for every branch (path .registers is 18 = v0..v8 + p0..p8):
#   v0  = request Parcel, set by S5a, read-only here (SoterSvc consumes the AIDL args);
#   v1  = dead after the scope gate (its last write is the gate's move-result) - used here
#         for the resultCode and for array lengths;
#   v2  = dead after the logTransaction$default range call - only touched by iget-wide's
#         second half in :pswitch_ac (v1:v2 is exactly the slot the earlier move-wide used);
#   p0..p3 = the reply Parcel / payload scratch the branches already recycle.
# No branch adds a local, so .registers stays 18 and no exception table changes.
#
# Ordering: this stage must run after s/s4/s5 (the branches only exist in their final text
# after those) and after p (whose anchor is the S5a comment block).
# --------------------------------------------------------------------------- #

X1_OLD = """    :pswitch_10a
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V
"""

X1_NEW = """    :pswitch_10a
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/os/Parcel;->writeNoException()V

    # MPL-P16-X1 (P1-4): codes 1/4/5/7 answer with a bare int that used to be a constant 0.
    # SoterSvc.intOp maps them onto the shipped semantics: 1 generate the per-uid ASK,
    # 4 generate the per-(uid, alias) AuthKey (-202 on an empty kname), 5 remove that AuthKey
    # (-202 on an empty kname, and it really deletes), 7 removeAllAuthKey (ASK plus every
    # AuthKey of the uid). v0 is the request Parcel, p4 the transaction code.
    invoke-static {p4, v0}, Lmpl/SoterSvc;->intOp(ILandroid/os/Parcel;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V
"""

X2_OLD = """    :pswitch_c7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V
"""

X2_NEW = """    :pswitch_c7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    # MPL-P16-X2 (P0-2): hasAskAlready (code 3) and hasAuthKey (code 8) used to answer a
    # constant 1. They now ask the registry, so a removed key really reads as false and an
    # empty kname answers false instead of raising (SoterService$c.smali:2197-2347).
    invoke-static {p4, v0}, Lmpl/SoterSvc;->has(ILandroid/os/Parcel;)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V
"""

X3_OLD = """    :pswitch_da
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    # MPL-P16-S5b: getAppSecureKey(int uid) - the reply JSON must echo the uid the caller
    # ASKED for, read from the request Parcel (v0). Binder.getCallingUid() is the fallback
    # inside SoterForge, not the source: the daemon-held keep-alive binding can attribute
    # this transaction to the intermediary (10276) instead of the app (10494).
    invoke-static {v0}, Lmpl/SoterForge;->askBlob(Landroid/os/Parcel;)[B

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    array-length p0, p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V
"""

X3_NEW = """    :pswitch_da
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    # MPL-P16-X3 (P1-4 + P0-2): getAppSecureKey(int uid). The resultCode slot is no longer a
    # constant 0: SoterSvc.exportAsk answers 0 on success, -200 when the key cannot be
    # exported, -1000 when the ASK was explicitly removed (removal is sticky), and never
    # returns a null byte[] (the SDK dereferences exportData.length).
    invoke-static {v0}, Lmpl/SoterSvc;->exportAsk(Landroid/os/Parcel;)Lmpl/SoterResult;

    move-result-object p0

    iget v1, p0, Lmpl/SoterResult;->rc:I

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lmpl/SoterResult;->data:[B

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    array-length v1, p2

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V
"""

X4_OLD = """    # MPL-P16-S3: getAuthKey must return the AUTH key, not the ASK again.
    :pswitch_mpl_auth
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    # MPL-P16-S5c: getAuthKey(int uid, String kname) - uid and alias both come from the
    # request Parcel; the alias is logged so a per-alias key split needs no new build hook.
    invoke-static {v0}, Lmpl/SoterForge;->authBlob(Landroid/os/Parcel;)[B

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    array-length p0, p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V
"""

X4_NEW = """    # MPL-P16-S3: getAuthKey must return the AUTH key, not the ASK again.
    :pswitch_mpl_auth
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    # MPL-P16-X4 (P1-4 + P0-2): getAuthKey(int uid, String kname). Empty kname -202 (the
    # shipped service refuses before touching the TA), absent alias -1000 with no exportData
    # (the SDK turns that into a null model), otherwise the per-alias AuthKey blob. The key is
    # the one the alias registered, so two aliases of one uid are two different keys.
    invoke-static {v0}, Lmpl/SoterSvc;->exportAuth(Landroid/os/Parcel;)Lmpl/SoterResult;

    move-result-object p0

    iget v1, p0, Lmpl/SoterResult;->rc:I

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lmpl/SoterResult;->data:[B

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    array-length v1, p2

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V
"""

X5_OLD = """    :pswitch_ac
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    # MPL-P16-S4b: initSigh(uid, kname, challenge) - cache the caller's challenge and report
    # a real session id instead of the constant 1. The request Parcel (p8) is ours to read;
    # SoterForge.initSign swallows any malformed payload and returns -1.
    move-object/from16 p0, p8

    invoke-static {p0}, Lmpl/SoterForge;->initSign(Landroid/os/Parcel;)J

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V
"""

X5_NEW = """    :pswitch_ac
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    # MPL-P16-X5 (P0-1 + P1-4): initSigh(uid, kname, challenge). Empty kname -202, empty
    # challenge -203, success rc 0 with a non-zero session id bound to (uid, alias, challenge)
    # that lives 30 s and is spent by the first successful finishSign. SoterSessionResult is
    # (session:long, resultCode:int) - the long is written first.
    invoke-static {v0}, Lmpl/SoterSvc;->initSigh(Landroid/os/Parcel;)Lmpl/SoterResult;

    move-result-object p0

    iget-wide v1, p0, Lmpl/SoterResult;->session:J

    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget v1, p0, Lmpl/SoterResult;->rc:I

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V
"""

X6_OLD = """    :pswitch_8d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    # MPL-P16-S4c: finishSign(session) must sign the challenge handed to initSigh, not a
    # constant. The session id comes out of the request Parcel (enforced inside).
    move-object/from16 p0, p8

    invoke-static {p0}, Lmpl/SoterForge;->finishSignFromParcel(Landroid/os/Parcel;)[B

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    array-length p0, p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V
"""

X6_NEW = """    :pswitch_8d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    # MPL-P16-X6 (P0-3): finishSign(signSession). The three-way silent fallback is gone: a
    # session of 0, an unknown id, an already spent id, an expired id and one created by
    # another uid all answer -204 with empty exportData (SoterService$c.smali:3069 uses
    # -0xcc for session 0 and does not reach the TA). A live session signs the challenge it
    # was opened with, with the AuthKey its alias registered.
    invoke-static {v0}, Lmpl/SoterSvc;->finishSign(Landroid/os/Parcel;)Lmpl/SoterResult;

    move-result-object p0

    iget v1, p0, Lmpl/SoterResult;->rc:I

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lmpl/SoterResult;->data:[B

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    array-length v1, p2

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V
"""

X_MARKER = "# MPL-P16-X1"


def stage_parity():
    """Soter service semantics: error space, session state machine, durable key registry."""
    if X_MARKER in _read(SOTER):
        log("stage X: already applied, skipped")
        return
    patch_text(SOTER, X1_OLD, X1_NEW, "X1",
               "soterserver: tx1/4/5/7 -> SoterSvc.intOp (real generate/remove + -202)")
    patch_text(SOTER, X2_OLD, X2_NEW, "X2",
               "soterserver: tx3/8 -> SoterSvc.has (real hasAskAlready/hasAuthKey)")
    patch_text(SOTER, X3_OLD, X3_NEW, "X3",
               "soterserver: tx2 -> SoterSvc.exportAsk (rc 0/-200/-1000, per-uid ASK)")
    patch_text(SOTER, X4_OLD, X4_NEW, "X4",
               "soterserver: tx6 -> SoterSvc.exportAuth (rc 0/-202/-1000/-200, per-alias)")
    patch_text(SOTER, X5_OLD, X5_NEW, "X5",
               "soterserver: tx9 -> SoterSvc.initSigh (session state machine, -202/-203)")
    patch_text(SOTER, X6_OLD, X6_NEW, "X6",
               "soterserver: tx10 -> SoterSvc.finishSign (no fallback, -204, one-shot)")


# --------------------------------------------------------------------------- #
# stage Y - target.txt marker compatibility
#   实测（设备探针 + l/q.java:78 g1=endsWith / :192 m1=removeSuffix）证明产品 dex 原生
#   只认**后缀** `pkg!` / `pkg?`（= 上游 ConfigurationManager 与 README:79-83 的写法）。
#   审计 §2.6(a)/§4-10 说"我们是前缀、上游是后缀"方向正好相反 —— 前缀行在原实现里会
#   被整行当成包名（`!com.foo` → 包名 "!com.foo"）而静默失效，但 MapleSU 自己的 WebUI
#   口径和 KSU webui.sh 的 features_note 都宣称前缀也能用。
#   这里在 u4/g.i(File) 的标记判定前插一次 mpl.TargetTxt.normalize()，把前缀就地转成
#   后缀（后缀/无标记行原样返回），判定顺序与语义都不变。
# --------------------------------------------------------------------------- #

Y_TARGET_OLD = """    :cond_8c
    invoke-static {v10, v1, v7}, Ll/q;->g1(Ljava/lang/String;Ljava/lang/String;Z)Z
"""

Y_TARGET_NEW = """    :cond_8c
    # MPL-P16-Y1: target.txt 标记兼容（审计 §2.6(a)/§4-10，方向已按实测修正）。
    # 原生实现是**后缀**语义：g1()=endsWith + m1()=removeSuffix，即 `pkg!`=GENERATE、
    # `pkg?`=PATCH（与上游 README:79-83 一致）。不加这一步的话，MapleSU 口径里的前缀
    # 写法（`!pkg` / `?pkg`）会被整行当成一个不存在的包名而静默失效。
    # mpl.TargetTxt.normalize 只把前缀转成后缀（后缀/无标记行原样返回），下面的
    # endsWith 判定顺序与 GENERATE/PATCH/AUTO 语义完全不变。
    invoke-static {v10}, Lmpl/TargetTxt;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1, v7}, Ll/q;->g1(Ljava/lang/String;Ljava/lang/String;Z)Z
"""


def stage_y():
    """target.txt：原生后缀（pkg!/pkg?）之外，再接受 MapleSU 前缀（!pkg/?pkg）。"""
    if "MPL-P16-Y1" in _read(TARGET_CONF):
        log("stage Y: already applied, skipped")
        return
    patch_text(TARGET_CONF, Y_TARGET_OLD, Y_TARGET_NEW, "Y1",
               "u4/g.i(): target.txt 原生后缀 pkg!/pkg? + 前缀 !pkg/?pkg 归一化")


try:
    import stage_kt as _stage_kt
except Exception:  # pragma: no cover - stage is optional for old checkouts
    _stage_kt = None


def main():
    stages = sys.argv[1:] or STAGES
    if os.path.isdir(TREE):
        shutil.rmtree(TREE)
    shutil.copytree(BASE, TREE)
    log("base : smali_p15 copied -> smali_tree")
    if "a" in stages:
        stage_a()
    if "b" in stages:
        stage_b()
    if "e" in stages:
        stage_e()
    if "f" in stages:
        stage_f()
    if "d" in stages:
        stage_d()
        stage_d2()
    if "g" in stages:
        stage_g2()
    if "s" in stages:
        stage_s()
        stage_s3()
    if "s4" in stages:
        stage_s4()
    # p16n: the uid fix travels with the lane's standard build line, so a stale
    # "… s s4 m" invocation can never produce a dex without it. stage_s5 is idempotent.
    if "s5" in stages or "s4" in stages:
        stage_s5()
    if "m" in stages:
        stage_m()
    # p16h: switch-gated HAL probe; anchored on the SoterInjector call so it can run with or
    # without stage M, and it never changes control flow when the switch file is absent.
    if "h" in stages:
        stage_h()
    # p16p: the scope gate is applied last on purpose - its anchor is the S5a comment
    # block, which only exists after stage_s4/stage_s5.
    if "p" in stages:
        stage_p()
    # p16 parity: the Soter service semantics ride on the standard build line. Their anchors
    # are the branches s/s3/s4/s5/p leave behind, so the stage runs strictly after them.
    if "x" in stages or ("p" in stages and "s4" in stages):
        stage_parity()
    # p16y: target.txt 前缀/后缀双兼容。与 s5/parity 同理挂在标准构建线上 —— 用旧的
    # "… s s4 m p" 命令重编也不会把这处修复丢掉；stage_y 自身幂等。
    if "y" in stages or "m" in stages:
        stage_y()
    if _stage_kt is not None:
        _stage_kt.apply(TREE, log)
    build_mpl()
    assemble(DEX)
    diff_surface()
    header_check(DEX)
    open(LOG, "w", encoding="utf-8", newline="\n").write("\n".join(LOG_LINES) + "\n")
    log("log  : %s" % LOG)


if __name__ == "__main__":
    main()
