.class public final Lmpl/SoterPolicy;
.super Ljava/lang/Object;
.source "SoterPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmpl/SoterPolicy$Snapshot;
    }
.end annotation


# static fields
.field private static final DECISION_LOCK:Ljava/lang/Object;

.field private static final DECISION_WINDOW_MS:J = 0x3e8L

.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.soter.soterserver.ISoterService"

.field public static final ENV_OVERRIDE:Ljava/lang/String; = "MPL_SCOPE_FILE"

.field public static final FALLBACK:Ljava/lang/String; = "/data/adb/tricky_store/soter_scope.conf"

.field private static final LOCK:Ljava/lang/Object;

.field private static final LOG_LOCK:Ljava/lang/Object;

.field private static final MAX_BYTES:J = 0x40000L

.field private static final NONE_TTL_MS:J = 0x1f4L

.field public static final PRIMARY:Ljava/lang/String; = "/data/user/0/com.tencent.soter.soterserver/files/soter_scope"

.field private static final TAG:Ljava/lang/String; = "MPL-SOTER"

.field private static volatile cached:Lmpl/SoterPolicy$Snapshot; = null

.field private static lastDecisionAt:J = 0x0L

.field private static lastDecisionCode:I = -0x80000000

.field private static lastDecisionHit:Z = false

.field private static lastDecisionSrc:Ljava/lang/String; = ""

.field private static lastDecisionUid:I = -0x80000000

.field private static lastLog:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmpl/SoterPolicy;->LOCK:Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmpl/SoterPolicy;->LOG_LOCK:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmpl/SoterPolicy;->DECISION_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allow(I)Z
    .registers 4

    const/4 v0, 0x1

    .line 108
    :try_start_1
    invoke-static {}, Lmpl/SoterPolicy;->current()Lmpl/SoterPolicy$Snapshot;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 109
    iget-boolean v2, v1, Lmpl/SoterPolicy$Snapshot;->all:Z

    if-eqz v2, :cond_c

    goto :goto_17

    .line 112
    :cond_c
    iget-object v1, v1, Lmpl/SoterPolicy$Snapshot;->uids:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    return p0

    :catchall_17
    :cond_17
    :goto_17
    return v0
.end method

