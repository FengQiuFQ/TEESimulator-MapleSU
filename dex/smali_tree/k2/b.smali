.class public final Lk2/b;
.super Lk2/b0;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:[B

.field public final synthetic o:Lk2/h;


# direct methods
.method public constructor <init>(Lk2/h;II[B)V
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    iput p2, p0, Lk2/b;->l:I

    iput p3, p0, Lk2/b;->m:I

    iput-object p4, p0, Lk2/b;->n:[B

    iput-object p1, p0, Lk2/b;->o:Lk2/h;

    return-void
.end method


# virtual methods
.method public final m()I
    .registers 1

    iget p0, p0, Lk2/b;->l:I

    return p0
.end method

.method public final u(I)Lk2/p;
    .registers 13

    iget v0, p0, Lk2/b;->m:I

    new-array v1, v0, [B

    new-array v2, v0, [B

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_9
    iget v6, p0, Lk2/b;->l:I

    const/4 v7, 0x1

    if-ge v4, v6, :cond_38

    xor-int v6, v4, p1

    sub-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x1f

    move v7, v3

    :goto_14
    if-ge v7, v0, :cond_32

    aget-byte v8, v1, v7

    add-int v9, v5, v7

    iget-object v10, p0, Lk2/b;->n:[B

    aget-byte v9, v10, v9

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    aget-byte v8, v2, v7

    add-int v9, v5, v0

    add-int/2addr v9, v7

    aget-byte v9, v10, v9

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_32
    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_38
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v7, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object p0, p0, Lk2/b;->o:Lk2/h;

    invoke-virtual {p0, p1}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object p1

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v7, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lk2/h;->e(Lk2/b0;Lk2/b0;)Lk2/p;

    move-result-object p0

    return-object p0
.end method

.method public final v(I)Lk2/p;
    .registers 8

    iget v0, p0, Lk2/b;->m:I

    new-array v1, v0, [B

    new-array v2, v0, [B

    mul-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x2

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v0, :cond_1e

    add-int v4, p1, v3

    iget-object v5, p0, Lk2/b;->n:[B

    aget-byte v4, v5, v4

    aput-byte v4, v1, v3

    add-int v4, p1, v0

    add-int/2addr v4, v3

    aget-byte v4, v5, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1e
    new-instance p1, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {p1, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object p0, p0, Lk2/b;->o:Lk2/h;

    invoke-virtual {p0, p1}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object p1

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v1}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lk2/h;->e(Lk2/b0;Lk2/b0;)Lk2/p;

    move-result-object p0

    return-object p0
.end method
