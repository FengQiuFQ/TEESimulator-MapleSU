.class public final Lmpl/SoterSocket;
.super Ljava/lang/Object;
.source "SoterSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmpl/SoterSocket$Frame;
    }
.end annotation


# static fields
.field static final CLIENT_VERSION:I = 0xeb28

.field static final CODES:I = 0xd

.field private static final DUMMY_TARGET:Landroid/os/IBinder;

.field private static final ERRORS:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final HEADER:I = 0x10

.field private static final INFO_SIZE:I = 0x48

.field private static final MAGIC:I = 0x3154534d

.field private static final MAX_FRAME:I = 0x400000

.field private static final MAX_MISSED_PINGS:I = 0x4

.field public static final NAME:Ljava/lang/String; = "teesim_soter"

.field public static final PATH:Ljava/lang/String; = "/data/user/0/com.tencent.soter.soterserver/files/.teesim_soter.sock"

.field public static final PROTO:I = 0x1

.field private static final READ_TIMEOUT_MS:I = 0x4e20

.field private static final RECONNECTS:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final RETRY_MS:J = 0x5dcL

.field private static final RUN_TOKEN:Ljava/util/concurrent/atomic/AtomicLong;

.field static final STATUS_PASS:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MPL-SOTER"

.field private static final TX:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final TX_FALLBACK:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final TX_OK:Ljava/util/concurrent/atomic/AtomicInteger;

.field static final TYPE_HELLO:I = 0x1

.field static final TYPE_HELLO_ACK:I = 0x2

.field static final TYPE_PING:I = 0x5

.field static final TYPE_PONG:I = 0x6

.field static final TYPE_REGISTER:I = 0x3

.field static final TYPE_REGISTER_ACK:I = 0x4

.field static final TYPE_REPLY:I = 0x8

.field static final TYPE_STATUS:I = 0x9

.field static final TYPE_STATUS_RESP:I = 0xa

.field static final TYPE_TX:I = 0x7

.field private static final WRITE_LOCK:Ljava/lang/Object;

.field private static volatile generation:I

.field private static volatile lastError:Ljava/lang/String;

.field private static volatile lastInfo:Ljava/lang/String;

.field private static volatile lastPongAt:J

.field private static volatile live:Landroid/net/LocalSocket;

.field private static volatile mask:I

.field private static volatile pathKind:I

.field private static volatile registered:Z

.field private static volatile registeredAt:J

.field private static volatile running:Z

.field private static volatile started:Z

.field private static volatile state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 102
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lmpl/SoterSocket;->DUMMY_TARGET:Landroid/os/IBinder;

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmpl/SoterSocket;->WRITE_LOCK:Ljava/lang/Object;

    .line 110
    const-string v0, "off"

    sput-object v0, Lmpl/SoterSocket;->state:Ljava/lang/String;

    .line 117
    const-string v0, "n/a"

    sput-object v0, Lmpl/SoterSocket;->lastInfo:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lmpl/SoterSocket;->RUN_TOKEN:Ljava/util/concurrent/atomic/AtomicLong;

    .line 120
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lmpl/SoterSocket;->TX:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 121
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lmpl/SoterSocket;->TX_OK:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lmpl/SoterSocket;->TX_FALLBACK:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lmpl/SoterSocket;->ERRORS:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lmpl/SoterSocket;->RECONNECTS:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(J)V
    .registers 2

    .line 61
    invoke-static {p0, p1}, Lmpl/SoterSocket;->loop(J)V

    return-void
.end method

.method private static closeQuietly(Landroid/net/LocalSocket;)V
    .registers 1

    .line 580
    :try_start_0
    invoke-virtual {p0}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_3

    :catchall_3
    return-void
.end method

