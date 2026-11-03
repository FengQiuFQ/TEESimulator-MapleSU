.class public final Ls0/n0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/q0;
.implements Lorg/bouncycastle/crypto/l0;


# static fields
.field public static final j:[B


# instance fields
.field public final g:Ls0/d;

.field public h:I

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "TupleHash"

    invoke-static {v0}, Lm4/m;->c(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Ls0/n0;->j:[B

    return-void
.end method

.method public constructor <init>(II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls0/d;

    sget-object v1, Ls0/n0;->j:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Ls0/d;-><init>([BI[B)V

    iput-object v0, p0, Ls0/n0;->g:Ls0/d;

    add-int/lit8 p2, p2, 0x7

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Ls0/n0;->h:I

    invoke-virtual {p0}, Ls0/n0;->reset()V

    return-void
.end method

.method public constructor <init>(Ls0/n0;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls0/d;

    iget-object v1, p1, Ls0/n0;->g:Ls0/d;

    invoke-direct {v0, v1}, Ls0/d;-><init>(Ls0/d;)V

    iput-object v0, p0, Ls0/n0;->g:Ls0/d;

    iget v0, p1, Ls0/n0;->h:I

    iput v0, p0, Ls0/n0;->h:I

    iget-boolean p1, p1, Ls0/n0;->i:Z

    iput-boolean p1, p0, Ls0/n0;->i:Z

    return-void
.end method


# virtual methods
.method public final a()Lm4/e;
    .registers 2

    new-instance v0, Ls0/n0;

    invoke-direct {v0, p0}, Ls0/n0;-><init>(Ls0/n0;)V

    return-object v0
.end method

.method public final b([BII)I
    .registers 10

    iget-boolean p2, p0, Ls0/n0;->i:Z

    iget-object v0, p0, Ls0/n0;->g:Ls0/d;

    const/4 v1, 0x0

    if-eqz p2, :cond_17

    iget p2, p0, Ls0/n0;->h:I

    int-to-long v2, p2

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ls0/o0;->c(J)[B

    move-result-object p2

    array-length v2, p2

    invoke-virtual {v0, p2, v1, v2}, Ls0/n;->f([BII)V

    iput-boolean v1, p0, Ls0/n0;->i:Z

    :cond_17
    invoke-virtual {v0, p1, v1, p3}, Ls0/g0;->b([BII)I

    move-result p1

    invoke-virtual {p0}, Ls0/n0;->reset()V

    return p1
.end method

.method public final c(Lm4/e;)V
    .registers 4

    check-cast p1, Ls0/n0;

    iget-object v0, p1, Ls0/n0;->g:Ls0/d;

    iget-object v1, p0, Ls0/n0;->g:Ls0/d;

    invoke-virtual {v1, v0}, Ls0/d;->c(Lm4/e;)V

    iget v0, v1, Ls0/n;->l:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Ls0/n0;->h:I

    iget-boolean p1, p1, Ls0/n0;->i:Z

    iput-boolean p1, p0, Ls0/n0;->i:Z

    return-void
.end method

.method public final doFinal([BI)I
    .registers 9

    iget-boolean v0, p0, Ls0/n0;->i:Z

    iget-object v1, p0, Ls0/n0;->g:Ls0/d;

    if-eqz v0, :cond_17

    iget v0, p0, Ls0/n0;->h:I

    int-to-long v2, v0

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ls0/o0;->c(J)[B

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ls0/n;->f([BII)V

    iput-boolean v3, p0, Ls0/n0;->i:Z

    :cond_17
    iget v0, p0, Ls0/n0;->h:I

    invoke-virtual {v1, p1, p2, v0}, Ls0/g0;->b([BII)I

    move-result p1

    invoke-virtual {p0}, Ls0/n0;->reset()V

    return p1
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TupleHash"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Ls0/n0;->g:Ls0/d;

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

    iget-object p0, p0, Ls0/n0;->g:Ls0/d;

    invoke-virtual {p0}, Ls0/n;->getByteLength()I

    move-result p0

    return p0
.end method

.method public final getDigestSize()I
    .registers 1

    iget p0, p0, Ls0/n0;->h:I

    return p0
.end method

.method public final reset()V
    .registers 2

    iget-object v0, p0, Ls0/n0;->g:Ls0/d;

    invoke-virtual {v0}, Ls0/d;->reset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls0/n0;->i:Z

    return-void
.end method

.method public final update(B)V
    .registers 5

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Ls0/o0;->b(J)[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-static {v0, v1}, Lm4/d;->j([B[B)[B

    move-result-object p1

    iget-object p0, p0, Ls0/n0;->g:Ls0/d;

    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Ls0/n;->f([BII)V

    return-void
.end method

.method public final update([BII)V
    .registers 6

    array-length v0, p1

    if-ne v0, p3, :cond_f

    mul-int/lit8 p3, p3, 0x8

    int-to-long p2, p3

    invoke-static {p2, p3}, Ls0/o0;->b(J)[B

    move-result-object p2

    invoke-static {p2, p1}, Lm4/d;->j([B[B)[B

    move-result-object p1

    goto :goto_1f

    :cond_f
    mul-int/lit8 v0, p3, 0x8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ls0/o0;->b(J)[B

    move-result-object v0

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Lm4/d;->q([BII)[B

    move-result-object p1

    invoke-static {v0, p1}, Lm4/d;->j([B[B)[B

    move-result-object p1

    :goto_1f
    const/4 p2, 0x0

    array-length p3, p1

    iget-object p0, p0, Ls0/n0;->g:Ls0/d;

    invoke-virtual {p0, p1, p2, p3}, Ls0/n;->f([BII)V

    return-void
.end method
