.class public Ls0/g0;
.super Ls0/n;

# interfaces
.implements Lorg/bouncycastle/crypto/q0;
.implements Lorg/bouncycastle/crypto/l0;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-static {p1}, Ls0/g0;->l(I)V

    sget-object v0, Lorg/bouncycastle/crypto/j;->d:Lorg/bouncycastle/crypto/j;

    invoke-direct {p0, p1, v0}, Ls0/n;-><init>(ILorg/bouncycastle/crypto/j;)V

    return-void
.end method

.method public static l(I)V
    .registers 4

    const/16 v0, 0x80

    if-eq p0, v0, :cond_17

    const/16 v0, 0x100

    if-ne p0, v0, :cond_9

    goto :goto_17

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'bitStrength\' "

    const-string v2, " not supported for SHAKE"

    invoke-static {v1, v2, p0}, Lb/b;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_17
    return-void
.end method


# virtual methods
.method public a()Lm4/e;
    .registers 2

    new-instance v0, Ls0/g0;

    invoke-direct {v0, p0}, Ls0/n;-><init>(Ls0/n;)V

    return-object v0
.end method

.method public final b([BII)I
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ls0/g0;->m([BII)I

    move-result p1

    invoke-virtual {p0}, Ls0/n;->reset()V

    return p1
.end method

.method public c(Lm4/e;)V
    .registers 2

    check-cast p1, Ls0/g0;

    invoke-virtual {p0, p1}, Ls0/n;->h(Ls0/n;)V

    return-void
.end method

.method public final doFinal([BI)I
    .registers 4

    iget v0, p0, Ls0/n;->l:I

    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, p1, p2, v0}, Ls0/g0;->b([BII)I

    move-result p0

    return p0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SHAKE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Ls0/n;->l:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDigestSize()I
    .registers 1

    iget p0, p0, Ls0/n;->l:I

    div-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public final i()Lorg/bouncycastle/crypto/i;
    .registers 3

    new-instance v0, Lr0/a;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/v;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lr0/a;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public m([BII)I
    .registers 8

    iget-boolean v0, p0, Ls0/n;->m:Z

    if-nez v0, :cond_a

    const/16 v0, 0xf

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Ls0/n;->g(II)V

    :cond_a
    int-to-long v0, p3

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    invoke-virtual {p0, p2, v0, v1, p1}, Ls0/n;->k(IJ[B)V

    return p3
.end method
