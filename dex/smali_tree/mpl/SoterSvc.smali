.class public final Lmpl/SoterSvc;
.super Ljava/lang/Object;
.source "SoterSvc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmpl/SoterSvc$Args;,
        Lmpl/SoterSvc$Session;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.soter.soterserver.ISoterService"

.field public static final ERR_BAD_SESSION:I = -0xcc

.field public static final ERR_DEFAULT:I = -0x3e8

.field public static final ERR_EMPTY_ALIAS:I = -0xca

.field public static final ERR_EMPTY_CHALLENGE:I = -0xcb

.field public static final ERR_EXPORT:I = -0xc8

.field private static final EXTERNAL_CALLER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final MAX_SESSIONS:I = 0x100

.field public static final OK:I = 0x0

.field private static final SEQ:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final SESSIONS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lmpl/SoterSvc$Session;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MPL-SOTER"

.field static final TTL_MS:J = 0x7530L

.field private static volatile callerOverride:I

.field private static volatile ttlOverride:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmpl/SoterSvc;->SESSIONS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lmpl/SoterSvc;->seed()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lmpl/SoterSvc;->SEQ:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, -0x1

    .line 113
    sput-wide v0, Lmpl/SoterSvc;->ttlOverride:J

    .line 124
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmpl/SoterSvc;->EXTERNAL_CALLER:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static args(Landroid/os/Parcel;Z)Lmpl/SoterSvc$Args;
    .registers 8

    const-string v0, "negative uid "

    const-string v1, "no uid (avail="

    .line 210
    new-instance v2, Lmpl/SoterSvc$Args;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lmpl/SoterSvc$Args;-><init>(Lmpl/SoterSvc$1;)V

    if-nez p0, :cond_11

    .line 212
    const-string p0, "null parcel"

    iput-object p0, v2, Lmpl/SoterSvc$Args;->error:Ljava/lang/String;

    return-object v2

    .line 216
    :cond_11
    :try_start_11
    const-string v4, "com.tencent.soter.soterserver.ISoterService"

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_35

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lmpl/SoterSvc$Args;->error:Ljava/lang/String;

    return-object v2

    .line 221
    :cond_35
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_4a

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lmpl/SoterSvc$Args;->error:Ljava/lang/String;

    goto :goto_4c

    .line 225
    :cond_4a
    iput v1, v2, Lmpl/SoterSvc$Args;->uid:I

    :goto_4c
    if-eqz p1, :cond_65

    .line 227
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result p1
    :try_end_52
    .catchall {:try_start_11 .. :try_end_52} :catchall_5e

    if-lez p1, :cond_65

    .line 229
    :try_start_54
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lmpl/SoterSvc$Args;->alias:Ljava/lang/String;
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_5b

    goto :goto_65

    .line 231
    :catchall_5b
    :try_start_5b
    iput-object v3, v2, Lmpl/SoterSvc$Args;->alias:Ljava/lang/String;
    :try_end_5d
    .catchall {:try_start_5b .. :try_end_5d} :catchall_5e

    goto :goto_65

    :catchall_5e
    move-exception p0

    .line 235
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lmpl/SoterSvc$Args;->error:Ljava/lang/String;

    :cond_65
    :goto_65
    return-object v2
.end method

.method public static beginCallerUid(I)V
    .registers 2

    .line 171
    sget-object v0, Lmpl/SoterSvc;->EXTERNAL_CALLER:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static callerUid()I
    .registers 2

    .line 151
    sget-object v0, Lmpl/SoterSvc;->EXTERNAL_CALLER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_15

    .line 152
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_15

    .line 153
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 155
    :cond_15
    sget v0, Lmpl/SoterSvc;->callerOverride:I

    if-lez v0, :cond_1a

    return v0

    .line 160
    :cond_1a
    :try_start_1a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1f

    return v0

    :catchall_1f
    const/4 v0, -0x1

    return v0
.end method

