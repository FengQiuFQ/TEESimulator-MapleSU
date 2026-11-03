.class public abstract Lv4/g;
.super Landroid/os/Binder;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field private static final BACKDOOR_TRANSACTION_CODE:I = -0x21524111

.field public static final Companion:Lv4/a;

.field private static final POST_TRANSACT_CODE:I = 0x2

.field private static final PRE_TRANSACT_CODE:I = 0x1

.field private static final REGISTER_INTERCEPTOR_CODE:I = 0x1

.field private static final RESULT_CONTINUE:I = 0x2

.field private static final RESULT_CONTINUE_AND_SKIP_POST:I = 0x5

.field private static final RESULT_OVERRIDE_DATA:I = 0x4

.field private static final RESULT_OVERRIDE_REPLY:I = 0x3

.field private static final RESULT_SKIP_TRANSACTION:I = 0x1

.field private static final UNREGISTER_INTERCEPTOR_CODE:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lv4/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv4/g;->Companion:Lv4/a;

    return-void
.end method

.method public static synthetic logTransaction$default(Lv4/g;JLjava/lang/String;IIZILjava/lang/Object;)V
    .registers 16

    if-nez p8, :cond_11

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_7

    const/4 p6, 0x0

    :cond_7
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lv4/g;->logTransaction(JLjava/lang/String;IIZ)V

    return-void

    :cond_11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: logTransaction"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(JLandroid/os/Parcel;)Lv4/f;
    .registers 18

    move-object/from16 v0, p3

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    const-string v1, "obtain(...)"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    invoke-static {v1, v11}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_29
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {v8, v0, v2, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    add-int/2addr v9, v1

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    long-to-int v1, v12

    if-lez v1, :cond_5d

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    invoke-virtual {v11, v0, v9, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v9, v11

    move-object v0, p0

    move-wide v1, p1

    goto :goto_61

    :catchall_5a
    move-exception v0

    move-object p0, v0

    goto :goto_6c

    :cond_5d
    const/4 v0, 0x0

    move-object v9, v0

    move-wide v1, p1

    move-object v0, p0

    :goto_61
    invoke-virtual/range {v0 .. v10}, Lv4/g;->onPostTransact(JLandroid/os/IBinder;IIIILandroid/os/Parcel;Landroid/os/Parcel;I)Lv4/f;

    move-result-object p0
    :try_end_65
    .catchall {:try_start_29 .. :try_end_65} :catchall_5a

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :goto_6c
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final b(JLandroid/os/Parcel;)Lv4/f;
    .registers 13

    invoke-virtual {p3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    const-string v2, "obtain(...)"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_24
    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    long-to-int v0, v0

    invoke-virtual {v8, p3, v2, v0}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    const/4 p3, 0x0

    invoke-virtual {v8, p3}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v8}, Lv4/g;->onPreTransact(JLandroid/os/IBinder;IIIILandroid/os/Parcel;)Lv4/f;

    move-result-object p0
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_3a

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_3a
    move-exception v0

    move-object p0, v0

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final logTransaction(JLjava/lang/String;IIZ)V
    .registers 7

    const-string p0, "methodName"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public onPostTransact(JLandroid/os/IBinder;IIIILandroid/os/Parcel;Landroid/os/Parcel;I)Lv4/f;
    .registers 11

    const-string p0, "target"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "data"

    invoke-static {p0, p8}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lv4/e;->a:Lv4/e;

    return-object p0
.end method

.method public onPreTransact(JLandroid/os/IBinder;IIIILandroid/os/Parcel;)Lv4/f;
    .registers 9

    const-string p0, "target"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "data"

    invoke-static {p0, p8}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lv4/c;->a:Lv4/c;

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9

    const-string v0, "data"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1b

    if-eq p1, v2, :cond_16

    :try_start_f
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :catchall_14
    move-exception p0

    goto :goto_20

    :cond_16
    invoke-virtual {p0, v0, v1, p2}, Lv4/g;->a(JLandroid/os/Parcel;)Lv4/f;

    move-result-object p0

    goto :goto_3a

    :cond_1b
    invoke-virtual {p0, v0, v1, p2}, Lv4/g;->b(JLandroid/os/Parcel;)Lv4/f;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_14

    goto :goto_3a

    :goto_20
    sget-object p1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[TX_ID: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "] Interceptor exception, falling through to HAL"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lv4/c;->a:Lv4/c;

    :goto_3a
    invoke-static {p3}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    instance-of p1, p0, Lv4/e;

    if-eqz p1, :cond_45

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_78

    :cond_45
    instance-of p1, p0, Lv4/b;

    if-eqz p1, :cond_4d

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_78

    :cond_4d
    instance-of p1, p0, Lv4/d;

    if-eqz p1, :cond_70

    const/4 p1, 0x3

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p0, Lv4/d;

    iget-object p0, p0, Lv4/d;->a:Landroid/os/Parcel;

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result p2

    invoke-virtual {p3, p0, p1, p2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    goto :goto_78

    :cond_70
    instance-of p0, p0, Lv4/c;

    if-eqz p0, :cond_79

    const/4 p0, 0x5

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_78
    return v3

    :cond_79
    new-instance p0, La/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
