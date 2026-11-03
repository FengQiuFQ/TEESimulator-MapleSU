.class public final Lmpl/SoterInjector;
.super Ljava/lang/Object;
.source "SoterInjector.java"


# static fields
.field private static final DISABLED_MARKER:Ljava/lang/String; = "/data/adb/tricky_store/soter_forge_disabled"

.field private static final INJECT_LOG:Ljava/lang/String; = "/data/local/tmp/soter_inject.log"

.field private static final LIB_NAME:Ljava/lang/String; = "libTEESimulator.so"

.field private static final POLL_MS:J = 0x3e8L

.field private static final SCOPE_DIR:Ljava/lang/String; = "/data/user/0/com.tencent.soter.soterserver/files"

.field private static final SCOPE_DST:Ljava/lang/String; = "/data/user/0/com.tencent.soter.soterserver/files/soter_scope"

.field private static final SCOPE_SRC:Ljava/lang/String; = "/data/adb/tricky_store/soter_scope.conf"

.field private static final STATE_PATHS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MPL-SOTER"

.field private static final TARGET:Ljava/lang/String; = "com.tencent.soter.soterserver"

.field private static volatile cachedUid:Ljava/lang/Integer;

.field private static volatile identityRetryAt:J

.field private static volatile identityStamp:J

.field private static volatile identityUid:I

.field private static volatile injectedCount:I

.field private static volatile lastIdentityNote:Ljava/lang/String;

.field private static volatile lastMapped:Ljava/lang/Boolean;

.field private static volatile lastPid:I

.field private static volatile lastScopeNote:Ljava/lang/String;

.field private static volatile lastSeenPid:I

.field private static volatile lastState:Ljava/lang/String;

.field private static volatile publishedState:Ljava/lang/String;

.field private static volatile scopePid:I

.field private static volatile scopeStamp:J

