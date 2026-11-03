.class public final Ls0/d0;
.super Ls0/n;

# interfaces
.implements Lorg/bouncycastle/crypto/l0;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-static {p1}, Ls0/d0;->l(I)V

    sget-object v0, Lorg/bouncycastle/crypto/j;->d:Lorg/bouncycastle/crypto/j;

    invoke-direct {p0, p1, v0}, Ls0/n;-><init>(ILorg/bouncycastle/crypto/j;)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-static {p1}, Ls0/d0;->l(I)V

    sget-object p2, Lorg/bouncycastle/crypto/j;->c:Lorg/bouncycastle/crypto/j;

    invoke-direct {p0, p1, p2}, Ls0/n;-><init>(ILorg/bouncycastle/crypto/j;)V

    return-void
.end method

.method public static l(I)V
    .registers 4

    const/16 v0, 0xe0

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x100

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x180

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x200

    if-ne p0, v0, :cond_11

    goto :goto_1f

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'bitLength\' "

    const-string v2, " not supported for SHA-3"

    invoke-static {v1, v2, p0}, Lb/b;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method public final a()Lm4/e;
    .registers 2

    new-instance v0, Ls0/d0;

    invoke-direct {v0, p0}, Ls0/n;-><init>(Ls0/n;)V

    return-object v0
.end method

.method public final c(Lm4/e;)V
    .registers 2

    check-cast p1, Ls0/d0;

    invoke-virtual {p0, p1}, Ls0/n;->h(Ls0/n;)V

    return-void
.end method

.method public final doFinal([BI)I
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v0}, Ls0/n;->g(II)V

    invoke-super {p0, p1, p2}, Ls0/n;->doFinal([BI)I

    move-result p0

    return p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SHA3-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Ls0/n;->l:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