.method public static endCallerUid()V
    .registers 1

    .line 176
    sget-object v0, Lmpl/SoterSvc;->EXTERNAL_CALLER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public static exportAsk(Landroid/os/Parcel;)Lmpl/SoterResult;
    .registers 8

    const-string v0, " rc=-200 (no key)"

    const-string v1, " rc=-1000 (removed)"

    const-string v2, "getAppSecureKey uid="

    const/4 v3, 0x0

    .line 363
    invoke-static {p0, v3}, Lmpl/SoterSvc;->args(Landroid/os/Parcel;Z)Lmpl/SoterSvc$Args;

    move-result-object p0

    .line 364
    invoke-virtual {p0}, Lmpl/SoterSvc$Args;->uid()I

    move-result p0

    const/16 v4, -0xc8

    const/4 v5, 0x0

    .line 366
    :try_start_12
    const-string v6, "ASK"

    invoke-static {v6}, Lmpl/SoterForge;->identityPresent(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_39

    invoke-static {p0, v5}, Lmpl/SoterKeys;->isGone(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    const/16 v0, -0x3e8

    .line 368
    invoke-static {v0, v5}, Lmpl/SoterResult;->of(I[B)Lmpl/SoterResult;

    move-result-object p0

    return-object p0

    .line 370
    :cond_39
    invoke-static {}, Lmpl/SoterSvc;->callerUid()I

    move-result v1

    invoke-static {p0, v1}, Lmpl/SoterForge;->askBlobFor(II)[B

    move-result-object v1

    if-nez v1, :cond_5a

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    .line 373
    invoke-static {v4, v5}, Lmpl/SoterResult;->of(I[B)Lmpl/SoterResult;

    move-result-object p0

    return-object p0

    .line 375
    :cond_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " rc=0 bytes="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    .line 376
    invoke-static {v3, v1}, Lmpl/SoterResult;->of(I[B)Lmpl/SoterResult;

    move-result-object p0
    :try_end_76
    .catchall {:try_start_12 .. :try_end_76} :catchall_77

    return-object p0

    :catchall_77
    move-exception v0

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " rc=-200 threw "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    .line 379
    invoke-static {v4, v5}, Lmpl/SoterResult;->of(I[B)Lmpl/SoterResult;

    move-result-object p0

    return-object p0
.end method

.method public static exportAuth(Landroid/os/Parcel;)Lmpl/SoterResult;
    .registers 9

    const-string v0, " rc=-200 (no key)"

    const-string v1, " rc=-1000 (absent)"

    const-string v2, "getAuthKey uid="

    const-string v3, " rc=-202 (empty alias)"

    const/4 v4, 0x1

    .line 391
    invoke-static {p0, v4}, Lmpl/SoterSvc;->args(Landroid/os/Parcel;Z)Lmpl/SoterSvc$Args;

    move-result-object p0

    .line 392
    invoke-virtual {p0}, Lmpl/SoterSvc$Args;->uid()I

    move-result v4

    const/16 v5, -0xc8

    const/4 v6, 0x0

    .line 394
    :try_start_14
    iget-object v7, p0, Lmpl/SoterSvc$Args;->alias:Ljava/lang/String;

    invoke-static {v7}, Lmpl/SoterSvc;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 395
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    const/16 p0, -0xca

    .line 396
    invoke-static {p0, v6}, Lmpl/SoterResult;->of(I[B)Lmpl/SoterResult;

    move-result-object p0

    return-object p0

    .line 398
    :cond_35
    iget-object v3, p0, Lmpl/SoterSvc$Args;->alias:Ljava/lang/String;

    invoke-static {v4, v3}, Lmpl/SoterSvc;->hasAuth(ILjava/lang/String;)Z

    move-result v3
    :try_end_3b
    .catchall {:try_start_14 .. :try_end_3b} :catchall_b1

    const-string v7, " alias="

    if-nez v3, :cond_60

    .line 399
    :try_start_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmpl/SoterSvc$Args;->alias:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    const/16 p0, -0x3e8

    .line 401
    invoke-static {p0, v6}, Lmpl/SoterResult;->of(I[B)Lmpl/SoterResult;

    move-result-object p0

    return-object p0

    .line 403
    :cond_60
    iget-object v1, p0, Lmpl/SoterSvc$Args;->alias:Ljava/lang/String;

    invoke-static {}, Lmpl/SoterSvc;->callerUid()I

    move-result v3

    invoke-static {v4, v1, v3}, Lmpl/SoterForge;->authBlobFor(ILjava/lang/String;I)[B

    move-result-object v1

    if-nez v1, :cond_8b

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmpl/SoterSvc$Args;->alias:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    .line 407
    invoke-static {v5, v6}, Lmpl/SoterResult;->of(I[B)Lmpl/SoterResult;

    move-result-object p0

    return-object p0

    .line 409
    :cond_8b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmpl/SoterSvc$Args;->alias:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " rc=0 bytes="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 410
    invoke-static {p0, v1}, Lmpl/SoterResult;->of(I[B)Lmpl/SoterResult;

    move-result-object p0
    :try_end_b0
    .catchall {:try_start_3f .. :try_end_b0} :catchall_b1

    return-object p0

    :catchall_b1
    move-exception p0

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rc=-200 threw "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    .line 413
    invoke-static {v5, v6}, Lmpl/SoterResult;->of(I[B)Lmpl/SoterResult;

    move-result-object p0

    return-object p0
.end method

.method public static finishSign(Landroid/os/Parcel;)Lmpl/SoterResult;
    .registers 13

    const-string v0, " rc=-200 (no auth key)"

    const-wide/16 v1, 0x0

    if-eqz p0, :cond_11

    .line 486
    :try_start_6
    const-string v3, "com.tencent.soter.soterserver.ISoterService"

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_10

    goto :goto_12

    :catchall_10
    nop

    :cond_11
    move-wide v3, v1

    :goto_12
    const/16 p0, -0xcc

    const/4 v5, 0x0

    cmp-long v6, v3, v1

    if-nez v6, :cond_23

    .line 495
    const-string v0, "finishSign session=0 rc=-204 (zero session)"

    invoke-static {v0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    .line 496
    invoke-static {p0, v5}, Lmpl/SoterResult;->of(I[B)Lmpl/SoterResult;

    move-result-object p0

    return-object p0

    .line 498
    :cond_23
    sget-object v1, Lmpl/SoterSvc;->SESSIONS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmpl/SoterSvc$Session;

    .line 499
    const-string v6, "finishSign session="

    if-nez v2, :cond_4c

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " rc=-204 (unknown)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    .line 501
    invoke-static {p0, v5}, Lmpl/SoterResult;->of(I[B)Lmpl/SoterResult;

    move-result-object p0

    return-object p0

    .line 503
    :cond_4c
    iget-boolean v7, v2, Lmpl/SoterSvc$Session;->used:Z

    if-eqz v7, :cond_69

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " rc=-204 (already used)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    .line 505
    invoke-static {p0, v5}, Lmpl/SoterResult;->of(I[B)Lmpl/SoterResult;

    move-result-object p0

    return-object p0

    .line 507
    :cond_69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 508
    iget-wide v9, v2, Lmpl/SoterSvc$Session;->expiresAt:J

    cmp-long v11, v7, v9

    if-lez v11, :cond_9e

    .line 509
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " rc=-204 (expired by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v2, Lmpl/SoterSvc$Session;->expiresAt:J

    sub-long/2addr v7, v1

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    .line 512
    invoke-static {p0, v5}, Lmpl/SoterResult;->of(I[B)Lmpl/SoterResult;

    move-result-object p0

    return-object p0

    .line 514
    :cond_9e
    invoke-static {}, Lmpl/SoterSvc;->callerUid()I

    move-result v1

    if-lez v1, :cond_e1

    .line 515
    iget v7, v2, Lmpl/SoterSvc$Session;->binderUid:I

    if-eq v1, v7, :cond_e1

    iget v7, v2, Lmpl/SoterSvc$Session;->uid:I

    if-eq v1, v7, :cond_e1

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " rc=-204 (uid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " != owner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lmpl/SoterSvc$Session;->binderUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lmpl/SoterSvc$Session;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    .line 520
    invoke-static {p0, v5}, Lmpl/SoterResult;->of(I[B)Lmpl/SoterResult;

    move-result-object p0

    return-object p0

    :cond_e1
    const/16 p0, -0xc8

    .line 523
    :try_start_e3
    iget v1, v2, Lmpl/SoterSvc$Session;->uid:I

    iget-object v7, v2, Lmpl/SoterSvc$Session;->alias:Ljava/lang/String;

    iget-object v8, v2, Lmpl/SoterSvc$Session;->challenge:[B

    invoke-static {v1, v7, v8}, Lmpl/SoterForge;->signChallenge(ILjava/lang/String;[B)[B

    move-result-object v1

    if-nez v1, :cond_106

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    .line 527
    invoke-static {p0, v5}, Lmpl/SoterResult;->of(I[B)Lmpl/SoterResult;

    move-result-object p0

    return-object p0

    :cond_106
    const/4 v0, 0x1

    .line 529
    iput-boolean v0, v2, Lmpl/SoterSvc$Session;->used:Z

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " alias="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lmpl/SoterSvc$Session;->alias:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " uid="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lmpl/SoterSvc$Session;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rc=0 sig="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 532
    invoke-static {v0, v1}, Lmpl/SoterResult;->of(I[B)Lmpl/SoterResult;

    move-result-object p0
    :try_end_13a
    .catchall {:try_start_e3 .. :try_end_13a} :catchall_13b

    return-object p0

    :catchall_13b
    move-exception v0

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " threw "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    .line 535
    invoke-static {p0, v5}, Lmpl/SoterResult;->of(I[B)Lmpl/SoterResult;

    move-result-object p0

    return-object p0
.end method

.method private static generateAsk(I)I
    .registers 4

    .line 326
    const-string v0, "ASK"

    invoke-static {v0}, Lmpl/SoterForge;->identityPresent(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "generateAppSecureKey uid="

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    .line 329
    invoke-static {p0, v0}, Lmpl/SoterKeys;->revive(ILjava/lang/String;)V

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " rc=0 (identity lane)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 333
    :cond_24
    invoke-static {p0}, Lmpl/SoterKeys;->generateAsk(I)I

    move-result v0

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rc="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-static {p0}, Lmpl/SoterKeys;->describe(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 334
    invoke-static {p0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    return v0
.end method

.method private static generateAuth(ILjava/lang/String;)I
    .registers 6

    .line 340
    const-string v0, "AUTH"

    invoke-static {v0}, Lmpl/SoterForge;->identityPresent(Ljava/lang/String;)Z

    move-result v0

    const-string v1, " alias="

    const-string v2, "generateAuthKey uid="

    if-eqz v0, :cond_2b

    .line 341
    invoke-static {p0, p1}, Lmpl/SoterKeys;->revive(ILjava/lang/String;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " rc=0 (identity lane)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 345
    :cond_2b
    invoke-static {p0, p1}, Lmpl/SoterKeys;->generateAuth(ILjava/lang/String;)I

    move-result v0

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " rc="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-static {p0}, Lmpl/SoterKeys;->describe(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 346
    invoke-static {p0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    return v0
.end method

.method public static has(ILandroid/os/Parcel;)I
    .registers 8

    const-string v0, "hasAskAlready uid="

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p0, v2, :cond_9

    const/4 v3, 0x1

    goto :goto_a

    :cond_9
    const/4 v3, 0x0

    .line 282
    :goto_a
    invoke-static {p1, v3}, Lmpl/SoterSvc;->args(Landroid/os/Parcel;Z)Lmpl/SoterSvc$Args;

    move-result-object p1

    .line 283
    invoke-virtual {p1}, Lmpl/SoterSvc$Args;->uid()I

    move-result v3

    const/4 v4, 0x3

    .line 285
    const-string v5, " -> "

    if-ne p0, v4, :cond_44

    .line 286
    :try_start_17
    invoke-static {v3}, Lmpl/SoterSvc;->hasAsk(I)Z

    move-result p1

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-static {v3}, Lmpl/SoterKeys;->describe(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-static {v0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    return p1

    :catchall_42
    move-exception p1

    goto :goto_8b

    :cond_44
    if-ne p0, v2, :cond_ac

    .line 292
    iget-object v0, p1, Lmpl/SoterSvc$Args;->alias:Ljava/lang/String;

    invoke-static {v0}, Lmpl/SoterSvc;->isEmpty(Ljava/lang/String;)Z

    move-result v0
    :try_end_4c
    .catchall {:try_start_17 .. :try_end_4c} :catchall_42

    const-string v2, "hasAuthKey uid="

    if-eqz v0, :cond_65

    .line 295
    :try_start_50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> false (empty alias)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    return v1

    .line 298
    :cond_65
    iget-object v0, p1, Lmpl/SoterSvc$Args;->alias:Ljava/lang/String;

    invoke-static {v3, v0}, Lmpl/SoterSvc;->hasAuth(ILjava/lang/String;)Z

    move-result v0

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " alias="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lmpl/SoterSvc$Args;->alias:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_50 .. :try_end_8a} :catchall_42

    return v0

    .line 304
    :goto_8b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "has code="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " uid="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " threw "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    :cond_ac
    return v1
.end method

.method static hasAsk(I)Z
    .registers 2

    .line 311
    const-string v0, "ASK"

    invoke-static {v0}, Lmpl/SoterForge;->identityPresent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 312
    invoke-static {p0, v0}, Lmpl/SoterKeys;->isGone(ILjava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 314
    :cond_10
    invoke-static {p0}, Lmpl/SoterKeys;->hasAsk(I)Z

    move-result p0

    return p0
.end method

.method static hasAuth(ILjava/lang/String;)Z
    .registers 3

    .line 319
    const-string v0, "AUTH"

    invoke-static {v0}, Lmpl/SoterForge;->identityPresent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 320
    invoke-static {p0, p1}, Lmpl/SoterKeys;->isGone(ILjava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 322
    :cond_f
    invoke-static {p0, p1}, Lmpl/SoterKeys;->hasAuth(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static initSigh(Landroid/os/Parcel;)Lmpl/SoterResult;
    .registers 20

    move-object/from16 v0, p0

    const-string v1, " rc=-200 (auth key unavailable)"

    const/4 v2, 0x1

    .line 429
    invoke-static {v0, v2}, Lmpl/SoterSvc;->args(Landroid/os/Parcel;Z)Lmpl/SoterSvc$Args;

    move-result-object v2

    .line 430
    invoke-static {}, Lmpl/SoterSvc;->callerUid()I

    move-result v5

    const/4 v3, 0x0

    if-eqz v0, :cond_16

    .line 435
    :try_start_10
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_15

    goto :goto_16

    :catchall_15
    nop

    :cond_16
    :goto_16
    move-object v0, v3

    .line 440
    invoke-virtual {v2}, Lmpl/SoterSvc$Args;->uid()I

    move-result v4

    .line 441
    iget-object v3, v2, Lmpl/SoterSvc$Args;->alias:Ljava/lang/String;

    invoke-static {v3}, Lmpl/SoterSvc;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    const-wide/16 v10, 0x0

    const-string v12, "initSigh uid="

    if-eqz v3, :cond_42

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rc=-202 (empty alias)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    const/16 v0, -0xca

    .line 443
    invoke-static {v10, v11, v0}, Lmpl/SoterResult;->session(JI)Lmpl/SoterResult;

    move-result-object v0

    return-object v0

    .line 445
    :cond_42
    const-string v13, " alias="

    if-eqz v0, :cond_10d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4e

    goto/16 :goto_10d

    :cond_4e
    const/16 v14, -0xc8

    .line 451
    :try_start_50
    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 452
    const-string v3, "AUTH"

    invoke-static {v3}, Lmpl/SoterForge;->identityPresent(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_85

    iget-object v3, v2, Lmpl/SoterSvc$Args;->alias:Ljava/lang/String;

    invoke-static {v4, v3}, Lmpl/SoterKeys;->ensureAuth(ILjava/lang/String;)Ljava/security/KeyPair;

    move-result-object v3

    if-nez v3, :cond_85

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lmpl/SoterSvc$Args;->alias:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    .line 455
    invoke-static {v10, v11, v14}, Lmpl/SoterResult;->session(JI)Lmpl/SoterResult;

    move-result-object v0

    return-object v0

    .line 457
    :cond_85
    invoke-static {}, Lmpl/SoterSvc;->nextSessionId()J

    move-result-wide v8

    .line 458
    new-instance v3, Lmpl/SoterSvc$Session;

    iget-object v6, v2, Lmpl/SoterSvc$Args;->alias:Ljava/lang/String;

    .line 459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static {}, Lmpl/SoterSvc;->ttl()J

    move-result-wide v17

    add-long v15, v15, v17

    move-wide/from16 v17, v8

    move-wide v8, v15

    invoke-direct/range {v3 .. v9}, Lmpl/SoterSvc$Session;-><init>(IILjava/lang/String;[BJ)V

    .line 460
    sget-object v1, Lmpl/SoterSvc;->SESSIONS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-static {}, Lmpl/SoterSvc;->reap()V

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lmpl/SoterSvc$Args;->alias:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " caller="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " challengeLen="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " session="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v17

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " rc=0 live="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-static {v0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 465
    invoke-static {v5, v6, v0}, Lmpl/SoterResult;->session(JI)Lmpl/SoterResult;

    move-result-object v0
    :try_end_ef
    .catchall {:try_start_50 .. :try_end_ef} :catchall_f0

    return-object v0

    :catchall_f0
    move-exception v0

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " threw "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    .line 468
    invoke-static {v10, v11, v14}, Lmpl/SoterResult;->session(JI)Lmpl/SoterResult;

    move-result-object v0

    return-object v0

    .line 446
    :cond_10d
    :goto_10d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lmpl/SoterSvc$Args;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rc=-203 (empty challenge)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    const/16 v0, -0xcb

    .line 448
    invoke-static {v10, v11, v0}, Lmpl/SoterResult;->session(JI)Lmpl/SoterResult;

    move-result-object v0

    return-object v0
.end method

.method public static intOp(ILandroid/os/Parcel;)I
    .registers 10

    const-string v0, "removeAuthKey uid="

    const-string v1, "generateAuthKey uid="

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-eq p0, v5, :cond_f

    if-ne p0, v3, :cond_d

    goto :goto_f

    :cond_d
    const/4 v6, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v6, 0x1

    .line 249
    :goto_10
    invoke-static {p1, v6}, Lmpl/SoterSvc;->args(Landroid/os/Parcel;Z)Lmpl/SoterSvc$Args;

    move-result-object p1

    .line 250
    invoke-virtual {p1}, Lmpl/SoterSvc$Args;->uid()I

    move-result v6

    if-eq p0, v4, :cond_6f

    const/4 v4, 0x7

    if-eq p0, v4, :cond_6a

    const/16 v4, -0xca

    .line 252
    const-string v7, " rc=-202 (empty alias)"

    if-eq p0, v5, :cond_48

    if-eq p0, v3, :cond_26

    return v2

    .line 263
    :cond_26
    :try_start_26
    iget-object v1, p1, Lmpl/SoterSvc$Args;->alias:Ljava/lang/String;

    invoke-static {v1}, Lmpl/SoterSvc;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 264
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    return v4

    .line 268
    :cond_41
    iget-object p1, p1, Lmpl/SoterSvc$Args;->alias:Ljava/lang/String;

    invoke-static {v6, p1}, Lmpl/SoterKeys;->removeAuth(ILjava/lang/String;)I

    move-result p0

    return p0

    .line 256
    :cond_48
    iget-object v0, p1, Lmpl/SoterSvc$Args;->alias:Ljava/lang/String;

    invoke-static {v0}, Lmpl/SoterSvc;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 257
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    return v4

    .line 261
    :cond_63
    iget-object p1, p1, Lmpl/SoterSvc$Args;->alias:Ljava/lang/String;

    invoke-static {v6, p1}, Lmpl/SoterSvc;->generateAuth(ILjava/lang/String;)I

    move-result p0

    return p0

    .line 270
    :cond_6a
    invoke-static {v6}, Lmpl/SoterKeys;->removeAll(I)I

    move-result p0

    return p0

    .line 254
    :cond_6f
    invoke-static {v6}, Lmpl/SoterSvc;->generateAsk(I)I

    move-result p0
    :try_end_73
    .catchall {:try_start_26 .. :try_end_73} :catchall_74

    return p0

    :catchall_74
    move-exception p1

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "intOp code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " uid="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " threw "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    const/16 p0, -0xc8

    return p0
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_b

    .line 587
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 3

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "svc: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MPL-SOTER"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static nextSessionId()J
    .registers 5

    .line 544
    :cond_0
    sget-object v0, Lmpl/SoterSvc;->SEQ:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 545
    sget-object v2, Lmpl/SoterSvc;->SESSIONS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-wide v0
.end method

.method private static reap()V
    .registers 10

    .line 556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 557
    sget-object v2, Lmpl/SoterSvc;->SESSIONS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 558
    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 559
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmpl/SoterSvc$Session;

    .line 560
    iget-wide v3, v3, Lmpl/SoterSvc$Session;->expiresAt:J

    cmp-long v5, v0, v3

    if-lez v5, :cond_e

    .line 561
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_e

    .line 564
    :cond_2a
    :goto_2a
    sget-object v0, Lmpl/SoterSvc;->SESSIONS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_8b

    .line 567
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    :cond_42
    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 568
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmpl/SoterSvc$Session;

    .line 570
    iget-boolean v6, v5, Lmpl/SoterSvc$Session;->used:Z

    if-eqz v6, :cond_5b

    const-wide/16 v6, 0x0

    goto :goto_5d

    :cond_5b
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    :goto_5d
    iget-wide v8, v5, Lmpl/SoterSvc$Session;->expiresAt:J

    add-long/2addr v6, v8

    cmp-long v5, v6, v2

    if-gez v5, :cond_42

    .line 573
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    move-wide v2, v6

    goto :goto_42

    :cond_6c
    if-nez v1, :cond_6f

    goto :goto_8b

    .line 579
    :cond_6f
    sget-object v0, Lmpl/SoterSvc;->SESSIONS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "initSigh evicted session="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (table cap 256)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterSvc;->log(Ljava/lang/String;)V

    goto :goto_2a

    :cond_8b
    :goto_8b
    return-void
.end method

.method private static seed()J
    .registers 4

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 131
    :try_start_5
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_10

    and-long/2addr v0, v2

    return-wide v0

    .line 133
    :catchall_10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static sessionCount()I
    .registers 1

    .line 186
    sget-object v0, Lmpl/SoterSvc;->SESSIONS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public static sessionIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 596
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lmpl/SoterSvc;->SESSIONS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static setCallerUidForTest(I)V
    .registers 1

    .line 141
    sput p0, Lmpl/SoterSvc;->callerOverride:I

    return-void
.end method

.method public static setTtlForTest(J)V
    .registers 2

    .line 146
    sput-wide p0, Lmpl/SoterSvc;->ttlOverride:J

    return-void
.end method

.method private static ttl()J
    .registers 5

    .line 180
    sget-wide v0, Lmpl/SoterSvc;->ttlOverride:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    return-wide v0

    :cond_9
    const-wide/16 v0, 0x7530

    return-wide v0
.end method
