.class public final Ls0/f0;
.super Ls0/o;


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:J

.field public E:J

.field public final w:I

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>(II)V
    .registers 5

    sget-object p2, Lorg/bouncycastle/crypto/j;->d:Lorg/bouncycastle/crypto/j;

    invoke-direct {p0, p2}, Ls0/o;-><init>(Lorg/bouncycastle/crypto/j;)V

    const/16 p2, 0x200

    if-ge p1, p2, :cond_d6

    rem-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_ce

    const/16 p2, 0x180

    if-eq p1, p2, :cond_c6

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Ls0/f0;->w:I

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    mul-int/lit8 p1, p1, 0x8

    const-wide v0, -0x3053bc3da9e69353L    # -6.392239886847908E75

    iput-wide v0, p0, Ls0/o;->l:J

    const-wide v0, 0x1ec20b20216f029eL    # 1.604250256667292E-160

    iput-wide v0, p0, Ls0/o;->m:J

    const-wide v0, -0x6634a928a4cea272L

    iput-wide v0, p0, Ls0/o;->n:J

    const-wide v0, 0xea509ffab89354L

    iput-wide v0, p0, Ls0/o;->o:J

    const-wide v0, -0xb540825f7bcd88cL

    iput-wide v0, p0, Ls0/o;->p:J

    const-wide v0, 0x3ea0cd298e9bc9baL    # 5.007211971427005E-7

    iput-wide v0, p0, Ls0/o;->q:J

    const-wide v0, -0x45d983f1a11be732L    # -1.418977391716189E-28

    iput-wide v0, p0, Ls0/o;->r:J

    const-wide v0, -0x1ba974349247b24L

    iput-wide v0, p0, Ls0/o;->s:J

    const/16 p2, 0x53

    invoke-virtual {p0, p2}, Ls0/o;->update(B)V

    const/16 p2, 0x48

    invoke-virtual {p0, p2}, Ls0/o;->update(B)V

    const/16 p2, 0x41

    invoke-virtual {p0, p2}, Ls0/o;->update(B)V

    const/16 p2, 0x2d

    invoke-virtual {p0, p2}, Ls0/o;->update(B)V

    const/16 p2, 0x35

    invoke-virtual {p0, p2}, Ls0/o;->update(B)V

    const/16 p2, 0x31

    invoke-virtual {p0, p2}, Ls0/o;->update(B)V

    const/16 p2, 0x32

    invoke-virtual {p0, p2}, Ls0/o;->update(B)V

    const/16 p2, 0x2f

    invoke-virtual {p0, p2}, Ls0/o;->update(B)V

    const/16 p2, 0xa

    const/16 v0, 0x64

    if-le p1, v0, :cond_9c

    div-int/lit8 v1, p1, 0x64

    add-int/lit8 v1, v1, 0x30

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ls0/o;->update(B)V

    rem-int/2addr p1, v0

    :goto_8c
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ls0/o;->update(B)V

    rem-int/2addr p1, p2

    :cond_95
    add-int/lit8 p1, p1, 0x30

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ls0/o;->update(B)V

    goto :goto_9f

    :cond_9c
    if-le p1, p2, :cond_95

    goto :goto_8c

    :goto_9f
    invoke-virtual {p0}, Ls0/o;->i()V

    iget-wide p1, p0, Ls0/o;->l:J

    iput-wide p1, p0, Ls0/f0;->x:J

    iget-wide p1, p0, Ls0/o;->m:J

    iput-wide p1, p0, Ls0/f0;->y:J

    iget-wide p1, p0, Ls0/o;->n:J

    iput-wide p1, p0, Ls0/f0;->z:J

    iget-wide p1, p0, Ls0/o;->o:J

    iput-wide p1, p0, Ls0/f0;->A:J

    iget-wide p1, p0, Ls0/o;->p:J

    iput-wide p1, p0, Ls0/f0;->B:J

    iget-wide p1, p0, Ls0/o;->q:J

    iput-wide p1, p0, Ls0/f0;->C:J

    iget-wide p1, p0, Ls0/o;->r:J

    iput-wide p1, p0, Ls0/f0;->D:J

    iget-wide p1, p0, Ls0/o;->s:J

    iput-wide p1, p0, Ls0/f0;->E:J

    invoke-virtual {p0}, Ls0/f0;->reset()V

    return-void

    :cond_c6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bitLength cannot be 384 use SHA384 instead"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ce
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bitLength needs to be a multiple of 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bitLength cannot be >= 512"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ls0/f0;)V
    .registers 3

    invoke-direct {p0, p1}, Ls0/o;-><init>(Ls0/o;)V

    iget v0, p1, Ls0/f0;->w:I

    iput v0, p0, Ls0/f0;->w:I

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-virtual {p0, p1}, Ls0/f0;->c(Lm4/e;)V

    return-void
.end method

