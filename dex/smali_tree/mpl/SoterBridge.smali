.class public final Lmpl/SoterBridge;
.super Ljava/lang/Object;
.source "SoterBridge.java"


# static fields
.field private static final BACKDOOR_CODE:I = -0x21524111

.field private static final BINDER_TYPE_BINDER:I = 0x1

.field private static final BINDER_TYPE_HANDLE:I = 0x3

.field private static final BIND_AUTO_CREATE:I = 0x1

.field private static final BIND_RETRY_MS:J = 0x1388L

.field private static final BURST_COUNT:I = 0xc8

.field private static final BURST_TRIGGER:Ljava/lang/String; = "/data/local/tmp/soter_probe_burst"

.field private static final CODES:I = 0xd

.field private static final DISABLED_MARKER:Ljava/lang/String; = "/data/adb/tricky_store/soter_forge_disabled"

.field private static final HEARTBEAT_MS:J = 0x3a98L

.field private static final INTERFACE_TRANSACTION:I = 0x5f4e5446

.field private static final JOURNAL:Ljava/lang/String; = "/data/local/tmp/soter_inject.log"

.field private static final LEGACY_SWITCH:Ljava/lang/String; = "/data/adb/tricky_store/soter_bridge_legacy"

.field private static final MANAGER_PACKAGE:Ljava/lang/String; = "dev.maplesu.manager"

.field private static final POLL_MS:J = 0x3e8L

.field private static final PROBE_EUID:I = 0x7d0

.field private static final PROBE_FAIL_LIMIT:I = 0x3

.field private static final PROBE_INTERVAL_MS:J = 0x1388L

.field private static final PROVIDER_AUTHORITY:Ljava/lang/String; = "dev.maplesu.manager.soter"

.field private static final PROVIDER_URI:Ljava/lang/String; = "content://dev.maplesu.manager.soter"

.field private static final ROUTE_FILE:Ljava/lang/String; = "/data/adb/tricky_store/soter_route"

.field private static final SOCKET_AFTER_MISSES:I = 0x2

.field private static final SOCKET_FORCE:Ljava/lang/String; = "/data/adb/tricky_store/soter_socket_force"

.field private static final SOTER_DESCRIPTOR:Ljava/lang/String; = "com.tencent.soter.soterserver.ISoterService"

.field private static final SOTER_PACKAGE:Ljava/lang/String; = "com.tencent.soter.soterserver"

.field private static final STATUS_FILE:Ljava/lang/String; = "/data/adb/tricky_store/ksu_status"

.field private static final TAG:Ljava/lang/String; = "MPL-SOTER"

.field private static final TARGET_FILE:Ljava/lang/String; = "/data/data/dev.maplesu.manager/files/soter_target.bin"

.field private static final TARGET_KEY:Ljava/lang/String; = "target"

.field private static final TX_HAS_ASK_ALREADY:I = 0x3

.field private static final UNREGISTER_CODE:I = 0x2

.field private static volatile backdoor:Landroid/os/IBinder; = null

.field private static volatile bindAttempted:Z = false

.field private static volatile bindNote:Ljava/lang/String; = null

.field private static volatile bindSupported:Z = true

.field private static binderMisses:I = 0x0

.field private static volatile boundService:Landroid/os/IBinder; = null

.field private static context:Landroid/content/Context; = null

.field private static fileVerdict:Ljava/lang/String; = null

.field private static lastBeat:J = 0x0L

.field private static lastBindAttempt:J = 0x0L

.field private static lastNote:Ljava/lang/String; = null

.field private static lastProbeAt:J = 0x0L

.field private static lastSelfTest:Ljava/lang/String; = "not run"

.field private static volatile legacy:Z = false

.field private static managerSeen:Z = false

.field private static probeFailures:I = 0x0

.field private static probeStreak:I = 0x0

.field private static probeUidNote:Ljava/lang/String; = "euid=2000"

.field private static probeWasLive:Z = false

.field private static probeWhy:Ljava/lang/String; = "not run"

.field private static publishedRoute:Ljava/lang/String;

.field private static volatile registered:Z

.field private static volatile socketForced:Z

.field private static volatile socketMode:Z

.field private static volatile started:Z

.field private static volatile target:Landroid/os/IBinder;

