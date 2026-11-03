.class public final Lw4/e;
.super Lv4/g;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final a:Lw4/e;

.field public static final b:Ljava/lang/Object;

.field public static final c:[I

.field public static final d:La/f;

.field public static final e:[B

.field public static final f:[B


# direct methods
.method static constructor <clinit>()V
    .registers 15

    new-instance v0, Lw4/e;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lw4/e;->a:Lw4/e;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, La/c;

    const-string v2, "generateAppSecureKey"

    invoke-direct {v1, v0, v2}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, La/c;

    const-string v3, "getAppSecureKey"

    invoke-direct {v2, v0, v3}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, La/c;

    const-string v4, "hasAskAlready"

    invoke-direct {v3, v0, v4}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, La/c;

    const-string v5, "generateAuthKey"

    invoke-direct {v4, v0, v5}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v5, La/c;

    const-string v6, "removeAuthKey"

    invoke-direct {v5, v0, v6}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v6, La/c;

    const-string v7, "getAuthKey"

    invoke-direct {v6, v0, v7}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v7, La/c;

    const-string v8, "removeAllAuthKey"

    invoke-direct {v7, v0, v8}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v8, La/c;

    const-string v9, "hasAuthKey"

    invoke-direct {v8, v0, v9}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v9, La/c;

    const-string v10, "initSigh"

    invoke-direct {v9, v0, v10}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v10, La/c;

    const-string v11, "finishSign"

    invoke-direct {v10, v0, v11}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v11, La/c;

    const-string v12, "getDeviceId"

    invoke-direct {v11, v0, v12}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v12, La/c;

    const-string v13, "getVersion"

    invoke-direct {v12, v0, v13}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v13, La/c;

    const-string v14, "getExtraParam"

    invoke-direct {v13, v0, v14}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v1 .. v13}, [La/c;

    move-result-object v0

    invoke-static {v0}, Lb/t;->g1([La/c;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lw4/e;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lb/i;->b1(Ljava/util/Collection;)[I

    move-result-object v0

    sput-object v0, Lw4/e;->c:[I

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lw4/e;->d:La/f;

    const-string v0, "TEESIM-SOTER-0001"

    sget-object v1, Ll/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lw4/e;->e:[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lw4/e;->f:[B

    return-void
.end method


# virtual methods
.method public final onPreTransact(JLandroid/os/IBinder;IIIILandroid/os/Parcel;)Lv4/f;
    .registers 18

    const-string v0, "target"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p3, "data"

    move-object/from16 v0, p8

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p3, Lw4/e;->b:Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    sget-object p3, Lv4/c;->a:Lv4/c;

    if-nez v3, :cond_2d

    const-string v0, "code="

    invoke-static {p4, v0}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    move-object v1, p0

    move-wide v2, p1

    move v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v1 .. v7}, Lv4/g;->logTransaction(JLjava/lang/String;IIZ)V

    return-object p3

    :cond_2d
    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v4, p6

    move/from16 v5, p7

    invoke-static/range {v0 .. v8}, Lv4/g;->logTransaction$default(Lv4/g;JLjava/lang/String;IIZILjava/lang/Object;)V

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p0, 0x1

    const-string p1, "obtain(...)"

    const/4 p2, 0x0

    packed-switch p4, :pswitch_data_11e

    return-object p3

    :pswitch_43
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const-string p0, "optical"

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    new-instance p0, Lv4/d;

    invoke-direct {p0, p2}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_5b
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    new-instance p0, Lv4/d;

    invoke-direct {p0, p2}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_6e
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    sget-object p0, Lw4/e;->e:[B

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    array-length p0, p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    new-instance p0, Lv4/d;

    invoke-direct {p0, p3}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_8d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    sget-object p0, Lw4/e;->f:[B

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    array-length p0, p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    new-instance p0, Lv4/d;

    invoke-direct {p0, p3}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_ac
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    const-wide/16 p0, 0x1

    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    new-instance p0, Lv4/d;

    invoke-direct {p0, p3}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_c7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    new-instance p0, Lv4/d;

    invoke-direct {p0, p2}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_da
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    sget-object p0, Lw4/e;->a:Lw4/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lw4/e;->d:La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    array-length p0, p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    new-instance p0, Lv4/d;

    invoke-direct {p0, p3}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_10a
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    new-instance p1, Lv4/d;

    invoke-direct {p1, p0}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object p1

    nop

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_10a
        :pswitch_da
        :pswitch_c7
        :pswitch_10a
        :pswitch_10a
        :pswitch_da
        :pswitch_10a
        :pswitch_c7
        :pswitch_ac
        :pswitch_8d
        :pswitch_6e
        :pswitch_5b
        :pswitch_43
    .end packed-switch
.end method
