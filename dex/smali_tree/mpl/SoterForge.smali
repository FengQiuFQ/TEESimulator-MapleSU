.class public final Lmpl/SoterForge;
.super Ljava/lang/Object;
.source "SoterForge.java"


# static fields
.field private static final COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.soter.soterserver.ISoterService"

.field private static final TAG:Ljava/lang/String; = "MPL-SOTER"

.field private static cpuId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lmpl/SoterForge;->COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BuildFingerprint()Ljava/lang/String;
    .registers 1

    .line 99
    :try_start_0
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_3

    return-object v0

    .line 101
    :catchall_3
    const-string v0, ""

    return-object v0
.end method

.method private static appendCerts(Ljava/lang/StringBuilder;Ljava/util/List;)I
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_40

    .line 439
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_40

    .line 442
    :cond_a
    const-string v1, ",\"certs\":["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 443
    :goto_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 444
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1d

    return v0

    :cond_1d
    if-lez v1, :cond_24

    const/16 v3, 0x2c

    .line 449
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_24
    const/16 v3, 0x22

    .line 451
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 452
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lmpl/SoterForge;->escapeJson(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_36
    const/16 v0, 0x5d

    .line 455
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 456
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_40
    :goto_40
    return v0
.end method

.method public static askBlob(I)[B
    .registers 1

    .line 258
    invoke-static {p0, p0}, Lmpl/SoterForge;->askBlobFor(II)[B

    move-result-object p0

    return-object p0
.end method

.method public static askBlob(Landroid/os/Parcel;)[B
    .registers 2

    .line 244
    const-string v0, "ASK"

    invoke-static {p0, v0}, Lmpl/SoterForge;->blobFromParcel(Landroid/os/Parcel;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static askBlobFor(II)[B
    .registers 8

    .line 268
    const-string v3, "arg"

    const/4 v5, 0x0

    const-string v0, "ASK"

    const/4 v2, 0x0

    move v1, p0

    move v4, p1

    invoke-static/range {v0 .. v5}, Lmpl/SoterForge;->blobFor(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static authBlob(I)[B
    .registers 2

    const/4 v0, 0x0

    .line 263
    invoke-static {p0, v0, p0}, Lmpl/SoterForge;->authBlobFor(ILjava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static authBlob(Landroid/os/Parcel;)[B
    .registers 2

    .line 253
    const-string v0, "AUTH"

    invoke-static {p0, v0}, Lmpl/SoterForge;->blobFromParcel(Landroid/os/Parcel;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static authBlobFor(ILjava/lang/String;I)[B
    .registers 9

    .line 273
    const-string v3, "arg"

    const/4 v5, 0x0

    const-string v0, "AUTH"

    move v1, p0

    move-object v2, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lmpl/SoterForge;->blobFor(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static blobFor(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)[B
    .registers 15

    .line 354
    invoke-static {p0}, Lmpl/SoterForge;->identity(Ljava/lang/String;)Lmpl/SoterIdentity$Identity;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 357
    iget-object v1, v0, Lmpl/SoterIdentity$Identity;->keyPair:Ljava/security/KeyPair;

    goto :goto_27

    .line 358
    :cond_9
    const-string v1, "AUTH"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    if-eqz p2, :cond_1c

    .line 362
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_1c

    :cond_1a
    move-object v1, p2

    goto :goto_1e

    :cond_1c
    :goto_1c
    const-string v1, "mpl:default"

    .line 361
    :goto_1e
    invoke-static {p1, v1}, Lmpl/SoterKeys;->ensureAuth(ILjava/lang/String;)Ljava/security/KeyPair;

    move-result-object v1

    goto :goto_27

    .line 364
    :cond_23
    invoke-static {p1}, Lmpl/SoterKeys;->ensureAsk(I)Ljava/security/KeyPair;

    move-result-object v1

    .line 366
    :goto_27
    const-string v2, " uid="

    const-string v3, "blob kind="

    const-string v4, "MPL-SOTER"

    if-nez v1, :cond_4b

    .line 367
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " no key"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 370
    :cond_4b
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 371
    sget-object v6, Lmpl/SoterForge;->COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v6

    .line 372
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x60

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 373
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " callingUid="

    .line 375
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " counter="

    .line 376
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " src="

    .line 377
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_93

    .line 379
    const-string p0, " alias="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_93
    const-string p0, " idmode="

    const-string p2, " certs="

    if-eqz v0, :cond_ab

    .line 382
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmpl/SoterIdentity$Identity;->certCount()I

    move-result p3

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v0, Lmpl/SoterIdentity$Identity;->mode:Ljava/lang/String;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ab
    if-eqz p5, :cond_b5

    .line 386
    const-string p3, " err="

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_b5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance p3, Ljava/lang/StringBuilder;

    const/16 p4, 0x100

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 390
    const-string p4, "{\"pub_key\":\""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\",\"counter\":"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ",\"cpu_id\":\""

    .line 392
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmpl/SoterForge;->cpu()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\",\"uid\":"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    if-eqz v0, :cond_f1

    .line 396
    iget-object p4, v0, Lmpl/SoterIdentity$Identity;->certs:Ljava/util/ArrayList;

    invoke-static {p3, p4}, Lmpl/SoterForge;->appendCerts(Ljava/lang/StringBuilder;Ljava/util/List;)I

    move-result p4

    goto :goto_f2

    :cond_f1
    const/4 p4, 0x0

    :goto_f2
    const/16 p5, 0x7d

    .line 398
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 402
    :try_start_fb
    const-string p5, "UTF-8"

    invoke-virtual {p3, p5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3
    :try_end_101
    .catchall {:try_start_fb .. :try_end_101} :catchall_102

    goto :goto_106

    .line 404
    :catchall_102
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    .line 408
    :goto_106
    invoke-static {v1, p3}, Lmpl/SoterForge;->signWith(Ljava/security/KeyPair;[B)[B

    move-result-object p5

    .line 409
    array-length v1, p3

    invoke-static {v1}, Lmpl/SoterForge;->le32(I)[B

    move-result-object v1

    .line 410
    array-length v2, v1

    array-length v3, p3

    add-int/2addr v2, v3

    array-length v3, p5

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 411
    array-length v3, v1

    invoke-static {v1, p1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 412
    array-length v3, v1

    array-length v5, p3

    invoke-static {p3, p1, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    array-length v1, v1

    array-length v3, p3

    add-int/2addr v1, v3

    array-length v3, p5

    invoke-static {p5, p1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p4, :cond_148

    .line 415
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p5, "blob body bytes="

    invoke-direct {p1, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p3, p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lmpl/SoterIdentity$Identity;->mode:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_148
    return-object v2
.end method

.method private static blobFromParcel(Landroid/os/Parcel;Ljava/lang/String;)[B
    .registers 12

    const-string v0, "negative uid "

    const-string v1, "no uid field (avail="

    const/4 v2, -0x1

    .line 295
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_b

    move v8, v3

    goto :goto_d

    :catchall_b
    nop

    const/4 v8, -0x1

    :goto_d
    const/4 v3, 0x0

    if-nez p0, :cond_15

    .line 303
    const-string p0, "null parcel"

    :goto_12
    move-object v9, p0

    move-object v6, v3

    goto :goto_68

    .line 306
    :cond_15
    :try_start_15
    const-string v4, "com.tencent.soter.soterserver.ISoterService"

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_33

    .line 309
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    .line 311
    :cond_33
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_46

    .line 313
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    .line 315
    :cond_46
    const-string v0, "AUTH"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v0
    :try_end_52
    .catchall {:try_start_15 .. :try_end_52} :catchall_61

    if-lez v0, :cond_5e

    .line 317
    :try_start_54
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_5d

    move-object v2, v3

    move-object v3, p0

    move-object p0, v2

    move v2, v1

    goto :goto_12

    :catchall_5d
    nop

    :cond_5e
    move v2, v1

    move-object p0, v3

    goto :goto_12

    :catchall_61
    move-exception v0

    move-object p0, v0

    .line 325
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    :goto_68
    if-ltz v2, :cond_6c

    move v5, v2

    goto :goto_6d

    :cond_6c
    move v5, v8

    :goto_6d
    if-ltz v2, :cond_72

    .line 330
    const-string p0, "parcel"

    goto :goto_74

    :cond_72
    const-string p0, "binder"

    :goto_74
    move-object v7, p0

    move-object v4, p1

    .line 331
    invoke-static/range {v4 .. v9}, Lmpl/SoterForge;->blobFor(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized cpu()Ljava/lang/String;
    .registers 11

    const-class v0, Lmpl/SoterForge;

    monitor-enter v0

    .line 65
    :try_start_3
    sget-object v1, Lmpl/SoterForge;->cpuId:Ljava/lang/String;

    if-nez v1, :cond_95

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmpl/SoterForge;->BuildFingerprint()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->SOC_MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_99

    .line 71
    :try_start_39
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 72
    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_4d
    const/16 v7, 0x8

    if-ge v4, v7, :cond_5c

    shl-long/2addr v5, v7

    .line 77
    aget-byte v7, v1, v4

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    or-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    :cond_5c
    cmp-long v1, v5, v2

    if-gez v1, :cond_61

    neg-long v5, v5

    .line 82
    :cond_61
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 83
    :goto_65
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_7f

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_65

    .line 86
    :cond_7f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_8e

    .line 87
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    :cond_8e
    sput-object v1, Lmpl/SoterForge;->cpuId:Ljava/lang/String;
    :try_end_90
    .catchall {:try_start_39 .. :try_end_90} :catchall_91

    goto :goto_95

    .line 91
    :catchall_91
    :try_start_91
    const-string v1, "7310578350219486"

    sput-object v1, Lmpl/SoterForge;->cpuId:Ljava/lang/String;

    .line 94
    :cond_95
    :goto_95
    sget-object v1, Lmpl/SoterForge;->cpuId:Ljava/lang/String;
    :try_end_97
    .catchall {:try_start_91 .. :try_end_97} :catchall_99

    monitor-exit v0

    return-object v1

    :catchall_99
    move-exception v1

    :try_start_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw v1
.end method

.method static cpuIdForIdentity()Ljava/lang/String;
    .registers 1

    .line 110
    invoke-static {}, Lmpl/SoterForge;->cpu()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deviceId()[B
    .registers 6

    .line 526
    const-string v0, "UTF-8"

    const-string v1, "|"

    :try_start_4
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmpl/SoterForge;->BuildFingerprint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-static {}, Lmpl/SoterForge;->cpu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 529
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_44
    const/16 v4, 0x10

    if-ge v3, v4, :cond_5d

    .line 532
    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xff

    if-ge v5, v4, :cond_53

    const/16 v4, 0x30

    .line 534
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 536
    :cond_53
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 538
    :cond_5d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 539
    const-string v2, "MPL-SOTER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceId len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_7f
    .catchall {:try_start_4 .. :try_end_7f} :catchall_80

    return-object v0

    .line 542
    :catchall_80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0000000000000000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lmpl/SoterForge;->cpu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static escapeJson(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 461
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 462
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3b

    const/16 v2, 0xa

    if-eq v1, v2, :cond_35

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2f

    const/16 v2, 0x22

    if-eq v1, v2, :cond_29

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_23

    .line 480
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 468
    :cond_23
    const-string v1, "\\\\"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 465
    :cond_29
    const-string v1, "\\\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 474
    :cond_2f
    const-string v1, "\\r"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 471
    :cond_35
    const-string v1, "\\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 477
    :cond_3b
    const-string v1, "\\t"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_43
    return-void
.end method

.method private static identity(Ljava/lang/String;)Lmpl/SoterIdentity$Identity;
    .registers 1

    .line 207
    :try_start_0
    invoke-static {p0}, Lmpl/SoterIdentity;->get(Ljava/lang/String;)Lmpl/SoterIdentity$Identity;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    :catchall_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static identityKey(Ljava/lang/String;)Ljava/security/KeyPair;
    .registers 2

    const/4 v0, 0x0

    .line 198
    :try_start_1
    invoke-static {p0}, Lmpl/SoterIdentity;->get(Ljava/lang/String;)Lmpl/SoterIdentity$Identity;

    move-result-object p0

    if-nez p0, :cond_8

    return-object v0

    .line 199
    :cond_8
    iget-object p0, p0, Lmpl/SoterIdentity$Identity;->keyPair:Ljava/security/KeyPair;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    return-object p0

    :catchall_b
    return-object v0
.end method

.method public static identityPresent(Ljava/lang/String;)Z
    .registers 1

    .line 215
    invoke-static {p0}, Lmpl/SoterForge;->identity(Ljava/lang/String;)Lmpl/SoterIdentity$Identity;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private static le32(I)[B
    .registers 6

    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v3, 0x4

    .line 219
    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v0, 0x1

    aput-byte v1, v3, v0

    const/4 v0, 0x2

    aput-byte v2, v3, v0

    const/4 v0, 0x3

    aput-byte p0, v3, v0

    return-object v3
.end method

.method public static logTx(I)V
    .registers 4

    .line 230
    invoke-static {}, Lmpl/SoterSvc;->callerUid()I

    move-result v0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "txn code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " uid="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MPL-SOTER"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static pssSignature()Ljava/security/Signature;
    .registers 7

    .line 166
    const-string v0, "RSASSA-PSS"

    :try_start_2
    new-instance v1, Ljava/security/spec/PSSParameterSpec;

    const-string v2, "SHA-256"

    const-string v3, "MGF1"

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v5, 0x14

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    .line 168
    const-string v2, "SHA256withRSA/PSS"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v2
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_31

    const/4 v3, 0x0

    :goto_17
    const/4 v4, 0x2

    if-ge v3, v4, :cond_27

    .line 171
    :try_start_1a
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 172
    invoke-virtual {v4, v1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_24

    return-object v4

    :catchall_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 179
    :cond_27
    :try_start_27
    const-string v2, "BC"

    invoke-static {v0, v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 180
    invoke-virtual {v0, v1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_31

    return-object v0

    :catchall_31
    const/4 v0, 0x0

    return-object v0
.end method

.method static signChallenge(ILjava/lang/String;[B)[B
    .registers 4

    .line 497
    const-string v0, "AUTH"

    invoke-static {v0}, Lmpl/SoterForge;->identityKey(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_17

    :cond_9
    if-eqz p1, :cond_11

    .line 503
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    :cond_11
    const-string p1, "mpl:default"

    .line 502
    :cond_13
    invoke-static {p0, p1}, Lmpl/SoterKeys;->ensureAuth(ILjava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    :goto_17
    if-nez v0, :cond_1b

    const/4 p0, 0x0

    return-object p0

    .line 511
    :cond_1b
    invoke-static {v0, p2}, Lmpl/SoterForge;->signWith(Ljava/security/KeyPair;[B)[B

    move-result-object p0

    return-object p0
.end method

.method static signForTest(Ljava/security/KeyPair;[B)[B
    .registers 2

    .line 153
    invoke-static {p0, p1}, Lmpl/SoterForge;->signWith(Ljava/security/KeyPair;[B)[B

    move-result-object p0

    return-object p0
.end method

.method static signWith(Ljava/security/KeyPair;[B)[B
    .registers 5

    const/16 v0, 0x100

    if-eqz p1, :cond_40

    if-nez p0, :cond_7

    goto :goto_40

    .line 127
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, p1, v2}, Lmpl/PssSigner;->sign(Ljava/security/PrivateKey;[BI)[B

    move-result-object p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    return-object p0

    :catchall_12
    nop

    .line 131
    invoke-static {}, Lmpl/SoterForge;->pssSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 134
    :try_start_19
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 135
    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V

    .line 136
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object p0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_28

    return-object p0

    .line 142
    :catchall_28
    :cond_28
    :try_start_28
    const-string v1, "SHA256withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 143
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 144
    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V

    .line 145
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object p0
    :try_end_3c
    .catchall {:try_start_28 .. :try_end_3c} :catchall_3d

    return-object p0

    .line 147
    :catchall_3d
    new-array p0, v0, [B

    return-object p0

    .line 123
    :cond_40
    :goto_40
    new-array p0, v0, [B

    return-object p0
.end method
