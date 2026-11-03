.class public final Lmpl/OpPolicy;
.super Ljava/lang/Object;
.source "OpPolicy.java"


# static fields
.field public static final INVALID_TAG:I = -0x21

.field public static final KEY_MAX_OPS_EXCEEDED:I = -0x1b

.field private static final LOCK:Ljava/lang/Object;

.field private static final PER_BOOT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private static volatile counters:Ljava/util/Map;

.field private static epoch:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmpl/OpPolicy;->LOCK:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmpl/OpPolicy;->PER_BOOT:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allow(Lt4/l;Lt4/l;[Landroid/hardware/security/keymint/KeyParameter;)Ljava/lang/Integer;
    .registers 6

    const/4 p1, 0x0

    if-nez p0, :cond_4

    return-object p1

    .line 76
    :cond_4
    iget-object p0, p0, Lt4/l;->applicationId:[B

    if-eqz p0, :cond_30

    .line 77
    array-length v0, p0

    if-nez v0, :cond_c

    goto :goto_30

    :cond_c
    const v0, -0x6ffffda7

    .line 80
    invoke-static {p2, v0}, Lmpl/KeyParams;->count([Landroid/hardware/security/keymint/KeyParameter;I)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, -0x21

    if-eq v0, v1, :cond_1d

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 85
    :cond_1d
    invoke-static {p2}, Lmpl/KeyParams;->applicationId([Landroid/hardware/security/keymint/KeyParameter;)[B

    move-result-object p2

    if-eqz p2, :cond_2b

    .line 86
    invoke-static {p0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_2a

    goto :goto_2b

    :cond_2a
    return-object p1

    .line 87
    :cond_2b
    :goto_2b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_30
    :goto_30
    return-object p1
.end method

.method public static allowMaxUses(Ljava/lang/Object;Lt4/l;)Ljava/lang/Integer;
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_53

    if-nez p1, :cond_6

    goto :goto_53

    .line 144
    :cond_6
    iget-object p1, p1, Lt4/l;->M:Ljava/lang/Integer;

    if-nez p1, :cond_b

    return-object v0

    .line 148
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gtz p1, :cond_12

    return-object v0

    .line 152
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "obj@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 153
    sget-object v1, Lmpl/OpPolicy;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_27
    invoke-static {}, Lmpl/OpPolicy;->rotateLocked()V

    .line 155
    sget-object v2, Lmpl/OpPolicy;->PER_BOOT:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v4, 0x0

    if-nez v3, :cond_3c

    .line 157
    filled-new-array {v4, p1}, [I

    move-result-object v3

    .line 158
    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    const/4 p0, 0x1

    .line 160
    aput p1, v3, p0

    .line 161
    aget v2, v3, v4

    if-lt v2, p1, :cond_4b

    const/16 p0, -0x1b

    .line 162
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :cond_4b
    add-int/2addr v2, p0

    .line 164
    aput v2, v3, v4

    .line 165
    monitor-exit v1

    return-object v0

    :catchall_50
    move-exception p0

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_27 .. :try_end_52} :catchall_50

    throw p0

    :cond_53
    :goto_53
    return-object v0
.end method

.method public static allowUsage(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Lt4/l;)Ljava/lang/Integer;
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_45

    if-nez p1, :cond_6

    goto :goto_45

    .line 104
    :cond_6
    iget-object p1, p1, Lt4/l;->M:Ljava/lang/Integer;

    if-nez p1, :cond_b

    return-object v0

    .line 108
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gtz p1, :cond_12

    return-object v0

    .line 112
    :cond_12
    invoke-static {p0}, Lmpl/OpPolicy;->keyOf(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)Ljava/lang/String;

    move-result-object p0

    .line 113
    sget-object v1, Lmpl/OpPolicy;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_19
    invoke-static {}, Lmpl/OpPolicy;->rotateLocked()V

    .line 115
    sget-object v2, Lmpl/OpPolicy;->PER_BOOT:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v4, 0x0

    if-nez v3, :cond_2e

    .line 117
    filled-new-array {v4, p1}, [I

    move-result-object v3

    .line 118
    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    const/4 p0, 0x1

    .line 120
    aput p1, v3, p0

    .line 121
    aget v2, v3, v4

    if-lt v2, p1, :cond_3d

    const/16 p0, -0x1b

    .line 122
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :cond_3d
    add-int/2addr v2, p0

    .line 124
    aput v2, v3, v4

    .line 125
    monitor-exit v1

    return-object v0

    :catchall_42
    move-exception p0

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_19 .. :try_end_44} :catchall_42

    throw p0

    :cond_45
    :goto_45
    return-object v0
.end method

.method private static bootEpoch()Ljava/lang/String;
    .registers 2

    .line 276
    const-string v0, "/proc/sys/kernel/random/boot_id"

    invoke-static {v0}, Lmpl/OpPolicy;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_16

    .line 277
    array-length v1, v0

    if-nez v1, :cond_c

    goto :goto_16

    .line 280
    :cond_c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 278
    :cond_16
    :goto_16
    const-string v0, "no-boot-id"

    return-object v0
.end method

.method private static counters()Ljava/util/Map;
    .registers 1

    .line 245
    sget-object v0, Lmpl/OpPolicy;->counters:Ljava/util/Map;

    if-eqz v0, :cond_5

    return-object v0

    .line 250
    :cond_5
    :try_start_5
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->access$getUsageCounters$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_a

    goto :goto_b

    :catchall_a
    const/4 v0, 0x0

    .line 254
    :goto_b
    sput-object v0, Lmpl/OpPolicy;->counters:Ljava/util/Map;

    return-object v0
.end method

.method private static keyOf(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)Ljava/lang/String;
    .registers 3

    .line 261
    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getUid()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_19

    const-string v0, ""

    :cond_19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static patchRemaining([Landroid/system/keystore2/Authorization;Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)[Landroid/system/keystore2/Authorization;
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_66

    if-nez p1, :cond_6

    goto :goto_66

    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 183
    :goto_8
    array-length v3, p0

    const v4, 0x30000195

    if-ge v2, v3, :cond_2b

    .line 184
    aget-object v3, p0, v2

    if-eqz v3, :cond_28

    .line 185
    iget-object v5, v3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    if-nez v5, :cond_17

    goto :goto_28

    .line 188
    :cond_17
    iget-object v5, v3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v5, v5, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    if-eq v5, v4, :cond_1e

    goto :goto_28

    .line 193
    :cond_1e
    :try_start_1e
    iget-object v3, v3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v3, v3, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v3}, Landroid/hardware/security/keymint/KeyParameterValue;->getInteger()I

    move-result v3
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_27

    goto :goto_2d

    :catchall_27
    return-object v0

    :cond_28
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2b
    const/4 v2, -0x1

    const/4 v3, -0x1

    :goto_2d
    if-ltz v2, :cond_66

    if-gez v3, :cond_32

    goto :goto_66

    .line 205
    :cond_32
    invoke-static {p1, v3}, Lmpl/OpPolicy;->usedCount(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;I)I

    move-result p1

    sub-int p1, v3, p1

    if-gez p1, :cond_3b

    const/4 p1, 0x0

    :cond_3b
    if-ne p1, v3, :cond_3e

    return-object v0

    .line 213
    :cond_3e
    aget-object v0, p0, v2

    .line 214
    new-instance v3, Landroid/system/keystore2/Authorization;

    invoke-direct {v3}, Landroid/system/keystore2/Authorization;-><init>()V

    .line 215
    new-instance v5, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v5}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput-object v5, v3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    .line 216
    iget-object v5, v3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iput v4, v5, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 217
    iget-object v4, v3, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->integer(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p1

    iput-object p1, v4, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 218
    iget p1, v0, Landroid/system/keystore2/Authorization;->securityLevel:I

    iput p1, v3, Landroid/system/keystore2/Authorization;->securityLevel:I

    .line 219
    array-length p1, p0

    new-array p1, p1, [Landroid/system/keystore2/Authorization;

    .line 220
    array-length v0, p0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    aput-object v3, p1, v2

    return-object p1

    :cond_66
    :goto_66
    return-object v0
.end method

.method private static readFile(Ljava/lang/String;)[B
    .registers 6

    const/4 v0, 0x0

    .line 286
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_20

    const/16 p0, 0x80

    .line 287
    :try_start_8
    new-array p0, p0, [B

    .line 288
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_1e

    if-gtz v2, :cond_14

    .line 300
    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_13

    :catchall_13
    return-object v0

    .line 292
    :cond_14
    :try_start_14
    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 293
    invoke-static {p0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1e

    .line 300
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1d

    :catchall_1d
    return-object v3

    :catchall_1e
    nop

    goto :goto_22

    :catchall_20
    nop

    move-object v1, v0

    :goto_22
    if-eqz v1, :cond_27

    :try_start_24
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_27

    :catchall_27
    :cond_27
    return-object v0
.end method

.method private static rotateLocked()V
    .registers 1

    .line 269
    sget-object v0, Lmpl/OpPolicy;->epoch:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-void

    .line 272
    :cond_5
    invoke-static {}, Lmpl/OpPolicy;->bootEpoch()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmpl/OpPolicy;->epoch:Ljava/lang/String;

    return-void
.end method

.method private static usedCount(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;I)I
    .registers 4

    .line 227
    invoke-static {}, Lmpl/OpPolicy;->counters()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 232
    :cond_8
    :try_start_8
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 233
    instance-of v0, p0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_1b

    .line 234
    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    sub-int/2addr p1, p0

    if-gez p1, :cond_1a

    return v1

    :cond_1a
    return p1

    :catchall_1b
    :cond_1b
    return v1
.end method
