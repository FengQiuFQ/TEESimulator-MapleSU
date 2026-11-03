.class public final Lmpl/ProbeInterceptor;
.super Lv4/g;
.source "ProbeInterceptor.java"


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.soter.soterserver.ISoterService"

.field public static final HITS:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final INSTANCE:Lmpl/ProbeInterceptor;

.field public static final PROBE_CODE:I = 0x3

.field public static final PROBE_MAGIC:I = 0x4d504c

.field public static final PROBE_UID:I = 0x7fff0000

.field private static final TAG:Ljava/lang/String; = "MPL-SOTER"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 51
    new-instance v0, Lmpl/ProbeInterceptor;

    invoke-direct {v0}, Lmpl/ProbeInterceptor;-><init>()V

    sput-object v0, Lmpl/ProbeInterceptor;->INSTANCE:Lmpl/ProbeInterceptor;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lmpl/ProbeInterceptor;->HITS:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Lv4/g;-><init>()V

    return-void
.end method

.method private static isProbe(Landroid/os/Parcel;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 87
    :cond_4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 89
    :try_start_8
    const-string v2, "com.tencent.soter.soterserver.ISoterService"

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1d

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_21

    const/high16 v3, 0x7fff0000

    if-ne v2, v3, :cond_1d

    const/4 v0, 0x1

    .line 95
    :cond_1d
    :try_start_1d
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_20

    :catchall_20
    return v0

    :catchall_21
    :try_start_21
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_24

    :catchall_24
    return v0
.end method


# virtual methods
.method public onPreTransact(JLandroid/os/IBinder;IIIILandroid/os/Parcel;)Lv4/f;
    .registers 18

    const/4 v0, 0x3

    if-ne p4, v0, :cond_35

    .line 62
    invoke-static/range {p8 .. p8}, Lmpl/ProbeInterceptor;->isProbe(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 63
    sget-object v0, Lmpl/ProbeInterceptor;->HITS:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 64
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 66
    :try_start_12
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    .line 67
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const v0, 0x4d504c

    .line 68
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    new-instance v0, Lv4/d;

    invoke-direct {v0, v1}, Lv4/d;-><init>(Landroid/os/Parcel;)V
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_25

    return-object v0

    :catchall_25
    move-exception v0

    .line 71
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 72
    const-string v1, "MPL-SOTER"

    const-string v2, "probe reply failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    invoke-super/range {p0 .. p8}, Lv4/g;->onPreTransact(JLandroid/os/IBinder;IIIILandroid/os/Parcel;)Lv4/f;

    move-result-object p1

    return-object p1

    .line 76
    :cond_35
    sget-object v0, Lw4/e;->a:Lw4/e;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lw4/e;->onPreTransact(JLandroid/os/IBinder;IIIILandroid/os/Parcel;)Lv4/f;

    move-result-object p1

    return-object p1
.end method
