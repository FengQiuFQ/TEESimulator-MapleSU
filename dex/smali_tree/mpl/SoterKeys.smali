.class public final Lmpl/SoterKeys;
.super Ljava/lang/Object;
.source "SoterKeys.java"


# static fields
.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ALIAS:Ljava/lang/String; = "mpl:default"

.field public static final DIR:Ljava/lang/String; = "/data/user/0/com.tencent.soter.soterserver/files/soter_keys"

.field public static final DIR_LEGACY:Ljava/lang/String; = "/data/data/com.tencent.soter.soterserver/files/soter_keys"

.field public static final ENV_DIR:Ljava/lang/String; = "MPL_SOTER_KEYS_DIR"

.field private static final LOCK:Ljava/lang/Object;

.field private static final MAGIC:I = 0x4d504c31

.field public static final MAX_AUTH_PER_UID:I = 0x40

.field private static final TAG:Ljava/lang/String; = "MPL-SOTER"

.field private static volatile overrideDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmpl/SoterKeys;->LOCK:Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmpl/SoterKeys;->CACHE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static askName(I)Ljava/lang/String;
    .registers 3

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ask-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".key"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static authIfPresent(ILjava/lang/String;)Ljava/security/KeyPair;
    .registers 7

    if-eqz p1, :cond_41

    .line 295
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_41

    .line 298
    :cond_9
    sget-object v0, Lmpl/SoterKeys;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_c
    sget-object v1, Lmpl/SoterKeys;->CACHE:Ljava/util/Map;

    const-string v2, "AUTH"

    invoke-static {v2, p0, p1}, Lmpl/SoterKeys;->cacheKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyPair;

    if-eqz v2, :cond_1e

    .line 301
    monitor-exit v0

    return-object v2

    .line 303
    :cond_1e
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lmpl/SoterKeys;->dir()Ljava/io/File;

    move-result-object v3

    invoke-static {p0, p1}, Lmpl/SoterKeys;->authName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "AUTH"

    invoke-static {v2, v3, p0, p1}, Lmpl/SoterKeys;->load(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;)Ljava/security/KeyPair;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 305
    const-string v3, "AUTH"

    invoke-static {v3, p0, p1}, Lmpl/SoterKeys;->cacheKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_3c
    monitor-exit v0

    return-object v2

    :catchall_3e
    move-exception p0

    .line 308
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_c .. :try_end_40} :catchall_3e

    throw p0

    :cond_41
    :goto_41
    const/4 p0, 0x0

    return-object p0
.end method

