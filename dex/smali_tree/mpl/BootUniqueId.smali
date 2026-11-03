.class public final Lmpl/BootUniqueId;
.super Ljava/lang/Object;
.source "BootUniqueId.java"


# static fields
.field private static final BOOT_ID_PATH:Ljava/lang/String; = "/proc/sys/kernel/random/boot_id"

.field private static final HBK_PATH:Ljava/lang/String; = "/data/adb/tricky_store/hbk"

.field private static final SALT:[B

.field private static cached:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-string v0, "maple-rs/tee16/unique-id/v1"

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lmpl/BootUniqueId;->SALT:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static derive()[B
    .registers 4

    .line 53
    const-string v0, "SHA-256"

    const/16 v1, 0x1f

    :try_start_4
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 54
    const-string v3, "/proc/sys/kernel/random/boot_id"

    invoke-static {v3}, Lmpl/BootUniqueId;->readFile(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lmpl/BootUniqueId;->unsigned([B)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 55
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update(B)V

    .line 56
    const-string v3, "/data/adb/tricky_store/hbk"

    invoke-static {v3}, Lmpl/BootUniqueId;->readFile(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lmpl/BootUniqueId;->unsigned([B)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    const/16 v3, 0x1e

    .line 57
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update(B)V

    .line 58
    sget-object v3, Lmpl/BootUniqueId;->SALT:[B

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 59
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_34

    return-object v0

    .line 62
    :catchall_34
    :try_start_34
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 63
    sget-object v2, Lmpl/BootUniqueId;->SALT:[B

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 64
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    .line 65
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    long-to-int v2, v1

    int-to-byte v1, v2

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    .line 66
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0
    :try_end_4d
    .catchall {:try_start_34 .. :try_end_4d} :catchall_4e

    return-object v0

    :catchall_4e
    const/16 v0, 0x20

    .line 68
    new-array v0, v0, [B

    return-object v0
.end method

.method public static get()[B
    .registers 5

    .line 41
    const-class v0, Lmpl/BootUniqueId;

    monitor-enter v0

    .line 42
    :try_start_3
    sget-object v1, Lmpl/BootUniqueId;->cached:[B

    if-nez v1, :cond_d

    .line 43
    invoke-static {}, Lmpl/BootUniqueId;->derive()[B

    move-result-object v1

    sput-object v1, Lmpl/BootUniqueId;->cached:[B

    .line 45
    :cond_d
    sget-object v1, Lmpl/BootUniqueId;->cached:[B

    array-length v2, v1

    new-array v2, v2, [B

    .line 46
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    monitor-exit v0

    return-object v2

    :catchall_19
    move-exception v1

    .line 48
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private static readFile(Ljava/lang/String;)[B
    .registers 6

    const/4 v0, 0x0

    .line 80
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_20

    const/16 p0, 0x100

    .line 81
    :try_start_8
    new-array p0, p0, [B

    .line 82
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_1e

    if-gtz v2, :cond_14

    .line 94
    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_13

    :catchall_13
    return-object v0

    .line 86
    :cond_14
    :try_start_14
    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 87
    invoke-static {p0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1e

    .line 94
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

.method private static unsigned([B)[B
    .registers 1

    if-nez p0, :cond_5

    const/4 p0, 0x0

    .line 74
    new-array p0, p0, [B

    :cond_5
    return-object p0
.end method
