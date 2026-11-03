.class public final Ls0/d;
.super Ls0/g0;


# static fields
.field public static final p:[B


# instance fields
.field public o:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x64

    new-array v0, v0, [B

    sput-object v0, Ls0/d;->p:[B

    return-void
.end method

.method public constructor <init>(Ls0/d;)V
    .registers 2

    invoke-direct {p0, p1}, Ls0/n;-><init>(Ls0/n;)V

    iget-object p1, p1, Ls0/d;->o:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ls0/d;->o:[B

    return-void
.end method

.method public constructor <init>([BI[B)V
    .registers 10

    invoke-static {p2}, Ls0/g0;->l(I)V

    sget-object v0, Lorg/bouncycastle/crypto/j;->d:Lorg/bouncycastle/crypto/j;

    invoke-direct {p0, p2, v0}, Ls0/n;-><init>(ILorg/bouncycastle/crypto/j;)V

    if-eqz p1, :cond_d

    array-length p2, p1

    if-nez p2, :cond_13

    :cond_d
    if-eqz p3, :cond_56

    array-length p2, p3

    if-nez p2, :cond_13

    goto :goto_56

    :cond_13
    iget p2, p0, Ls0/n;->j:I

    div-int/lit8 p2, p2, 0x8

    int-to-long v0, p2

    invoke-static {v0, v1}, Ls0/o0;->b(J)[B

    move-result-object p2

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x8

    if-eqz p1, :cond_32

    array-length v4, p1

    if-nez v4, :cond_26

    goto :goto_32

    :cond_26
    array-length v4, p1

    int-to-long v4, v4

    mul-long/2addr v4, v2

    invoke-static {v4, v5}, Ls0/o0;->b(J)[B

    move-result-object v4

    invoke-static {v4, p1}, Lm4/d;->j([B[B)[B

    move-result-object p1

    goto :goto_36

    :cond_32
    :goto_32
    invoke-static {v0, v1}, Ls0/o0;->b(J)[B

    move-result-object p1

    :goto_36
    if-eqz p3, :cond_48

    array-length v4, p3

    if-nez v4, :cond_3c

    goto :goto_48

    :cond_3c
    array-length v0, p3

    int-to-long v0, v0

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ls0/o0;->b(J)[B

    move-result-object v0

    invoke-static {v0, p3}, Lm4/d;->j([B[B)[B

    move-result-object p3

    goto :goto_4c

    :cond_48
    :goto_48
    invoke-static {v0, v1}, Ls0/o0;->b(J)[B

    move-result-object p3

    :goto_4c
    invoke-static {p2, p1, p3}, Lm4/d;->k([B[B[B)[B

    move-result-object p1

    iput-object p1, p0, Ls0/d;->o:[B

    invoke-virtual {p0}, Ls0/d;->n()V

    return-void

    :cond_56
    :goto_56
    const/4 p1, 0x0

    iput-object p1, p0, Ls0/d;->o:[B

    return-void
.end method


# virtual methods
.method public final a()Lm4/e;
    .registers 2

    new-instance v0, Ls0/d;

    invoke-direct {v0, p0}, Ls0/d;-><init>(Ls0/d;)V

    return-object v0
.end method

.method public final c(Lm4/e;)V
    .registers 2

    check-cast p1, Ls0/d;

    invoke-virtual {p0, p1}, Ls0/n;->h(Ls0/n;)V

    iget-object p1, p1, Ls0/d;->o:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ls0/d;->o:[B

    return-void
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CSHAKE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Ls0/n;->l:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final m([BII)I
    .registers 8

    iget-object v0, p0, Ls0/d;->o:[B

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Ls0/n;->m:Z

    if-nez v0, :cond_d

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ls0/n;->g(II)V

    :cond_d
    int-to-long v0, p3

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    invoke-virtual {p0, p2, v0, v1, p1}, Ls0/n;->k(IJ[B)V

    return p3

    :cond_15
    invoke-super {p0, p1, p2, p3}, Ls0/g0;->m([BII)I

    return p3
.end method

.method public final n()V
    .registers 5

    iget v0, p0, Ls0/n;->j:I

    div-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Ls0/d;->o:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ls0/n;->f([BII)V

    iget-object v1, p0, Ls0/d;->o:[B

    array-length v1, v1

    rem-int/2addr v1, v0

    if-eqz v1, :cond_21

    sub-int/2addr v0, v1

    :goto_12
    const/16 v1, 0x64

    sget-object v2, Ls0/d;->p:[B

    if-le v0, v1, :cond_1e

    invoke-virtual {p0, v2, v3, v1}, Ls0/n;->f([BII)V

    add-int/lit8 v0, v0, -0x64

    goto :goto_12

    :cond_1e
    invoke-virtual {p0, v2, v3, v0}, Ls0/n;->f([BII)V

    :cond_21
    return-void
.end method

.method public final reset()V
    .registers 2

    invoke-super {p0}, Ls0/n;->reset()V

    iget-object v0, p0, Ls0/d;->o:[B

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Ls0/d;->n()V

    :cond_a
    return-void
.end method