.field private static targetRoute:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .line 56
    invoke-static {}, Lmpl/SoterBridge;->tick()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1

    .line 56
    invoke-static {p0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 1

    .line 56
    sput-object p0, Lmpl/SoterBridge;->boundService:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 56
    sput-object p0, Lmpl/SoterBridge;->bindNote:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .registers 1

    .line 56
    invoke-static {p0}, Lmpl/SoterBridge;->journal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .registers 1

    .line 56
    invoke-static {p0}, Lmpl/SoterBridge;->reset(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Landroid/os/IBinder;[I[Ljava/lang/String;)V
    .registers 3

    .line 56
    invoke-static {p0, p1, p2}, Lmpl/SoterBridge;->transactProbe(Landroid/os/IBinder;[I[Ljava/lang/String;)V

    return-void
.end method

.method private static acquireTarget()Landroid/os/IBinder;
    .registers 2

    .line 798
    sget-object v0, Lmpl/SoterBridge;->boundService:Landroid/os/IBinder;

    .line 799
    invoke-static {v0}, Lmpl/SoterBridge;->isUsable(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 800
    const-string v1, "daemon-bind"

    sput-object v1, Lmpl/SoterBridge;->targetRoute:Ljava/lang/String;

    .line 801
    const-string v1, "target acquired via daemon bind (keep-alive)"

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-object v0

    .line 804
    :cond_12
    invoke-static {}, Lmpl/SoterBridge;->readFileTarget()Landroid/os/IBinder;

    move-result-object v0

    .line 805
    invoke-static {v0}, Lmpl/SoterBridge;->isUsable(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 806
    const-string v1, "file"

    sput-object v1, Lmpl/SoterBridge;->targetRoute:Ljava/lang/String;

    .line 807
    const-string v1, "target acquired via file"

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-object v0

    .line 810
    :cond_26
    invoke-static {}, Lmpl/SoterBridge;->readProviderTargetAms()Landroid/os/IBinder;

    move-result-object v0

    .line 811
    invoke-static {v0}, Lmpl/SoterBridge;->isUsable(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 812
    const-string v1, "ams"

    sput-object v1, Lmpl/SoterBridge;->targetRoute:Ljava/lang/String;

    .line 813
    const-string v1, "target acquired via ams provider"

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-object v0

    .line 816
    :cond_3a
    invoke-static {}, Lmpl/SoterBridge;->fetchTargetLegacy()Landroid/os/IBinder;

    move-result-object v0

    .line 817
    invoke-static {v0}, Lmpl/SoterBridge;->isUsable(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 818
    const-string v1, "resolver"

    sput-object v1, Lmpl/SoterBridge;->targetRoute:Ljava/lang/String;

    .line 819
    const-string v1, "target acquired via resolver"

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-object v0

    .line 822
    :cond_4e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no target binder (bind="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lmpl/SoterBridge;->bindNote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " manager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    sget-boolean v1, Lmpl/SoterBridge;->managerSeen:Z

    if-eqz v1, :cond_66

    const-string v1, "running"

    goto :goto_68

    :cond_66
    const-string v1, "not seen"

    :goto_68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 822
    invoke-static {v0}, Lmpl/SoterBridge;->heartbeat(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static activityManager()Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 929
    :try_start_3
    const-string v3, "android.app.ActivityManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 930
    const-string v4, "getService"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 931
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 932
    invoke-virtual {v3, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1b

    if-eqz v3, :cond_1b

    return-object v3

    .line 940
    :catchall_1b
    :cond_1b
    :try_start_1b
    const-string v3, "android.app.ActivityManagerNative"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 941
    const-string v4, "getDefault"

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 942
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 943
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_1b .. :try_end_30} :catchall_31

    return-object v0

    :catchall_31
    return-object v2
.end method

.method private static appendText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 1397
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_17

    .line 1398
    :try_start_7
    const-string p0, "UTF-8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    .line 1404
    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_14
    nop

    move-object v0, v1

    goto :goto_18

    :catchall_17
    nop

    :goto_18
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1d

    :catchall_1d
    :cond_1d
    return-void
.end method

.method private static attributionSource()Ljava/lang/Object;
    .registers 11

    .line 1052
    const-string v0, "dev.maplesu.manager"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "android.content.AttributionSource"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b9

    .line 1056
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1059
    :try_start_11
    new-array v8, v5, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v6

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v7

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    .line 1060
    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 1061
    invoke-virtual {v8, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1062
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v9, v10, v6

    aput-object v0, v10, v7

    aput-object v1, v10, v4

    invoke-virtual {v8, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_36
    .catchall {:try_start_11 .. :try_end_36} :catchall_37

    return-object v0

    :catchall_37
    const/4 v8, 0x4

    .line 1067
    :try_start_38
    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v7

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v4

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v5

    .line 1068
    invoke-virtual {v2, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1069
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1070
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v6

    aput-object v0, v8, v7

    aput-object v1, v8, v4

    aput-object v1, v8, v5

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_63
    .catchall {:try_start_38 .. :try_end_63} :catchall_64

    return-object v0

    .line 1075
    :catchall_64
    :try_start_64
    const-string v2, "android.content.AttributionSource$Builder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1076
    new-array v4, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 1077
    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1078
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1079
    const-string v4, "setPackageName"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    const-string v0, "build"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a2
    .catchall {:try_start_64 .. :try_end_a2} :catchall_a3

    return-object v0

    :catchall_a3
    move-exception v0

    .line 1084
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "attribution source failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmpl/SoterBridge;->cause(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    :catchall_b9
    return-object v1
.end method

.method private static burst(Landroid/os/IBinder;)V
    .registers 11

    .line 433
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/soter_probe_burst"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_9c

    .line 437
    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1b
    const/16 v7, 0xc8

    if-ge v4, v7, :cond_3c

    .line 443
    invoke-static {p0}, Lmpl/SoterBridge;->probeOnce(Landroid/os/IBinder;)[I

    move-result-object v7

    .line 444
    aget v8, v7, v2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_32

    aget v7, v7, v9

    const v8, 0x4d504c

    if-ne v7, v8, :cond_32

    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    :cond_32
    add-int/lit8 v6, v6, 0x1

    .line 448
    sget-object v7, Lmpl/SoterBridge;->probeWhy:Ljava/lang/String;

    if-eqz v7, :cond_39

    move-object v3, v7

    :cond_39
    :goto_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 453
    :cond_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    .line 454
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "BURST n=200 ok="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " miss="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " exceptions="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_5c

    const/4 v0, 0x0

    goto :goto_5d

    :cond_5c
    move v0, v6

    .line 455
    :goto_5d
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " took="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms route="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lmpl/SoterBridge;->targetRoute:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_77

    .line 457
    const-string v0, ""

    goto :goto_85

    :cond_77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " last="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_85
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 458
    const-string v0, "MPL-SOTER"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-static {p0}, Lmpl/SoterBridge;->journal(Ljava/lang/String;)V

    if-lez v6, :cond_9c

    .line 461
    sput-boolean v2, Lmpl/SoterBridge;->registered:Z

    const-wide/16 v0, 0x0

    .line 462
    sput-wide v0, Lmpl/SoterBridge;->lastProbeAt:J

    :cond_9c
    :goto_9c
    return-void
.end method

.method private static callProvider(Ljava/lang/Object;)Landroid/os/Bundle;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1010
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1011
    :goto_a
    array-length v3, v0

    const-string v4, "target"

    const-string v5, "call"

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ge v2, v3, :cond_76

    .line 1012
    aget-object v3, v0, v2

    .line 1013
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    goto :goto_73

    .line 1016
    :cond_23
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 1017
    array-length v11, v5

    const/4 v12, 0x5

    if-ne v11, v12, :cond_73

    aget-object v11, v5, v1

    .line 1018
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v13, "android.content.AttributionSource"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_73

    aget-object v11, v5, v9

    const-class v13, Ljava/lang/String;

    if-ne v11, v13, :cond_73

    aget-object v11, v5, v7

    const-class v13, Ljava/lang/String;

    if-ne v11, v13, :cond_73

    aget-object v11, v5, v6

    const-class v13, Ljava/lang/String;

    if-ne v11, v13, :cond_73

    aget-object v5, v5, v8

    const-class v11, Landroid/os/Bundle;

    if-eq v5, v11, :cond_52

    goto :goto_73

    .line 1023
    :cond_52
    invoke-static {}, Lmpl/SoterBridge;->attributionSource()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_59

    goto :goto_73

    .line 1027
    :cond_59
    new-array v0, v12, [Ljava/lang/Object;

    aput-object v5, v0, v1

    const-string v1, "dev.maplesu.manager.soter"

    aput-object v1, v0, v9

    aput-object v4, v0, v7

    aput-object v10, v0, v6

    aput-object v10, v0, v8

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1029
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_72

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :cond_72
    return-object v10

    :cond_73
    :goto_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_76
    const/4 v2, 0x0

    .line 1031
    :goto_77
    array-length v3, v0

    if-ge v2, v3, :cond_c2

    .line 1032
    aget-object v3, v0, v2

    .line 1033
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_87

    goto :goto_bf

    .line 1036
    :cond_87
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    .line 1037
    array-length v12, v11

    if-ne v12, v8, :cond_bf

    aget-object v12, v11, v1

    const-class v13, Ljava/lang/String;

    if-ne v12, v13, :cond_bf

    aget-object v12, v11, v9

    const-class v13, Ljava/lang/String;

    if-ne v12, v13, :cond_bf

    aget-object v12, v11, v7

    const-class v13, Ljava/lang/String;

    if-ne v12, v13, :cond_bf

    aget-object v11, v11, v6

    const-class v12, Landroid/os/Bundle;

    if-eq v11, v12, :cond_a7

    goto :goto_bf

    .line 1041
    :cond_a7
    new-array v0, v8, [Ljava/lang/Object;

    const-string v2, "dev.maplesu.manager"

    aput-object v2, v0, v1

    aput-object v4, v0, v9

    aput-object v10, v0, v7

    aput-object v10, v0, v6

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1042
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_be

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :cond_be
    return-object v10

    :cond_bf
    :goto_bf
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 1044
    :cond_c2
    const-string p0, "provider has no usable call() overload"

    invoke-static {p0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-object v10
.end method

.method private static cause(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .line 994
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eq v0, p0, :cond_11

    .line 995
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 997
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static descriptorOf(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 6

    .line 1142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const v2, 0x5f4e5446

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1145
    :try_start_d
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_13

    if-nez p0, :cond_1a

    .line 1152
    :catchall_13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v4

    .line 1148
    :cond_1a
    :try_start_1a
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_13

    .line 1152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method private static ensureBound()V
    .registers 8

    .line 213
    sget-object v0, Lmpl/SoterBridge;->boundService:Landroid/os/IBinder;

    if-nez v0, :cond_71

    sget-boolean v0, Lmpl/SoterBridge;->bindSupported:Z

    if-nez v0, :cond_9

    goto :goto_71

    .line 216
    :cond_9
    sget-object v0, Lmpl/SoterBridge;->context:Landroid/content/Context;

    if-nez v0, :cond_e

    goto :goto_71

    .line 220
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 221
    sget-wide v3, Lmpl/SoterBridge;->lastBindAttempt:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1388

    cmp-long v7, v3, v5

    if-gez v7, :cond_1d

    goto :goto_71

    .line 224
    :cond_1d
    sput-wide v1, Lmpl/SoterBridge;->lastBindAttempt:J

    const/4 v1, 0x1

    .line 225
    sput-boolean v1, Lmpl/SoterBridge;->bindAttempted:Z

    .line 226
    new-instance v2, Lmpl/SoterBridge$2;

    invoke-direct {v2}, Lmpl/SoterBridge$2;-><init>()V

    .line 255
    new-instance v3, Lmpl/SoterBridge$3;

    invoke-direct {v3}, Lmpl/SoterBridge$3;-><init>()V

    .line 263
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.tencent.soter.soterserver.ISoterService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.tencent.soter.soterserver"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 265
    :try_start_39
    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 267
    const-string v0, "bindService=false"

    sput-object v0, Lmpl/SoterBridge;->bindNote:Ljava/lang/String;

    .line 268
    const-string v0, "direct bind refused (bindService=false); using provider legs"

    invoke-static {v0}, Lmpl/SoterBridge;->journal(Ljava/lang/String;)V

    return-void

    .line 270
    :cond_49
    const-string v0, "bind requested"

    sput-object v0, Lmpl/SoterBridge;->bindNote:Ljava/lang/String;

    .line 271
    const-string v0, "direct bind requested (keep-alive)"

    invoke-static {v0}, Lmpl/SoterBridge;->journal(Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_39 .. :try_end_52} :catchall_53

    return-void

    :catchall_53
    move-exception v0

    const/4 v1, 0x0

    .line 274
    sput-boolean v1, Lmpl/SoterBridge;->bindSupported:Z

    .line 275
    const-string v1, "bindService threw"

    sput-object v1, Lmpl/SoterBridge;->bindNote:Ljava/lang/String;

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "direct bind unavailable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; using provider legs"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterBridge;->journal(Ljava/lang/String;)V

    :cond_71
    :goto_71
    return-void
.end method

.method private static enterSocketMode()V
    .registers 3

    const/4 v0, 0x1

    .line 400
    sput-boolean v0, Lmpl/SoterBridge;->socketMode:Z

    .line 401
    sput-boolean v0, Lmpl/SoterBridge;->registered:Z

    .line 402
    const-string v0, "socket"

    sput-object v0, Lmpl/SoterBridge;->targetRoute:Ljava/lang/String;

    const/4 v1, 0x0

    .line 403
    sput v1, Lmpl/SoterBridge;->probeFailures:I

    .line 404
    sput v1, Lmpl/SoterBridge;->probeStreak:I

    const-wide/16 v1, 0x0

    .line 405
    sput-wide v1, Lmpl/SoterBridge;->lastProbeAt:J

    const/4 v1, 0x0

    .line 406
    sput-object v1, Lmpl/SoterBridge;->probeWhy:Ljava/lang/String;

    .line 407
    invoke-static {}, Lmpl/SoterSocket;->selfTest()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmpl/SoterBridge;->lastSelfTest:Ljava/lang/String;

    .line 408
    const-string v1, "REGISTERED 13 codes route=socket (native unix socket @teesim_soter proto=1)"

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    .line 410
    const-string v1, "MPL-SOTER"

    const-string v2, "SOTER interceptor registered (route=socket, codes=13)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-static {v0}, Lmpl/SoterBridge;->publishRoute(Ljava/lang/String;)V

    return-void
.end method

.method private static fetchTargetLegacy()Landroid/os/IBinder;
    .registers 4

    .line 1095
    const-string v0, "target"

    sget-object v1, Lmpl/SoterBridge;->context:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return-object v2

    .line 1100
    :cond_8
    :try_start_8
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1101
    const-string v3, "content://dev.maplesu.manager.soter"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_19

    return-object v2

    .line 1105
    :cond_19
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1e

    return-object v0

    :catchall_1e
    move-exception v0

    .line 1107
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "resolver provider call failed: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-object v2
.end method

.method private static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1089
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 1090
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getContentProviderExternal(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 11

    .line 969
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 970
    :goto_a
    array-length v3, v0

    const/4 v4, 0x0

    if-ge v2, v3, :cond_67

    .line 971
    aget-object v3, v0, v2

    .line 972
    const-string v5, "getContentProviderExternal"

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_64

    .line 975
    :cond_1d
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 976
    array-length v6, v5

    const/4 v7, 0x4

    if-ne v6, v7, :cond_64

    aget-object v6, v5, v1

    const-class v8, Ljava/lang/String;

    if-ne v6, v8, :cond_64

    const/4 v6, 0x1

    aget-object v5, v5, v6

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v5, v8, :cond_33

    goto :goto_64

    .line 980
    :cond_33
    :try_start_33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "dev.maplesu.manager.soter"

    aput-object v8, v7, v1

    aput-object v5, v7, v6

    const/4 v5, 0x2

    aput-object v4, v7, v5

    const-string v4, "mpl"

    const/4 v5, 0x3

    aput-object v4, v7, v5

    invoke-virtual {v3, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_4e

    if-eqz v3, :cond_64

    return-object v3

    :catchall_4e
    move-exception v3

    .line 986
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ams getContentProviderExternal: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lmpl/SoterBridge;->cause(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    :cond_64
    :goto_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_67
    return-object v4
.end method

.method private static heartbeat()V
    .registers 1

    const/4 v0, 0x0

    .line 767
    invoke-static {v0}, Lmpl/SoterBridge;->heartbeat(Ljava/lang/String;)V

    return-void
.end method

.method private static heartbeat(Ljava/lang/String;)V
    .registers 8

    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    if-nez p0, :cond_11

    .line 772
    sget-wide v4, Lmpl/SoterBridge;->lastBeat:J

    sub-long v4, v0, v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_11

    goto :goto_1b

    :cond_11
    if-eqz p0, :cond_1c

    .line 775
    sget-wide v4, Lmpl/SoterBridge;->lastBeat:J

    sub-long v4, v0, v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_1c

    :goto_1b
    return-void

    .line 778
    :cond_1c
    sput-wide v0, Lmpl/SoterBridge;->lastBeat:J

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hb route="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lmpl/SoterBridge;->targetRoute:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " registered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    sget-boolean v1, Lmpl/SoterBridge;->registered:Z

    if-eqz v1, :cond_36

    const/16 v1, 0xd

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " selftest=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmpl/SoterBridge;->lastSelfTest:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] probe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lmpl/SoterBridge;->probeStreak:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ok/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lmpl/SoterBridge;->probeFailures:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "miss mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    sget-boolean v1, Lmpl/SoterBridge;->legacy:Z

    if-eqz v1, :cond_64

    const-string v1, "legacy"

    goto :goto_66

    :cond_64
    const-string v1, "euid-probe"

    :goto_66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmpl/SoterBridge;->probeUidNote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmpl/ProbeInterceptor;->HITS:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 785
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    sget-object v1, Lmpl/SoterBridge;->boundService:Landroid/os/IBinder;

    if-eqz v1, :cond_8d

    const-string v1, "held"

    goto :goto_8f

    :cond_8d
    sget-object v1, Lmpl/SoterBridge;->bindNote:Ljava/lang/String;

    :goto_8f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    invoke-static {}, Lmpl/SoterSocket;->status()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    invoke-static {}, Lmpl/SoterInjector;->status()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    sget-object v1, Lmpl/SoterBridge;->probeWhy:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_b2

    move-object v1, v2

    goto :goto_c2

    :cond_b2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " why="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lmpl/SoterBridge;->probeWhy:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_c2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_c8

    goto :goto_d6

    .line 790
    :cond_c8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " note="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_d6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bridge "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MPL-SOTER"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterBridge;->journal(Ljava/lang/String;)V

    return-void
.end method

.method private static intAt([BI)I
    .registers 4

    .line 1295
    array-length v0, p0

    add-int/lit8 v1, p1, 0x4

    if-ge v0, v1, :cond_7

    const/4 p0, -0x1

    return p0

    .line 1298
    :cond_7
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private static isEnvironmentFailure(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 729
    :cond_4
    const-string v1, "seteuid"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "no main looper"

    .line 730
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "main looper"

    .line 731
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "probe timed out"

    .line 732
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "probe interrupted"

    .line 733
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "SecurityException"

    .line 734
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "Operation not permitted"

    .line 735
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "EPERM"

    .line 736
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_45

    goto :goto_46

    :cond_45
    return v0

    :cond_46
    :goto_46
    const/4 p0, 0x1

    return p0
.end method

.method private static isUsable(Landroid/os/IBinder;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1119
    :cond_4
    invoke-static {p0}, Lmpl/SoterBridge;->ping(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 1122
    :cond_b
    invoke-static {p0}, Lmpl/SoterBridge;->descriptorOf(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_12

    return v0

    .line 1126
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "soter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1128
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refused binder descriptor="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    :cond_2f
    return v0
.end method

.method private static journal(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 1326
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/data/local/tmp/soter_inject.log"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_36

    .line 1327
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

    .line 1333
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

.method public static declared-synchronized kick()V
    .registers 4

    const-string v0, "kick failed: "

    const-class v1, Lmpl/SoterBridge;

    monitor-enter v1

    .line 195
    :try_start_5
    sget-boolean v2, Lmpl/SoterBridge;->started:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_21

    if-nez v2, :cond_b

    .line 196
    monitor-exit v1

    return-void

    .line 199
    :cond_b
    :try_start_b
    invoke-static {}, Lmpl/SoterBridge;->tick()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    goto :goto_1f

    :catchall_f
    move-exception v2

    .line 201
    :try_start_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_21

    .line 203
    :goto_1f
    monitor-exit v1

    return-void

    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method private static leaveSocketMode(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 416
    sput-boolean v0, Lmpl/SoterBridge;->socketMode:Z

    .line 417
    sput-boolean v0, Lmpl/SoterBridge;->registered:Z

    const/4 v1, 0x0

    .line 418
    sput-object v1, Lmpl/SoterBridge;->targetRoute:Ljava/lang/String;

    .line 419
    sput v0, Lmpl/SoterBridge;->binderMisses:I

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "not run ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmpl/SoterBridge;->lastSelfTest:Ljava/lang/String;

    .line 421
    sput-object v1, Lmpl/SoterBridge;->target:Landroid/os/IBinder;

    .line 422
    sput-object v1, Lmpl/SoterBridge;->backdoor:Landroid/os/IBinder;

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "socket lane lost ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "); retrying the binder route"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    .line 424
    const-string p0, "none"

    invoke-static {p0}, Lmpl/SoterBridge;->publishRoute(Ljava/lang/String;)V

    return-void
.end method

.method private static legacyProbe(Landroid/os/IBinder;)V
    .registers 8

    const-string v0, "SELFTEST "

    const-string v1, "tx=3 value="

    const-string v2, "SELFTEST failed: "

    .line 746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 747
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 749
    :try_start_e
    const-string v5, "com.tencent.soter.soterserver.ISoterService"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 750
    invoke-interface {p0, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 751
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 752
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 753
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 754
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hook=LEGACY"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmpl/SoterBridge;->lastSelfTest:Ljava/lang/String;

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lmpl/SoterBridge;->lastSelfTest:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " exception="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterBridge;->journal(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_e .. :try_end_4f} :catchall_56

    .line 760
    :goto_4f
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 761
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_56
    move-exception p0

    .line 757
    :try_start_57
    const-string v0, "failed (legacy)"

    sput-object v0, Lmpl/SoterBridge;->lastSelfTest:Ljava/lang/String;

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterBridge;->journal(Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_57 .. :try_end_6a} :catchall_6b

    goto :goto_4f

    :catchall_6b
    move-exception p0

    .line 760
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 761
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 762
    throw p0
.end method

.method private static longAt([BI)J
    .registers 6

    .line 1305
    array-length v0, p0

    add-int/lit8 v1, p1, 0x8

    if-ge v0, v1, :cond_8

    const-wide/16 p0, -0x1

    return-wide p0

    .line 1308
    :cond_8
    invoke-static {p0, p1}, Lmpl/SoterBridge;->intAt([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    .line 1309
    invoke-static {p0, p1}, Lmpl/SoterBridge;->intAt([BI)I

    move-result p0

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x20

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static maybeSocketFallback(Ljava/lang/String;)V
    .registers 3

    .line 387
    sget v0, Lmpl/SoterBridge;->binderMisses:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmpl/SoterBridge;->binderMisses:I

    .line 388
    sget-boolean v0, Lmpl/SoterBridge;->legacy:Z

    if-nez v0, :cond_34

    sget-boolean v0, Lmpl/SoterBridge;->socketMode:Z

    if-nez v0, :cond_34

    invoke-static {}, Lmpl/SoterSocket;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_34

    .line 391
    :cond_15
    sget v0, Lmpl/SoterBridge;->binderMisses:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1b

    goto :goto_34

    .line 394
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "binder route unusable ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "); starting the native socket channel"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    .line 395
    invoke-static {}, Lmpl/SoterSocket;->start()V

    :cond_34
    :goto_34
    return-void
.end method

.method private static note(Ljava/lang/String;)V
    .registers 4

    .line 1315
    sget-object v0, Lmpl/SoterBridge;->lastNote:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1316
    sput-object p0, Lmpl/SoterBridge;->lastNote:Ljava/lang/String;

    .line 1317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bridge: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MPL-SOTER"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterBridge;->journal(Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

.method private static onProbeResult(IILjava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_b

    const v2, 0x4d504c

    if-ne p1, v2, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    if-eqz p2, :cond_12

    if-nez v2, :cond_12

    .line 681
    sput-object p2, Lmpl/SoterBridge;->probeWhy:Ljava/lang/String;

    :cond_12
    const/4 p2, 0x0

    .line 683
    const-string v3, " uid="

    if-eqz v2, :cond_7a

    .line 684
    sget p0, Lmpl/SoterBridge;->probeStreak:I

    add-int/2addr p0, v1

    sput p0, Lmpl/SoterBridge;->probeStreak:I

    .line 685
    sput v0, Lmpl/SoterBridge;->probeFailures:I

    .line 686
    sput-object p2, Lmpl/SoterBridge;->probeWhy:Ljava/lang/String;

    .line 687
    const-string p0, "tx=3 value=1 hook=LIVE"

    sput-object p0, Lmpl/SoterBridge;->lastSelfTest:Ljava/lang/String;

    .line 688
    sget-boolean p0, Lmpl/SoterBridge;->probeWasLive:Z

    if-nez p0, :cond_146

    .line 689
    sput-boolean v1, Lmpl/SoterBridge;->probeWasLive:Z

    .line 690
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "SELFTEST LIVE tx=3 value=1 magic="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lmpl/SoterBridge;->probeUidNote:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " hits="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lmpl/ProbeInterceptor;->HITS:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 691
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " route="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lmpl/SoterBridge;->targetRoute:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 690
    invoke-static {p0}, Lmpl/SoterBridge;->journal(Ljava/lang/String;)V

    .line 693
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "SOTER selftest LIVE (non-root probe uid="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lmpl/SoterBridge;->probeUidNote:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MPL-SOTER"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 697
    :cond_7a
    sput-boolean v0, Lmpl/SoterBridge;->probeWasLive:Z

    .line 698
    sput v0, Lmpl/SoterBridge;->probeStreak:I

    .line 702
    sget-object v2, Lmpl/SoterBridge;->probeWhy:Ljava/lang/String;

    invoke-static {v2}, Lmpl/SoterBridge;->isEnvironmentFailure(Ljava/lang/String;)Z

    move-result v2

    const-string v4, " why="

    const-string v5, "tx=3 value="

    if-eqz v2, :cond_cd

    .line 703
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " hook=UNVERIFIED"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lmpl/SoterBridge;->lastSelfTest:Ljava/lang/String;

    .line 704
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "SELFTEST UNVERIFIED tx=3 value="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lmpl/SoterBridge;->probeWhy:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lmpl/SoterBridge;->probeUidNote:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " / probe cannot run, keeping the registration"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterBridge;->journal(Ljava/lang/String;)V

    .line 706
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/16 v0, 0x61a8

    add-long/2addr p0, v0

    sput-wide p0, Lmpl/SoterBridge;->lastProbeAt:J

    return-void

    .line 709
    :cond_cd
    sget v2, Lmpl/SoterBridge;->probeFailures:I

    add-int/2addr v2, v1

    sput v2, Lmpl/SoterBridge;->probeFailures:I

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hook=MISSING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmpl/SoterBridge;->lastSelfTest:Ljava/lang/String;

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELFTEST MISSING tx=3 value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " magic="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lmpl/SoterBridge;->probeWhy:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " misses="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lmpl/SoterBridge;->probeFailures:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lmpl/SoterBridge;->probeUidNote:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " / re-registering"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 711
    invoke-static {p0}, Lmpl/SoterBridge;->journal(Ljava/lang/String;)V

    .line 716
    sput-boolean v0, Lmpl/SoterBridge;->registered:Z

    const-wide/16 p0, 0x0

    .line 717
    sput-wide p0, Lmpl/SoterBridge;->lastProbeAt:J

    .line 718
    sget p0, Lmpl/SoterBridge;->probeFailures:I

    const/4 p1, 0x3

    if-lt p0, p1, :cond_146

    .line 719
    sput-object p2, Lmpl/SoterBridge;->backdoor:Landroid/os/IBinder;

    .line 720
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "probe missed "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p1, Lmpl/SoterBridge;->probeFailures:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x: rebuilding backdoor"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterBridge;->journal(Ljava/lang/String;)V

    :cond_146
    return-void
.end method

.method private static ping(Landroid/os/IBinder;)Z
    .registers 1

    .line 1135
    :try_start_0
    invoke-interface {p0}, Landroid/os/IBinder;->pingBinder()Z

    move-result p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return p0

    :catchall_5
    const/4 p0, 0x0

    return p0
.end method

.method private static probeOnce(Landroid/os/IBinder;)[I
    .registers 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 531
    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v2, 0x0

    .line 532
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 533
    new-instance v3, Lmpl/SoterBridge$5;

    invoke-direct {v3, p0, v0, v2}, Lmpl/SoterBridge$5;-><init>(Landroid/os/IBinder;[I[Ljava/lang/String;)V

    .line 539
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    if-nez p0, :cond_1b

    .line 541
    const-string p0, "no main looper"

    sput-object p0, Lmpl/SoterBridge;->probeWhy:Ljava/lang/String;

    return-object v0

    .line 544
    :cond_1b
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v4, p0, :cond_25

    .line 545
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_4f

    .line 547
    :cond_25
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 548
    new-instance v5, Lmpl/SoterBridge$6;

    invoke-direct {v5, v3, v4}, Lmpl/SoterBridge$6;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V

    .line 558
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_40

    .line 559
    const-string p0, "main looper rejected the probe"

    sput-object p0, Lmpl/SoterBridge;->probeWhy:Ljava/lang/String;

    return-object v0

    .line 563
    :cond_40
    :try_start_40
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x3

    invoke-virtual {v4, v5, v6, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_4f

    .line 564
    const-string p0, "probe timed out"

    sput-object p0, Lmpl/SoterBridge;->probeWhy:Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_4e} :catch_56

    return-object v0

    .line 573
    :cond_4f
    :goto_4f
    aget-object p0, v2, v1

    if-eqz p0, :cond_55

    .line 574
    sput-object p0, Lmpl/SoterBridge;->probeWhy:Ljava/lang/String;

    :cond_55
    return-object v0

    .line 568
    :catch_56
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 569
    const-string p0, "probe interrupted"

    sput-object p0, Lmpl/SoterBridge;->probeWhy:Ljava/lang/String;

    return-object v0
.end method

.method private static probeUid()I
    .registers 4

    .line 629
    :try_start_0
    invoke-static {}, Lmpl/SoterInjector;->status()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 630
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_2f

    .line 631
    aget-object v2, v0, v1

    const-string v3, "pid="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 632
    aget-object v2, v0, v1

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2c

    .line 634
    invoke-static {v2}, Lmpl/SoterBridge;->uidOfPid(I)I

    move-result v2
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2f

    if-lez v2, :cond_2c

    return v2

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :catchall_2f
    :cond_2f
    const/16 v0, 0x7d0

    return v0
.end method

.method private static publishRoute(Ljava/lang/String;)V
    .registers 5

    .line 1356
    sget-object v0, Lmpl/SoterBridge;->publishedRoute:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1359
    :cond_9
    sput-object p0, Lmpl/SoterBridge;->publishedRoute:Ljava/lang/String;

    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "route="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " registered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    sget-boolean v1, Lmpl/SoterBridge;->registered:Z

    if-eqz v1, :cond_21

    const/16 v1, 0xd

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " proto=1 socket=@teesim_soter at="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/data/adb/tricky_store/soter_route"

    invoke-static {v3, v1}, Lmpl/SoterBridge;->writeText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "soter_route="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "/data/adb/tricky_store/ksu_status"

    invoke-static {v1, p0}, Lmpl/SoterBridge;->appendText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "soter "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MPL-SOTER"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static readAll(Ljava/io/File;)[B
    .registers 7

    const/4 v0, 0x0

    .line 1264
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2d

    .line 1265
    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p0, v2

    new-array v2, p0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v4, p0, :cond_1c

    sub-int v5, p0, v4

    .line 1268
    invoke-virtual {v1, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_2b

    if-gtz v5, :cond_1a

    goto :goto_1c

    :cond_1a
    add-int/2addr v4, v5

    goto :goto_f

    :cond_1c
    :goto_1c
    if-ne v4, p0, :cond_22

    .line 1286
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_21

    :catchall_21
    return-object v2

    .line 1277
    :cond_22
    :try_start_22
    new-array p0, v4, [B

    .line 1278
    invoke-static {v2, v3, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_2b

    .line 1286
    :try_start_27
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2a

    :catchall_2a
    return-object p0

    :catchall_2b
    move-exception p0

    goto :goto_2f

    :catchall_2d
    move-exception p0

    move-object v1, v0

    .line 1281
    :goto_2f
    :try_start_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target file unreadable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_2f .. :try_end_43} :catchall_49

    if-eqz v1, :cond_48

    .line 1286
    :try_start_45
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_48

    :catchall_48
    :cond_48
    return-object v0

    :catchall_49
    move-exception p0

    if-eqz v1, :cond_4f

    :try_start_4c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_4f

    .line 1291
    :catchall_4f
    :cond_4f
    throw p0
.end method

.method private static readBackdoor(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 6

    .line 1160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const v2, -0x21524111

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1163
    :try_start_d
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1f

    .line 1164
    const-string p0, "backdoor transact refused"

    invoke-static {p0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_18

    .line 1171
    :catchall_18
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v4

    .line 1167
    :cond_1f
    :try_start_1f
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_18

    .line 1171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method private static readFileTarget()Landroid/os/IBinder;
    .registers 9

    .line 834
    const-string v0, "file unmarshall failed: "

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/dev.maplesu.manager/files/soter_target.bin"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_11

    return-object v3

    .line 838
    :cond_11
    invoke-static {v1}, Lmpl/SoterBridge;->readAll(Ljava/io/File;)[B

    move-result-object v1

    if-eqz v1, :cond_d5

    .line 839
    array-length v2, v1

    const/16 v4, 0x8

    if-ge v2, v4, :cond_1e

    goto/16 :goto_d5

    :cond_1e
    const/4 v2, 0x0

    .line 842
    invoke-static {v1, v2}, Lmpl/SoterBridge;->intAt([BI)I

    move-result v5

    .line 843
    invoke-static {v1, v4}, Lmpl/SoterBridge;->longAt([BI)J

    move-result-wide v6

    .line 844
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "type="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " handle="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " bytes="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 847
    :try_start_4a
    array-length v7, v1

    invoke-virtual {v6, v1, v2, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 848
    invoke-virtual {v6, v2}, Landroid/os/Parcel;->setDataPosition(I)V
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_bc

    const/4 v1, 0x1

    .line 849
    const-string v2, "file target: "

    if-ne v5, v1, :cond_6e

    .line 852
    :try_start_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> local binder pointer, refused"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_56 .. :try_end_6a} :catchall_bc

    .line 868
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    return-object v3

    .line 855
    :cond_6e
    :try_start_6e
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 856
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_84

    .line 857
    const-string v2, "null binder"

    goto :goto_a0

    .line 858
    :cond_84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 857
    invoke-static {v1}, Lmpl/SoterBridge;->descriptorOf(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ping="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    invoke-static {v1}, Lmpl/SoterBridge;->ping(Landroid/os/IBinder;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_a0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 859
    sget-object v4, Lmpl/SoterBridge;->fileVerdict:Ljava/lang/String;

    if-eqz v4, :cond_b1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b8

    .line 860
    :cond_b1
    sput-object v2, Lmpl/SoterBridge;->fileVerdict:Ljava/lang/String;

    .line 861
    const-string v4, "MPL-SOTER"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catchall {:try_start_6e .. :try_end_b8} :catchall_bc

    .line 868
    :cond_b8
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_bc
    move-exception v1

    .line 865
    :try_start_bd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_bd .. :try_end_cc} :catchall_d0

    .line 868
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :catchall_d0
    move-exception v0

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 869
    throw v0

    :cond_d5
    :goto_d5
    return-object v3
.end method

.method private static readFirstArg(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "/proc/"

    const/4 v1, 0x0

    .line 1237
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/cmdline"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_3f

    const/16 p0, 0x80

    .line 1238
    :try_start_1b
    new-array p0, p0, [B

    .line 1239
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_3d

    if-gtz v0, :cond_27

    .line 1253
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

    .line 1244
    :try_start_2b
    aget-byte v5, p0, v4

    if-eqz v5, :cond_32

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 1247
    :cond_32
    new-instance v0, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v0, p0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_3d

    .line 1253
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

.method private static readProviderTargetAms()Landroid/os/IBinder;
    .registers 4

    const/4 v0, 0x0

    .line 885
    :try_start_1
    invoke-static {}, Lmpl/SoterBridge;->activityManager()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    .line 887
    const-string v1, "ams unavailable"

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-object v0

    .line 890
    :cond_d
    invoke-static {}, Lmpl/SoterBridge;->userId()I

    move-result v2

    invoke-static {v1, v2}, Lmpl/SoterBridge;->getContentProviderExternal(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 892
    const-string v1, "ams provider not published (getContentProviderExternal returned null)"

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_71

    return-object v0

    .line 901
    :cond_1d
    :try_start_1d
    const-string v2, "provider"

    invoke-static {v1, v2}, Lmpl/SoterBridge;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_5a

    if-nez v1, :cond_2b

    .line 907
    const-string v1, "ams provider not published yet"

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-object v0

    .line 911
    :cond_2b
    :try_start_2b
    invoke-static {v1}, Lmpl/SoterBridge;->callProvider(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_37

    .line 913
    const-string v1, "provider call returned null (manager unbound or uid gate)"

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-object v0

    .line 916
    :cond_37
    const-string v2, "target"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_42

    const/4 v2, 0x1

    .line 918
    sput-boolean v2, Lmpl/SoterBridge;->managerSeen:Z
    :try_end_42
    .catchall {:try_start_2b .. :try_end_42} :catchall_43

    :cond_42
    return-object v1

    :catchall_43
    move-exception v1

    .line 922
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "provider call failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lmpl/SoterBridge;->cause(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-object v0

    :catchall_5a
    move-exception v1

    .line 903
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ams holder unreadable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lmpl/SoterBridge;->cause(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-object v0

    :catchall_71
    move-exception v1

    .line 896
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ams provider failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lmpl/SoterBridge;->cause(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-object v0
.end method

.method private static register(Landroid/os/IBinder;Landroid/os/IBinder;)Z
    .registers 14

    const-string v0, "register returned "

    const/4 v1, 0x0

    .line 1184
    :try_start_3
    const-string v2, "v4.a"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1185
    const-string v3, "v4.g"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1186
    const-string v4, "w4.e"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1187
    const-string v5, "c"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 1188
    const-string v6, "b"

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v8, v1

    const-class v9, Landroid/os/IBinder;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x2

    aput-object v3, v8, v9

    const-class v3, [I

    const/4 v11, 0x3

    aput-object v3, v8, v11

    invoke-virtual {v2, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1190
    new-array v3, v7, [Ljava/lang/Object;

    aput-object p0, v3, v1

    aput-object p1, v3, v10

    sget-object p0, Lmpl/ProbeInterceptor;->INSTANCE:Lmpl/ProbeInterceptor;

    aput-object p0, v3, v9

    aput-object v4, v3, v11

    invoke-virtual {v2, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1192
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_5a

    move-object p1, p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 v10, 0x0

    :goto_5b
    if-nez v10, :cond_6c

    .line 1194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_6d

    :cond_6c
    return v10

    :catchall_6d
    move-exception p0

    .line 1198
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "register failed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return v1
.end method

.method private static reset(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 468
    sput-object v0, Lmpl/SoterBridge;->target:Landroid/os/IBinder;

    .line 469
    sput-object v0, Lmpl/SoterBridge;->backdoor:Landroid/os/IBinder;

    const/4 v1, 0x0

    .line 470
    sput-boolean v1, Lmpl/SoterBridge;->registered:Z

    .line 471
    sput-object v0, Lmpl/SoterBridge;->targetRoute:Ljava/lang/String;

    .line 472
    sput v1, Lmpl/SoterBridge;->probeStreak:I

    const-wide/16 v0, 0x0

    .line 473
    sput-wide v0, Lmpl/SoterBridge;->lastProbeAt:J

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not run ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmpl/SoterBridge;->lastSelfTest:Ljava/lang/String;

    .line 475
    invoke-static {p0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized start(Landroid/content/Context;)V
    .registers 5

    const-class v0, Lmpl/SoterBridge;

    monitor-enter v0

    .line 152
    :try_start_3
    sget-boolean v1, Lmpl/SoterBridge;->started:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2e

    if-eqz v1, :cond_9

    .line 153
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 155
    :try_start_a
    sput-boolean v1, Lmpl/SoterBridge;->started:Z

    .line 156
    sput-object p0, Lmpl/SoterBridge;->context:Landroid/content/Context;

    .line 157
    new-instance p0, Ljava/lang/Thread;

    new-instance v2, Lmpl/SoterBridge$1;

    invoke-direct {v2}, Lmpl/SoterBridge$1;-><init>()V

    const-string v3, "soter-bridge"

    invoke-direct {p0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 175
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 176
    const-string p0, "MPL-SOTER"

    const-string v1, "bridge started authority=dev.maplesu.manager.soter poll=1000ms"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string p0, "bridge started authority=dev.maplesu.manager.soter"

    invoke-static {p0}, Lmpl/SoterBridge;->journal(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_2e

    .line 181
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p0
.end method

.method static systemContext()Landroid/content/Context;
    .registers 1

    .line 190
    sget-object v0, Lmpl/SoterBridge;->context:Landroid/content/Context;

    return-object v0
.end method

.method private static tick()V
    .registers 5

    .line 281
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/adb/tricky_store/soter_forge_disabled"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 282
    invoke-static {}, Lmpl/SoterBridge;->unregister()V

    .line 283
    const-string v0, "not run (forge disabled)"

    sput-object v0, Lmpl/SoterBridge;->lastSelfTest:Ljava/lang/String;

    return-void

    .line 286
    :cond_15
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/adb/tricky_store/soter_bridge_legacy"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 287
    sget-boolean v1, Lmpl/SoterBridge;->legacy:Z

    if-eq v0, v1, :cond_38

    .line 288
    sput-boolean v0, Lmpl/SoterBridge;->legacy:Z

    .line 289
    sget-boolean v0, Lmpl/SoterBridge;->legacy:Z

    if-eqz v0, :cond_2d

    const-string v0, "LEGACY (soter_bridge_legacy present)"

    goto :goto_2f

    :cond_2d
    const-string v0, "euid-probe"

    :goto_2f
    const-string v1, "mode: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterBridge;->journal(Ljava/lang/String;)V

    .line 291
    :cond_38
    sget-boolean v0, Lmpl/SoterBridge;->legacy:Z

    if-nez v0, :cond_3f

    .line 292
    invoke-static {}, Lmpl/SoterBridge;->ensureBound()V

    .line 294
    :cond_3f
    sget-object v0, Lmpl/SoterBridge;->target:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    .line 295
    invoke-static {v0}, Lmpl/SoterBridge;->isUsable(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 298
    const-string v0, "target lost (service restarted?)"

    invoke-static {v0}, Lmpl/SoterBridge;->reset(Ljava/lang/String;)V

    move-object v0, v1

    .line 306
    :cond_50
    sget-boolean v2, Lmpl/SoterBridge;->legacy:Z

    const/4 v3, 0x1

    if-nez v2, :cond_84

    sget-boolean v2, Lmpl/SoterBridge;->socketMode:Z

    if-nez v2, :cond_84

    .line 307
    sget-boolean v2, Lmpl/SoterBridge;->socketForced:Z

    if-nez v2, :cond_71

    new-instance v2, Ljava/io/File;

    const-string v4, "/data/adb/tricky_store/soter_socket_force"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 308
    sput-boolean v3, Lmpl/SoterBridge;->socketForced:Z

    .line 309
    const-string v2, "socket lane forced by /data/adb/tricky_store/soter_socket_force"

    invoke-static {v2}, Lmpl/SoterBridge;->journal(Ljava/lang/String;)V

    .line 311
    :cond_71
    sget-boolean v2, Lmpl/SoterBridge;->socketForced:Z

    if-eqz v2, :cond_7b

    const/4 v2, 0x2

    .line 312
    sput v2, Lmpl/SoterBridge;->binderMisses:I

    .line 313
    invoke-static {}, Lmpl/SoterSocket;->start()V

    .line 315
    :cond_7b
    invoke-static {}, Lmpl/SoterSocket;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_84

    .line 316
    invoke-static {}, Lmpl/SoterBridge;->enterSocketMode()V

    .line 319
    :cond_84
    sget-boolean v2, Lmpl/SoterBridge;->registered:Z

    if-nez v2, :cond_127

    if-nez v0, :cond_9f

    .line 321
    invoke-static {}, Lmpl/SoterBridge;->acquireTarget()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_96

    .line 323
    const-string v0, "no target binder"

    invoke-static {v0}, Lmpl/SoterBridge;->maybeSocketFallback(Ljava/lang/String;)V

    return-void

    .line 326
    :cond_96
    sput-object v0, Lmpl/SoterBridge;->target:Landroid/os/IBinder;

    .line 327
    sput-object v1, Lmpl/SoterBridge;->backdoor:Landroid/os/IBinder;

    .line 328
    const-string v2, "target"

    invoke-static {v0, v2}, Lmpl/SoterBridge;->watch(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 330
    :cond_9f
    sget-object v2, Lmpl/SoterBridge;->backdoor:Landroid/os/IBinder;

    if-nez v2, :cond_c4

    .line 331
    invoke-static {v0}, Lmpl/SoterBridge;->readBackdoor(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v2

    sput-object v2, Lmpl/SoterBridge;->backdoor:Landroid/os/IBinder;

    .line 332
    sget-object v2, Lmpl/SoterBridge;->backdoor:Landroid/os/IBinder;

    if-nez v2, :cond_b8

    .line 333
    const-string v0, "backdoor not published yet (lib not injected?)"

    invoke-static {v0}, Lmpl/SoterBridge;->heartbeat(Ljava/lang/String;)V

    .line 334
    const-string v0, "no backdoor"

    invoke-static {v0}, Lmpl/SoterBridge;->maybeSocketFallback(Ljava/lang/String;)V

    return-void

    .line 337
    :cond_b8
    sget-object v2, Lmpl/SoterBridge;->backdoor:Landroid/os/IBinder;

    const-string v4, "backdoor"

    invoke-static {v2, v4}, Lmpl/SoterBridge;->watch(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 338
    const-string v2, "backdoor acquired pid-side hook is up"

    invoke-static {v2}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    .line 340
    :cond_c4
    sget-object v2, Lmpl/SoterBridge;->backdoor:Landroid/os/IBinder;

    invoke-static {v2, v0}, Lmpl/SoterBridge;->register(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_ef

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "register failed route="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lmpl/SoterBridge;->targetRoute:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterBridge;->heartbeat(Ljava/lang/String;)V

    .line 344
    sget v0, Lmpl/SoterBridge;->probeFailures:I

    add-int/2addr v0, v3

    sput v0, Lmpl/SoterBridge;->probeFailures:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_e9

    .line 345
    sput-object v1, Lmpl/SoterBridge;->backdoor:Landroid/os/IBinder;

    .line 347
    :cond_e9
    const-string v0, "register failed"

    invoke-static {v0}, Lmpl/SoterBridge;->maybeSocketFallback(Ljava/lang/String;)V

    return-void

    .line 350
    :cond_ef
    sput-boolean v3, Lmpl/SoterBridge;->registered:Z

    const-wide/16 v1, 0x0

    .line 351
    sput-wide v1, Lmpl/SoterBridge;->lastProbeAt:J

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "REGISTERED 13 codes route="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lmpl/SoterBridge;->targetRoute:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SOTER interceptor registered (route="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lmpl/SoterBridge;->targetRoute:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", codes=13)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MPL-SOTER"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string v1, "binder"

    invoke-static {v1}, Lmpl/SoterBridge;->publishRoute(Ljava/lang/String;)V

    .line 357
    :cond_127
    sget-boolean v1, Lmpl/SoterBridge;->socketMode:Z

    if-eqz v1, :cond_149

    .line 360
    invoke-static {}, Lmpl/SoterSocket;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_13c

    .line 361
    const-string v0, "session lost"

    invoke-static {v0}, Lmpl/SoterBridge;->leaveSocketMode(Ljava/lang/String;)V

    .line 362
    const-string v0, "socket session lost"

    invoke-static {v0}, Lmpl/SoterBridge;->heartbeat(Ljava/lang/String;)V

    return-void

    .line 365
    :cond_13c
    invoke-static {}, Lmpl/SoterSocket;->selfTest()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmpl/SoterBridge;->lastSelfTest:Ljava/lang/String;

    .line 366
    invoke-static {}, Lmpl/SoterSocket;->requestStatus()V

    .line 367
    invoke-static {}, Lmpl/SoterBridge;->heartbeat()V

    return-void

    .line 370
    :cond_149
    sget-boolean v1, Lmpl/SoterBridge;->legacy:Z

    if-eqz v1, :cond_151

    .line 371
    invoke-static {v0}, Lmpl/SoterBridge;->legacyProbe(Landroid/os/IBinder;)V

    goto :goto_157

    .line 373
    :cond_151
    invoke-static {v0}, Lmpl/SoterBridge;->verify(Landroid/os/IBinder;)V

    .line 374
    invoke-static {v0}, Lmpl/SoterBridge;->burst(Landroid/os/IBinder;)V

    .line 376
    :goto_157
    invoke-static {}, Lmpl/SoterBridge;->heartbeat()V

    return-void
.end method

.method private static transactProbe(Landroid/os/IBinder;[I[Ljava/lang/String;)V
    .registers 12

    .line 581
    const-string v0, "probe: euid restore failed: "

    .line 0
    const-string v1, "exception="

    const-string v2, "euid="

    const-string v3, "seteuid: "

    .line 582
    invoke-static {}, Lmpl/SoterBridge;->probeUid()I

    move-result v4

    .line 583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    const/4 v7, 0x0

    .line 587
    :try_start_15
    invoke-static {v4}, Landroid/system/Os;->seteuid(I)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_9a

    const/4 v3, 0x1

    .line 593
    :try_start_19
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lmpl/SoterBridge;->probeUidNote:Ljava/lang/String;

    .line 594
    const-string v2, "com.tencent.soter.soterserver.ISoterService"

    invoke-virtual {v5, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/high16 v2, 0x7fff0000

    .line 595
    invoke-virtual {v5, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x3

    .line 596
    invoke-interface {p0, v2, v5, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_5b

    .line 597
    const-string p0, "tx refused (no interceptor, real service has no such method)"

    aput-object p0, p2, v7
    :try_end_3c
    .catchall {:try_start_19 .. :try_end_3c} :catchall_98

    .line 612
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 613
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 616
    :try_start_42
    invoke-static {v7}, Landroid/system/Os;->seteuid(I)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    return-void

    :catchall_46
    move-exception p0

    .line 620
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lmpl/SoterBridge;->cause(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterBridge;->journal(Ljava/lang/String;)V

    return-void

    .line 600
    :cond_5b
    :try_start_5b
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 601
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 602
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 603
    invoke-virtual {v6}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    const/4 v8, 0x4

    if-lt v4, v8, :cond_72

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v4

    goto :goto_73

    :cond_72
    const/4 v4, 0x0

    .line 604
    :goto_73
    aput v2, p1, v7

    .line 605
    aput v4, p1, v3

    if-eqz p0, :cond_87

    .line 607
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v7
    :try_end_87
    .catchall {:try_start_5b .. :try_end_87} :catchall_98

    .line 612
    :cond_87
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 613
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 616
    :try_start_8d
    invoke-static {v7}, Landroid/system/Os;->seteuid(I)V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_91

    return-void

    :catchall_91
    move-exception p0

    .line 620
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_ce

    :catchall_98
    move-exception p0

    goto :goto_b6

    :catchall_9a
    move-exception p0

    .line 590
    :try_start_9b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lmpl/SoterBridge;->cause(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v7
    :try_end_ad
    .catchall {:try_start_9b .. :try_end_ad} :catchall_b4

    .line 612
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 613
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_b4
    move-exception p0

    const/4 v3, 0x0

    .line 610
    :goto_b6
    :try_start_b6
    invoke-static {p0}, Lmpl/SoterBridge;->cause(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v7
    :try_end_bc
    .catchall {:try_start_b6 .. :try_end_bc} :catchall_dd

    .line 612
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 613
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    if-eqz v3, :cond_dc

    .line 616
    :try_start_c4
    invoke-static {v7}, Landroid/system/Os;->seteuid(I)V
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_c8

    goto :goto_dc

    :catchall_c8
    move-exception p0

    .line 620
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_ce
    invoke-static {p0}, Lmpl/SoterBridge;->cause(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterBridge;->journal(Ljava/lang/String;)V

    :cond_dc
    :goto_dc
    return-void

    :catchall_dd
    move-exception p0

    .line 612
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 613
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    if-eqz v3, :cond_fe

    .line 616
    :try_start_e6
    invoke-static {v7}, Landroid/system/Os;->seteuid(I)V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_ea

    goto :goto_fe

    :catchall_ea
    move-exception p1

    .line 620
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmpl/SoterBridge;->cause(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmpl/SoterBridge;->journal(Ljava/lang/String;)V

    .line 623
    :cond_fe
    :goto_fe
    throw p0
.end method

.method private static uidOfPid(I)I
    .registers 7

    const-string v0, "/proc/"

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 650
    :try_start_4
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/status"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_67

    const/16 p0, 0x1000

    .line 651
    :try_start_1c
    new-array p0, p0, [B

    .line 652
    invoke-virtual {v3, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v0
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_64

    if-gtz v0, :cond_28

    .line 670
    :try_start_24
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_27

    :catchall_27
    return v1

    .line 656
    :cond_28
    :try_start_28
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string p0, "\n"

    invoke-virtual {v2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 657
    :goto_37
    array-length v2, p0

    if-ge v0, v2, :cond_60

    .line 658
    aget-object v2, p0, v0

    .line 659
    const-string v4, "Uid:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    const/4 p0, 0x4

    .line 660
    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 661
    aget-object p0, p0, v5

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_59
    .catchall {:try_start_28 .. :try_end_59} :catchall_64

    .line 670
    :try_start_59
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5c

    :catchall_5c
    return p0

    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_60
    :try_start_60
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_63

    :catchall_63
    return v1

    :catchall_64
    nop

    move-object v2, v3

    goto :goto_68

    :catchall_67
    nop

    :goto_68
    if-eqz v2, :cond_6d

    :try_start_6a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6d

    :catchall_6d
    :cond_6d
    return v1
.end method

.method private static unregister()V
    .registers 8

    .line 1204
    const-string v0, "unregister failed: "

    invoke-static {}, Lmpl/SoterSocket;->stop()V

    const/4 v1, 0x0

    .line 1205
    sput-boolean v1, Lmpl/SoterBridge;->socketMode:Z

    const/4 v2, 0x0

    .line 1206
    sput-object v2, Lmpl/SoterBridge;->targetRoute:Ljava/lang/String;

    .line 1207
    sget-object v2, Lmpl/SoterBridge;->target:Landroid/os/IBinder;

    .line 1208
    sget-object v3, Lmpl/SoterBridge;->backdoor:Landroid/os/IBinder;

    .line 1209
    sget-boolean v4, Lmpl/SoterBridge;->registered:Z

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_55

    if-eqz v2, :cond_55

    if-nez v3, :cond_1a

    goto :goto_55

    .line 1215
    :cond_1a
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 1218
    :try_start_22
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x2

    .line 1219
    invoke-interface {v3, v2, v4, v7, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1220
    const-string v2, "unregistered"

    invoke-static {v2}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_35

    .line 1224
    :goto_2e
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1225
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    goto :goto_46

    :catchall_35
    move-exception v2

    .line 1222
    :try_start_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_4d

    goto :goto_2e

    .line 1227
    :goto_46
    sput-boolean v1, Lmpl/SoterBridge;->registered:Z

    .line 1228
    sput v1, Lmpl/SoterBridge;->probeStreak:I

    .line 1229
    sput-wide v5, Lmpl/SoterBridge;->lastProbeAt:J

    return-void

    :catchall_4d
    move-exception v0

    .line 1224
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1225
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 1226
    throw v0

    .line 1210
    :cond_55
    :goto_55
    sput-boolean v1, Lmpl/SoterBridge;->registered:Z

    .line 1211
    sput v1, Lmpl/SoterBridge;->probeStreak:I

    .line 1212
    sput-wide v5, Lmpl/SoterBridge;->lastProbeAt:J

    return-void
.end method

.method private static userId()I
    .registers 3

    .line 951
    :try_start_0
    const-string v0, "android.app.ActivityManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 952
    const-string v1, "getCurrentUser"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 953
    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 954
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1f

    .line 955
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return v0

    .line 960
    :catchall_1f
    :cond_1f
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const v1, 0x186a0

    div-int/2addr v0, v1

    return v0
.end method

.method private static verify(Landroid/os/IBinder;)V
    .registers 8

    .line 517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 518
    sget-wide v2, Lmpl/SoterBridge;->lastProbeAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v6, v2, v4

    if-gez v6, :cond_f

    return-void

    .line 521
    :cond_f
    sput-wide v0, Lmpl/SoterBridge;->lastProbeAt:J

    .line 522
    invoke-static {p0}, Lmpl/SoterBridge;->probeOnce(Landroid/os/IBinder;)[I

    move-result-object p0

    const/4 v0, 0x0

    .line 523
    aget v0, p0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    sget-object v1, Lmpl/SoterBridge;->probeWhy:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lmpl/SoterBridge;->onProbeResult(IILjava/lang/String;)V

    return-void
.end method

.method private static watch(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 487
    :cond_3
    :try_start_3
    new-instance v0, Lmpl/SoterBridge$4;

    invoke-direct {v0, p1}, Lmpl/SoterBridge$4;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return-void

    :catchall_d
    move-exception p0

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "linkToDeath("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") failed: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lmpl/SoterBridge;->cause(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-void
.end method

.method private static writeText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "cannot write "

    const/4 v1, 0x0

    .line 1374
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_22

    .line 1375
    :try_start_9
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1376
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_1f

    .line 1378
    :try_start_15
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1379
    invoke-virtual {p1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_22

    return-void

    :catchall_1f
    move-exception p1

    move-object v1, v2

    goto :goto_23

    :catchall_22
    move-exception p1

    .line 1381
    :goto_23
    :try_start_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lmpl/SoterBridge;->cause(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_23 .. :try_end_3e} :catchall_44

    if-eqz v1, :cond_43

    .line 1385
    :try_start_40
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_43

    :catchall_43
    :cond_43
    return-void

    :catchall_44
    move-exception p0

    if-eqz v1, :cond_4a

    :try_start_47
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4a

    .line 1390
    :catchall_4a
    :cond_4a
    throw p0
.end method
