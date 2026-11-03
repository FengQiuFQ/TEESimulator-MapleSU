.class Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;


# static fields
.field private static final aeadBadTagConstructor:Ljava/lang/reflect/Constructor;


# instance fields
.field private cipher:La1/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;

    const-string v1, "javax.crypto.AEADBadTagException"

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->findExceptionConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    :goto_e
    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aeadBadTagConstructor:Ljava/lang/reflect/Constructor;

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public constructor <init>(La1/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:La1/b;

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;)La1/b;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:La1/b;

    return-object p0
.end method

.method private static findExceptionConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 2

    :try_start_0
    const-class v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 3

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:La1/b;

    invoke-interface {p0, p1, p2}, La1/b;->doFinal([BI)I

    move-result p0
    :try_end_6
    .catch Lorg/bouncycastle/crypto/x; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    sget-object p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aeadBadTagConstructor:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_1f

    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/BadPaddingException;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_1b

    goto :goto_1c

    :catch_1b
    const/4 p1, 0x0

    :goto_1c
    if-eqz p1, :cond_1f

    throw p1

    :cond_1f
    new-instance p1, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:La1/b;

    instance-of v0, p0, La1/a;

    if-eqz v0, :cond_11

    check-cast p0, La1/a;

    invoke-interface {p0}, La1/a;->getUnderlyingCipher()Lorg/bouncycastle/crypto/d;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-interface {p0}, La1/b;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOutputSize(I)I
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:La1/b;

    invoke-interface {p0, p1}, La1/b;->getOutputSize(I)I

    move-result p0

    return p0
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/d;
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:La1/b;

    instance-of v0, p0, La1/a;

    if-eqz v0, :cond_d

    check-cast p0, La1/a;

    invoke-interface {p0}, La1/a;->getUnderlyingCipher()Lorg/bouncycastle/crypto/d;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUpdateOutputSize(I)I
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:La1/b;

    invoke-interface {p0, p1}, La1/b;->getUpdateOutputSize(I)I

    move-result p0

    return p0
.end method

.method public init(ZLorg/bouncycastle/crypto/g;)V
    .registers 3

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:La1/b;

    invoke-interface {p0, p1, p2}, La1/b;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void
.end method

.method public processByte(B[BI)I
    .registers 4

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:La1/b;

    invoke-interface {p0, p1, p2, p3}, La1/b;->processByte(B[BI)I

    move-result p0

    return p0
.end method

.method public processBytes([BII[BI)I
    .registers 6

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:La1/b;

    invoke-interface/range {p0 .. p5}, La1/b;->processBytes([BII[BI)I

    move-result p0

    return p0
.end method

.method public updateAAD([BII)V
    .registers 4

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:La1/b;

    invoke-interface {p0, p1, p2, p3}, La1/b;->a([BII)V

    return-void
.end method

.method public wrapOnNoPadding()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
