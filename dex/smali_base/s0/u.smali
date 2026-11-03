.class public final Ls0/u;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/q0;
.implements Lorg/bouncycastle/crypto/v;


# static fields
.field public static final r:[B


# instance fields
.field public final g:Ls0/d;

.field public final h:Ls0/d;

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:[B

.field public final m:[B

.field public n:Z

.field public o:I

.field public p:I

.field public final q:Lorg/bouncycastle/crypto/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ParallelHash"

    invoke-static {v0}, Lm4/m;->c(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Ls0/u;->r:[B

    return-void
.end method

.method public constructor <init>(II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls0/d;

    sget-object v1, Ls0/u;->r:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Ls0/d;-><init>([BI[B)V

    iput-object v0, p0, Ls0/u;->g:Ls0/d;

    new-instance v0, Ls0/d;

    const/4 v1, 0x0

    new-array v2, v1, [B

    new-array v1, v1, [B

    invoke-direct {v0, v2, p1, v1}, Ls0/d;-><init>([BI[B)V

    iput-object v0, p0, Ls0/u;->h:Ls0/d;

    iput p1, p0, Ls0/u;->i:I

    const/16 v0, 0x80

    iput v0, p0, Ls0/u;->k:I

    add-int/lit8 p2, p2, 0x7

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Ls0/u;->j:I

    new-array p2, v0, [B

    iput-object p2, p0, Ls0/u;->l:[B

    mul-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Ls0/u;->m:[B

    sget-object p1, Lorg/bouncycastle/crypto/j;->d:Lorg/bouncycastle/crypto/j;

    iput-object p1, p0, Ls0/u;->q:Lorg/bouncycastle/crypto/j;

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-virtual {p0}, Ls0/u;->reset()V

    return-void
.end method

.method public constructor <init>(Ls0/u;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls0/d;

    iget-object v1, p1, Ls0/u;->g:Ls0/d;

    invoke-direct {v0, v1}, Ls0/d;-><init>(Ls0/d;)V

    iput-object v0, p0, Ls0/u;->g:Ls0/d;

    new-instance v0, Ls0/d;

    iget-object v1, p1, Ls0/u;->h:Ls0/d;

    invoke-direct {v0, v1}, Ls0/d;-><init>(Ls0/d;)V

    iput-object v0, p0, Ls0/u;->h:Ls0/d;

    iget v0, p1, Ls0/u;->i:I

    iput v0, p0, Ls0/u;->i:I

    iget v0, p1, Ls0/u;->k:I

    iput v0, p0, Ls0/u;->k:I

    iget v0, p1, Ls0/u;->j:I

    iput v0, p0, Ls0/u;->j:I

    iget-object v0, p1, Ls0/u;->l:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iput-object v0, p0, Ls0/u;->l:[B

    iget-object v0, p1, Ls0/u;->m:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iput-object v0, p0, Ls0/u;->m:[B

    iget-object v0, p1, Ls0/u;->q:Lorg/bouncycastle/crypto/j;

    iput-object v0, p0, Ls0/u;->q:Lorg/bouncycastle/crypto/j;

    iget-boolean v0, p1, Ls0/u;->n:Z

    iput-boolean v0, p0, Ls0/u;->n:Z

    iget v0, p1, Ls0/u;->o:I

    iput v0, p0, Ls0/u;->o:I

    iget p1, p1, Ls0/u;->p:I

    iput p1, p0, Ls0/u;->p:I

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 7

    iget v0, p0, Ls0/u;->p:I

    iget-object v1, p0, Ls0/u;->g:Ls0/d;

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    iget-object v3, p0, Ls0/u;->h:Ls0/d;

    iget-object v4, p0, Ls0/u;->l:[B

    invoke-virtual {v3, v4, v2, v0}, Ls0/n;->f([BII)V

    iget-object v0, p0, Ls0/u;->m:[B

    array-length v4, v0

    invoke-virtual {v3, v0, v2, v4}, Ls0/g0;->b([BII)I

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ls0/n;->f([BII)V

    iget v0, p0, Ls0/u;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ls0/u;->o:I

    iput v2, p0, Ls0/u;->p:I

    :cond_20
    iget v0, p0, Ls0/u;->o:I

    int-to-long v3, v0

    invoke-static {v3, v4}, Ls0/o0;->c(J)[B

    move-result-object v0

    mul-int/lit8 p1, p1, 0x8

    int-to-long v3, p1

    invoke-static {v3, v4}, Ls0/o0;->c(J)[B

    move-result-object p1

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ls0/n;->f([BII)V

    array-length v0, p1

    invoke-virtual {v1, p1, v2, v0}, Ls0/n;->f([BII)V

    iput-boolean v2, p0, Ls0/u;->n:Z

    return-void
.end method

.method public final b([BII)I
    .registers 5

    iget-boolean p2, p0, Ls0/u;->n:Z

    if-eqz p2, :cond_9

    iget p2, p0, Ls0/u;->j:I

    invoke-virtual {p0, p2}, Ls0/u;->a(I)V

    :cond_9
    iget-object p2, p0, Ls0/u;->g:Ls0/d;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3}, Ls0/g0;->b([BII)I

    move-result p1

    invoke-virtual {p0}, Ls0/u;->reset()V

    return p1
.end method

.method public final doFinal([BI)I
    .registers 5

    iget-boolean v0, p0, Ls0/u;->n:Z

    iget v1, p0, Ls0/u;->j:I

    if-eqz v0, :cond_9

    invoke-virtual {p0, v1}, Ls0/u;->a(I)V

    :cond_9
    iget-object v0, p0, Ls0/u;->g:Ls0/d;

    invoke-virtual {v0, p1, p2, v1}, Ls0/g0;->b([BII)I

    move-result p1

    invoke-virtual {p0}, Ls0/u;->reset()V

    return p1
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ParallelHash"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Ls0/u;->g:Ls0/d;

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

    iget-object p0, p0, Ls0/u;->g:Ls0/d;

    invoke-virtual {p0}, Ls0/n;->getByteLength()I

    move-result p0

    return p0
.end method

.method public final getDigestSize()I
    .registers 1

    iget p0, p0, Ls0/u;->j:I

    return p0
.end method

.method public final reset()V
    .registers 5

    iget-object v0, p0, Ls0/u;->g:Ls0/d;

    invoke-virtual {v0}, Ls0/d;->reset()V

    iget-object v1, p0, Ls0/u;->l:[B

    invoke-static {v1}, Lm4/d;->d([B)V

    iget v1, p0, Ls0/u;->k:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ls0/o0;->b(J)[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ls0/n;->f([BII)V

    iput v3, p0, Ls0/u;->o:I

    iput v3, p0, Ls0/u;->p:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls0/u;->n:Z

    return-void
.end method

.method public final update(B)V
    .registers 5

    iget v0, p0, Ls0/u;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ls0/u;->p:I

    iget-object v2, p0, Ls0/u;->l:[B

    aput-byte p1, v2, v0

    array-length p1, v2

    if-ne v1, p1, :cond_27

    iget-object p1, p0, Ls0/u;->h:Ls0/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0, v1}, Ls0/n;->f([BII)V

    iget-object v1, p0, Ls0/u;->m:[B

    array-length v2, v1

    invoke-virtual {p1, v1, v0, v2}, Ls0/g0;->b([BII)I

    iget-object p1, p0, Ls0/u;->g:Ls0/d;

    array-length v2, v1

    invoke-virtual {p1, v1, v0, v2}, Ls0/n;->f([BII)V

    iget p1, p0, Ls0/u;->o:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ls0/u;->o:I

    iput v0, p0, Ls0/u;->p:I

    :cond_27
    return-void
.end method

.method public final update([BII)V
    .registers 12

    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget v1, p0, Ls0/u;->p:I

    iget-object v2, p0, Ls0/u;->g:Ls0/d;

    iget-object v3, p0, Ls0/u;->m:[B

    iget-object v4, p0, Ls0/u;->h:Ls0/d;

    if-eqz v1, :cond_3f

    move v1, v0

    :goto_10
    iget-object v5, p0, Ls0/u;->l:[B

    if-ge v1, p3, :cond_26

    iget v6, p0, Ls0/u;->p:I

    array-length v7, v5

    if-eq v6, v7, :cond_26

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ls0/u;->p:I

    add-int/lit8 v7, v1, 0x1

    add-int/2addr v1, p2

    aget-byte v1, p1, v1

    aput-byte v1, v5, v6

    move v1, v7

    goto :goto_10

    :cond_26
    iget v6, p0, Ls0/u;->p:I

    array-length v7, v5

    if-ne v6, v7, :cond_40

    invoke-virtual {v4, v5, v0, v6}, Ls0/n;->f([BII)V

    array-length v5, v3

    invoke-virtual {v4, v3, v0, v5}, Ls0/g0;->b([BII)I

    array-length v5, v3

    invoke-virtual {v2, v3, v0, v5}, Ls0/n;->f([BII)V

    iget v5, p0, Ls0/u;->o:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ls0/u;->o:I

    iput v0, p0, Ls0/u;->p:I

    goto :goto_40

    :cond_3f
    move v1, v0

    :cond_40
    :goto_40
    if-ge v1, p3, :cond_5d

    :goto_42
    sub-int v5, p3, v1

    iget v6, p0, Ls0/u;->k:I

    if-lt v5, v6, :cond_5d

    add-int v5, p2, v1

    invoke-virtual {v4, p1, v5, v6}, Ls0/n;->f([BII)V

    array-length v5, v3

    invoke-virtual {v4, v3, v0, v5}, Ls0/g0;->b([BII)I

    array-length v5, v3

    invoke-virtual {v2, v3, v0, v5}, Ls0/n;->f([BII)V

    iget v5, p0, Ls0/u;->o:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ls0/u;->o:I

    add-int/2addr v1, v6

    goto :goto_42

    :cond_5d
    :goto_5d
    if-ge v1, p3, :cond_69

    add-int/lit8 v0, v1, 0x1

    add-int/2addr v1, p2

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Ls0/u;->update(B)V

    move v1, v0

    goto :goto_5d

    :cond_69
    return-void
.end method
