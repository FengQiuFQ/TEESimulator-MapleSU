.class public final Lg3/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/v;


# instance fields
.field public final g:Lorg/bouncycastle/crypto/l0;

.field public final h:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/l0;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg3/b;->g:Lorg/bouncycastle/crypto/l0;

    iput p2, p0, Lg3/b;->h:I

    return-void
.end method


# virtual methods
.method public final doFinal([BI)I
    .registers 6

    iget-object v0, p0, Lg3/b;->g:Lorg/bouncycastle/crypto/l0;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    iget p0, p0, Lg3/b;->h:I

    invoke-static {v1, v2, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg3/b;->g:Lorg/bouncycastle/crypto/l0;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/v;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lg3/b;->h:I

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDigestSize()I
    .registers 1

    iget p0, p0, Lg3/b;->h:I

    return p0
.end method

.method public final reset()V
    .registers 1

    iget-object p0, p0, Lg3/b;->g:Lorg/bouncycastle/crypto/l0;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/v;->reset()V

    return-void
.end method

.method public final update(B)V
    .registers 2

    iget-object p0, p0, Lg3/b;->g:Lorg/bouncycastle/crypto/l0;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/v;->update(B)V

    return-void
.end method

.method public final update([BII)V
    .registers 4

    iget-object p0, p0, Lg3/b;->g:Lorg/bouncycastle/crypto/l0;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/v;->update([BII)V

    return-void
.end method
