.class public final Lorg/matrix/TEESimulator/interception/keystore/shim/AuthorizeCreate;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/AuthorizeCreate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/AuthorizeCreate;

    invoke-direct {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/AuthorizeCreate;-><init>()V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/AuthorizeCreate;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/AuthorizeCreate;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic check$default(Lorg/matrix/TEESimulator/interception/keystore/shim/AuthorizeCreate;Lt4/l;Lt4/l;[Landroid/hardware/security/keymint/KeyParameter;ILjava/lang/Object;)Ljava/lang/Integer;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lorg/matrix/TEESimulator/interception/keystore/shim/AuthorizeCreate;->check(Lt4/l;Lt4/l;[Landroid/hardware/security/keymint/KeyParameter;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private final checkAlgorithmPurpose(Lt4/l;I)Ljava/lang/Integer;
    .registers 4

    iget p0, p1, Lt4/l;->b:I

    const/4 p1, 0x1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_8

    if-ne p0, p1, :cond_d

    :cond_8
    if-eq p2, v0, :cond_1f

    if-nez p2, :cond_d

    goto :goto_1f

    :cond_d
    if-ne p0, p1, :cond_1d

    const/4 p0, 0x6

    if-ne p2, p0, :cond_1d

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getUnsupportedPurpose()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0

    :cond_1f
    :goto_1f
    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getUnsupportedPurpose()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private final checkCallerNonce(Lt4/l;I[Landroid/hardware/security/keymint/KeyParameter;)Ljava/lang/Integer;
    .registers 6

    const/4 p0, 0x2

    const/4 v0, 0x0

    if-eq p2, p0, :cond_7

    if-eqz p2, :cond_7

    return-object v0

    :cond_7
    iget-object p0, p1, Lt4/l;->C:Ljava/lang/Boolean;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    return-object v0

    :cond_12
    if-eqz p3, :cond_2f

    array-length p0, p3

    const/4 p1, 0x0

    :goto_16
    if-ge p1, p0, :cond_2f

    aget-object p2, p3, p1

    iget p2, p2, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v1, -0x6ffffc17

    if-ne p2, v1, :cond_2c

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getCallerNonceProhibited()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2c
    add-int/lit8 p1, p1, 0x1

    goto :goto_16

    :cond_2f
    return-object v0
.end method

.method private final checkOperationAuthorizations(Lt4/l;Lt4/l;)Ljava/lang/Integer;
    .registers 7

    iget-object p0, p2, Lt4/l;->f:Ljava/util/List;

    iget-object v0, p2, Lt4/l;->i:Ljava/util/List;

    iget-object v1, p2, Lt4/l;->g:Ljava/util/List;

    if-eqz p0, :cond_f

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_3a

    :cond_f
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v3, p1, Lt4/l;->f:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getIncompatibleBlockMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3a
    :goto_3a
    if-eqz v1, :cond_43

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_43

    goto :goto_6e

    :cond_43
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_47
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v3, p1, Lt4/l;->g:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getIncompatiblePaddingMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_6e
    :goto_6e
    if-eqz v0, :cond_77

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_77

    goto :goto_a2

    :cond_77
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v3, p1, Lt4/l;->i:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getIncompatibleDigest()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_a2
    :goto_a2
    iget-object p0, p2, Lt4/l;->Q:Ljava/util/List;

    if-eqz p0, :cond_e0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fe

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-nez v2, :cond_cb

    invoke-static {}, Lorg/matrix/TEESimulator/MgfPatch;->unsupportedMgfErrorCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_cb
    iget-object v3, p1, Lt4/l;->Q:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b0

    invoke-static {}, Lorg/matrix/TEESimulator/MgfPatch;->mgfDigestErrorCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_e0
    iget-object v2, p1, Lt4/l;->Q:Ljava/util/List;

    if-eqz v2, :cond_fe

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_fe

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fe

    invoke-static {}, Lorg/matrix/TEESimulator/MgfPatch;->mgfDigestErrorCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_fe
    goto :goto_ff

    :goto_ff
    iget p0, p1, Lt4/l;->b:I

    const/16 v2, 0x20

    if-ne p0, v2, :cond_12e

    iget-object p0, p2, Lt4/l;->f:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12e

    iget-object p0, p2, Lt4/l;->O:Ljava/lang/Integer;

    iget-object p2, p1, Lt4/l;->O:Ljava/lang/Integer;

    if-eqz p0, :cond_12e

    if-eqz p2, :cond_12e

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ge p0, p2, :cond_12e

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getInvalidMacLength()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_12e
    iget p0, p1, Lt4/l;->b:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_14f

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_14f

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getIncompatibleDigest()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_14f
    const/4 p0, 0x0

    return-object p0
.end method

.method private final checkPurpose(Lt4/l;I)Ljava/lang/Integer;
    .registers 3

    const/4 p0, 0x5

    if-ne p2, p0, :cond_e

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getIncompatiblePurpose()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_e
    iget-object p0, p1, Lt4/l;->h:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getIncompatiblePurpose()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method private final checkTemporalValidity(Lt4/l;I)Ljava/lang/Integer;
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p1, Lt4/l;->y:Ljava/util/Date;

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_1b

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getKeyNotYetValid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1b
    iget-object p0, p1, Lt4/l;->z:Ljava/util/Date;

    if-eqz p0, :cond_38

    if-eqz p2, :cond_25

    const/4 v2, 0x2

    if-eq p2, v2, :cond_25

    goto :goto_38

    :cond_25
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_38

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getKeyExpired()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_38
    :goto_38
    iget-object p0, p1, Lt4/l;->A:Ljava/util/Date;

    if-eqz p0, :cond_56

    const/4 p1, 0x1

    if-eq p2, p1, :cond_43

    const/4 p1, 0x3

    if-eq p2, p1, :cond_43

    goto :goto_56

    :cond_43
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_56

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getKeyExpired()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_56
    :goto_56
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final check(Lt4/l;Lt4/l;[Landroid/hardware/security/keymint/KeyParameter;)Ljava/lang/Integer;
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

    const-string v0, "opParams"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p1, :cond_9

    return-object v0

    :cond_9
    iget-object v1, p2, Lt4/l;->h:Ljava/util/List;

    invoke-static {v1}, Lb/i;->X0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/AuthorizeCreate;->checkAlgorithmPurpose(Lt4/l;I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_35

    invoke-direct {p0, p1, v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/AuthorizeCreate;->checkPurpose(Lt4/l;I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_35

    invoke-direct {p0, p1, p2}, Lorg/matrix/TEESimulator/interception/keystore/shim/AuthorizeCreate;->checkOperationAuthorizations(Lt4/l;Lt4/l;)Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_34

    invoke-direct {p0, p1, v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/AuthorizeCreate;->checkTemporalValidity(Lt4/l;I)Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_34

    invoke-direct {p0, p1, v0, p3}, Lorg/matrix/TEESimulator/interception/keystore/shim/AuthorizeCreate;->checkCallerNonce(Lt4/l;I[Landroid/hardware/security/keymint/KeyParameter;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_34
    return-object p2

    :cond_35
    return-object v1

    :cond_36
    return-object v0
.end method