.method private static authName(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "auth-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lmpl/SoterKeys;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".key"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static cacheKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_17

    const-string p2, ""

    :cond_17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static clearGone(ILjava/lang/String;)V
    .registers 6

    const-string v0, "keys: cannot clear tombstone "

    .line 422
    sget-object v1, Lmpl/SoterKeys;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 423
    :try_start_5
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lmpl/SoterKeys;->dir()Ljava/io/File;

    move-result-object v3

    invoke-static {p0, p1}, Lmpl/SoterKeys;->goneName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_2f

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_2f

    .line 425
    const-string p0, "MPL-SOTER"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_2f
    monitor-exit v1

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_31

    throw p0
.end method

.method private static close(Ljava/io/Closeable;)V
    .registers 1

    if-nez p0, :cond_3

    return-void

    .line 594
    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_6

    :catchall_6
    return-void
.end method

.method public static describe(I)Ljava/lang/String;
    .registers 8

    .line 602
    invoke-static {}, Lmpl/SoterKeys;->dir()Ljava/io/File;

    move-result-object v0

    .line 603
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lmpl/SoterKeys;->askName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "auth-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 606
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_49

    const/4 v4, 0x0

    .line 608
    :goto_2c
    array-length v5, v0

    if-ge v3, v5, :cond_48

    .line 609
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 610
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_45

    const-string v6, ".key"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    add-int/lit8 v4, v4, 0x1

    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_48
    move v3, v4

    .line 615
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dir="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lmpl/SoterKeys;->dirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ask="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " goneAsk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 616
    invoke-static {p0, v1}, Lmpl/SoterKeys;->isGone(ILjava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static dir()Ljava/io/File;
    .registers 2

    .line 138
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmpl/SoterKeys;->dirPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static dirPath()Ljava/lang/String;
    .registers 4

    .line 105
    sget-object v0, Lmpl/SoterKeys;->overrideDir:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    return-object v0

    .line 109
    :cond_b
    const-string v0, "MPL_SOTER_KEYS_DIR"

    invoke-static {v0}, Lmpl/SoterKeys;->env(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1a

    return-object v0

    .line 113
    :cond_1a
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/user/0/com.tencent.soter.soterserver/files/soter_keys"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_28

    return-object v1

    .line 117
    :cond_28
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_3b

    return-object v1

    .line 121
    :cond_3b
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.tencent.soter.soterserver/files/soter_keys"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_56

    if-eqz v3, :cond_55

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_56

    :cond_55
    return-object v1

    :cond_56
    :goto_56
    return-object v2
.end method

.method public static ensureAsk(I)Ljava/security/KeyPair;
    .registers 7

    .line 244
    sget-object v0, Lmpl/SoterKeys;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_3
    sget-object v1, Lmpl/SoterKeys;->CACHE:Ljava/util/Map;

    const-string v2, "ASK"

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Lmpl/SoterKeys;->cacheKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyPair;

    if-eqz v2, :cond_16

    .line 247
    monitor-exit v0

    return-object v2

    .line 249
    :cond_16
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lmpl/SoterKeys;->dir()Ljava/io/File;

    move-result-object v4

    invoke-static {p0}, Lmpl/SoterKeys;->askName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 250
    const-string v4, "ASK"

    invoke-static {v2, v4, p0, v3}, Lmpl/SoterKeys;->load(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;)Ljava/security/KeyPair;

    move-result-object v4

    if-eqz v4, :cond_36

    .line 252
    const-string v2, "ASK"

    invoke-static {v2, p0, v3}, Lmpl/SoterKeys;->cacheKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    monitor-exit v0

    return-object v4

    .line 255
    :cond_36
    const-string v4, "ASK"

    invoke-static {v2, v4, p0, v3}, Lmpl/SoterKeys;->generate(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;)Ljava/security/KeyPair;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 257
    const-string v4, "ASK"

    invoke-static {v4, p0, v3}, Lmpl/SoterKeys;->cacheKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_47
    monitor-exit v0

    return-object v2

    :catchall_49
    move-exception p0

    .line 260
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public static ensureAuth(ILjava/lang/String;)Ljava/security/KeyPair;
    .registers 7

    if-eqz p1, :cond_57

    .line 265
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_57

    .line 268
    :cond_9
    sget-object v0, Lmpl/SoterKeys;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_c
    sget-object v1, Lmpl/SoterKeys;->CACHE:Ljava/util/Map;

    const-string v2, "AUTH"

    invoke-static {v2, p0, p1}, Lmpl/SoterKeys;->cacheKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyPair;

    if-eqz v2, :cond_1e

    .line 271
    monitor-exit v0

    return-object v2

    .line 273
    :cond_1e
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lmpl/SoterKeys;->dir()Ljava/io/File;

    move-result-object v3

    invoke-static {p0, p1}, Lmpl/SoterKeys;->authName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 274
    const-string v3, "AUTH"

    invoke-static {v2, v3, p0, p1}, Lmpl/SoterKeys;->load(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;)Ljava/security/KeyPair;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 276
    const-string v2, "AUTH"

    invoke-static {v2, p0, p1}, Lmpl/SoterKeys;->cacheKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    monitor-exit v0

    return-object v3

    .line 279
    :cond_3e
    invoke-static {p0}, Lmpl/SoterKeys;->pruneAuth(I)V

    .line 280
    const-string v3, "AUTH"

    invoke-static {v2, v3, p0, p1}, Lmpl/SoterKeys;->generate(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;)Ljava/security/KeyPair;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 282
    const-string v3, "AUTH"

    invoke-static {v3, p0, p1}, Lmpl/SoterKeys;->cacheKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_52
    monitor-exit v0

    return-object v2

    :catchall_54
    move-exception p0

    .line 285
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_c .. :try_end_56} :catchall_54

    throw p0

    :cond_57
    :goto_57
    const/4 p0, 0x0

    return-object p0
.end method

.method private static ensureDir(Ljava/io/File;)Z
    .registers 4

    .line 142
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 145
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_29

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "keys: cannot create "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MPL-SOTER"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 149
    :cond_29
    invoke-virtual {p0, v2, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 150
    invoke-virtual {p0, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z

    .line 151
    invoke-virtual {p0, v1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 152
    invoke-virtual {p0, v1, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 153
    invoke-virtual {p0, v1, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    return v1
.end method

.method private static env(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 131
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    :catchall_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static generate(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;)Ljava/security/KeyPair;
    .registers 11

    .line 435
    const-string v0, "MPL-SOTER"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    const/16 v3, 0x800

    .line 436
    invoke-virtual {v2, v3}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 437
    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_53

    .line 442
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lmpl/SoterKeys;->ensureDir(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1d

    return-object v1

    .line 445
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 446
    invoke-static {p0, p1, p2, p3, v2}, Lmpl/SoterKeys;->store(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Ljava/security/KeyPair;)Z

    move-result p1

    .line 447
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "keys: generated "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ok="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " ms="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 447
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_52

    return-object v2

    :cond_52
    return-object v1

    :catchall_53
    move-exception p0

    .line 439
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "keys: keygen failed kind="

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uid="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static generateAsk(I)I
    .registers 3

    .line 315
    invoke-static {p0}, Lmpl/SoterKeys;->ensureAsk(I)Ljava/security/KeyPair;

    move-result-object v0

    if-nez v0, :cond_9

    const/16 p0, -0xc8

    return p0

    :cond_9
    const/4 v0, 0x0

    .line 319
    invoke-static {p0, v0}, Lmpl/SoterKeys;->clearGone(ILjava/lang/String;)V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "keys: ask uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lmpl/SoterKeys;->describe(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MPL-SOTER"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static generateAuth(ILjava/lang/String;)I
    .registers 4

    .line 326
    invoke-static {p0, p1}, Lmpl/SoterKeys;->ensureAuth(ILjava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    if-nez v0, :cond_9

    const/16 p0, -0xc8

    return p0

    .line 330
    :cond_9
    invoke-static {p0, p1}, Lmpl/SoterKeys;->clearGone(ILjava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "keys: auth uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " alias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lmpl/SoterKeys;->describe(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MPL-SOTER"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static goneName(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 169
    const-string v0, ".flag"

    if-nez p1, :cond_16

    .line 170
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "gone-ASK-"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 171
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gone-AUTH-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lmpl/SoterKeys;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasAsk(I)Z
    .registers 5

    .line 202
    sget-object v0, Lmpl/SoterKeys;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 203
    :try_start_4
    invoke-static {p0, v1}, Lmpl/SoterKeys;->isGoneLocked(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 p0, 0x0

    .line 204
    monitor-exit v0

    return p0

    .line 206
    :cond_d
    sget-object v2, Lmpl/SoterKeys;->CACHE:Ljava/util/Map;

    const-string v3, "ASK"

    invoke-static {v3, p0, v1}, Lmpl/SoterKeys;->cacheKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 p0, 0x1

    .line 207
    monitor-exit v0

    return p0

    .line 209
    :cond_1e
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lmpl/SoterKeys;->dir()Ljava/io/File;

    move-result-object v2

    invoke-static {p0}, Lmpl/SoterKeys;->askName(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_31
    move-exception p0

    .line 210
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public static hasAuth(ILjava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3c

    .line 218
    :cond_a
    sget-object v1, Lmpl/SoterKeys;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_d
    invoke-static {p0, p1}, Lmpl/SoterKeys;->isGoneLocked(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 220
    monitor-exit v1

    return v0

    .line 222
    :cond_15
    sget-object v0, Lmpl/SoterKeys;->CACHE:Ljava/util/Map;

    const-string v2, "AUTH"

    invoke-static {v2, p0, p1}, Lmpl/SoterKeys;->cacheKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 p0, 0x1

    .line 223
    monitor-exit v1

    return p0

    .line 225
    :cond_26
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmpl/SoterKeys;->dir()Ljava/io/File;

    move-result-object v2

    invoke-static {p0, p1}, Lmpl/SoterKeys;->authName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_39
    move-exception p0

    .line 226
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_39

    throw p0

    :cond_3c
    :goto_3c
    return v0
.end method

.method static hash(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 181
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-nez p0, :cond_a

    .line 182
    const-string p0, ""

    :cond_a
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_1c
    const/16 v3, 0x8

    if-ge v2, v3, :cond_35

    .line 185
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    if-ge v3, v1, :cond_2b

    const/16 v4, 0x30

    .line 187
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    :cond_2b
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 191
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_3a

    return-object p0

    .line 194
    :catchall_3a
    const-string p0, "0000000000000000"

    return-object p0
.end method

.method public static isGone(ILjava/lang/String;)Z
    .registers 3

    .line 231
    sget-object v0, Lmpl/SoterKeys;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_3
    invoke-static {p0, p1}, Lmpl/SoterKeys;->isGoneLocked(ILjava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 233
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method private static isGoneLocked(ILjava/lang/String;)Z
    .registers 4

    .line 237
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmpl/SoterKeys;->dir()Ljava/io/File;

    move-result-object v1

    invoke-static {p0, p1}, Lmpl/SoterKeys;->goneName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0
.end method

.method private static load(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;)Ljava/security/KeyPair;
    .registers 15

    .line 509
    const-string v0, "/"

    const-string v1, "MPL-SOTER"

    .line 0
    const-string v2, "keys: "

    const-string v3, "keys: load "

    .line 509
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_10

    return-object v5

    .line 514
    :cond_10
    :try_start_10
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_b2

    .line 515
    :try_start_1a
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 516
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 517
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 518
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    const v10, 0x4d504c31    # 2.1841589E8f

    if-ne v6, v10, :cond_80

    .line 519
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_80

    if-ne v8, p2, :cond_80

    if-nez p3, :cond_3c

    .line 520
    const-string v6, ""

    goto :goto_3d

    :cond_3c
    move-object v6, p3

    :goto_3d
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_44

    goto :goto_80

    .line 525
    :cond_44
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    new-array p1, p1, [B

    .line 526
    invoke-virtual {v4, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 527
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    new-array p2, p2, [B

    .line 528
    invoke-virtual {v4, p2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 529
    const-string p3, "RSA"

    invoke-static {p3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p3

    .line 530
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p3, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    .line 531
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p3, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p2

    if-eqz p1, :cond_7c

    if-nez p2, :cond_73

    goto :goto_7c

    .line 535
    :cond_73
    new-instance p3, Ljava/security/KeyPair;

    invoke-direct {p3, p2, p1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_78
    .catchall {:try_start_1a .. :try_end_78} :catchall_b0

    .line 542
    :try_start_78
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7b

    :catchall_7b
    return-object p3

    :cond_7c
    :goto_7c
    :try_start_7c
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_7f

    :catchall_7f
    return-object v5

    .line 521
    :cond_80
    :goto_80
    :try_start_80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not match "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (hash collision?)"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catchall {:try_start_80 .. :try_end_ac} :catchall_b0

    .line 542
    :try_start_ac
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_af

    :catchall_af
    return-object v5

    :catchall_b0
    move-exception p1

    goto :goto_b4

    :catchall_b2
    move-exception p1

    move-object v4, v5

    .line 537
    :goto_b4
    :try_start_b4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " failed: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catchall {:try_start_b4 .. :try_end_cb} :catchall_d1

    if-eqz v4, :cond_d0

    .line 542
    :try_start_cd
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_d0
    .catchall {:try_start_cd .. :try_end_d0} :catchall_d0

    :catchall_d0
    :cond_d0
    return-object v5

    :catchall_d1
    move-exception p0

    if-eqz v4, :cond_d7

    :try_start_d4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_d7

    .line 547
    :catchall_d7
    :cond_d7
    throw p0
.end method

.method private static pruneAuth(I)V
    .registers 13

    .line 552
    invoke-static {}, Lmpl/SoterKeys;->dir()Ljava/io/File;

    move-result-object v0

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "auth-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 555
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1f

    goto/16 :goto_b8

    .line 559
    :cond_1f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 560
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 561
    :goto_2b
    array-length v7, v2

    if-ge v6, v7, :cond_55

    .line 562
    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 563
    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_52

    const-string v8, ".key"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_52

    .line 564
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 568
    :cond_55
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x3f

    :goto_5b
    if-lez v1, :cond_b8

    const/4 v2, -0x1

    const-wide v6, 0x7fffffffffffffffL

    const/4 v8, 0x0

    .line 572
    :goto_64
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_86

    .line 573
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v11, v9, v6

    if-gez v11, :cond_83

    .line 574
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move v2, v8

    :cond_83
    add-int/lit8 v8, v8, 0x1

    goto :goto_64

    :cond_86
    if-gez v2, :cond_89

    goto :goto_b8

    .line 581
    :cond_89
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 582
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 583
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "keys: pruned "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " uid="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "MPL-SOTER"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, -0x1

    goto :goto_5b

    :cond_b8
    :goto_b8
    return-void
.end method

.method public static removeAll(I)I
    .registers 11

    const-string v0, "auth-"

    .line 354
    sget-object v1, Lmpl/SoterKeys;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_5
    invoke-static {}, Lmpl/SoterKeys;->dir()Ljava/io/File;

    move-result-object v2

    .line 356
    new-instance v3, Ljava/io/File;

    invoke-static {p0}, Lmpl/SoterKeys;->askName(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    .line 360
    sget-object v4, Lmpl/SoterKeys;->CACHE:Ljava/util/Map;

    const-string v5, "ASK"

    const/4 v6, 0x0

    invoke-static {v5, p0, v6}, Lmpl/SoterKeys;->cacheKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    const-string v4, ".key"

    .line 363
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v2, :cond_5f

    const/4 v7, 0x0

    .line 365
    :goto_3d
    array-length v8, v2

    if-ge v7, v8, :cond_5f

    .line 366
    aget-object v8, v2, v7

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 367
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5c

    invoke-virtual {v8, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 368
    aget-object v8, v2, v7

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_5c

    add-int/lit8 v3, v3, 0x1

    :cond_5c
    add-int/lit8 v7, v7, 0x1

    goto :goto_3d

    .line 375
    :cond_5f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AUTH:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    sget-object v4, Lmpl/SoterKeys;->CACHE:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_84
    :goto_84
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 378
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_84

    .line 379
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_84

    :cond_9a
    const/4 v2, 0x0

    .line 382
    :goto_9b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_ad

    .line 383
    sget-object v4, Lmpl/SoterKeys;->CACHE:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9b

    .line 385
    :cond_ad
    invoke-static {p0, v6}, Lmpl/SoterKeys;->writeGone(ILjava/lang/String;)Z

    .line 386
    monitor-exit v1
    :try_end_b1
    .catchall {:try_start_5 .. :try_end_b1} :catchall_d9

    .line 387
    const-string v0, "MPL-SOTER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys: removeAll uid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " files="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-static {p0}, Lmpl/SoterKeys;->describe(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 387
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catchall_d9
    move-exception p0

    .line 386
    :try_start_da
    monitor-exit v1
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    throw p0
.end method

.method public static removeAuth(ILjava/lang/String;)I
    .registers 6

    if-eqz p1, :cond_62

    .line 337
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_62

    .line 341
    :cond_9
    sget-object v0, Lmpl/SoterKeys;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_c
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lmpl/SoterKeys;->dir()Ljava/io/File;

    move-result-object v2

    invoke-static {p0, p1}, Lmpl/SoterKeys;->authName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 343
    sget-object v2, Lmpl/SoterKeys;->CACHE:Ljava/util/Map;

    const-string v3, "AUTH"

    invoke-static {v3, p0, p1}, Lmpl/SoterKeys;->cacheKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-static {p0, p1}, Lmpl/SoterKeys;->writeGone(ILjava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 345
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_5f

    .line 346
    const-string v0, "MPL-SOTER"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "keys: removeAuth uid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " alias="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " deleted="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-static {p0}, Lmpl/SoterKeys;->describe(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 346
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :catchall_5f
    move-exception p0

    .line 345
    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p0

    :cond_62
    :goto_62
    const/16 p0, -0xca

    return p0
.end method

.method public static revive(ILjava/lang/String;)V
    .registers 2

    .line 419
    invoke-static {p0, p1}, Lmpl/SoterKeys;->clearGone(ILjava/lang/String;)V

    return-void
.end method

.method public static setDirForTest(Ljava/lang/String;)V
    .registers 2

    .line 97
    sget-object v0, Lmpl/SoterKeys;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_3
    sput-object p0, Lmpl/SoterKeys;->overrideDir:Ljava/lang/String;

    .line 99
    sget-object p0, Lmpl/SoterKeys;->CACHE:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 100
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method private static store(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Ljava/security/KeyPair;)Z
    .registers 15

    .line 460
    const-string v0, "MPL-SOTER"

    .line 0
    const-string v1, "keys: rename failed "

    const-string v2, "keys: store failed "

    .line 460
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 464
    :try_start_22
    invoke-virtual {p4}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v6

    .line 465
    invoke-virtual {p4}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p4

    invoke-interface {p4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p4

    .line 466
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_b7

    .line 467
    :try_start_37
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_b3

    const v9, 0x4d504c31    # 2.1841589E8f

    .line 468
    :try_start_3f
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 469
    invoke-virtual {v8, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v8, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-nez p3, :cond_4c

    .line 471
    const-string p3, ""

    :cond_4c
    invoke-virtual {v8, p3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 472
    array-length p1, v6

    invoke-virtual {v8, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 473
    invoke-virtual {v8, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 474
    array-length p1, p4

    invoke-virtual {v8, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 475
    invoke-virtual {v8, p4}, Ljava/io/DataOutputStream;->write([B)V

    .line 476
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 477
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V

    .line 478
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_6a
    .catchall {:try_start_3f .. :try_end_6a} :catchall_b1

    .line 482
    :try_start_6a
    invoke-virtual {v3, v4, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 483
    invoke-virtual {v3, v4, v4}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 p1, 0x1

    .line 484
    invoke-virtual {v3, p1, p1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 485
    invoke-virtual {v3, p1, p1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 486
    invoke-virtual {v3, v4, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 487
    invoke-virtual {v3, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_aa

    .line 489
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 490
    invoke-virtual {v3, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_aa

    .line 491
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_a3
    .catchall {:try_start_6a .. :try_end_a3} :catchall_b7

    .line 502
    invoke-static {v5}, Lmpl/SoterKeys;->close(Ljava/io/Closeable;)V

    .line 503
    :goto_a6
    invoke-static {v5}, Lmpl/SoterKeys;->close(Ljava/io/Closeable;)V

    return v4

    .line 502
    :cond_aa
    invoke-static {v5}, Lmpl/SoterKeys;->close(Ljava/io/Closeable;)V

    .line 503
    invoke-static {v5}, Lmpl/SoterKeys;->close(Ljava/io/Closeable;)V

    return p1

    :catchall_b1
    move-exception p1

    goto :goto_b5

    :catchall_b3
    move-exception p1

    move-object v8, v5

    :goto_b5
    move-object v5, v7

    goto :goto_b9

    :catchall_b7
    move-exception p1

    move-object v8, v5

    .line 498
    :goto_b9
    :try_start_b9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_d3
    .catchall {:try_start_b9 .. :try_end_d3} :catchall_d7

    .line 502
    invoke-static {v8}, Lmpl/SoterKeys;->close(Ljava/io/Closeable;)V

    goto :goto_a6

    :catchall_d7
    move-exception p0

    invoke-static {v8}, Lmpl/SoterKeys;->close(Ljava/io/Closeable;)V

    .line 503
    invoke-static {v5}, Lmpl/SoterKeys;->close(Ljava/io/Closeable;)V

    .line 504
    throw p0
.end method

.method private static writeGone(ILjava/lang/String;)Z
    .registers 8

    const-string v0, "keys: tombstone "

    .line 393
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lmpl/SoterKeys;->dir()Ljava/io/File;

    move-result-object v2

    invoke-static {p0, p1}, Lmpl/SoterKeys;->goneName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 396
    :try_start_11
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lmpl/SoterKeys;->ensureDir(Ljava/io/File;)Z

    move-result v2
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_39

    if-nez v2, :cond_1f

    .line 407
    invoke-static {p1}, Lmpl/SoterKeys;->close(Ljava/io/Closeable;)V

    return p0

    .line 399
    :cond_1f
    :try_start_1f
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_39

    .line 400
    :try_start_24
    const-string p1, "1\n"

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 401
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_37

    .line 407
    invoke-static {v2}, Lmpl/SoterKeys;->close(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :catchall_37
    move-exception p1

    goto :goto_3d

    :catchall_39
    move-exception v2

    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    .line 404
    :goto_3d
    :try_start_3d
    const-string v3, "MPL-SOTER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " failed: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_3d .. :try_end_56} :catchall_5a

    .line 407
    invoke-static {v2}, Lmpl/SoterKeys;->close(Ljava/io/Closeable;)V

    return p0

    :catchall_5a
    move-exception p0

    invoke-static {v2}, Lmpl/SoterKeys;->close(Ljava/io/Closeable;)V

    .line 408
    throw p0
.end method
