.class public final Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/f;)V
    .registers 2

    invoke-direct {p0}, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters$Companion;-><init>()V

    return-void
.end method

.method private final deriveEcCurveName(I)Ljava/lang/String;
    .registers 3

    const/16 p0, 0xe0

    if-eq p1, p0, :cond_1a

    const/16 p0, 0x100

    const-string v0, "secp256r1"

    if-eq p1, p0, :cond_19

    const/16 p0, 0x180

    if-eq p1, p0, :cond_16

    const/16 p0, 0x209

    if-eq p1, p0, :cond_13

    return-object v0

    :cond_13
    const-string p0, "secp521r1"

    return-object p0

    :cond_16
    const-string p0, "secp384r1"

    return-object p0

    :cond_19
    return-object v0

    :cond_1a
    const-string p0, "secp224r1"

    return-object p0
.end method

.method private final getRsaExponent(Landroid/security/keymaster/KeymasterArguments;)Ljava/math/BigInteger;
    .registers 6

    const-class p0, Landroid/security/keymaster/KeymasterArguments;

    :try_start_2
    const-string v0, "getArgumentByTag"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const v2, 0x500000c8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "getLongTagValue"

    const-string v3, "android.security.keymaster.KeymasterArgument"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type java.math.BigInteger"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Ljava/math/BigInteger;
    :try_end_43
    .catchall {:try_start_2 .. :try_end_43} :catchall_44

    goto :goto_4b

    :catchall_44
    move-exception p0

    new-instance p1, La/d;

    invoke-direct {p1, p0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_4b
    invoke-static {p0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_58

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "Failed to read rsaPublicExponent via reflection."

    invoke-static {v0, p1}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_58
    instance-of p1, p0, La/d;

    if-eqz p1, :cond_5d

    const/4 p0, 0x0

    :cond_5d
    check-cast p0, Ljava/math/BigInteger;

    return-object p0
.end method


# virtual methods
.method public final fromKeymasterArguments(Landroid/security/keymaster/KeymasterArguments;)Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;
    .registers 12

    const-string v0, "args"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const v0, 0x10000002

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v3

    const v0, 0x30000003

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->getUnsignedInt(IJ)J

    move-result-wide v0

    long-to-int v4, v0

    new-instance v2, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;

    const v0, 0x20000001

    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->getEnums(I)Ljava/util/List;

    move-result-object v5

    const-string v0, "getEnums(...)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x20000005

    invoke-virtual {p1, v1}, Landroid/security/keymaster/KeymasterArguments;->getEnums(I)Ljava/util/List;

    move-result-object v6

    invoke-static {v0, v6}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const v1, 0x60000190

    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->getDate(ILjava/util/Date;)Ljava/util/Date;

    move-result-object v7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne v3, v0, :cond_45

    invoke-direct {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters$Companion;->getRsaExponent(Landroid/security/keymaster/KeymasterArguments;)Ljava/math/BigInteger;

    move-result-object p1

    move-object v8, p1

    goto :goto_46

    :cond_45
    move-object v8, v1

    :goto_46
    const/4 p1, 0x3

    if-ne v3, p1, :cond_4d

    invoke-direct {p0, v4}, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters$Companion;->deriveEcCurveName(I)Ljava/lang/String;

    move-result-object v1

    :cond_4d
    move-object v9, v1

    invoke-direct/range {v2 .. v9}, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/Date;Ljava/math/BigInteger;Ljava/lang/String;)V

    return-object v2
.end method
