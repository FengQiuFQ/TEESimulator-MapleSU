.class public Lorg/bouncycastle/crypto/z;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b0;


# instance fields
.field public final g:I

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/security/SecureRandom;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_a

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object p2

    goto :goto_c

    :cond_a
    sget-object v0, Lorg/bouncycastle/crypto/o;->a:Ljava/lang/ThreadLocal;

    :goto_c
    iput-object p2, p0, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    iput p1, p0, Lorg/bouncycastle/crypto/z;->g:I

    return-void
.end method

.method public constructor <init>(ILm/q;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_e

    invoke-static {p2}, Lv3/f;->a(Lm/q;)Lorg/bouncycastle/crypto/v;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    iput p1, p0, Lorg/bouncycastle/crypto/z;->g:I

    return-void

    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "digest == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(La1/u;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    iput p2, p0, Lorg/bouncycastle/crypto/z;->g:I

    return-void
.end method


# virtual methods
.method public a([B[B)[B
    .registers 5

    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/crypto/z;->g:I

    if-ne v0, v1, :cond_18

    array-length v0, p2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_10

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, p2}, Lorg/bouncycastle/crypto/z;->b([BI[B)[B

    move-result-object p0

    return-object p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong address length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong key length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b([BI[B)[B
    .registers 7

    int-to-long v0, p2

    iget p2, p0, Lorg/bouncycastle/crypto/z;->g:I

    invoke-static {p2, v0, v1}, Ls2/b;->W(IJ)[B

    move-result-object v0

    array-length v1, v0

    iget-object p0, p0, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/v;->update([BII)V

    array-length v0, p1

    invoke-interface {p0, p1, v2, v0}, Lorg/bouncycastle/crypto/v;->update([BII)V

    array-length p1, p3

    invoke-interface {p0, p3, v2, p1}, Lorg/bouncycastle/crypto/v;->update([BII)V

    new-array p1, p2, [B

    instance-of p3, p0, Lorg/bouncycastle/crypto/q0;

    if-eqz p3, :cond_22

    check-cast p0, Lorg/bouncycastle/crypto/q0;

    invoke-interface {p0, p1, v2, p2}, Lorg/bouncycastle/crypto/q0;->b([BII)I

    return-object p1

    :cond_22
    invoke-interface {p0, p1, v2}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    return-object p1
.end method

.method public doFinal([BI)I
    .registers 3

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast p0, La1/u;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, La1/u;->doFinal([BI)I

    move-result p0
    :try_end_9
    .catch Lorg/bouncycastle/crypto/x; {:try_start_0 .. :try_end_9} :catch_a

    return p0

    :catch_a
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast p0, La1/u;

    iget-object p0, p0, La1/u;->a:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-KGMAC"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMacSize()I
    .registers 1

    iget p0, p0, Lorg/bouncycastle/crypto/z;->g:I

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public init(Lorg/bouncycastle/crypto/g;)V
    .registers 6

    instance-of v0, p1, Le1/s0;

    if-eqz v0, :cond_1d

    check-cast p1, Le1/s0;

    iget-object v0, p1, Le1/s0;->c:[B

    iget-object p1, p1, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    check-cast p1, Le1/o0;

    iget-object v1, p0, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast v1, La1/u;

    new-instance v2, Le1/a;

    iget p0, p0, Lorg/bouncycastle/crypto/z;->g:I

    const/4 v3, 0x0

    invoke-direct {v2, p1, p0, v0, v3}, Le1/a;-><init>(Le1/o0;I[B[B)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0, v2}, La1/u;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void

    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "KGMAC requires ParametersWithIV"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast p0, La1/u;

    invoke-virtual {p0}, La1/u;->d()V

    return-void
.end method

.method public update(B)V
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast p0, La1/u;

    iget-object p0, p0, La1/u;->k:La1/d;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public update([BII)V
    .registers 4

    iget-object p0, p0, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast p0, La1/u;

    invoke-virtual {p0, p1, p2, p3}, La1/u;->a([BII)V

    return-void
.end method
