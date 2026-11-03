.class Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;


# instance fields
.field private cipher:Lorg/bouncycastle/crypto/e;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/d;)V
    .registers 5

    new-instance v0, La3/e;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, La3/e;-><init>(BI)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/bouncycastle/crypto/d;Ld1/a;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/d;Ld1/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld1/c;

    invoke-direct {v0, p1, p2}, Ld1/c;-><init>(Lorg/bouncycastle/crypto/d;Ld1/a;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 3

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/e;->a([BI)I

    move-result p0
    :try_end_6
    .catch Lorg/bouncycastle/crypto/x; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    new-instance p1, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/e;->d()Lorg/bouncycastle/crypto/d;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOutputSize(I)I
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/e;->c(I)I

    move-result p0

    return p0
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/d;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/e;->d()Lorg/bouncycastle/crypto/d;

    move-result-object p0

    return-object p0
.end method

.method public getUpdateOutputSize(I)I
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/e;->e(I)I

    move-result p0

    return p0
.end method

.method public init(ZLorg/bouncycastle/crypto/g;)V
    .registers 3

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/e;->f(ZLorg/bouncycastle/crypto/g;)V

    return-void
.end method

.method public processByte(B[BI)I
    .registers 4

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/e;->h(B[BI)I

    move-result p0

    return p0
.end method

.method public processBytes([BII[BI)I
    .registers 6

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    invoke-virtual/range {p0 .. p5}, Lorg/bouncycastle/crypto/e;->i([BII[BI)I

    move-result p0

    return p0
.end method

.method public updateAAD([BII)V
    .registers 4

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "AAD is not supported in the current mode."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public wrapOnNoPadding()Z
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->cipher:Lorg/bouncycastle/crypto/e;

    instance-of p0, p0, La1/h;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