.method public static allowFor(Landroid/os/Parcel;II)Z
    .registers 7

    .line 145
    const-string v0, "caller"

    const/4 v1, -0x1

    if-eqz p0, :cond_2c

    :try_start_5
    invoke-static {p1}, Lmpl/SoterPolicy;->hasUidArgument(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 146
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 147
    const-string v2, "com.tencent.soter.soterserver.ISoterService"

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_2c

    .line 149
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-lez v2, :cond_2c

    .line 152
    const-string v0, "parcel"
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_25

    move p2, v2

    goto :goto_2c

    :catchall_25
    nop

    if-ltz v1, :cond_2f

    .line 163
    :goto_28
    :try_start_28
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2f

    goto :goto_2f

    :cond_2c
    :goto_2c
    if-ltz v1, :cond_2f

    goto :goto_28

    .line 169
    :catchall_2f
    :cond_2f
    :goto_2f
    invoke-static {p2}, Lmpl/SoterPolicy;->allow(I)Z

    move-result p0

    .line 170
    invoke-static {p2, v0, p1, p0}, Lmpl/SoterPolicy;->logDecision(ILjava/lang/String;IZ)V

    return p0
.end method

.method public static candidates()[Ljava/lang/String;
    .registers 2

    .line 224
    :try_start_0
    const-string v0, "MPL_SCOPE_FILE"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    goto :goto_8

    :catchall_7
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_19

    .line 229
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_19

    .line 231
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 234
    :cond_19
    const-string v0, "/data/user/0/com.tencent.soter.soterserver/files/soter_scope"

    const-string v1, "/data/adb/tricky_store/soter_scope.conf"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static current()Lmpl/SoterPolicy$Snapshot;
    .registers 3

    .line 240
    sget-object v0, Lmpl/SoterPolicy;->cached:Lmpl/SoterPolicy$Snapshot;

    if-eqz v0, :cond_b

    .line 241
    invoke-static {v0}, Lmpl/SoterPolicy;->fresh(Lmpl/SoterPolicy$Snapshot;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 244
    :cond_b
    sget-object v0, Lmpl/SoterPolicy;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_e
    sget-object v1, Lmpl/SoterPolicy;->cached:Lmpl/SoterPolicy$Snapshot;

    if-eqz v1, :cond_1a

    .line 246
    invoke-static {v1}, Lmpl/SoterPolicy;->fresh(Lmpl/SoterPolicy$Snapshot;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 247
    monitor-exit v0

    return-object v1

    .line 249
    :cond_1a
    invoke-static {}, Lmpl/SoterPolicy;->load()Lmpl/SoterPolicy$Snapshot;

    move-result-object v1

    .line 250
    sput-object v1, Lmpl/SoterPolicy;->cached:Lmpl/SoterPolicy$Snapshot;

    .line 251
    monitor-exit v0

    return-object v1

    :catchall_22
    move-exception v1

    .line 252
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_22

    throw v1
.end method

.method public static defaultAll()Z
    .registers 1

    .line 210
    invoke-static {}, Lmpl/SoterPolicy;->current()Lmpl/SoterPolicy$Snapshot;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 211
    iget-boolean v0, v0, Lmpl/SoterPolicy$Snapshot;->all:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method private static fresh(Lmpl/SoterPolicy$Snapshot;)Z
    .registers 9

    .line 256
    iget-object v0, p0, Lmpl/SoterPolicy$Snapshot;->path:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_15

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lmpl/SoterPolicy$Snapshot;->stamp:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1f4

    cmp-long p0, v3, v5

    if-gez p0, :cond_14

    return v1

    :cond_14
    return v2

    .line 261
    :cond_15
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lmpl/SoterPolicy$Snapshot;->path:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iget-wide v5, p0, Lmpl/SoterPolicy$Snapshot;->mtime:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_37

    .line 264
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-wide v5, p0, Lmpl/SoterPolicy$Snapshot;->size:J

    cmp-long p0, v3, v5

    if-nez p0, :cond_37

    return v1

    :cond_37
    return v2
.end method

.method private static hasUidArgument(I)Z
    .registers 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_8

    const/16 v1, 0x9

    if-gt p0, v1, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private static isOverride(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 416
    :try_start_1
    const-string v1, "MPL_SCOPE_FILE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1f

    if-eqz v1, :cond_1f

    .line 420
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1f

    .line 421
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :catchall_1f
    :cond_1f
    return v0
.end method

.method private static load()Lmpl/SoterPolicy$Snapshot;
    .registers 13

    .line 268
    invoke-static {}, Lmpl/SoterPolicy;->candidates()[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 269
    :goto_6
    array-length v0, v1

    if-ge v2, v0, :cond_89

    .line 270
    aget-object v4, v1, v2

    .line 272
    :try_start_b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_85

    .line 276
    :cond_17
    invoke-static {v0}, Lmpl/SoterPolicy;->readAll(Ljava/io/File;)[B

    move-result-object v3

    .line 277
    invoke-static {v3}, Lmpl/SoterPolicy;->parse([B)Ljava/util/Set;

    move-result-object v9

    .line 278
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    .line 279
    new-instance v3, Lmpl/SoterPolicy$Snapshot;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct/range {v3 .. v12}, Lmpl/SoterPolicy$Snapshot;-><init>(Ljava/lang/String;JJLjava/util/Set;ZJ)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scope loaded n="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " src="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-static {v4}, Lmpl/SoterPolicy;->isOverride(Ljava/lang/String;)Z

    move-result v5
    :try_end_51
    .catchall {:try_start_b .. :try_end_51} :catchall_6b

    const-string v6, ""

    if-eqz v5, :cond_58

    :try_start_55
    const-string v5, " (test hook)"

    goto :goto_59

    :cond_58
    move-object v5, v6

    :goto_59
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_60

    .line 283
    const-string v6, " (empty -> allow all)"

    :cond_60
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {v0}, Lmpl/SoterPolicy;->log(Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_55 .. :try_end_6a} :catchall_6b

    return-object v3

    :catchall_6b
    move-exception v0

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "scope read failed src="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " err="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterPolicy;->log(Ljava/lang/String;)V

    :goto_85
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 290
    :cond_89
    const-string v0, "scope none src=default (allow all)"

    invoke-static {v0}, Lmpl/SoterPolicy;->log(Ljava/lang/String;)V

    .line 291
    new-instance v1, Lmpl/SoterPolicy$Snapshot;

    sget-object v7, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const/4 v8, 0x1

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v1 .. v10}, Lmpl/SoterPolicy$Snapshot;-><init>(Ljava/lang/String;JJLjava/util/Set;ZJ)V

    return-object v1
.end method

.method private static log(Ljava/lang/String;)V
    .registers 3

    .line 377
    sget-object v0, Lmpl/SoterPolicy;->LOG_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_3
    sget-object v1, Lmpl/SoterPolicy;->lastLog:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 379
    monitor-exit v0

    return-void

    .line 381
    :cond_d
    sput-object p0, Lmpl/SoterPolicy;->lastLog:Ljava/lang/String;

    .line 382
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_16

    .line 384
    :try_start_10
    const-string v0, "MPL-SOTER"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_15

    :catchall_15
    return-void

    :catchall_16
    move-exception p0

    .line 382
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method private static logDecision(ILjava/lang/String;IZ)V
    .registers 12

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 398
    sget-object v2, Lmpl/SoterPolicy;->DECISION_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 399
    :try_start_7
    sget v3, Lmpl/SoterPolicy;->lastDecisionUid:I

    if-ne p0, v3, :cond_27

    sget v3, Lmpl/SoterPolicy;->lastDecisionCode:I

    if-ne p2, v3, :cond_27

    sget-boolean v3, Lmpl/SoterPolicy;->lastDecisionHit:Z

    if-ne p3, v3, :cond_27

    sget-object v3, Lmpl/SoterPolicy;->lastDecisionSrc:Ljava/lang/String;

    .line 400
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    sget-wide v3, Lmpl/SoterPolicy;->lastDecisionAt:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x3e8

    cmp-long v7, v3, v5

    if-gez v7, :cond_27

    .line 401
    monitor-exit v2

    return-void

    .line 403
    :cond_27
    sput p0, Lmpl/SoterPolicy;->lastDecisionUid:I

    .line 404
    sput p2, Lmpl/SoterPolicy;->lastDecisionCode:I

    .line 405
    sput-boolean p3, Lmpl/SoterPolicy;->lastDecisionHit:Z

    .line 406
    sput-object p1, Lmpl/SoterPolicy;->lastDecisionSrc:Ljava/lang/String;

    .line 407
    sput-wide v0, Lmpl/SoterPolicy;->lastDecisionAt:J

    .line 408
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_5c

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scope uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " src="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " code="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " hit="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterPolicy;->log(Ljava/lang/String;)V

    return-void

    :catchall_5c
    move-exception p0

    .line 408
    :try_start_5d
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method private static parse([B)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_5e

    .line 299
    array-length v1, p0

    if-nez v1, :cond_b

    goto :goto_5e

    .line 304
    :cond_b
    :try_start_b
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    goto :goto_18

    .line 306
    :catchall_13
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    .line 308
    :goto_18
    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 309
    :goto_20
    array-length v3, p0

    if-ge v2, v3, :cond_5e

    .line 310
    aget-object v3, p0, v2

    const/16 v4, 0x23

    .line 311
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_31

    .line 313
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 315
    :cond_31
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 316
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3c

    goto :goto_5b

    :cond_3c
    const/16 v4, 0x3d

    .line 319
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ltz v4, :cond_4e

    add-int/lit8 v4, v4, 0x1

    .line 321
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 323
    :cond_4e
    invoke-static {v3}, Lmpl/SoterPolicy;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_5b

    .line 325
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5b
    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_5e
    :goto_5e
    return-object v0
.end method

.method private static parseInt(Ljava/lang/String;)I
    .registers 1

    .line 333
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return p0

    :catchall_5
    const/4 p0, -0x1

    return p0
.end method

.method private static readAll(Ljava/io/File;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 340
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 342
    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-gez p0, :cond_10

    move-wide v1, v3

    :cond_10
    const-wide/32 v3, 0x40000

    cmp-long p0, v1, v3

    if-lez p0, :cond_18

    move-wide v1, v3

    :cond_18
    long-to-int p0, v1

    .line 349
    new-array v1, p0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, p0, :cond_2a

    sub-int v4, p0, v3

    .line 352
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_39

    if-gtz v4, :cond_28

    goto :goto_2a

    :cond_28
    add-int/2addr v3, v4

    goto :goto_1d

    :cond_2a
    :goto_2a
    if-ne v3, p0, :cond_30

    .line 366
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_2f

    :catchall_2f
    return-object v1

    .line 361
    :cond_30
    :try_start_30
    new-array p0, v3, [B

    .line 362
    invoke-static {v1, v2, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_39

    .line 366
    :try_start_35
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_38

    :catchall_38
    return-object p0

    :catchall_39
    move-exception p0

    :try_start_3a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3d

    .line 370
    :catchall_3d
    throw p0
.end method

.method public static reload()V
    .registers 2

    .line 193
    sget-object v0, Lmpl/SoterPolicy;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 194
    :try_start_4
    sput-object v1, Lmpl/SoterPolicy;->cached:Lmpl/SoterPolicy$Snapshot;

    .line 195
    invoke-static {}, Lmpl/SoterPolicy;->current()Lmpl/SoterPolicy$Snapshot;

    .line 196
    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public static source()Ljava/lang/String;
    .registers 2

    .line 216
    invoke-static {}, Lmpl/SoterPolicy;->current()Lmpl/SoterPolicy$Snapshot;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 217
    iget-object v1, v0, Lmpl/SoterPolicy$Snapshot;->path:Ljava/lang/String;

    if-nez v1, :cond_b

    goto :goto_e

    :cond_b
    iget-object v0, v0, Lmpl/SoterPolicy$Snapshot;->path:Ljava/lang/String;

    return-object v0

    :cond_e
    :goto_e
    const-string v0, "none"

    return-object v0
.end method

.method public static uids()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 201
    invoke-static {}, Lmpl/SoterPolicy;->current()Lmpl/SoterPolicy$Snapshot;

    move-result-object v0

    if-nez v0, :cond_9

    .line 203
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0

    .line 205
    :cond_9
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, v0, Lmpl/SoterPolicy$Snapshot;->uids:Ljava/util/Set;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
