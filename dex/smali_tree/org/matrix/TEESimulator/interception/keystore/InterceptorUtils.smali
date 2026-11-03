.class public final Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field private static final EX_SERVICE_SPECIFIC:I = -0x8

.field private static final FLAT_STRIDE_HEADER:I = 0xc

.field private static final HIGH_MODTIME:J = 0x12a05f1ffL

.field public static final INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

.field private static final MAX_AUTH_COUNT:I = 0x100

.field private static final SENTINEL_MODTIME:J = 0x100000001L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    invoke-direct {v0}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;-><init>()V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final alignWord(I)I
    .registers 2

    add-int/lit8 p1, p1, 0x3

    and-int/lit8 p0, p1, -0x4

    return p0
.end method

.method public static synthetic createSuccessReply$default(Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;ZILjava/lang/Object;)Lv4/d;
    .registers 4

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    move p1, p3

    :cond_5
    invoke-virtual {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createSuccessReply(Z)Lv4/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createTypedArrayReply$default(Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;[Landroid/os/Parcelable;IILjava/lang/Object;)Lv4/d;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createTypedArrayReply([Landroid/os/Parcelable;I)Lv4/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createTypedObjectReply$default(Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;Landroid/os/Parcelable;ILorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;ILjava/lang/Object;)Lv4/d;
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    :cond_a
    invoke-virtual {p0, p1, p2, p3}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createTypedObjectReply(Landroid/os/Parcelable;ILorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;)Lv4/d;

    move-result-object p0

    return-object p0
.end method

.method private final flatPayloadSize(Ljava/nio/ByteBuffer;IJ)I
    .registers 8

    const-wide/16 v0, 0x1

    cmp-long v0, v0, p3

    const-wide/16 v1, 0xc

    if-gtz v0, :cond_e

    cmp-long v0, p3, v1

    if-gez v0, :cond_e

    const/4 p0, 0x4

    return p0

    :cond_e
    cmp-long v0, p3, v1

    if-eqz v0, :cond_2e

    const-wide/16 v0, 0xd

    cmp-long v0, p3, v0

    if-nez v0, :cond_19

    goto :goto_2e

    :cond_19
    const-wide/16 v0, 0xe

    cmp-long p3, p3, v0

    if-nez p3, :cond_2c

    add-int/lit8 p3, p2, 0x4

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    add-int/2addr p1, p3

    invoke-direct {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->alignWord(I)I

    move-result p0

    sub-int/2addr p0, p2

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0

    :cond_2e
    :goto_2e
    const/16 p0, 0x8

    return p0
.end method

.method private final flatStrideFingerprintMatches([B)Z
    .registers 16

    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-gt v2, v1, :cond_87

    const/16 v3, 0x101

    if-ge v1, v3, :cond_87

    const/4 v3, 0x4

    const-wide/16 v4, 0x0

    move v6, v0

    move-wide v7, v4

    move-wide v9, v7

    move-wide v11, v9

    :goto_1d
    if-ge v6, v1, :cond_3d

    invoke-direct {p0, p1, v3}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->u32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v9

    add-int/lit8 v7, v3, 0x4

    invoke-direct {p0, p1, v7}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->u32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v11

    add-int/lit8 v7, v3, 0x8

    invoke-direct {p0, p1, v7}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->u32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v7

    add-int/lit8 v3, v3, 0xc

    invoke-direct {p0, p1, v3, v7, v8}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->flatPayloadSize(Ljava/nio/ByteBuffer;IJ)I

    move-result v13

    add-int/2addr v3, v13

    invoke-direct {p0, v3}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->alignWord(I)I

    move-result v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_3d
    invoke-direct {p0, p1, v3}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->skipDriftedByteArray(Ljava/nio/ByteBuffer;I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->skipDriftedByteArray(Ljava/nio/ByteBuffer;I)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->alignWord(I)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide p0

    cmp-long v1, v4, v7

    if-gtz v1, :cond_59

    const-wide/16 v3, 0xf

    cmp-long v1, v7, v3

    if-gez v1, :cond_59

    move v1, v2

    goto :goto_5a

    :cond_59
    move v1, v0

    :goto_5a
    const-wide v3, 0x12a05f1ffL

    cmp-long v3, p0, v3

    if-gtz v3, :cond_86

    const-wide v3, 0x100000001L

    cmp-long p0, p0, v3

    if-nez p0, :cond_87

    const-wide/16 p0, 0x4

    cmp-long p0, v9, p0

    if-eqz p0, :cond_78

    const-wide/16 p0, 0x100

    cmp-long p0, v9, p0

    if-nez p0, :cond_87

    :cond_78
    const-wide/16 p0, 0x1

    cmp-long p0, v11, p0

    if-nez p0, :cond_87

    const-wide/16 p0, 0x20

    cmp-long p0, v7, p0

    if-nez p0, :cond_87

    if-nez v1, :cond_87

    :cond_86
    move v0, v2

    :cond_87
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_8b
    .catchall {:try_start_0 .. :try_end_8b} :catchall_8c

    goto :goto_93

    :catchall_8c
    move-exception p0

    new-instance p1, La/d;

    invoke-direct {p1, p0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_93
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v0, p0, La/d;

    if-eqz v0, :cond_9a

    move-object p0, p1

    :cond_9a
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final marshalTypedArray([Landroid/system/keystore2/Authorization;)[B
    .registers 8

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    const-string v0, "obtain(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_9
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v1, :cond_25

    aget-object v4, p1, v3

    const-string v5, "null cannot be cast to non-null type android.os.Parcelable"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v4, Landroid/os/Parcelable;

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :catchall_23
    move-exception p1

    goto :goto_3b

    :cond_25
    new-array p1, v2, [Landroid/os/Parcelable;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    invoke-virtual {p0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_23

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :goto_3b
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method private final moveAuthorization([Landroid/system/keystore2/Authorization;II)[Landroid/system/keystore2/Authorization;
    .registers 6

    const-string p0, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljava/util/ArrayList;

    new-instance v0, Lb/g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lb/g;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-array p1, v1, [Landroid/system/keystore2/Authorization;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/system/keystore2/Authorization;

    return-object p0
.end method

.method private final skipDriftedByteArray(Ljava/nio/ByteBuffer;I)I
    .registers 4

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    if-nez v0, :cond_9

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_9
    add-int/lit8 v0, p2, 0x4

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    add-int/2addr p1, p2

    invoke-direct {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->alignWord(I)I

    move-result p0

    return p0
.end method

.method private final synthesizeSseMessage(I)Ljava/lang/String;
    .registers 3

    const/16 p0, -0x4c

    if-eq p1, p0, :cond_58

    const/16 p0, -0x4b

    if-eq p1, p0, :cond_55

    const/16 p0, -0x31

    if-eq p1, p0, :cond_52

    const/16 p0, -0x1d

    if-eq p1, p0, :cond_4f

    const/4 p0, -0x3

    if-eq p1, p0, :cond_4c

    const/4 p0, 0x2

    if-eq p1, p0, :cond_49

    const/4 p0, 0x4

    if-eq p1, p0, :cond_46

    const/16 p0, 0xa

    if-eq p1, p0, :cond_43

    const/4 p0, -0x7

    if-eq p1, p0, :cond_40

    const/4 p0, -0x6

    if-eq p1, p0, :cond_3d

    const/4 p0, 0x6

    if-eq p1, p0, :cond_3a

    const/4 p0, 0x7

    if-eq p1, p0, :cond_37

    const-string p0, ")"

    if-lez p1, :cond_34

    const-string v0, "Error::Rc("

    :goto_2f
    invoke-static {v0, p0, p1}, Lb/b;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_34
    const-string v0, "Error::Km("

    goto :goto_2f

    :cond_37
    const-string p0, "Error::Rc(KEY_NOT_FOUND)"

    return-object p0

    :cond_3a
    const-string p0, "Error::Rc(VALUE_CORRUPTED)"

    return-object p0

    :cond_3d
    const-string p0, "Error::Km(INCOMPATIBLE_PURPOSE)"

    return-object p0

    :cond_40
    const-string p0, "Error::Km(INCOMPATIBLE_ALGORITHM)"

    return-object p0

    :cond_43
    const-string p0, "Error::Rc(BACKEND_BUSY)"

    return-object p0

    :cond_46
    const-string p0, "Error::Rc(PERMISSION_DENIED)"

    return-object p0

    :cond_49
    const-string p0, "Error::Rc(SYSTEM_ERROR)"

    return-object p0

    :cond_4c
    const-string p0, "Error::Km(UNSUPPORTED_KEY_SIZE)"

    return-object p0

    :cond_4f
    const-string p0, "Error::Km(TOO_MANY_OPERATIONS)"

    return-object p0

    :cond_52
    const-string p0, "Error::Km(UNSUPPORTED_TAG)"

    return-object p0

    :cond_55
    const-string p0, "Error::Km(INVALID_INPUT_LENGTH)"

    return-object p0

    :cond_58
    const-string p0, "Error::Km(INVALID_TAG)"

    return-object p0
.end method

.method private final u32(Ljava/nio/ByteBuffer;I)J
    .registers 5

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final createByteArrayReply([B)Lv4/d;
    .registers 2

    const-string p0, "data"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    new-instance p1, Lv4/d;

    invoke-direct {p1, p0}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object p1
.end method

.method public final createErrorReply(I)Lv4/d;
    .registers 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    const/4 v0, -0x8

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    invoke-direct {v0, p1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->synthesizeSseMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    new-instance p1, Lv4/d;

    invoke-direct {p1, p0}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object p1
.end method

.method public final createServiceSpecificErrorReply(I)Lv4/d;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createErrorReply(I)Lv4/d;

    move-result-object p0

    return-object p0
.end method

.method public final createSuccessKeystoreResponse()Landroid/security/keystore/KeystoreResponse;
    .registers 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    const-string v0, "obtain(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    :try_start_a
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Landroid/security/keystore/KeystoreResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "createFromParcel(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Landroid/security/keystore/KeystoreResponse;
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_27

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_27
    move-exception v0

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final createSuccessReply(Z)Lv4/d;
    .registers 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_d
    new-instance p1, Lv4/d;

    invoke-direct {p1, p0}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object p1
.end method

.method public final createTypedArrayReply([Landroid/os/Parcelable;I)Lv4/d;
    .registers 3

    const-string p0, "array"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    new-instance p1, Lv4/d;

    invoke-direct {p1, p0}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object p1
.end method

.method public final createTypedObjectReply(Landroid/os/Parcelable;ILorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;)Lv4/d;
    .registers 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    if-eqz p3, :cond_11

    sget-object p1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p3}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->getUid()I

    :cond_11
    new-instance p1, Lv4/d;

    invoke-direct {p1, p0}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object p1
.end method

.method public final exceptionOrNull(Landroid/os/Parcel;)Ljava/lang/Throwable;
    .registers 3

    const-string p0, "reply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readException()V

    sget-object p0, La/h;->a:La/h;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    goto :goto_12

    :catchall_b
    move-exception p0

    new-instance v0, La/d;

    invoke-direct {v0, p0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_12
    invoke-static {p0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1c

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_1c
    return-object p0
.end method

.method public final extractAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string p0, "prefixedAlias"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 p0, 0x5f

    const/4 v0, 0x6

    invoke-static {p1, p0, v0}, Ll/q;->i1(Ljava/lang/CharSequence;CI)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1b

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :cond_1b
    return-object p1
.end method

.method public final getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I
    .registers 5

    const-string p0, "TRANSACTION_"

    const-string v0, "clazz"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "method"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_c
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    move-exception p0

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to get transaction code for method \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' in class \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final hasException(Landroid/os/Parcel;)Z
    .registers 3

    const-string p0, "reply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readException()V

    sget-object p0, La/h;->a:La/h;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    goto :goto_12

    :catchall_b
    move-exception p0

    new-instance v0, La/d;

    invoke-direct {v0, p0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_12
    invoke-static {p0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_1c
    if-eqz p0, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    return v0
.end method

.method public final normalizeAuthorizationLayout([Landroid/system/keystore2/Authorization;)[Landroid/system/keystore2/Authorization;
    .registers 8

    const-string v0, "authorizations"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    goto :goto_49

    :cond_a
    invoke-direct {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->marshalTypedArray([Landroid/system/keystore2/Authorization;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->flatStrideFingerprintMatches([B)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_49

    :cond_15
    array-length v0, p1

    const/4 v1, 0x1

    :goto_17
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2c

    invoke-direct {p0, p1, v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->moveAuthorization([Landroid/system/keystore2/Authorization;II)[Landroid/system/keystore2/Authorization;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->marshalTypedArray([Landroid/system/keystore2/Authorization;)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->flatStrideFingerprintMatches([B)Z

    move-result v3

    if-nez v3, :cond_29

    return-object v2

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2c
    move v1, v2

    :goto_2d
    if-ge v1, v0, :cond_49

    move v3, v2

    :goto_30
    if-ge v3, v0, :cond_46

    if-eq v1, v3, :cond_43

    invoke-direct {p0, p1, v1, v3}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->moveAuthorization([Landroid/system/keystore2/Authorization;II)[Landroid/system/keystore2/Authorization;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->marshalTypedArray([Landroid/system/keystore2/Authorization;)[B

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->flatStrideFingerprintMatches([B)Z

    move-result v5

    if-nez v5, :cond_43

    return-object v4

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_49
    :goto_49
    return-object p1
.end method

.method public final normalizeServiceSpecificReply(Landroid/os/Parcel;)Landroid/os/Parcel;
    .registers 4

    const-string p0, "reply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x8

    if-eq v0, v1, :cond_15

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 p0, 0x0

    return-object p0

    :cond_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v1, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    invoke-direct {v1, v0}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->synthesizeSseMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-object p1
.end method

.method public final patchAuthorizations0([Landroid/system/keystore2/Authorization;I)[Landroid/system/keystore2/Authorization;
    .registers 15

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    sget-object v1, Lz4/f;->a:La/f;

    invoke-static {p2}, Lz4/f;->i(I)I

    move-result v1

    const-string v2, "vendor"

    const/4 v3, 0x1

    invoke-static {v2, v3, p2}, Lz4/f;->f(Ljava/lang/String;ZI)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1c

    :cond_18
    invoke-static {v3, v2}, Lz4/f;->j(ZLjava/lang/String;)I

    move-result v2

    :goto_1c
    const-string v4, "boot"

    invoke-static {v4, v3, p2}, Lz4/f;->f(Ljava/lang/String;ZI)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_29

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_2d

    :cond_29
    invoke-static {v3, v4}, Lz4/f;->j(ZLjava/lang/String;)I

    move-result p2

    :goto_2d
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, p1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_36
    if-ge v6, v4, :cond_81

    aget-object v7, p1, v6

    iget-object v8, v7, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v8, v8, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const/4 v9, -0x1

    sparse-switch v8, :sswitch_data_8e

    :cond_42
    move-object v8, v0

    goto :goto_58

    :sswitch_44
    if-eq p2, v9, :cond_42

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_58

    :sswitch_4b
    if-eq v2, v9, :cond_42

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_58

    :sswitch_52
    if-eq v1, v9, :cond_42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_58
    if-eqz v8, :cond_7b

    new-instance v9, Landroid/system/keystore2/Authorization;

    invoke-direct {v9}, Landroid/system/keystore2/Authorization;-><init>()V

    new-instance v10, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v10}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iget-object v11, v7, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v11, v11, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    iput v11, v10, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/hardware/security/keymint/KeyParameterValue;->integer(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v8

    iput-object v8, v10, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    iput-object v10, v9, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v7, v7, Landroid/system/keystore2/Authorization;->securityLevel:I

    iput v7, v9, Landroid/system/keystore2/Authorization;->securityLevel:I

    move-object v7, v9

    :cond_7b
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    :cond_81
    new-array p1, v5, [Landroid/system/keystore2/Authorization;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/system/keystore2/Authorization;

    invoke-virtual {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->normalizeAuthorizationLayout([Landroid/system/keystore2/Authorization;)[Landroid/system/keystore2/Authorization;

    move-result-object p0

    return-object p0

    :sswitch_data_8e
    .sparse-switch
        0x300002c2 -> :sswitch_52
        0x300002ce -> :sswitch_4b
        0x300002cf -> :sswitch_44
    .end sparse-switch
.end method

.method public final patchAuthorizations([Landroid/system/keystore2/Authorization;I)[Landroid/system/keystore2/Authorization;
    .registers 4

    # MPL-P16-D2: keystore2 replies carry the stored USAGE_COUNT_LIMIT; rewrite it to the
    # live remaining count from the module's own usageCounters map before the framework
    # turns it into KeyInfo.getRemainingUsageCount().
    invoke-virtual {p0, p1, p2}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->patchAuthorizations0([Landroid/system/keystore2/Authorization;I)[Landroid/system/keystore2/Authorization;

    move-result-object v0

    invoke-static {v0, p2}, Lmpl/UsagePolicy;->adjustUid([Landroid/system/keystore2/Authorization;I)[Landroid/system/keystore2/Authorization;

    move-result-object v0

    return-object v0
.end method

