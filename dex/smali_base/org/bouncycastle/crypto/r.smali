.class public Lorg/bouncycastle/crypto/r;
.super Lorg/bouncycastle/crypto/e;


# instance fields
.field public h:[B

.field public i:I

.field public j:Z

.field public k:Lorg/bouncycastle/crypto/d;

.field public final l:Lorg/bouncycastle/crypto/s;

.field public final m:Z

.field public final n:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/d;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    instance-of v0, p1, Lorg/bouncycastle/crypto/s;

    if-eqz v0, :cond_17

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/s;

    iput-object v0, p0, Lorg/bouncycastle/crypto/r;->l:Lorg/bouncycastle/crypto/s;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/r;->h:[B

    goto :goto_22

    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/r;->l:Lorg/bouncycastle/crypto/s;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/r;->h:[B

    :goto_22
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/r;->i:I

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
    iput-boolean v4, p0, Lorg/bouncycastle/crypto/r;->n:Z

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
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/r;->m:Z

    return-void

    :cond_55
    :goto_55
    iput-boolean v3, p0, Lorg/bouncycastle/crypto/r;->m:Z

    return-void
.end method


# virtual methods
.method public a([BI)I
    .registers 11

    :try_start_0
    iget v0, p0, Lorg/bouncycastle/crypto/r;->i:I

    add-int v1, p2, v0

    array-length v2, p1
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_23

    if-gt v1, v2, :cond_58

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    iget-object v2, p0, Lorg/bouncycastle/crypto/r;->l:Lorg/bouncycastle/crypto/s;

    if-eqz v2, :cond_26

    :try_start_e
    invoke-interface {v2}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v3

    div-int v5, v0, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/r;->h:[B

    const/4 v4, 0x0

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/crypto/s;->a([BII[BI)I

    move-result p1

    invoke-interface {v2}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p2

    mul-int/2addr v5, p2

    goto :goto_2a

    :catchall_23
    move-exception v0

    move-object p1, v0

    goto :goto_60

    :cond_26
    move-object v6, p1

    move v7, p2

    move p1, v1

    move v5, p1

    :goto_2a
    iget p2, p0, Lorg/bouncycastle/crypto/r;->i:I

    if-eq p2, v5, :cond_53

    iget-boolean p2, p0, Lorg/bouncycastle/crypto/r;->m:Z

    if-eqz p2, :cond_4b

    iget-object p2, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    iget-object v0, p0, Lorg/bouncycastle/crypto/r;->h:[B

    invoke-interface {p2, v5, v5, v0, v0}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    iget-object p2, p0, Lorg/bouncycastle/crypto/r;->h:[B

    add-int v0, v7, p1

    iget v2, p0, Lorg/bouncycastle/crypto/r;->i:I

    sub-int/2addr v2, v5

    invoke-static {p2, v5, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Lorg/bouncycastle/crypto/r;->i:I

    sub-int/2addr p2, v5

    add-int/2addr p2, p1

    iput v1, p0, Lorg/bouncycastle/crypto/r;->i:I

    move v1, p2

    goto :goto_54

    :cond_4b
    new-instance p1, Lorg/bouncycastle/crypto/q;

    const-string p2, "data not block size aligned"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_53
    .catchall {:try_start_e .. :try_end_53} :catchall_23

    :cond_53
    move v1, p1

    :cond_54
    :goto_54
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/r;->j()V

    return v1

    :cond_58
    :try_start_58
    new-instance p1, Lorg/bouncycastle/crypto/d0;

    const-string p2, "output buffer too short for doFinal()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_23

    :goto_60
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/r;->j()V

    throw p1
.end method

.method public final b()I
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p0

    return p0
.end method

.method public c(I)I
    .registers 3

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/r;->n:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/r;->j:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lorg/bouncycastle/crypto/r;->i:I

    add-int/2addr p1, v0

    iget-object p0, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    add-int/2addr p0, p1

    return p0

    :cond_15
    iget p0, p0, Lorg/bouncycastle/crypto/r;->i:I

    add-int/2addr p1, p0

    return p1
.end method

.method public final d()Lorg/bouncycastle/crypto/d;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    return-object p0
.end method

.method public e(I)I
    .registers 3

    iget v0, p0, Lorg/bouncycastle/crypto/r;->i:I

    add-int/2addr p1, v0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/r;->n:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/r;->j:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/bouncycastle/crypto/r;->h:[B

    array-length v0, v0

    rem-int v0, p1, v0

    iget-object p0, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    goto :goto_24

    :cond_1a
    iget-object p0, p0, Lorg/bouncycastle/crypto/r;->h:[B

    array-length p0, p0

    :goto_1d
    rem-int v0, p1, p0

    goto :goto_24

    :cond_20
    iget-object p0, p0, Lorg/bouncycastle/crypto/r;->h:[B

    array-length p0, p0

    goto :goto_1d

    :goto_24
    sub-int/2addr p1, v0

    return p1
.end method

.method public f(ZLorg/bouncycastle/crypto/g;)V
    .registers 3

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/r;->j:Z

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/r;->j()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void
.end method

.method public h(B[BI)I
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/r;->h:[B

    iget v1, p0, Lorg/bouncycastle/crypto/r;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/r;->i:I

    aput-byte p1, v0, v1

    array-length p1, v0

    if-ne v2, p1, :cond_12

    invoke-virtual {p0, p3, p2}, Lorg/bouncycastle/crypto/r;->k(I[B)I

    move-result p0

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public i([BII[BI)I
    .registers 17

    move/from16 v7, p5

    if-ltz p3, :cond_93

    iget-object v4, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v8

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/r;->e(I)I

    move-result v4

    if-lez v4, :cond_1d

    add-int/2addr v4, v7

    array-length v6, p4

    if-gt v4, v6, :cond_15

    goto :goto_1d

    :cond_15
    new-instance v0, Lorg/bouncycastle/crypto/d0;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    :goto_1d
    iget-object v4, p0, Lorg/bouncycastle/crypto/r;->h:[B

    array-length v6, v4

    iget v9, p0, Lorg/bouncycastle/crypto/r;->i:I

    sub-int/2addr v6, v9

    const/4 v10, 0x0

    if-le p3, v6, :cond_76

    if-eqz v9, :cond_31

    invoke-static {p1, p2, v4, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v2, p2, v6

    sub-int v3, p3, v6

    move v9, v3

    goto :goto_33

    :cond_31
    move v2, p2

    move v9, p3

    :goto_33
    if-ne p1, p4, :cond_3d

    new-array v1, v9, [B

    invoke-static {p4, v2, v1, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v1

    move v3, v10

    goto :goto_3f

    :cond_3d
    move v3, v2

    move-object v2, p1

    :goto_3f
    iget v1, p0, Lorg/bouncycastle/crypto/r;->i:I

    if-eqz v1, :cond_47

    invoke-virtual {p0, v7, p4}, Lorg/bouncycastle/crypto/r;->k(I[B)I

    move-result v10

    :cond_47
    iget-object v1, p0, Lorg/bouncycastle/crypto/r;->l:Lorg/bouncycastle/crypto/s;

    if-eqz v1, :cond_65

    invoke-interface {v1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v4

    div-int v4, v9, v4

    invoke-interface {v1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v6

    div-int/2addr v6, v8

    mul-int/2addr v4, v6

    if-lez v4, :cond_79

    add-int v6, v7, v10

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/s;->a([BII[BI)I

    move-result v1

    add-int/2addr v10, v1

    mul-int/2addr v4, v8

    sub-int/2addr v9, v4

    add-int/2addr v3, v4

    goto :goto_79

    :cond_65
    :goto_65
    iget-object v1, p0, Lorg/bouncycastle/crypto/r;->h:[B

    array-length v1, v1

    if-le v9, v1, :cond_79

    iget-object v1, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    add-int v4, v7, v10

    invoke-interface {v1, v3, v4, v2, p4}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move-result v1

    add-int/2addr v10, v1

    sub-int/2addr v9, v8

    add-int/2addr v3, v8

    goto :goto_65

    :cond_76
    move-object v2, p1

    move v3, p2

    move v9, p3

    :cond_79
    :goto_79
    iget-object v1, p0, Lorg/bouncycastle/crypto/r;->h:[B

    iget v4, p0, Lorg/bouncycastle/crypto/r;->i:I

    invoke-static {v2, v3, v1, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/crypto/r;->i:I

    add-int/2addr v1, v9

    iput v1, p0, Lorg/bouncycastle/crypto/r;->i:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/r;->h:[B

    array-length v2, v2

    if-ne v1, v2, :cond_92

    add-int v1, v7, v10

    invoke-virtual {p0, v1, p4}, Lorg/bouncycastle/crypto/r;->k(I[B)I

    move-result v0

    add-int/2addr v0, v10

    return v0

    :cond_92
    return v10

    :cond_93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/r;->h:[B

    array-length v3, v2

    if-ge v1, v3, :cond_c

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    iput v0, p0, Lorg/bouncycastle/crypto/r;->i:I

    iget-object p0, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->reset()V

    return-void
.end method

.method public final k(I[B)I
    .registers 10

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/r;->i:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/r;->l:Lorg/bouncycastle/crypto/s;

    if-eqz v1, :cond_18

    iget-object v2, p0, Lorg/bouncycastle/crypto/r;->h:[B

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

    iget-object p1, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    iget-object p0, p0, Lorg/bouncycastle/crypto/r;->h:[B

    invoke-interface {p1, v0, v6, p0, v5}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move-result p0

    return p0
.end method
