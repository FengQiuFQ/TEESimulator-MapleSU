.class public final Ls0/i0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/w;
.implements Lm4/e;


# instance fields
.field public final g:Lorg/bouncycastle/crypto/j;

.field public final h:Ls0/l0;


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls0/l0;

    invoke-direct {v0, p1, p2}, Ls0/l0;-><init>(II)V

    iput-object v0, p0, Ls0/i0;->h:Ls0/l0;

    sget-object p1, Lorg/bouncycastle/crypto/j;->d:Lorg/bouncycastle/crypto/j;

    iput-object p1, p0, Ls0/i0;->g:Lorg/bouncycastle/crypto/j;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ls0/l0;->e(Le1/b1;)V

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    return-void
.end method

.method public constructor <init>(Ls0/i0;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls0/l0;

    iget-object v1, p1, Ls0/i0;->h:Ls0/l0;

    invoke-direct {v0, v1}, Ls0/l0;-><init>(Ls0/l0;)V

    iput-object v0, p0, Ls0/i0;->h:Ls0/l0;

    iget-object v0, p1, Ls0/i0;->g:Lorg/bouncycastle/crypto/j;

    iput-object v0, p0, Ls0/i0;->g:Lorg/bouncycastle/crypto/j;

    iget-object p1, p1, Ls0/i0;->h:Ls0/l0;

    iget p1, p1, Ls0/l0;->h:I

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    return-void
.end method


# virtual methods
.method public final a()Lm4/e;
    .registers 2

    new-instance v0, Ls0/i0;

    invoke-direct {v0, p0}, Ls0/i0;-><init>(Ls0/i0;)V

    return-object v0
.end method

.method public final c(Lm4/e;)V
    .registers 2

    check-cast p1, Ls0/i0;

    iget-object p0, p0, Ls0/i0;->h:Ls0/l0;

    iget-object p1, p1, Ls0/i0;->h:Ls0/l0;

    invoke-virtual {p0, p1}, Ls0/l0;->c(Lm4/e;)V

    return-void
.end method

.method public final doFinal([BI)I
    .registers 3

    iget-object p0, p0, Ls0/i0;->h:Ls0/l0;

    invoke-virtual {p0, p1, p2}, Ls0/l0;->d([BI)I

    move-result p0

    return p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skein-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Ls0/i0;->h:Ls0/l0;

    iget-object v1, p0, Ls0/l0;->g:Lv0/i0;

    iget v1, v1, Lv0/i0;->g:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ls0/l0;->h:I

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getByteLength()I
    .registers 1

    iget-object p0, p0, Ls0/i0;->h:Ls0/l0;

    iget-object p0, p0, Ls0/l0;->g:Lv0/i0;

    iget p0, p0, Lv0/i0;->g:I

    return p0
.end method

.method public final getDigestSize()I
    .registers 1

    iget-object p0, p0, Ls0/i0;->h:Ls0/l0;

    iget p0, p0, Ls0/l0;->h:I

    return p0
.end method

.method public final reset()V
    .registers 5

    iget-object p0, p0, Ls0/i0;->h:Ls0/l0;

    iget-object v0, p0, Ls0/l0;->j:[J

    iget-object v1, p0, Ls0/l0;->i:[J

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ls0/l0;->i(I)V

    return-void
.end method

.method public final update(B)V
    .registers 5

    iget-object p0, p0, Ls0/i0;->h:Ls0/l0;

    iget-object v0, p0, Ls0/l0;->o:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iget-object p1, p0, Ls0/l0;->n:Ls0/j0;

    if-eqz p1, :cond_12

    iget-object p0, p0, Ls0/l0;->i:[J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, p0}, Ls0/j0;->d([BII[J)V

    return-void

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Skein engine is not initialised."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final update([BII)V
    .registers 5

    iget-object p0, p0, Ls0/i0;->h:Ls0/l0;

    iget-object v0, p0, Ls0/l0;->n:Ls0/j0;

    if-eqz v0, :cond_c

    iget-object p0, p0, Ls0/l0;->i:[J

    invoke-virtual {v0, p1, p2, p3, p0}, Ls0/j0;->d([BII[J)V

    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Skein engine is not initialised."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