.field private static volatile started:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 41
    const-string v0, "/data/user/0/dev.maplesu.manager/files/soter.state"

    const-string v1, "/data/data/dev.maplesu.manager/files/soter.state"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmpl/SoterInjector;->STATE_PATHS:[Ljava/lang/String;

    const/4 v0, -0x1

    .line 50
    sput v0, Lmpl/SoterInjector;->lastPid:I

    .line 51
    sput v0, Lmpl/SoterInjector;->lastSeenPid:I

    .line 55
    sput v0, Lmpl/SoterInjector;->scopePid:I

    const-wide/high16 v1, -0x8000000000000000L

    .line 56
    sput-wide v1, Lmpl/SoterInjector;->scopeStamp:J

    .line 60
    sput v0, Lmpl/SoterInjector;->identityUid:I

    .line 61
    sput-wide v1, Lmpl/SoterInjector;->identityStamp:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .line 29
    invoke-static {}, Lmpl/SoterInjector;->tick()V

    return-void
.end method

.method private static exec(Ljava/lang/String;)I
    .registers 4

    .line 612
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "/system/bin/sh"

    const-string v2, "-c"

    filled-new-array {v1, v2, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 613
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    move-result p0
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return p0

    :catchall_15
    move-exception p0

    .line 615
    const-string v0, "MPL-SOTER"

    const-string v1, "injector: exec failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method static file(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 182
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/data/local/tmp/soter_inject.log"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_36

    .line 183
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmpl/SoterInjector;->stamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_33

    .line 189
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_33
    nop

    move-object v0, v1

    goto :goto_37

    :catchall_36
    nop

    :goto_37
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_3c

    :catchall_3c
    :cond_3c
    return-void
.end method

.method private static findTargetPid()I
    .registers 8

    .line 233
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_f

    return v1

    .line 237
    :cond_f
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v2, :cond_42

    aget-object v5, v0, v4

    .line 238
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 239
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3f

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_2b

    goto :goto_3f

    .line 242
    :cond_2b
    invoke-static {v5}, Lmpl/SoterInjector;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_32

    goto :goto_3f

    .line 246
    :cond_32
    const-string v6, "com.tencent.soter.soterserver"

    invoke-static {v5}, Lmpl/SoterInjector;->readFirstArg(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    return v5

    :cond_3f
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_42
    return v1
.end method

.method private static identityClearScript()Ljava/lang/String;
    .registers 1

    .line 511
    const-string v0, "rm -rf /data/user/0/com.tencent.soter.soterserver/files/soter_identity 2>/dev/null;rm -f /data/user/0/com.tencent.soter.soterserver/files/soter_certs 2>/dev/null;exit 0"

    return-object v0
.end method

.method private static identityPushScript(II)Ljava/lang/String;
    .registers 5

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 475
    invoke-static {}, Lmpl/SoterIdentity;->rootDirPath()Ljava/lang/String;

    move-result-object v0

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 479
    const-string v2, "S="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";D=/data/user/0/com.tencent.soter.soterserver/files/soter_identity;P=/data/user/0/com.tencent.soter.soterserver/files;O="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";rc=0;LVL=$(cut -d: -f4- /proc/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/attr/current 2>/dev/null | tr -d \'\\n\');mkdir -p \"$D\" || rc=1;chown $O \"$P\" 2>/dev/null; chmod 0771 \"$P\" 2>/dev/null;if [ -n \"$LVL\" ]; then chcon u:object_r:app_data_file:\"$LVL\" \"$P\" 2>/dev/null; fi;for f in"

    .line 482
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    .line 488
    :goto_3d
    sget-object p1, Lmpl/SoterIdentity;->FILES:[Ljava/lang/String;

    array-length p1, p1

    if-ge p0, p1, :cond_51

    const/16 p1, 0x20

    .line 489
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p1, Lmpl/SoterIdentity;->FILES:[Ljava/lang/String;

    aget-object p1, p1, p0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_3d

    .line 491
    :cond_51
    const-string p0, "; do cp -f \"$S/$f\" \"$D/$f\" 2>/dev/null || rc=2; done;chown $O \"$D\" 2>/dev/null; chmod 0700 \"$D\" 2>/dev/null;chown $O \"$D\"/* 2>/dev/null; chmod 0600 \"$D\"/* 2>/dev/null;restorecon -R \"$D\" 2>/dev/null;if [ -n \"$LVL\" ]; then chcon u:object_r:app_data_file:\"$LVL\" \"$P\" \"$D\" \"$D\"/* 2>/dev/null; fi;printf on > /data/user/0/com.tencent.soter.soterserver/files/soter_certs;chown $O /data/user/0/com.tencent.soter.soterserver/files/soter_certs 2>/dev/null;chmod 0600 /data/user/0/com.tencent.soter.soterserver/files/soter_certs 2>/dev/null;restorecon /data/user/0/com.tencent.soter.soterserver/files/soter_certs 2>/dev/null;if [ -n \"$LVL\" ]; then chcon u:object_r:app_data_file:\"$LVL\" /data/user/0/com.tencent.soter.soterserver/files/soter_certs 2>/dev/null; fi;exit $rc"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static identityStamp()J
    .registers 11

    .line 441
    invoke-static {}, Lmpl/SoterIdentity;->rootDir()Ljava/io/File;

    move-result-object v0

    .line 442
    sget-object v1, Lmpl/SoterIdentity;->FILES:[Ljava/lang/String;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 445
    :goto_a
    array-length v6, v1

    if-ge v4, v6, :cond_32

    .line 446
    new-instance v6, Ljava/io/File;

    aget-object v7, v1, v4

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_1b

    goto :goto_2f

    .line 451
    :cond_1b
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    const-wide/16 v9, 0x1f

    mul-long v7, v7, v9

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v7, v5

    add-int/lit8 v5, v4, 0x1

    int-to-long v5, v5

    mul-long v7, v7, v5

    add-long/2addr v2, v7

    const/4 v5, 0x1

    :goto_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_32
    if-eqz v5, :cond_35

    return-wide v2

    :cond_35
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static identityState(Ljava/lang/String;)V
    .registers 2

    .line 431
    sget-object v0, Lmpl/SoterInjector;->lastIdentityNote:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 434
    :cond_9
    sput-object p0, Lmpl/SoterInjector;->lastIdentityNote:Ljava/lang/String;

    .line 435
    const-string v0, "MPL-SOTER"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-static {p0}, Lmpl/SoterInjector;->file(Ljava/lang/String;)V

    return-void
.end method

.method private static inject(I)Z
    .registers 5

    .line 623
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "L=/data/local/tmp/soter_inject.log;cg=$(awk -F: \'$1==0{print $3}\' /proc/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/cgroup);fz=/sys/fs/cgroup$cg/cgroup.freeze;[ -n \"$cg\" ] && echo 0 >$fz 2>/dev/null;kill -CONT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " 2>/dev/null;sleep 0.2;\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/inject\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/libTEESimulator.so\" entry >>$L 2>&1;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "inject core="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterInjector;->file(Ljava/lang/String;)V

    .line 631
    invoke-static {v1}, Lmpl/SoterInjector;->exec(Ljava/lang/String;)I

    move-result v0

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "injector: inject pid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " rc="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MPL-SOTER"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "inject rc="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterInjector;->file(Ljava/lang/String;)V

    if-nez v0, :cond_8b

    const/4 p0, 0x1

    return p0

    :cond_8b
    const/4 p0, 0x0

    return p0
.end method

.method private static isLibraryMapped(I)Ljava/lang/Boolean;
    .registers 6

    const-string v0, "/proc/"

    const/4 v1, 0x0

    .line 284
    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/maps"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_3a

    .line 286
    :cond_1e
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 287
    const-string v0, "libTEESimulator.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 288
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_38

    .line 297
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_31

    :catchall_31
    return-object p0

    .line 291
    :cond_32
    :try_start_32
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_38

    .line 297
    :try_start_34
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_37

    :catchall_37
    return-object p0

    :catchall_38
    nop

    goto :goto_3c

    :catchall_3a
    nop

    move-object v2, v1

    :goto_3c
    if-eqz v2, :cond_41

    :try_start_3e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_41

    :catchall_41
    :cond_41
    return-object v1
.end method

.method private static parseInt(Ljava/lang/String;)I
    .registers 1

    .line 639
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

.method private static publishState(Z)V
    .registers 10

    if-eqz p0, :cond_5

    .line 203
    const-string p0, "1"

    goto :goto_7

    :cond_5
    const-string p0, "0"

    .line 204
    :goto_7
    sget-object v0, Lmpl/SoterInjector;->publishedState:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_6f

    .line 208
    :cond_10
    sget-object v0, Lmpl/SoterInjector;->STATE_PATHS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_16
    if-ge v3, v1, :cond_60

    aget-object v5, v0, v3

    .line 209
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_30

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_30

    goto :goto_5d

    .line 214
    :cond_30
    :try_start_30
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_5d

    .line 216
    :try_start_35
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4f
    .catchall {:try_start_35 .. :try_end_4f} :catchall_58

    .line 218
    :try_start_4f
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    const/4 v5, 0x1

    .line 220
    invoke-virtual {v6, v5, v2}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v4, 0x1

    goto :goto_5d

    :catchall_58
    move-exception v6

    .line 218
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 219
    throw v6
    :try_end_5d
    .catchall {:try_start_4f .. :try_end_5d} :catchall_5d

    :catchall_5d
    :goto_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_60
    if-eqz v4, :cond_6f

    .line 227
    sput-object p0, Lmpl/SoterInjector;->publishedState:Ljava/lang/String;

    .line 228
    const-string v0, "toggle mirror="

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MPL-SOTER"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    :goto_6f
    return-void
.end method

.method private static readFirstArg(I)Ljava/lang/String;
    .registers 7

    const-string v0, "/proc/"

    const/4 v1, 0x0

    .line 256
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/cmdline"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_3f

    const/16 p0, 0x80

    .line 257
    :try_start_1b
    new-array p0, p0, [B

    .line 258
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_3d

    if-gtz v0, :cond_27

    .line 272
    :try_start_23
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_26

    :catchall_26
    return-object v1

    :cond_27
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_29
    if-ge v4, v0, :cond_32

    .line 263
    :try_start_2b
    aget-byte v5, p0, v4

    if-eqz v5, :cond_32

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 266
    :cond_32
    new-instance v0, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v0, p0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_3d

    .line 272
    :try_start_39
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3c

    :catchall_3c
    return-object v0

    :catchall_3d
    nop

    goto :goto_41

    :catchall_3f
    nop

    move-object v2, v1

    :goto_41
    if-eqz v2, :cond_46

    :try_start_43
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_46

    :catchall_46
    :cond_46
    return-object v1
.end method

.method private static scopeState(Ljava/lang/String;)V
    .registers 2

    .line 356
    sget-object v0, Lmpl/SoterInjector;->lastScopeNote:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 359
    :cond_9
    sput-object p0, Lmpl/SoterInjector;->lastScopeNote:Ljava/lang/String;

    .line 360
    const-string v0, "MPL-SOTER"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {p0}, Lmpl/SoterInjector;->file(Ljava/lang/String;)V

    return-void
.end method

.method static stamp()Ljava/lang/String;
    .registers 2

    .line 172
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-object v0

    .line 174
    :catchall_11
    const-string v0, "??:??:??.???"

    return-object v0
.end method

.method public static declared-synchronized start()V
    .registers 5

    const-class v0, Lmpl/SoterInjector;

    monitor-enter v0

    .line 70
    :try_start_3
    sget-boolean v1, Lmpl/SoterInjector;->started:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2c

    if-eqz v1, :cond_9

    .line 71
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 73
    :try_start_a
    sput-boolean v1, Lmpl/SoterInjector;->started:Z

    .line 74
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lmpl/SoterInjector$1;

    invoke-direct {v3}, Lmpl/SoterInjector$1;-><init>()V

    const-string v4, "soter-injector"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 92
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 93
    const-string v1, "MPL-SOTER"

    const-string v2, "injector started target=com.tencent.soter.soterserver poll=1000ms"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v1, "injector started poll=1000"

    invoke-static {v1}, Lmpl/SoterInjector;->file(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_2c

    .line 95
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private static state(Ljava/lang/String;)V
    .registers 3

    .line 160
    sget-object v0, Lmpl/SoterInjector;->lastState:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 163
    :cond_9
    sput-object p0, Lmpl/SoterInjector;->lastState:Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "injector: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 165
    const-string v0, "MPL-SOTER"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {p0}, Lmpl/SoterInjector;->file(Ljava/lang/String;)V

    return-void
.end method

.method public static status()Ljava/lang/String;
    .registers 3

    .line 99
    sget-object v0, Lmpl/SoterInjector;->lastMapped:Ljava/lang/Boolean;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lmpl/SoterInjector;->lastSeenPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mapped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_18

    .line 101
    const-string v0, "?"

    goto :goto_23

    :cond_18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "y"

    goto :goto_23

    :cond_21
    const-string v0, "n"

    :goto_23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " injects="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lmpl/SoterInjector;->injectedCount:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static syncIdentity(I)V
    .registers 12

    .line 382
    invoke-static {p0}, Lmpl/SoterInjector;->targetUid(I)I

    move-result v0

    if-gtz v0, :cond_18

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "identity: uid unknown for pid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterInjector;->identityState(Ljava/lang/String;)V

    return-void

    :cond_18
    const/4 v1, 0x0

    .line 389
    :try_start_19
    invoke-static {}, Lmpl/SoterIdentity;->rootSwitchOn()Z

    move-result v2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_1e

    goto :goto_27

    :catchall_1e
    move-exception v2

    .line 391
    const-string v3, "MPL-SOTER"

    const-string v4, "injector: identity switch unreadable"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    :goto_27
    if-eqz v2, :cond_2e

    .line 393
    invoke-static {}, Lmpl/SoterInjector;->identityStamp()J

    move-result-wide v3

    goto :goto_30

    :cond_2e
    const-wide/16 v3, -0x1

    :goto_30
    const-wide/16 v5, 0x0

    if-eqz v2, :cond_39

    cmp-long v7, v3, v5

    if-gez v7, :cond_39

    const/4 v1, 0x1

    :cond_39
    if-nez v1, :cond_47

    .line 397
    sget v7, Lmpl/SoterInjector;->identityUid:I

    if-ne v0, v7, :cond_47

    sget-wide v7, Lmpl/SoterInjector;->identityStamp:J

    cmp-long v9, v3, v7

    if-nez v9, :cond_47

    goto/16 :goto_e6

    :cond_47
    if-eqz v1, :cond_55

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-wide v9, Lmpl/SoterInjector;->identityRetryAt:J

    cmp-long v1, v7, v9

    if-gez v1, :cond_55

    goto/16 :goto_e6

    :cond_55
    if-eqz v2, :cond_74

    .line 408
    :try_start_57
    invoke-static {}, Lmpl/SoterForge;->cpuIdForIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmpl/SoterIdentity;->ensureRootIdentities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_60

    goto :goto_6f

    :catchall_60
    move-exception v1

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "identity: generation failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 412
    :goto_6f
    invoke-static {}, Lmpl/SoterInjector;->identityStamp()J

    move-result-wide v3

    goto :goto_75

    :cond_74
    const/4 v1, 0x0

    :goto_75
    if-eqz v2, :cond_7c

    .line 414
    invoke-static {v0, p0}, Lmpl/SoterInjector;->identityPushScript(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_80

    :cond_7c
    invoke-static {}, Lmpl/SoterInjector;->identityClearScript()Ljava/lang/String;

    move-result-object p0

    :goto_80
    invoke-static {p0}, Lmpl/SoterInjector;->exec(Ljava/lang/String;)I

    move-result p0

    .line 415
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_8e

    const-string v8, "identity: pushed"

    goto :goto_90

    :cond_8e
    const-string v8, "identity: cleared"

    :goto_90
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " rc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " stamp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-nez v1, :cond_b0

    .line 417
    const-string v1, ""

    goto :goto_c3

    :cond_b0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_c3
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 415
    invoke-static {v1}, Lmpl/SoterInjector;->identityState(Ljava/lang/String;)V

    if-nez p0, :cond_d3

    .line 419
    sput v0, Lmpl/SoterInjector;->identityUid:I

    .line 420
    sput-wide v3, Lmpl/SoterInjector;->identityStamp:J

    :cond_d3
    if-eqz v2, :cond_e4

    cmp-long p0, v3, v5

    if-gez p0, :cond_e4

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    sput-wide v0, Lmpl/SoterInjector;->identityRetryAt:J

    goto :goto_e6

    .line 425
    :cond_e4
    sput-wide v5, Lmpl/SoterInjector;->identityRetryAt:J

    :goto_e6
    return-void
.end method

.method private static syncScope(I)V
    .registers 8

    .line 323
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/adb/tricky_store/soter_scope.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 325
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x1f

    mul-long v2, v2, v4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_1d

    :cond_1b
    const-wide/16 v2, -0x1

    .line 326
    :goto_1d
    sget v0, Lmpl/SoterInjector;->scopePid:I

    if-ne p0, v0, :cond_29

    sget-wide v4, Lmpl/SoterInjector;->scopeStamp:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_29

    goto/16 :goto_aa

    .line 329
    :cond_29
    invoke-static {p0}, Lmpl/SoterInjector;->targetUid(I)I

    move-result v0

    if-gtz v0, :cond_41

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scope: uid unknown for pid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterInjector;->scopeState(Ljava/lang/String;)V

    return-void

    .line 334
    :cond_41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 335
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "D=/data/user/0/com.tencent.soter.soterserver/files;S=/data/adb/tricky_store/soter_scope.conf;rc=0;mkdir -p \"$D\" 2>/dev/null || rc=1;chown "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \"$D\" 2>/dev/null;if [ -f \"$S\" ]; then cp -f \"$S\" \"$D/soter_scope\" 2>/dev/null || rc=2;chown "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \"$D/soter_scope\" 2>/dev/null;chmod 0600 \"$D/soter_scope\" 2>/dev/null;restorecon \"$D/soter_scope\" 2>/dev/null;else rm -f \"$D/soter_scope\" 2>/dev/null || rc=3; fi;exit $rc"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 345
    invoke-static {v4}, Lmpl/SoterInjector;->exec(Ljava/lang/String;)I

    move-result v4

    .line 346
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "scope: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_80

    const-string v1, "pushed"

    goto :goto_82

    :cond_80
    const-string v1, "cleared"

    :goto_82
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " rc="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterInjector;->scopeState(Ljava/lang/String;)V

    if-nez v4, :cond_aa

    .line 349
    sput p0, Lmpl/SoterInjector;->scopePid:I

    .line 350
    sput-wide v2, Lmpl/SoterInjector;->scopeStamp:J

    :cond_aa
    :goto_aa
    return-void
.end method

.method private static systemContext()Landroid/content/Context;
    .registers 5

    .line 556
    invoke-static {}, Lmpl/SoterBridge;->systemContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    const/4 v0, 0x0

    .line 561
    :try_start_8
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_40

    const/4 v2, 0x0

    .line 564
    :try_start_f
    const-string v3, "currentActivityThread"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1c

    goto :goto_1e

    :catchall_1c
    nop

    move-object v3, v0

    :goto_1e
    if-nez v3, :cond_2c

    .line 569
    :try_start_20
    const-string v3, "systemMain"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 571
    :cond_2c
    const-string v4, "getSystemContext"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 572
    instance-of v2, v1, Landroid/content/Context;

    if-eqz v2, :cond_3f

    check-cast v1, Landroid/content/Context;
    :try_end_3e
    .catchall {:try_start_20 .. :try_end_3e} :catchall_40

    move-object v0, v1

    :cond_3f
    return-object v0

    :catchall_40
    move-exception v1

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "injector: system context unavailable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MPL-SOTER"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static targetUid(I)I
    .registers 3

    .line 518
    sget-object v0, Lmpl/SoterInjector;->cachedUid:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    .line 519
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_f

    .line 520
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 522
    :cond_f
    invoke-static {}, Lmpl/SoterInjector;->uidFromPackageManager()I

    move-result v0

    if-gtz v0, :cond_19

    .line 524
    invoke-static {p0}, Lmpl/SoterInjector;->uidFromProc(I)I

    move-result v0

    :cond_19
    if-lez v0, :cond_21

    .line 527
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lmpl/SoterInjector;->cachedUid:Ljava/lang/Integer;

    :cond_21
    return v0
.end method

.method private static tick()V
    .registers 4

    .line 106
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/adb/tricky_store/soter_forge_disabled"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 107
    invoke-static {v1}, Lmpl/SoterInjector;->publishState(Z)V

    if-eqz v0, :cond_18

    .line 109
    const-string v0, "disabled (marker present)"

    invoke-static {v0}, Lmpl/SoterInjector;->state(Ljava/lang/String;)V

    return-void

    .line 112
    :cond_18
    invoke-static {}, Lmpl/SoterInjector;->findTargetPid()I

    move-result v0

    if-gtz v0, :cond_2a

    const/4 v0, -0x1

    .line 114
    sput v0, Lmpl/SoterInjector;->lastSeenPid:I

    const/4 v0, 0x0

    .line 115
    sput-object v0, Lmpl/SoterInjector;->lastMapped:Ljava/lang/Boolean;

    .line 116
    const-string v0, "no target process"

    invoke-static {v0}, Lmpl/SoterInjector;->state(Ljava/lang/String;)V

    return-void

    .line 119
    :cond_2a
    sput v0, Lmpl/SoterInjector;->lastSeenPid:I

    .line 123
    invoke-static {v0}, Lmpl/SoterInjector;->syncScope(I)V

    .line 126
    invoke-static {v0}, Lmpl/SoterInjector;->syncIdentity(I)V

    .line 127
    invoke-static {v0}, Lmpl/SoterInjector;->isLibraryMapped(I)Ljava/lang/Boolean;

    move-result-object v1

    .line 128
    sput-object v1, Lmpl/SoterInjector;->lastMapped:Ljava/lang/Boolean;

    .line 129
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "pid="

    if-eqz v2, :cond_5d

    .line 130
    sget v1, Lmpl/SoterInjector;->lastPid:I

    if-eq v0, v1, :cond_5c

    .line 131
    sput v0, Lmpl/SoterInjector;->lastPid:I

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " lib mapped"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterInjector;->state(Ljava/lang/String;)V

    :cond_5c
    return-void

    :cond_5d
    if-nez v1, :cond_74

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " maps unreadable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmpl/SoterInjector;->state(Ljava/lang/String;)V

    goto :goto_88

    .line 139
    :cond_74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lib NOT mapped -> inject"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmpl/SoterInjector;->state(Ljava/lang/String;)V

    .line 141
    :goto_88
    invoke-static {v0}, Lmpl/SoterInjector;->inject(I)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 143
    sget v1, Lmpl/SoterInjector;->injectedCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lmpl/SoterInjector;->injectedCount:I

    .line 144
    sput v0, Lmpl/SoterInjector;->lastPid:I

    .line 145
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Lmpl/SoterInjector;->lastMapped:Ljava/lang/Boolean;

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " injected"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterInjector;->state(Ljava/lang/String;)V

    .line 149
    :try_start_ae
    invoke-static {}, Lmpl/SoterBridge;->kick()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_b2

    return-void

    :catchall_b2
    move-exception v0

    .line 151
    const-string v1, "MPL-SOTER"

    const-string v2, "bridge kick failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 154
    :cond_bb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " inject FAILED"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterInjector;->state(Ljava/lang/String;)V

    return-void
.end method

.method private static uidFromPackageManager()I
    .registers 4

    const/4 v0, -0x1

    .line 534
    :try_start_1
    invoke-static {}, Lmpl/SoterInjector;->systemContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_8

    return v0

    .line 538
    :cond_8
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_f

    return v0

    .line 542
    :cond_f
    const-string v2, "com.tencent.soter.soterserver"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_19

    return v0

    .line 543
    :cond_19
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1c

    return v0

    :catchall_1c
    move-exception v1

    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "injector: uid via PackageManager failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MPL-SOTER"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static uidFromProc(I)I
    .registers 7

    const-string v0, "/proc/"

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 583
    :try_start_4
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/status"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_53

    .line 585
    :goto_1f
    :try_start_1f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4c

    .line 586
    const-string v0, "Uid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_1f

    :cond_2e
    const/4 v0, 0x4

    .line 589
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 590
    array-length v0, p0

    if-nez v0, :cond_41

    goto :goto_1f

    :cond_41
    const/4 v0, 0x0

    .line 593
    aget-object p0, p0, v0

    invoke-static {p0}, Lmpl/SoterInjector;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_48
    .catchall {:try_start_1f .. :try_end_48} :catchall_50

    .line 601
    :try_start_48
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4b

    :catchall_4b
    return p0

    :cond_4c
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_4f

    :catchall_4f
    return v1

    :catchall_50
    nop

    move-object v2, v3

    goto :goto_54

    :catchall_53
    nop

    :goto_54
    if-eqz v2, :cond_59

    :try_start_56
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_59

    :catchall_59
    :cond_59
    return v1
.end method
