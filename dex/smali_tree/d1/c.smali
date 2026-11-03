.class public final Ld1/c;
.super Lorg/bouncycastle/crypto/r;


# instance fields
.field public final o:Ld1/a;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/d;)V
    .registers 5

    new-instance v0, La3/e;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, La3/e;-><init>(BI)V

    invoke-direct {p0, p1, v0}, Ld1/c;-><init>(Lorg/bouncycastle/crypto/d;Ld1/a;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/d;Ld1/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    iput-object p2, p0, Ld1/c;->o:Ld1/a;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/r;->h:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/r;->i:I

    return-void
.end method


# virtual methods
.method public final a([BI)I
    .registers 8

    iget-object v0, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/r;->j:Z

    iget-object v2, p0, Ld1/c;->o:Ld1/a;

    const/4 v3, 0x0

    if-eqz v1, :cond_43

    iget v1, p0, Lorg/bouncycastle/crypto/r;->i:I

    if-ne v1, v0, :cond_2d

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_22

    iget-object v0, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    iget-object v1, p0, Lorg/bouncycastle/crypto/r;->h:[B

    invoke-interface {v0, v3, p2, v1, p1}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move-result v0

    iput v3, p0, Lorg/bouncycastle/crypto/r;->i:I

    goto :goto_2e

    :cond_22
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/r;->j()V

    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    move v0, v3

    :goto_2e
    iget-object v1, p0, Lorg/bouncycastle/crypto/r;->h:[B

    iget v4, p0, Lorg/bouncycastle/crypto/r;->i:I

    invoke-interface {v2, v4, v1}, Ld1/a;->k(I[B)I

    iget-object v1, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    iget-object v2, p0, Lorg/bouncycastle/crypto/r;->h:[B

    add-int/2addr p2, v0

    invoke-interface {v1, v3, p2, v2, p1}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/r;->j()V

    return p1

    :cond_43
    iget v1, p0, Lorg/bouncycastle/crypto/r;->i:I

    if-ne v1, v0, :cond_66

    iget-object v0, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    iget-object v1, p0, Lorg/bouncycastle/crypto/r;->h:[B

    invoke-interface {v0, v3, v3, v1, v1}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move-result v0

    iput v3, p0, Lorg/bouncycastle/crypto/r;->i:I

    :try_start_51
    iget-object v1, p0, Lorg/bouncycastle/crypto/r;->h:[B

    invoke-interface {v2, v1}, Ld1/a;->e([B)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/r;->h:[B

    invoke-static {v1, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5d
    .catchall {:try_start_51 .. :try_end_5d} :catchall_61

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/r;->j()V

    return v0

    :catchall_61
    move-exception p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/r;->j()V

    throw p1

    :cond_66
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/r;->j()V

    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "last block incomplete in decryption"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(I)I
    .registers 4

    iget v0, p0, Lorg/bouncycastle/crypto/r;->i:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/r;->h:[B

    array-length v1, v0

    rem-int v1, p1, v1

    if-nez v1, :cond_11

    iget-boolean p0, p0, Lorg/bouncycastle/crypto/r;->j:Z

    if-eqz p0, :cond_10

    :goto_e
    array-length p0, v0

    add-int/2addr p1, p0

    :cond_10
    return p1

    :cond_11
    sub-int/2addr p1, v1

    goto :goto_e
.end method

.method public final e(I)I
    .registers 3

    iget v0, p0, Lorg/bouncycastle/crypto/r;->i:I

    add-int/2addr p1, v0

    iget-object p0, p0, Lorg/bouncycastle/crypto/r;->h:[B

    array-length v0, p0

    rem-int v0, p1, v0

    if-nez v0, :cond_12

    array-length p0, p0

    sub-int/2addr p1, p0

    const/4 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_12
    sub-int/2addr p1, v0

    return p1
.end method

.method public final f(ZLorg/bouncycastle/crypto/g;)V
    .registers 5

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/r;->j:Z

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/r;->j()V

    instance-of v0, p2, Le1/t0;

    iget-object v1, p0, Ld1/c;->o:Ld1/a;

    if-eqz v0, :cond_1a

    check-cast p2, Le1/t0;

    iget-object v0, p2, Le1/t0;->c:Ljava/security/SecureRandom;

    invoke-interface {v1, v0}, Ld1/a;->i(Ljava/security/SecureRandom;)V

    iget-object p0, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    iget-object p2, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    :goto_16
    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void

    :cond_1a
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ld1/a;->i(Ljava/security/SecureRandom;)V

    iget-object p0, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    goto :goto_16
.end method

.method public final h(B[BI)I
    .registers 8

    iget v0, p0, Lorg/bouncycastle/crypto/r;->i:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/r;->h:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v0, v3, p3, v1, p2}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move-result p2

    iput v3, p0, Lorg/bouncycastle/crypto/r;->i:I

    move v3, p2

    :cond_11
    iget-object p2, p0, Lorg/bouncycastle/crypto/r;->h:[B

    iget p3, p0, Lorg/bouncycastle/crypto/r;->i:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/r;->i:I

    aput-byte p1, p2, p3

    return v3
.end method

.method public final i([BII[BI)I
    .registers 12

    if-ltz p3, :cond_61

    iget-object v0, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    invoke-virtual {p0, p3}, Ld1/c;->e(I)I

    move-result v1

    if-lez v1, :cond_1c

    add-int v2, p5, v1

    array-length v3, p4

    if-gt v2, v3, :cond_14

    goto :goto_1c

    :cond_14
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    :goto_1c
    iget-object v2, p0, Lorg/bouncycastle/crypto/r;->h:[B

    array-length v3, v2

    iget v4, p0, Lorg/bouncycastle/crypto/r;->i:I

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    if-le p3, v3, :cond_54

    invoke-static {p1, p2, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    if-ne p1, p4, :cond_38

    invoke-static {p2, p3, p5, v1}, Lm4/d;->J(IIII)Z

    move-result v1

    if-eqz v1, :cond_38

    new-array p1, p3, [B

    invoke-static {p4, p2, p1, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p2, v5

    :cond_38
    iget-object v1, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    iget-object v2, p0, Lorg/bouncycastle/crypto/r;->h:[B

    invoke-interface {v1, v5, p5, v2, p4}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move-result v1

    iput v5, p0, Lorg/bouncycastle/crypto/r;->i:I

    move v5, v1

    :goto_43
    iget-object v1, p0, Lorg/bouncycastle/crypto/r;->h:[B

    array-length v1, v1

    if-le p3, v1, :cond_54

    iget-object v1, p0, Lorg/bouncycastle/crypto/r;->k:Lorg/bouncycastle/crypto/d;

    add-int v2, p5, v5

    invoke-interface {v1, p2, v2, p1, p4}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move-result v1

    add-int/2addr v5, v1

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_43

    :cond_54
    iget-object p4, p0, Lorg/bouncycastle/crypto/r;->h:[B

    iget p5, p0, Lorg/bouncycastle/crypto/r;->i:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/r;->i:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/r;->i:I

    return v5

    :cond_61
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t have a negative input length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
