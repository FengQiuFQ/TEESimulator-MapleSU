.class public final Lmpl/SoterInjector;
.super Ljava/lang/Object;
.source "SoterInjector.java"


# static fields
.field private static final DISABLED_MARKER:Ljava/lang/String; = "/data/adb/tricky_store/soter_forge_disabled"

.field private static final INJECT_LOG:Ljava/lang/String; = "/data/local/tmp/soter_inject.log"

.field private static final LIB_NAME:Ljava/lang/String; = "libTEESimulator.so"

.field private static final POLL_MS:J = 0x1388L

.field private static final STATE_PATHS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SoterInjector"

.field private static final TARGET:Ljava/lang/String; = "com.tencent.soter.soterserver"

.field private static volatile publishedState:Ljava/lang/String;

.field private static volatile started:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    const-string v0, "/data/user/0/dev.maplesu.manager/files/soter.state"

    const-string v1, "/data/data/dev.maplesu.manager/files/soter.state"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmpl/SoterInjector;->STATE_PATHS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .line 27
    invoke-static {}, Lmpl/SoterInjector;->tick()V

    return-void
.end method

.method private static findTargetPid()I
    .registers 8

    .line 129
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_f

    return v1

    .line 133
    :cond_f
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_42

    aget-object v5, v0, v4

    .line 134
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3f

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_2b

    goto :goto_3f

    .line 138
    :cond_2b
    invoke-static {v5}, Lmpl/SoterInjector;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_32

    goto :goto_3f

    .line 142
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

.method private static inject(I)V
    .registers 7

    .line 204
    const-string v0, "SoterInjector"

    .line 0
    const-string v1, "inject pid="

    .line 204
    new-instance v2, Ljava/io/File;

    const-string v3, "."

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "L=/data/local/tmp/soter_inject.log;cg=$(awk -F: \'$1==0{print $3}\' /proc/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/cgroup);fz=/sys/fs/cgroup$cg/cgroup.freeze;[ -n \"$cg\" ] && echo 0 >$fz 2>/dev/null;kill -CONT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " 2>/dev/null;sleep 0.2;\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/inject\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/libTEESimulator.so\" entry >>$L 2>&1"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    :try_start_42
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "/system/bin/sh"

    const-string v5, "-c"

    filled-new-array {v4, v5, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 213
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " rc="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_42 .. :try_end_6d} :catchall_6e

    return-void

    :catchall_6e
    move-exception p0

    .line 216
    const-string v1, "inject failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static isLibraryMapped(I)Ljava/lang/Boolean;
    .registers 6

    const-string v0, "/proc/"

    const/4 v1, 0x0

    .line 180
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
    .catchall {:try_start_3 .. :try_end_1e} :catchall_38

    .line 182
    :cond_1e
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 183
    const-string v0, "libTEESimulator.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 184
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_39

    .line 193
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_31

    :catchall_31
    return-object p0

    .line 187
    :cond_32
    :try_start_32
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_39

    .line 193
    :try_start_34
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_37

    :catchall_37
    return-object p0

    :catchall_38
    move-object v2, v1

    :catchall_39
    if-eqz v2, :cond_3e

    :try_start_3b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3e

    :catchall_3e
    :cond_3e
    return-object v1
.end method

.method private static parseInt(Ljava/lang/String;)I
    .registers 1

    .line 222
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

    .line 100
    const-string p0, "1"

    goto :goto_7

    :cond_5
    const-string p0, "0"

    .line 101
    :goto_7
    sget-object v0, Lmpl/SoterInjector;->publishedState:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_64

    .line 105
    :cond_10
    sget-object v0, Lmpl/SoterInjector;->STATE_PATHS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_16
    if-ge v3, v1, :cond_60

    aget-object v5, v0, v3

    .line 106
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_30

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_30

    goto :goto_5d

    .line 111
    :cond_30
    :try_start_30
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_5d

    .line 113
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

    .line 115
    :try_start_4f
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    const/4 v5, 0x1

    .line 117
    invoke-virtual {v6, v5, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move v4, v5

    goto :goto_5d

    :catchall_58
    move-exception v6

    .line 115
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 116
    throw v6
    :try_end_5d
    .catchall {:try_start_4f .. :try_end_5d} :catchall_5d

    :catchall_5d
    :goto_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_60
    if-eqz v4, :cond_64

    .line 124
    sput-object p0, Lmpl/SoterInjector;->publishedState:Ljava/lang/String;

    :cond_64
    :goto_64
    return-void
.end method

.method private static readFirstArg(I)Ljava/lang/String;
    .registers 7

    const-string v0, "/proc/"

    const/4 v1, 0x0

    .line 152
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
    .catchall {:try_start_3 .. :try_end_19} :catchall_3d

    const/16 p0, 0x80

    .line 153
    :try_start_1b
    new-array p0, p0, [B

    .line 154
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_3e

    if-gtz v0, :cond_27

    .line 168
    :try_start_23
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_26

    :catchall_26
    return-object v1

    :cond_27
    const/4 v3, 0x0

    move v4, v3

    :goto_29
    if-ge v4, v0, :cond_32

    .line 159
    :try_start_2b
    aget-byte v5, p0, v4

    if-eqz v5, :cond_32

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 162
    :cond_32
    new-instance v0, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v0, p0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_3e

    .line 168
    :try_start_39
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3c

    :catchall_3c
    return-object v0

    :catchall_3d
    move-object v2, v1

    :catchall_3e
    if-eqz v2, :cond_43

    :try_start_40
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_43

    :catchall_43
    :cond_43
    return-object v1
.end method

.method public static declared-synchronized start()V
    .registers 5

    const-class v0, Lmpl/SoterInjector;

    monitor-enter v0

    .line 49
    :try_start_3
    sget-boolean v1, Lmpl/SoterInjector;->started:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_27

    if-eqz v1, :cond_9

    .line 50
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 52
    :try_start_a
    sput-boolean v1, Lmpl/SoterInjector;->started:Z

    .line 53
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lmpl/SoterInjector$1;

    invoke-direct {v3}, Lmpl/SoterInjector$1;-><init>()V

    const-string v4, "soter-injector"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 71
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 72
    const-string v1, "SoterInjector"

    const-string v2, "soter-injector started"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_27

    .line 73
    monitor-exit v0

    return-void

    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private static tick()V
    .registers 2

    .line 76
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/adb/tricky_store/soter_forge_disabled"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 77
    invoke-static {v1}, Lmpl/SoterInjector;->publishState(Z)V

    if-eqz v0, :cond_13

    goto :goto_2a

    .line 81
    :cond_13
    invoke-static {}, Lmpl/SoterInjector;->findTargetPid()I

    move-result v0

    if-gtz v0, :cond_1a

    goto :goto_2a

    .line 85
    :cond_1a
    invoke-static {v0}, Lmpl/SoterInjector;->isLibraryMapped(I)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 86
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_2a

    .line 91
    :cond_27
    invoke-static {v0}, Lmpl/SoterInjector;->inject(I)V

    :cond_2a
    :goto_2a
    return-void
.end method