.method public static k(J[BII)V
    .registers 10

    if-lez p4, :cond_3b

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    const/4 v1, 0x4

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_c
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1c

    rsub-int/lit8 v3, v2, 0x3

    mul-int/lit8 v3, v3, 0x8

    add-int v4, p3, v2

    ushr-int v3, v0, v3

    int-to-byte v3, v3

    aput-byte v3, p2, v4

    goto :goto_c

    :cond_1c
    if-le p4, v1, :cond_3b

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    long-to-int p0, p0

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_2b
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_3b

    rsub-int/lit8 p4, p1, 0x3

    mul-int/lit8 p4, p4, 0x8

    add-int v0, p3, p1

    ushr-int p4, p0, p4

    int-to-byte p4, p4

    aput-byte p4, p2, v0

    goto :goto_2b

    :cond_3b
    return-void
.end method


# virtual methods
.method public final a()Lm4/e;
    .registers 2

    new-instance v0, Ls0/f0;

    invoke-direct {v0, p0}, Ls0/f0;-><init>(Ls0/f0;)V

    return-object v0
.end method

.method public final c(Lm4/e;)V
    .registers 4

    check-cast p1, Ls0/f0;

    iget v0, p0, Ls0/f0;->w:I

    iget v1, p1, Ls0/f0;->w:I

    if-ne v0, v1, :cond_2c

    invoke-virtual {p0, p1}, Ls0/o;->h(Ls0/o;)V

    iget-wide v0, p1, Ls0/f0;->x:J

    iput-wide v0, p0, Ls0/f0;->x:J

    iget-wide v0, p1, Ls0/f0;->y:J

    iput-wide v0, p0, Ls0/f0;->y:J

    iget-wide v0, p1, Ls0/f0;->z:J

    iput-wide v0, p0, Ls0/f0;->z:J

    iget-wide v0, p1, Ls0/f0;->A:J

    iput-wide v0, p0, Ls0/f0;->A:J

    iget-wide v0, p1, Ls0/f0;->B:J

    iput-wide v0, p0, Ls0/f0;->B:J

    iget-wide v0, p1, Ls0/f0;->C:J

    iput-wide v0, p0, Ls0/f0;->C:J

    iget-wide v0, p1, Ls0/f0;->D:J

    iput-wide v0, p0, Ls0/f0;->D:J

    iget-wide v0, p1, Ls0/f0;->E:J

    iput-wide v0, p0, Ls0/f0;->E:J

    return-void

    :cond_2c
    new-instance p0, Lm4/f;

    const-string p1, "digestLength inappropriate in other"

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final doFinal([BI)I
    .registers 8

    invoke-virtual {p0}, Ls0/o;->i()V

    iget-wide v0, p0, Ls0/o;->l:J

    iget v2, p0, Ls0/f0;->w:I

    invoke-static {v0, v1, p1, p2, v2}, Ls0/f0;->k(J[BII)V

    iget-wide v0, p0, Ls0/o;->m:J

    add-int/lit8 v3, p2, 0x8

    add-int/lit8 v4, v2, -0x8

    invoke-static {v0, v1, p1, v3, v4}, Ls0/f0;->k(J[BII)V

    iget-wide v0, p0, Ls0/o;->n:J

    add-int/lit8 v3, p2, 0x10

    add-int/lit8 v4, v2, -0x10

    invoke-static {v0, v1, p1, v3, v4}, Ls0/f0;->k(J[BII)V

    iget-wide v0, p0, Ls0/o;->o:J

    add-int/lit8 v3, p2, 0x18

    add-int/lit8 v4, v2, -0x18

    invoke-static {v0, v1, p1, v3, v4}, Ls0/f0;->k(J[BII)V

    iget-wide v0, p0, Ls0/o;->p:J

    add-int/lit8 v3, p2, 0x20

    add-int/lit8 v4, v2, -0x20

    invoke-static {v0, v1, p1, v3, v4}, Ls0/f0;->k(J[BII)V

    iget-wide v0, p0, Ls0/o;->q:J

    add-int/lit8 v3, p2, 0x28

    add-int/lit8 v4, v2, -0x28

    invoke-static {v0, v1, p1, v3, v4}, Ls0/f0;->k(J[BII)V

    iget-wide v0, p0, Ls0/o;->r:J

    add-int/lit8 v3, p2, 0x30

    add-int/lit8 v4, v2, -0x30

    invoke-static {v0, v1, p1, v3, v4}, Ls0/f0;->k(J[BII)V

    iget-wide v0, p0, Ls0/o;->s:J

    add-int/lit8 p2, p2, 0x38

    add-int/lit8 v3, v2, -0x38

    invoke-static {v0, v1, p1, p2, v3}, Ls0/f0;->k(J[BII)V

    invoke-virtual {p0}, Ls0/f0;->reset()V

    return v2
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SHA-512/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Ls0/f0;->w:I

    mul-int/lit8 p0, p0, 0x8

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDigestSize()I
    .registers 1

    iget p0, p0, Ls0/f0;->w:I

    return p0
.end method

.method public final reset()V
    .registers 3

    invoke-super {p0}, Ls0/o;->reset()V

    iget-wide v0, p0, Ls0/f0;->x:J

    iput-wide v0, p0, Ls0/o;->l:J

    iget-wide v0, p0, Ls0/f0;->y:J

    iput-wide v0, p0, Ls0/o;->m:J

    iget-wide v0, p0, Ls0/f0;->z:J

    iput-wide v0, p0, Ls0/o;->n:J

    iget-wide v0, p0, Ls0/f0;->A:J

    iput-wide v0, p0, Ls0/o;->o:J

    iget-wide v0, p0, Ls0/f0;->B:J

    iput-wide v0, p0, Ls0/o;->p:J

    iget-wide v0, p0, Ls0/f0;->C:J

    iput-wide v0, p0, Ls0/o;->q:J

    iget-wide v0, p0, Ls0/f0;->D:J

    iput-wide v0, p0, Ls0/o;->r:J

    iget-wide v0, p0, Ls0/f0;->E:J

    iput-wide v0, p0, Ls0/o;->s:J

    return-void
.end method
