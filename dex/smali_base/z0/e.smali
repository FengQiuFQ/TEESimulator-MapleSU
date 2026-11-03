.class public final Lz0/e;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b0;
.implements Lorg/bouncycastle/crypto/q0;
.implements Lm4/e;


# static fields
.field public static final m:[B


# instance fields
.field public final g:Ls0/d;

.field public h:I

.field public i:I

.field public j:[B

.field public k:Z

.field public l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x64

    new-array v0, v0, [B

    sput-object v0, Lz0/e;->m:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls0/d;

    const-string v1, "KMAC"

    invoke-static {v1}, Lm4/m;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Ls0/d;-><init>([BI[B)V

    iput-object v0, p0, Lz0/e;->g:Ls0/d;

    iput p1, p0, Lz0/e;->h:I

    mul-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lz0/e;->i:I

    return-void
.end method

.method public constructor <init>(Lz0/e;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls0/d;

    iget-object v1, p1, Lz0/e;->g:Ls0/d;

    invoke-direct {v0, v1}, Ls0/d;-><init>(Ls0/d;)V

    iput-object v0, p0, Lz0/e;->g:Ls0/d;

    iget v0, p1, Lz0/e;->h:I

    iput v0, p0, Lz0/e;->h:I

    iget v0, p1, Lz0/e;->i:I

    iput v0, p0, Lz0/e;->i:I

    iget-object v0, p1, Lz0/e;->j:[B

    iput-object v0, p0, Lz0/e;->j:[B

    iget-boolean v0, p1, Lz0/e;->k:Z

    iput-boolean v0, p0, Lz0/e;->k:Z

    iget-boolean p1, p1, Lz0/e;->l:Z

    iput-boolean p1, p0, Lz0/e;->l:Z

    return-void
.end method


# virtual methods
.method public final a()Lm4/e;
    .registers 2

    new-instance v0, Lz0/e;

    invoke-direct {v0, p0}, Lz0/e;-><init>(Lz0/e;)V

    return-object v0
.end method

.method public final b([BII)I
    .registers 8

    iget-boolean p2, p0, Lz0/e;->l:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lz0/e;->g:Ls0/d;

    if-eqz p2, :cond_1f

    iget-boolean p2, p0, Lz0/e;->k:Z

    if-eqz p2, :cond_17

    mul-int/lit8 p2, p3, 0x8

    int-to-long v2, p2

    invoke-static {v2, v3}, Ls0/o0;->c(J)[B

    move-result-object p2

    array-length v2, p2

    invoke-virtual {v1, p2, v0, v2}, Ls0/n;->f([BII)V

    goto :goto_1f

    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "KMAC not initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    :goto_1f
    invoke-virtual {v1, p1, v0, p3}, Ls0/g0;->b([BII)I

    move-result p1

    invoke-virtual {p0}, Lz0/e;->reset()V

    return p1
.end method

.method public final c(Lm4/e;)V
    .registers 4

    check-cast p1, Lz0/e;

    iget-object v0, p0, Lz0/e;->g:Ls0/d;

    iget-object v1, p1, Lz0/e;->g:Ls0/d;

    invoke-virtual {v0, v1}, Ls0/d;->c(Lm4/e;)V

    iget v0, p1, Lz0/e;->h:I

    iput v0, p0, Lz0/e;->h:I

    iget v0, p1, Lz0/e;->i:I

    iput v0, p0, Lz0/e;->i:I

    iget-boolean v0, p1, Lz0/e;->k:Z

    iput-boolean v0, p0, Lz0/e;->k:Z

    iget-boolean p1, p1, Lz0/e;->l:Z

    iput-boolean p1, p0, Lz0/e;->l:Z

    return-void
.end method

.method public final d(I[B)V
    .registers 8

    int-to-long v0, p1

    invoke-static {v0, v1}, Ls0/o0;->b(J)[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lz0/e;->update([BII)V

    array-length v1, p2

    mul-int/lit8 v1, v1, 0x8

    int-to-long v3, v1

    invoke-static {v3, v4}, Ls0/o0;->b(J)[B

    move-result-object v1

    invoke-static {v1, p2}, Lm4/d;->j([B[B)[B

    move-result-object p2

    array-length v1, p2

    invoke-virtual {p0, p2, v2, v1}, Lz0/e;->update([BII)V

    array-length v0, v0

    array-length p2, p2

    add-int/2addr v0, p2

    rem-int/2addr v0, p1

    sub-int p2, p1, v0

    if-lez p2, :cond_33

    if-eq p2, p1, :cond_33

    :goto_24
    const/16 p1, 0x64

    sget-object v0, Lz0/e;->m:[B

    if-le p2, p1, :cond_30

    invoke-virtual {p0, v0, v2, p1}, Lz0/e;->update([BII)V

    add-int/lit8 p2, p2, -0x64

    goto :goto_24

    :cond_30
    invoke-virtual {p0, v0, v2, p2}, Lz0/e;->update([BII)V

    :cond_33
    return-void
.end method

.method public final doFinal([BI)I
    .registers 7

    iget-boolean v0, p0, Lz0/e;->l:Z

    iget-object v1, p0, Lz0/e;->g:Ls0/d;

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lz0/e;->k:Z

    if-eqz v0, :cond_19

    iget v0, p0, Lz0/e;->i:I

    mul-int/lit8 v0, v0, 0x8

    int-to-long v2, v0

    invoke-static {v2, v3}, Ls0/o0;->c(J)[B

    move-result-object v0

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ls0/n;->f([BII)V

    goto :goto_21

    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "KMAC not initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    :goto_21
    iget v0, p0, Lz0/e;->i:I

    invoke-virtual {v1, p1, p2, v0}, Ls0/g0;->b([BII)I

    move-result p1

    invoke-virtual {p0}, Lz0/e;->reset()V

    return p1
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KMAC"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lz0/e;->g:Ls0/d;

    invoke-virtual {p0}, Ls0/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getByteLength()I
    .registers 1

    iget-object p0, p0, Lz0/e;->g:Ls0/d;

    invoke-virtual {p0}, Ls0/n;->getByteLength()I

    move-result p0

    return p0
.end method

.method public final getDigestSize()I
    .registers 1

    iget p0, p0, Lz0/e;->i:I

    return p0
.end method

.method public final getMacSize()I
    .registers 1

    iget p0, p0, Lz0/e;->i:I

    return p0
.end method

.method public final init(Lorg/bouncycastle/crypto/g;)V
    .registers 3

    check-cast p1, Le1/o0;

    iget-object p1, p1, Le1/o0;->c:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lz0/e;->j:[B

    array-length p1, p1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_16

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz0/e;->k:Z

    invoke-virtual {p0}, Lz0/e;->reset()V

    return-void

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key length must be between 0 and 2040 bits"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reset()V
    .registers 4

    iget-object v0, p0, Lz0/e;->g:Ls0/d;

    invoke-virtual {v0}, Ls0/d;->reset()V

    iget-object v0, p0, Lz0/e;->j:[B

    if-eqz v0, :cond_18

    iget v1, p0, Lz0/e;->h:I

    const/16 v2, 0x80

    if-ne v1, v2, :cond_15

    const/16 v1, 0xa8

    :goto_11
    invoke-virtual {p0, v1, v0}, Lz0/e;->d(I[B)V

    goto :goto_18

    :cond_15
    const/16 v1, 0x88

    goto :goto_11

    :cond_18
    :goto_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz0/e;->l:Z

    return-void
.end method

.method public final update(B)V
    .registers 3

    iget-boolean v0, p0, Lz0/e;->k:Z

    if-eqz v0, :cond_a

    iget-object p0, p0, Lz0/e;->g:Ls0/d;

    invoke-virtual {p0, p1}, Ls0/n;->update(B)V

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "KMAC not initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final update([BII)V
    .registers 5

    iget-boolean v0, p0, Lz0/e;->k:Z

    if-eqz v0, :cond_a

    iget-object p0, p0, Lz0/e;->g:Ls0/d;

    invoke-virtual {p0, p1, p2, p3}, Ls0/n;->f([BII)V

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "KMAC not initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