.method private static connect()Landroid/net/LocalSocket;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    const-string v0, "MPL-SOTER"

    .line 246
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    const/16 v2, 0x4e20

    .line 248
    :try_start_9
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string v4, "teesim_soter"

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v1, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    const/4 v3, 0x0

    .line 249
    sput v3, Lmpl/SoterSocket;->pathKind:I

    .line 250
    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 251
    const-string v3, "socket connected @teesim_soter"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_20} :catch_21

    return-object v1

    :catch_21
    move-exception v3

    .line 255
    invoke-static {v1}, Lmpl/SoterSocket;->closeQuietly(Landroid/net/LocalSocket;)V

    .line 257
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    .line 259
    :try_start_2a
    new-instance v4, Landroid/net/LocalSocketAddress;

    const-string v5, "/data/user/0/com.tencent.soter.soterserver/files/.teesim_soter.sock"

    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v4, v5, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v1, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    const/4 v4, 0x1

    .line 260
    sput v4, Lmpl/SoterSocket;->pathKind:I

    .line 261
    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 262
    const-string v2, "socket connected /data/user/0/com.tencent.soter.soterserver/files/.teesim_soter.sock"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_41} :catch_42

    return-object v1

    :catch_42
    move-exception v0

    .line 265
    invoke-static {v1}, Lmpl/SoterSocket;->closeQuietly(Landroid/net/LocalSocket;)V

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@teesim_soter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lmpl/SoterSocket;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; /data/user/0/com.tencent.soter.soterserver/files/.teesim_soter.sock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lmpl/SoterSocket;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmpl/SoterSocket;->lastError:Ljava/lang/String;

    .line 267
    throw v0
.end method

