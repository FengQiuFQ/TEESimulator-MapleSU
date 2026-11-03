.class public Lorg/bouncycastle/crypto/e;
.super Ljava/lang/Object;


# instance fields
.field public final a:[B

.field public b:I

.field public c:Z

.field public final d:Lorg/bouncycastle/crypto/d;

.field public final e:Lorg/bouncycastle/crypto/s;

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/d;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/e;->d:Lorg/bouncycastle/crypto/d;

    instance-of v0, p1, Lorg/bouncycastle/crypto/s;

    if-eqz v0, :cond_17

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/s;

    iput-object v0, p0, Lorg/bouncycastle/crypto/e;->e:Lorg/bouncycastle/crypto/s;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/e;->a:[B

    goto :goto_22

    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/e;->e:Lorg/bouncycastle/crypto/s;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/e;->a:[B

    :goto_22
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/e;->b:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-lez v2, :cond_3d

    const-string v4, "PGP"

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3d

    move v4, v3

    goto :goto_3e

    :cond_3d
    move v4, v0

    :goto_3e
    iput-boolean v4, p0, Lorg/bouncycastle/crypto/e;->g:Z

    if-nez v4, :cond_55

    instance-of p1, p1, Lorg/bouncycastle/crypto/o0;

    if-eqz p1, :cond_47

    goto :goto_55

    :cond_47
    if-lez v2, :cond_52

    const-string p1, "OpenPGP"

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_52

    move v0, v3

    :cond_52
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/e;->f:Z

    return-void

    :cond_55
    :goto_55
    iput-boolean v3, p0, Lorg/bouncycastle/crypto/e;->f:Z

    return-void
.end method


# virtual methods
.method public a([BI)I
    .registers 12

    iget-object v0, p0, Lorg/bouncycastle/crypto/e;->a:[B

    :try_start_2
    iget v1, p0, Lorg/bouncycastle/crypto/e;->b:I

    add-int v2, p2, v1

    array-length v3, p1
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_25

    if-gt v2, v3, :cond_56

    const/4 v2, 0x0

    if-eqz v1, :cond_52

    iget-object v3, p0, Lorg/bouncycastle/crypto/e;->e:Lorg/bouncycastle/crypto/s;

    if-eqz v3, :cond_28

    :try_start_10
    invoke-interface {v3}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v4

    div-int v6, v1, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/e;->a:[B

    const/4 v5, 0x0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Lorg/bouncycastle/crypto/s;->a([BII[BI)I

    move-result p1

    invoke-interface {v3}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p2

    mul-int/2addr v6, p2

    goto :goto_2c

    :catchall_25
    move-exception v0

    move-object p1, v0

    goto :goto_5e

    :cond_28
    move-object v7, p1

    move v8, p2

    move p1, v2

    move v6, p1

    :goto_2c
    iget p2, p0, Lorg/bouncycastle/crypto/e;->b:I

    if-eq p2, v6, :cond_51

    iget-boolean p2, p0, Lorg/bouncycastle/crypto/e;->f:Z

    if-eqz p2, :cond_49

    iget-object p2, p0, Lorg/bouncycastle/crypto/e;->d:Lorg/bouncycastle/crypto/d;

    invoke-interface {p2, v6, v6, v0, v0}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    add-int p2, v8, p1

    iget v1, p0, Lorg/bouncycastle/crypto/e;->b:I

    sub-int/2addr v1, v6

    invoke-static {v0, v6, v7, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Lorg/bouncycastle/crypto/e;->b:I

    sub-int/2addr p2, v6

    add-int/2addr p2, p1

    iput v2, p0, Lorg/bouncycastle/crypto/e;->b:I

    move v2, p2

    goto :goto_52

    :cond_49
    new-instance p1, Lorg/bouncycastle/crypto/q;

    const-string p2, "data not block size aligned"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_51
    .catchall {:try_start_10 .. :try_end_51} :catchall_25

    :cond_51
    move v2, p1

    :cond_52
    :goto_52
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/e;->j()V

    return v2

    :cond_56
    :try_start_56
    new-instance p1, Lorg/bouncycastle/crypto/d0;

    const-string p2, "output buffer too short for doFinal()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_25

    :goto_5e
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/e;->j()V

    throw p1
.end method

.method public b()I
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/crypto/e;->d:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p0

    return p0
.end method

.method public c(I)I
    .registers 3

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/e;->g:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/e;->c:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lorg/bouncycastle/crypto/e;->b:I

    add-int/2addr p1, v0

    iget-object p0, p0, Lorg/bouncycastle/crypto/e;->d:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    add-int/2addr p0, p1

    return p0

    :cond_15
    iget p0, p0, Lorg/bouncycastle/crypto/e;->b:I

    add-int/2addr p1, p0

    return p1
.end method

.method public d()Lorg/bouncycastle/crypto/d;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/crypto/e;->d:Lorg/bouncycastle/crypto/d;

    return-object p0
.end method

.method public e(I)I
    .registers 4

    iget v0, p0, Lorg/bouncycastle/crypto/e;->b:I

    add-int/2addr p1, v0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/e;->g:Z

    iget-object v1, p0, Lorg/bouncycastle/crypto/e;->a:[B

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/e;->c:Z

    if-eqz v0, :cond_1a

    array-length v0, v1

    rem-int v0, p1, v0

    iget-object p0, p0, Lorg/bouncycastle/crypto/e;->d:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    goto :goto_1d

    :cond_1a
    array-length p0, v1

    rem-int v0, p1, p0

    :goto_1d
    sub-int/2addr p1, v0

    return p1
.end method

.method public f(ZLorg/bouncycastle/crypto/g;)V
    .registers 3

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/e;->c:Z

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/e;->j()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/e;->d:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void
.end method

.method public final g(I[B)I
    .registers 10

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/e;->b:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/e;->a:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/e;->e:Lorg/bouncycastle/crypto/s;

    if-eqz v1, :cond_18

    array-length p0, v2

    invoke-interface {v1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    div-int v4, p0, v0

    const/4 v3, 0x0

    move v6, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/s;->a([BII[BI)I

    move-result p0

    return p0

    :cond_18
    move v6, p1

    move-object v5, p2

    iget-object p0, p0, Lorg/bouncycastle/crypto/e;->d:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0, v0, v6, v2, v5}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move-result p0

    return p0
.end method

.method public h(B[BI)I
    .registers 7

    iget v0, p0, Lorg/bouncycastle/crypto/e;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/e;->b:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/e;->a:[B

    aput-byte p1, v2, v0

    array-length p1, v2

    if-ne v1, p1, :cond_12

    invoke-virtual {p0, p3, p2}, Lorg/bouncycastle/crypto/e;->g(I[B)I

    move-result p0

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public i([BII[BI)I
    .registers 14

    if-ltz p3, :cond_87

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/e;->b()I

    move-result v6

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/e;->e(I)I

    move-result v0

    if-lez v0, :cond_19

    add-int/2addr v0, p5

    array-length v1, p4

    if-gt v0, v1, :cond_11

    goto :goto_19

    :cond_11
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    :goto_19
    iget-object v7, p0, Lorg/bouncycastle/crypto/e;->a:[B

    array-length v0, v7

    iget v1, p0, Lorg/bouncycastle/crypto/e;->b:I

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-le p3, v0, :cond_71

    if-eqz v1, :cond_29

    invoke-static {p1, p2, v7, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    :cond_29
    if-ne p1, p4, :cond_31

    new-array p1, p3, [B

    invoke-static {p4, p2, p1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p2, v2

    :cond_31
    move-object v1, p1

    iget p1, p0, Lorg/bouncycastle/crypto/e;->b:I

    if-eqz p1, :cond_3a

    invoke-virtual {p0, p5, p4}, Lorg/bouncycastle/crypto/e;->g(I[B)I

    move-result v2

    :cond_3a
    move p1, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/e;->e:Lorg/bouncycastle/crypto/s;

    if-eqz v0, :cond_60

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v2

    div-int v2, p3, v2

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v3

    div-int/2addr v3, v6

    mul-int/2addr v3, v2

    if-lez v3, :cond_5c

    add-int v5, p5, p1

    move v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/s;->a([BII[BI)I

    move-result p2

    add-int/2addr p1, p2

    mul-int/2addr v3, v6

    sub-int/2addr p3, v3

    add-int p2, v2, v3

    :goto_5a
    move v2, p1

    goto :goto_5e

    :cond_5c
    move v2, p2

    goto :goto_5a

    :cond_5e
    :goto_5e
    move-object p1, v1

    goto :goto_71

    :cond_60
    move v2, p2

    move v2, p1

    :goto_62
    array-length p1, v7

    if-le p3, p1, :cond_5e

    iget-object p1, p0, Lorg/bouncycastle/crypto/e;->d:Lorg/bouncycastle/crypto/d;

    add-int v0, p5, v2

    invoke-interface {p1, p2, v0, v1, p4}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move-result p1

    add-int/2addr v2, p1

    sub-int/2addr p3, v6

    add-int/2addr p2, v6

    goto :goto_62

    :cond_71
    :goto_71
    iget v0, p0, Lorg/bouncycastle/crypto/e;->b:I

    invoke-static {p1, p2, v7, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/e;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/e;->b:I

    array-length p2, v7

    if-ne p1, p2, :cond_86

    add-int p1, p5, v2

    invoke-virtual {p0, p1, p4}, Lorg/bouncycastle/crypto/e;->g(I[B)I

    move-result p0

    add-int/2addr p0, v2

    return p0

    :cond_86
    return v2

    :cond_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t have a negative input length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public j()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/e;->a:[B

    array-length v3, v2

    if-ge v1, v3, :cond_c

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    iput v0, p0, Lorg/bouncycastle/crypto/e;->b:I

    iget-object p0, p0, Lorg/bouncycastle/crypto/e;->d:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->reset()V

    return-void
.end method
