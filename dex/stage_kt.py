"""Post-stage smali edits for make_p16.

make_p16 rebuilds smali_tree from smali_base on every run, so these changes cannot be
made by hand: they are applied here, after all built-in stages, every build.

  * G02: durable exhaustion tombstone (`markDeleted` + non-consuming lookup);
  * G02b: explicit KEY_NOT_FOUND(7) instead of the reused v6 register;
  * H03: alias reads as absent while doSoftwareKeyGen runs;
  * experimental key takeover for target uids (mpl.KeyTakeover).

The guard at the end fails the build if a call site exists without its method, which is
how an earlier dex shipped `NoSuchMethodError: markDeleted`.
"""
import os

NL = "\n"

MARKER = """.method public static markDeleted(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)V
    .registers 2

    if-eqz p0, :cond_0

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->deletedSoftwareKeys:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final forgetDeletedKey("""

OLD_REMOVE = """    sget-object v5, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->deletedSoftwareKeys:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z"""

NEW_CONTAINS = """    sget-object v5, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->deletedSoftwareKeys:Ljava/util/Set;

    # 6.0.32: non-consuming tombstone (see markDeleted); cleared on regeneration.
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z"""

OLD_EXH = """    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    invoke-virtual {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->cleanupKeyData(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)V"""

NEW_EXH = """    # 6.0.32: durable tombstone so containsAlias()/the next operation see KEY_NOT_FOUND.
    invoke-static {p1}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->markDeleted(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)V

""" + OLD_EXH

OLD_H03 = """    move-object/from16 v6, p6

    move-object/from16 v1, p7

    invoke-static {}, Ljava/lang/System;->nanoTime()J"""

NEW_H03 = """    move-object/from16 v6, p6

    move-object/from16 v1, p7

    # 6.0.32 (H03): the alias reads as absent until the cached response exists.
    invoke-static {v1}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->markDeleted(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J"""

OLD_110 = """    :cond_110
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;"""

NEW_110 = """    :cond_110
    # Experimental: target uid + switch -> KEY_NOT_FOUND so the app regenerates the key.
    invoke-static {v9}, Lu4/g;->j(I)Z

    move-result v6

    if-eqz v6, :cond_110_forward

    invoke-static {}, Lmpl/KeyTakeover;->enabled()Z

    move-result v6

    if-eqz v6, :cond_110_forward

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createServiceSpecificErrorReply(I)Lv4/d;

    move-result-object v0

    return-object v0

    :cond_110_forward
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;"""

STALE_REPLY = ("    invoke-virtual {v0, v6}, Lorg/matrix/TEESimulator/interception/keystore/"
               "InterceptorUtils;->createErrorReply(I)Lv4/d;")
FIXED_REPLY = ("    const/4 v1, 0x7" + NL + NL +
               "    invoke-virtual {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/"
               "InterceptorUtils;->createErrorReply(I)Lv4/d;")


def _read(path):
    with open(path, encoding="utf-8") as handle:
        return handle.read()


def _write(path, text):
    with open(path, "w", encoding="utf-8", newline=NL) as handle:
        handle.write(text)


def apply(tree, log=None):
    k2 = os.path.join(tree, "org", "matrix", "TEESimulator", "interception",
                      "keystore", "Keystore2Interceptor.smali")
    shim = os.path.join(tree, "org", "matrix", "TEESimulator", "interception",
                        "keystore", "shim", "KeyMintSecurityLevelInterceptor.smali")

    # Keystore2Interceptor: tombstone method + non-consuming lookup + reply code.
    text = _read(k2)
    if "markDeleted(" not in text:
        if text.count(".method public final forgetDeletedKey(") != 1:
            raise SystemExit("stage_kt: forgetDeletedKey anchor")
        text = text.replace(".method public final forgetDeletedKey(", MARKER, 1)
    if OLD_REMOVE in text:
        text = text.replace(OLD_REMOVE, NEW_CONTAINS, 1)
    pos = text.find("Returning KEY_NOT_FOUND for deleted key")
    if pos != -1:
        hit = text.find(STALE_REPLY, pos)
        if hit != -1:
            text = text[:hit] + FIXED_REPLY + text[hit + len(STALE_REPLY):]
    _write(k2, text)

    # KeyMintSecurityLevelInterceptor: mark on exhaustion, mark during generation,
    # and the optional takeover branch.
    text = _read(shim)
    if "markDeleted(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)V\n\n    sget-object p0" not in text:
        if OLD_EXH not in text:
            raise SystemExit("stage_kt: exhaustion anchor")
        text = text.replace(OLD_EXH, NEW_EXH, 1)
    if "H03): the alias reads as absent" not in text:
        if OLD_H03 not in text:
            raise SystemExit("stage_kt: H03 anchor")
        text = text.replace(OLD_H03, NEW_H03, 1)
    if "Lmpl/KeyTakeover;" not in text:
        if OLD_110 not in text:
            raise SystemExit("stage_kt: takeover anchor")
        text = text.replace(OLD_110, NEW_110, 1)
    _write(shim, text)

    # Fail the build rather than ship calls without their target.
    k2_text = _read(k2)
    shim_text = _read(shim)
    if "markDeleted(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)V" not in k2_text:
        raise SystemExit("stage_kt: markDeleted definition missing from Keystore2Interceptor")
    if "Set;->contains(Ljava/lang/Object;)Z" not in k2_text:
        raise SystemExit("stage_kt: tombstone lookup is not non-consuming")
    if "Lmpl/KeyTakeover;" not in shim_text or "H03): the alias reads as absent" not in shim_text:
        raise SystemExit("stage_kt: shim edits missing")

    if log is not None:
        log("kt   : G02 tombstone + H03 window + key takeover")