.method private static describe(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    .line 597
    const-string p0, "unknown"

    return-object p0

    .line 599
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1e

    const-string p0, ""

    goto :goto_2c

    :cond_1e
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static get16([BI)I
    .registers 3

    .line 562
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method private static get32([BI)I
    .registers 4

    .line 566
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

.method private static get64([BI)J
    .registers 6

    .line 573
    invoke-static {p0, p1}, Lmpl/SoterSocket;->get32([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    .line 574
    invoke-static {p0, p1}, Lmpl/SoterSocket;->get32([BI)I

    move-result p0

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x20

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static handleTx(Ljava/io/OutputStream;Lmpl/SoterSocket$Frame;)V
    .registers 16

    const-string v1, "socket: tx code="

    .line 361
    iget-object v0, p1, Lmpl/SoterSocket$Frame;->body:[B

    .line 362
    array-length v2, v0

    const-string v3, "MPL-SOTER"

    const/16 v4, 0x1c

    if-ge v2, v4, :cond_2d

    .line 363
    sget-object v1, Lmpl/SoterSocket;->TX_FALLBACK:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "socket: short TX frame ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-wide v0, p1, Lmpl/SoterSocket$Frame;->reqId:J

    invoke-static {p0, v0, v1}, Lmpl/SoterSocket;->sendPass(Ljava/io/OutputStream;J)V

    return-void

    :cond_2d
    const/4 v2, 0x0

    .line 368
    invoke-static {v0, v2}, Lmpl/SoterSocket;->get32([BI)I

    move-result v9

    const/4 v5, 0x4

    .line 369
    invoke-static {v0, v5}, Lmpl/SoterSocket;->get32([BI)I

    move-result v10

    const/16 v5, 0x8

    .line 370
    invoke-static {v0, v5}, Lmpl/SoterSocket;->get32([BI)I

    move-result v11

    const/16 v5, 0xc

    .line 371
    invoke-static {v0, v5}, Lmpl/SoterSocket;->get32([BI)I

    move-result v12

    const/16 v5, 0x10

    .line 372
    invoke-static {v0, v5}, Lmpl/SoterSocket;->get64([BI)J

    move-result-wide v6

    const/16 v5, 0x18

    .line 373
    invoke-static {v0, v5}, Lmpl/SoterSocket;->get32([BI)I

    move-result v5

    if-ltz v5, :cond_d7

    .line 374
    array-length v8, v0

    sub-int/2addr v8, v4

    if-le v5, v8, :cond_57

    goto/16 :goto_d7

    .line 380
    :cond_57
    new-array v8, v5, [B

    .line 381
    invoke-static {v0, v4, v8, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    sget-object v0, Lmpl/SoterSocket;->TX:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    const/4 v4, 0x0

    .line 387
    :try_start_66
    invoke-virtual {v13, v8, v2, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 388
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 392
    invoke-static {v11}, Lmpl/SoterSvc;->beginCallerUid(I)V

    .line 393
    sget-object v5, Lmpl/ProbeInterceptor;->INSTANCE:Lmpl/ProbeInterceptor;

    sget-object v8, Lmpl/SoterSocket;->DUMMY_TARGET:Landroid/os/IBinder;

    invoke-virtual/range {v5 .. v13}, Lmpl/ProbeInterceptor;->onPreTransact(JLandroid/os/IBinder;IIIILandroid/os/Parcel;)Lv4/f;

    move-result-object v0

    .line 395
    instance-of v5, v0, Lv4/d;

    if-eqz v5, :cond_89

    .line 396
    check-cast v0, Lv4/d;

    iget-object v0, v0, Lv4/d;->a:Landroid/os/Parcel;

    if-eqz v0, :cond_89

    .line 398
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_88
    .catchall {:try_start_66 .. :try_end_88} :catchall_90

    move-object v4, v5

    .line 407
    :cond_89
    :goto_89
    invoke-static {}, Lmpl/SoterSvc;->endCallerUid()V

    .line 408
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    goto :goto_b2

    :catchall_90
    move-exception v0

    .line 403
    :try_start_91
    sget-object v5, Lmpl/SoterSocket;->ERRORS:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 404
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " threw "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lmpl/SoterSocket;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catchall {:try_start_91 .. :try_end_b1} :catchall_ce

    goto :goto_89

    :goto_b2
    if-eqz v4, :cond_c3

    .line 410
    array-length v0, v4

    if-nez v0, :cond_b8

    goto :goto_c3

    .line 415
    :cond_b8
    sget-object v0, Lmpl/SoterSocket;->TX_OK:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 416
    iget-wide v0, p1, Lmpl/SoterSocket$Frame;->reqId:J

    invoke-static {p0, v0, v1, v2, v4}, Lmpl/SoterSocket;->sendReply(Ljava/io/OutputStream;JI[B)V

    return-void

    .line 411
    :cond_c3
    :goto_c3
    sget-object v0, Lmpl/SoterSocket;->TX_FALLBACK:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 412
    iget-wide v0, p1, Lmpl/SoterSocket$Frame;->reqId:J

    invoke-static {p0, v0, v1}, Lmpl/SoterSocket;->sendPass(Ljava/io/OutputStream;J)V

    return-void

    :catchall_ce
    move-exception v0

    move-object p0, v0

    .line 407
    invoke-static {}, Lmpl/SoterSvc;->endCallerUid()V

    .line 408
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 409
    throw p0

    .line 375
    :cond_d7
    :goto_d7
    sget-object v0, Lmpl/SoterSocket;->TX_FALLBACK:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "socket: bad TX length "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-wide v0, p1, Lmpl/SoterSocket$Frame;->reqId:J

    invoke-static {p0, v0, v1}, Lmpl/SoterSocket;->sendPass(Ljava/io/OutputStream;J)V

    return-void
.end method

.method private static handshake(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 272
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 273
    invoke-static {v1, v2, v3}, Lmpl/SoterSocket;->put32([BII)V

    .line 274
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const/4 v5, 0x4

    invoke-static {v1, v5, v4}, Lmpl/SoterSocket;->put32([BII)V

    .line 275
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/16 v6, 0x8

    invoke-static {v1, v6, v4}, Lmpl/SoterSocket;->put32([BII)V

    const v4, 0xeb28

    const/16 v7, 0xc

    .line 276
    invoke-static {v1, v7, v4}, Lmpl/SoterSocket;->put32([BII)V

    const-wide/16 v8, 0x0

    .line 277
    invoke-static {p1, v3, v8, v9, v1}, Lmpl/SoterSocket;->sendFrame(Ljava/io/OutputStream;IJ[B)V

    .line 278
    invoke-static {p0}, Lmpl/SoterSocket;->readFrame(Ljava/io/InputStream;)Lmpl/SoterSocket$Frame;

    move-result-object p0

    .line 279
    iget p1, p0, Lmpl/SoterSocket$Frame;->type:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_bf

    .line 282
    iget-object p1, p0, Lmpl/SoterSocket$Frame;->body:[B

    array-length p1, p1

    const/16 v1, 0x18

    if-lt p1, v1, :cond_b7

    .line 285
    iget-object p1, p0, Lmpl/SoterSocket$Frame;->body:[B

    invoke-static {p1, v2}, Lmpl/SoterSocket;->get32([BI)I

    move-result p1

    .line 286
    iget-object v1, p0, Lmpl/SoterSocket$Frame;->body:[B

    invoke-static {v1, v5}, Lmpl/SoterSocket;->get32([BI)I

    move-result v1

    .line 287
    iget-object v2, p0, Lmpl/SoterSocket$Frame;->body:[B

    invoke-static {v2, v6}, Lmpl/SoterSocket;->get32([BI)I

    move-result v2

    .line 288
    iget-object v4, p0, Lmpl/SoterSocket$Frame;->body:[B

    invoke-static {v4, v7}, Lmpl/SoterSocket;->get32([BI)I

    move-result v4

    .line 289
    iget-object v5, p0, Lmpl/SoterSocket$Frame;->body:[B

    invoke-static {v5, v0}, Lmpl/SoterSocket;->get32([BI)I

    move-result v0

    .line 290
    iget-object p0, p0, Lmpl/SoterSocket$Frame;->body:[B

    const/16 v5, 0x14

    invoke-static {p0, v5}, Lmpl/SoterSocket;->get32([BI)I

    move-result p0

    sput p0, Lmpl/SoterSocket;->generation:I

    if-ne p1, v3, :cond_9e

    .line 294
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "socket handshake ok lib_ver="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " target_pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " target_uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " path="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_85

    .line 295
    const-string p1, "abstract"

    goto :goto_87

    :cond_85
    const-string p1, "file"

    :goto_87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " gen="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lmpl/SoterSocket;->generation:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 294
    const-string p1, "MPL-SOTER"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 292
    :cond_9e
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "protocol mismatch: lib="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " client=1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 283
    :cond_b7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "short HELLO_ACK"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 280
    :cond_bf
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expected HELLO_ACK, got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lmpl/SoterSocket$Frame;->type:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static isRegistered()Z
    .registers 1

    .line 166
    sget-boolean v0, Lmpl/SoterSocket;->registered:Z

    return v0
.end method

.method private static loop(J)V
    .registers 11

    .line 207
    const-string v0, "reconnecting"

    const-string v1, "registered"

    const-string v2, "hello"

    :goto_6
    sget-boolean v3, Lmpl/SoterSocket;->running:Z

    if-eqz v3, :cond_c1

    sget-object v3, Lmpl/SoterSocket;->RUN_TOKEN:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    cmp-long v5, v3, p0

    if-nez v5, :cond_c1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 210
    :try_start_16
    invoke-static {}, Lmpl/SoterSocket;->connect()Landroid/net/LocalSocket;

    move-result-object v5
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_4f

    .line 211
    :try_start_1a
    sput-object v5, Lmpl/SoterSocket;->live:Landroid/net/LocalSocket;

    .line 212
    sput-object v2, Lmpl/SoterSocket;->state:Ljava/lang/String;

    .line 213
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 214
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 215
    invoke-static {v6, v7}, Lmpl/SoterSocket;->handshake(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 216
    invoke-static {v6, v7}, Lmpl/SoterSocket;->register(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 217
    sput-object v1, Lmpl/SoterSocket;->state:Ljava/lang/String;

    .line 218
    invoke-static {v6, v7}, Lmpl/SoterSocket;->serve(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_4d

    .line 223
    sput-boolean v3, Lmpl/SoterSocket;->registered:Z

    .line 224
    sput-object v4, Lmpl/SoterSocket;->live:Landroid/net/LocalSocket;

    if-eqz v5, :cond_3a

    .line 226
    invoke-static {v5}, Lmpl/SoterSocket;->closeQuietly(Landroid/net/LocalSocket;)V

    .line 228
    :cond_3a
    sget-object v3, Lmpl/SoterSocket;->state:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    sget-object v3, Lmpl/SoterSocket;->state:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 229
    :cond_4a
    :goto_4a
    sput-object v0, Lmpl/SoterSocket;->state:Ljava/lang/String;

    goto :goto_89

    :catchall_4d
    move-exception v6

    goto :goto_51

    :catchall_4f
    move-exception v6

    move-object v5, v4

    .line 220
    :goto_51
    :try_start_51
    invoke-static {v6}, Lmpl/SoterSocket;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lmpl/SoterSocket;->lastError:Ljava/lang/String;

    .line 221
    const-string v6, "MPL-SOTER"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "socket channel: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lmpl/SoterSocket;->lastError:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_51 .. :try_end_6f} :catchall_a4

    .line 223
    sput-boolean v3, Lmpl/SoterSocket;->registered:Z

    .line 224
    sput-object v4, Lmpl/SoterSocket;->live:Landroid/net/LocalSocket;

    if-eqz v5, :cond_78

    .line 226
    invoke-static {v5}, Lmpl/SoterSocket;->closeQuietly(Landroid/net/LocalSocket;)V

    .line 228
    :cond_78
    sget-object v3, Lmpl/SoterSocket;->state:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    sget-object v3, Lmpl/SoterSocket;->state:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    goto :goto_4a

    .line 232
    :cond_89
    :goto_89
    sget-boolean v3, Lmpl/SoterSocket;->running:Z

    if-eqz v3, :cond_c1

    sget-object v3, Lmpl/SoterSocket;->RUN_TOKEN:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    cmp-long v5, v3, p0

    if-eqz v5, :cond_98

    goto :goto_c1

    .line 235
    :cond_98
    sget-object v3, Lmpl/SoterSocket;->RECONNECTS:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const-wide/16 v3, 0x5dc

    .line 236
    invoke-static {v3, v4}, Lmpl/SoterSocket;->sleep(J)V

    goto/16 :goto_6

    :catchall_a4
    move-exception p0

    .line 223
    sput-boolean v3, Lmpl/SoterSocket;->registered:Z

    .line 224
    sput-object v4, Lmpl/SoterSocket;->live:Landroid/net/LocalSocket;

    if-eqz v5, :cond_ae

    .line 226
    invoke-static {v5}, Lmpl/SoterSocket;->closeQuietly(Landroid/net/LocalSocket;)V

    .line 228
    :cond_ae
    sget-object p1, Lmpl/SoterSocket;->state:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_be

    sget-object p1, Lmpl/SoterSocket;->state:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c0

    .line 229
    :cond_be
    sput-object v0, Lmpl/SoterSocket;->state:Ljava/lang/String;

    .line 231
    :cond_c0
    throw p0

    :cond_c1
    :goto_c1
    return-void
.end method

.method private static parseInfo([B)Ljava/lang/String;
    .registers 21

    move-object/from16 v0, p0

    .line 513
    array-length v1, v0

    const/16 v2, 0x48

    if-ge v1, v2, :cond_1c

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "short("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    const/4 v1, 0x0

    .line 516
    invoke-static {v0, v1}, Lmpl/SoterSocket;->get32([BI)I

    move-result v1

    const/4 v2, 0x4

    .line 517
    invoke-static {v0, v2}, Lmpl/SoterSocket;->get32([BI)I

    move-result v2

    const/16 v3, 0x8

    .line 518
    invoke-static {v0, v3}, Lmpl/SoterSocket;->get32([BI)I

    move-result v3

    const/16 v4, 0xc

    .line 519
    invoke-static {v0, v4}, Lmpl/SoterSocket;->get32([BI)I

    move-result v4

    const/16 v5, 0x10

    .line 520
    invoke-static {v0, v5}, Lmpl/SoterSocket;->get64([BI)J

    move-result-wide v5

    const/16 v7, 0x18

    .line 521
    invoke-static {v0, v7}, Lmpl/SoterSocket;->get64([BI)J

    move-result-wide v7

    const/16 v9, 0x20

    .line 522
    invoke-static {v0, v9}, Lmpl/SoterSocket;->get64([BI)J

    move-result-wide v9

    const/16 v11, 0x28

    .line 523
    invoke-static {v0, v11}, Lmpl/SoterSocket;->get64([BI)J

    move-result-wide v11

    const/16 v13, 0x30

    .line 524
    invoke-static {v0, v13}, Lmpl/SoterSocket;->get64([BI)J

    move-result-wide v13

    const/16 v15, 0x38

    .line 525
    invoke-static {v0, v15}, Lmpl/SoterSocket;->get32([BI)I

    move-result v15

    move/from16 v16, v2

    const/16 v2, 0x3c

    .line 526
    invoke-static {v0, v2}, Lmpl/SoterSocket;->get32([BI)I

    move-result v2

    move/from16 v17, v4

    const/16 v4, 0x40

    move-wide/from16 v18, v13

    .line 527
    invoke-static {v0, v4}, Lmpl/SoterSocket;->get64([BI)J

    move-result-wide v13

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "active="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mask=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v17, :cond_90

    .line 529
    const-string v1, "abstract"

    goto :goto_92

    :cond_90
    const-string v1, "file"

    :goto_92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " up="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms tx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " pass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " drop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v18

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static put16([BII)V
    .registers 4

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    .line 550
    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 551
    aput-byte p2, p0, p1

    return-void
.end method

.method private static put32([BII)V
    .registers 5

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    .line 555
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 556
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 557
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 558
    aput-byte p2, p0, p1

    return-void
.end method

.method private static readFrame(Ljava/io/InputStream;)Lmpl/SoterSocket$Frame;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 464
    new-array v1, v0, [B

    const/4 v2, 0x1

    .line 465
    invoke-static {p0, v1, v0, v2}, Lmpl/SoterSocket;->readFully(Ljava/io/InputStream;[BIZ)V

    const/4 v0, 0x0

    .line 466
    invoke-static {v1, v0}, Lmpl/SoterSocket;->get32([BI)I

    move-result v3

    const v4, 0x3154534d

    if-ne v3, v4, :cond_6f

    const/4 v3, 0x4

    .line 469
    invoke-static {v1, v3}, Lmpl/SoterSocket;->get16([BI)I

    move-result v3

    if-ne v3, v2, :cond_56

    const/4 v2, 0x6

    .line 473
    invoke-static {v1, v2}, Lmpl/SoterSocket;->get16([BI)I

    move-result v2

    const/16 v3, 0x8

    .line 474
    invoke-static {v1, v3}, Lmpl/SoterSocket;->get32([BI)I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const/16 v5, 0xc

    .line 475
    invoke-static {v1, v5}, Lmpl/SoterSocket;->get32([BI)I

    move-result v1

    if-ltz v1, :cond_42

    const/high16 v5, 0x400000

    if-gt v1, v5, :cond_42

    .line 479
    new-array v5, v1, [B

    .line 480
    invoke-static {p0, v5, v1, v0}, Lmpl/SoterSocket;->readFully(Ljava/io/InputStream;[BIZ)V

    .line 481
    new-instance p0, Lmpl/SoterSocket$Frame;

    invoke-direct {p0, v2, v3, v4, v5}, Lmpl/SoterSocket$Frame;-><init>(IJ[B)V

    return-object p0

    .line 477
    :cond_42
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "frame too large: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 471
    :cond_56
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "library speaks proto "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", client 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 467
    :cond_6f
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bad frame magic 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lmpl/SoterSocket;->get32([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readFully(Ljava/io/InputStream;[BIZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_23

    sub-int v1, p2, v0

    .line 496
    :try_start_5
    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_9} :catch_15

    if-lez v1, :cond_d

    add-int/2addr v0, v1

    goto :goto_1

    .line 504
    :cond_d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "socket closed while reading"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_15
    move-exception p0

    if-eqz p3, :cond_1b

    if-nez v0, :cond_1b

    .line 499
    throw p0

    .line 501
    :cond_1b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stalled in the middle of a frame"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_23
    return-void
.end method

.method private static register(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x38

    .line 300
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0xd

    .line 301
    invoke-static {v0, v1, v2}, Lmpl/SoterSocket;->put32([BII)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_c
    const/4 v5, 0x4

    if-gt v4, v2, :cond_1a

    add-int/lit8 v6, v4, -0x1

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v5

    .line 303
    invoke-static {v0, v6, v4}, Lmpl/SoterSocket;->put32([BII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1a
    const/4 v2, 0x3

    const-wide/16 v6, 0x0

    .line 305
    invoke-static {p1, v2, v6, v7, v0}, Lmpl/SoterSocket;->sendFrame(Ljava/io/OutputStream;IJ[B)V

    .line 306
    invoke-static {p0}, Lmpl/SoterSocket;->readFrame(Ljava/io/InputStream;)Lmpl/SoterSocket$Frame;

    move-result-object p0

    .line 307
    iget p1, p0, Lmpl/SoterSocket$Frame;->type:I

    if-ne p1, v5, :cond_80

    .line 310
    iget-object p1, p0, Lmpl/SoterSocket$Frame;->body:[B

    array-length p1, p1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_78

    .line 313
    iget-object p1, p0, Lmpl/SoterSocket$Frame;->body:[B

    invoke-static {p1, v1}, Lmpl/SoterSocket;->get32([BI)I

    move-result p1

    .line 314
    iget-object p0, p0, Lmpl/SoterSocket$Frame;->body:[B

    invoke-static {p0, v5}, Lmpl/SoterSocket;->get32([BI)I

    move-result p0

    sput p0, Lmpl/SoterSocket;->mask:I

    .line 315
    sget p0, Lmpl/SoterSocket;->mask:I

    if-eqz p0, :cond_70

    .line 318
    sput-boolean v3, Lmpl/SoterSocket;->registered:Z

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lmpl/SoterSocket;->registeredAt:J

    .line 320
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "SOTER socket registered codes="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mask=0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lmpl/SoterSocket;->mask:I

    .line 321
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " route=socket"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 320
    const-string p1, "MPL-SOTER"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 316
    :cond_70
    new-instance p0, Ljava/io/IOException;

    const-string p1, "library accepted none of the 13 codes"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 311
    :cond_78
    new-instance p0, Ljava/io/IOException;

    const-string p1, "short REGISTER_ACK"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 308
    :cond_80
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expected REGISTER_ACK, got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lmpl/SoterSocket$Frame;->type:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static requestStatus()V
    .registers 5

    .line 536
    sget-object v0, Lmpl/SoterSocket;->live:Landroid/net/LocalSocket;

    if-eqz v0, :cond_1f

    .line 537
    sget-boolean v1, Lmpl/SoterSocket;->registered:Z

    if-nez v1, :cond_9

    goto :goto_1f

    .line 541
    :cond_9
    :try_start_9
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/16 v2, 0x9

    const-wide/16 v3, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Lmpl/SoterSocket;->sendFrame(Ljava/io/OutputStream;IJ[B)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v0

    .line 543
    invoke-static {v0}, Lmpl/SoterSocket;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmpl/SoterSocket;->lastError:Ljava/lang/String;

    :cond_1f
    :goto_1f
    return-void
.end method

.method public static selfTest()Ljava/lang/String;
    .registers 5

    .line 193
    sget-object v0, Lmpl/SoterSocket;->TX_OK:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 194
    sget-boolean v1, Lmpl/SoterSocket;->registered:Z

    if-nez v1, :cond_1e

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "socket down (ok="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1e
    if-nez v0, :cond_45

    .line 198
    sget-wide v0, Lmpl/SoterSocket;->registeredAt:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_29

    goto :goto_31

    :cond_29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lmpl/SoterSocket;->registeredAt:J

    sub-long v2, v0, v2

    .line 199
    :goto_31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "socket live "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms, 0 forged yet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 201
    :cond_45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "socket tx="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lmpl/SoterSocket;->TX:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " forged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pass="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lmpl/SoterSocket;->TX_FALLBACK:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static sendFrame(Ljava/io/OutputStream;IJ[B)V
    .registers 10

    .line 446
    array-length v0, p4

    const/16 v1, 0x10

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const v2, 0x3154534d

    const/4 v3, 0x0

    .line 447
    invoke-static {v0, v3, v2}, Lmpl/SoterSocket;->put32([BII)V

    const/4 v2, 0x4

    const/4 v4, 0x1

    .line 448
    invoke-static {v0, v2, v4}, Lmpl/SoterSocket;->put16([BII)V

    const/4 v2, 0x6

    .line 449
    invoke-static {v0, v2, p1}, Lmpl/SoterSocket;->put16([BII)V

    const/16 p1, 0x8

    long-to-int p3, p2

    .line 450
    invoke-static {v0, p1, p3}, Lmpl/SoterSocket;->put32([BII)V

    const/16 p1, 0xc

    .line 451
    array-length p2, p4

    invoke-static {v0, p1, p2}, Lmpl/SoterSocket;->put32([BII)V

    .line 452
    array-length p1, p4

    invoke-static {p4, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    :try_start_26
    sget-object p1, Lmpl/SoterSocket;->WRITE_LOCK:Ljava/lang/Object;

    monitor-enter p1
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_34

    .line 455
    :try_start_29
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 456
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 457
    monitor-exit p1

    return-void

    :catchall_31
    move-exception p0

    monitor-exit p1
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_31

    :try_start_33
    throw p0
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_34} :catch_34

    :catch_34
    move-exception p0

    .line 459
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lmpl/SoterSocket;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static sendPass(Ljava/io/OutputStream;J)V
    .registers 5

    const/4 v0, 0x0

    .line 434
    new-array v0, v0, [B

    const/4 v1, -0x1

    invoke-static {p0, p1, p2, v1, v0}, Lmpl/SoterSocket;->sendReply(Ljava/io/OutputStream;JI[B)V

    return-void
.end method

.method private static sendReply(Ljava/io/OutputStream;JI[B)V
    .registers 9

    .line 438
    array-length v0, p4

    const/16 v1, 0x8

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 439
    invoke-static {v0, v2, p3}, Lmpl/SoterSocket;->put32([BII)V

    const/4 p3, 0x4

    .line 440
    array-length v3, p4

    invoke-static {v0, p3, v3}, Lmpl/SoterSocket;->put32([BII)V

    .line 441
    array-length p3, p4

    invoke-static {p4, v2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    invoke-static {p0, v1, p1, p2, v0}, Lmpl/SoterSocket;->sendFrame(Ljava/io/OutputStream;IJ[B)V

    return-void
.end method

.method private static serve(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x0

    .line 326
    :goto_2
    sget-boolean v2, Lmpl/SoterSocket;->running:Z

    if-eqz v2, :cond_66

    .line 329
    :try_start_6
    invoke-static {p0}, Lmpl/SoterSocket;->readFrame(Ljava/io/InputStream;)Lmpl/SoterSocket$Frame;

    move-result-object v1
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_a} :catch_3f

    .line 339
    iget v2, v1, Lmpl/SoterSocket$Frame;->type:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_30

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2c

    const/16 v3, 0xa

    if-eq v2, v3, :cond_30

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "socket: ignoring frame type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lmpl/SoterSocket$Frame;->type:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MPL-SOTER"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 341
    :cond_2c
    invoke-static {p1, v1}, Lmpl/SoterSocket;->handleTx(Ljava/io/OutputStream;Lmpl/SoterSocket$Frame;)V

    goto :goto_1

    .line 345
    :cond_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lmpl/SoterSocket;->lastPongAt:J

    .line 346
    iget-object v1, v1, Lmpl/SoterSocket$Frame;->body:[B

    invoke-static {v1}, Lmpl/SoterSocket;->parseInfo([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmpl/SoterSocket;->lastInfo:Ljava/lang/String;

    goto :goto_1

    :catch_3f
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_4d

    const-wide/16 v2, 0x0

    .line 335
    new-array v4, v0, [B

    const/4 v5, 0x5

    invoke-static {p1, v5, v2, v3, v4}, Lmpl/SoterSocket;->sendFrame(Ljava/io/OutputStream;IJ[B)V

    goto :goto_2

    .line 333
    :cond_4d
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "no answer to "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pings"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_66
    return-void
.end method

.method private static sleep(J)V
    .registers 2

    .line 588
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    .line 590
    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    const/4 p0, 0x0

    .line 591
    sput-boolean p0, Lmpl/SoterSocket;->running:Z

    return-void
.end method

.method public static start()V
    .registers 5

    .line 133
    sget-boolean v0, Lmpl/SoterSocket;->started:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 136
    sput-boolean v0, Lmpl/SoterSocket;->started:Z

    .line 137
    sput-boolean v0, Lmpl/SoterSocket;->running:Z

    .line 138
    sget-object v1, Lmpl/SoterSocket;->RUN_TOKEN:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    .line 139
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lmpl/SoterSocket$1;

    invoke-direct {v4, v1, v2}, Lmpl/SoterSocket$1;-><init>(J)V

    const-string v1, "soter-socket"

    invoke-direct {v3, v4, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v3, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 146
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 147
    const-string v0, "MPL-SOTER"

    const-string v1, "socket client started name=@teesim_soter proto=1 codes=13"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static status()Ljava/lang/String;
    .registers 3

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 174
    sget-object v1, Lmpl/SoterSocket;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, " tx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmpl/SoterSocket;->TX:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lmpl/SoterSocket;->TX_OK:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, " fb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmpl/SoterSocket;->TX_FALLBACK:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, " err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmpl/SoterSocket;->ERRORS:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    sget-boolean v1, Lmpl/SoterSocket;->registered:Z

    if-eqz v1, :cond_82

    .line 180
    const-string v1, " gen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lmpl/SoterSocket;->generation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, " mask=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lmpl/SoterSocket;->mask:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    sget-object v1, Lmpl/SoterSocket;->lastInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_90

    const-string v1, "n/a"

    sget-object v2, Lmpl/SoterSocket;->lastInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    .line 183
    const-string v1, " native["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmpl/SoterSocket;->lastInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_90

    .line 185
    :cond_82
    sget-object v1, Lmpl/SoterSocket;->lastError:Ljava/lang/String;

    if-eqz v1, :cond_90

    .line 186
    const-string v1, " last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmpl/SoterSocket;->lastError:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_90
    :goto_90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stop()V
    .registers 3

    .line 153
    sget-object v0, Lmpl/SoterSocket;->RUN_TOKEN:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    const/4 v0, 0x0

    .line 154
    sput-boolean v0, Lmpl/SoterSocket;->running:Z

    .line 155
    sget-object v1, Lmpl/SoterSocket;->live:Landroid/net/LocalSocket;

    const/4 v2, 0x0

    .line 156
    sput-object v2, Lmpl/SoterSocket;->live:Landroid/net/LocalSocket;

    if-eqz v1, :cond_12

    .line 158
    invoke-static {v1}, Lmpl/SoterSocket;->closeQuietly(Landroid/net/LocalSocket;)V

    .line 160
    :cond_12
    sput-boolean v0, Lmpl/SoterSocket;->registered:Z

    .line 161
    sput-boolean v0, Lmpl/SoterSocket;->started:Z

    .line 162
    const-string v0, "stopped"

    sput-object v0, Lmpl/SoterSocket;->state:Ljava/lang/String;

    return-void
.end method
