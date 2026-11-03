.class public final La1/v;
.super Ljava/lang/Object;

# interfaces
.implements La1/a;


# instance fields
.field public a:Lorg/bouncycastle/crypto/d;

.field public b:Lorg/bouncycastle/crypto/d;

.field public c:Z

.field public d:I

.field public e:[B

.field public f:Ljava/util/Vector;

.field public g:[B

.field public h:[B

.field public i:[B

.field public j:[B

.field public k:[B

.field public l:[B

.field public m:[B

.field public n:I

.field public o:I

.field public p:J

.field public q:J

.field public r:[B

.field public s:[B

.field public t:[B

.field public u:[B

.field public v:[B


# direct methods
.method public static c([B)[B
    .registers 6

    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_5
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_18

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    ushr-int/lit8 v2, v3, 0x7

    and-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_18
    const/16 p0, 0xf

    aget-byte v0, v1, p0

    rsub-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x3

    const/16 v3, 0x87

    ushr-int v2, v3, v2

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, p0

    return-object v1
.end method

.method public static d(I[B)V
    .registers 3

    const/16 v0, -0x80

    aput-byte v0, p1, p0

    :goto_4
    add-int/lit8 p0, p0, 0x1

    const/16 v0, 0x10

    if-ge p0, v0, :cond_e

    const/4 v0, 0x0

    aput-byte v0, p1, p0

    goto :goto_4

    :cond_e
    return-void
.end method

.method public static g([B[B)V
    .registers 3

    const/16 v0, 0x10

    invoke-static {p1, v0, p0}, Lm4/d;->M([BI[B)V

    return-void
.end method


# virtual methods
.method public final a([BII)V
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p3, :cond_43

    iget-object v2, p0, La1/v;->l:[B

    iget v3, p0, La1/v;->n:I

    add-int v4, p2, v1

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, La1/v;->n:I

    array-length v2, v2

    if-ne v3, v2, :cond_40

    iget-wide v2, p0, La1/v;->p:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, La1/v;->p:J

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    invoke-virtual {p0, v2}, La1/v;->e(I)[B

    move-result-object v2

    iget-object v3, p0, La1/v;->r:[B

    invoke-static {v3, v2}, La1/v;->g([B[B)V

    iget-object v2, p0, La1/v;->l:[B

    iget-object v3, p0, La1/v;->r:[B

    invoke-static {v2, v3}, La1/v;->g([B[B)V

    iget-object v2, p0, La1/v;->a:Lorg/bouncycastle/crypto/d;

    iget-object v3, p0, La1/v;->l:[B

    invoke-interface {v2, v0, v0, v3, v3}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    iget-object v2, p0, La1/v;->s:[B

    iget-object v3, p0, La1/v;->l:[B

    invoke-static {v2, v3}, La1/v;->g([B[B)V

    iput v0, p0, La1/v;->n:I

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_43
    return-void
.end method

.method public final b()[B
    .registers 2

    iget-object v0, p0, La1/v;->v:[B

    if-nez v0, :cond_9

    iget p0, p0, La1/v;->d:I

    new-array p0, p0, [B

    return-object p0

    :cond_9
    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final doFinal([BI)I
    .registers 12

    iget-object v0, p0, La1/v;->a:Lorg/bouncycastle/crypto/d;

    iget-object v1, p0, La1/v;->t:[B

    iget-boolean v2, p0, La1/v;->c:Z

    const/4 v3, 0x0

    if-nez v2, :cond_22

    iget v2, p0, La1/v;->o:I

    iget v4, p0, La1/v;->d:I

    if-lt v2, v4, :cond_1a

    sub-int/2addr v2, v4

    iput v2, p0, La1/v;->o:I

    new-array v5, v4, [B

    iget-object v6, p0, La1/v;->m:[B

    invoke-static {v6, v2, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_23

    :cond_1a
    new-instance p0, Lorg/bouncycastle/crypto/x;

    const-string p1, "data too short"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    const/4 v5, 0x0

    :goto_23
    iget v2, p0, La1/v;->n:I

    if-lez v2, :cond_46

    iget-object v4, p0, La1/v;->l:[B

    invoke-static {v2, v4}, La1/v;->d(I[B)V

    iget-object v2, p0, La1/v;->g:[B

    iget-object v4, p0, La1/v;->r:[B

    invoke-static {v4, v2}, La1/v;->g([B[B)V

    iget-object v2, p0, La1/v;->l:[B

    iget-object v4, p0, La1/v;->r:[B

    invoke-static {v2, v4}, La1/v;->g([B[B)V

    iget-object v2, p0, La1/v;->l:[B

    invoke-interface {v0, v3, v3, v2, v2}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    iget-object v2, p0, La1/v;->s:[B

    iget-object v4, p0, La1/v;->l:[B

    invoke-static {v2, v4}, La1/v;->g([B[B)V

    :cond_46
    iget v2, p0, La1/v;->o:I

    const-string v4, "Output buffer too short"

    const/16 v6, 0x10

    if-lez v2, :cond_92

    iget-boolean v7, p0, La1/v;->c:Z

    if-eqz v7, :cond_5e

    iget-object v7, p0, La1/v;->m:[B

    invoke-static {v2, v7}, La1/v;->d(I[B)V

    iget-object v2, p0, La1/v;->u:[B

    iget-object v7, p0, La1/v;->m:[B

    invoke-static {v2, v7}, La1/v;->g([B[B)V

    :cond_5e
    iget-object v2, p0, La1/v;->g:[B

    invoke-static {v1, v2}, La1/v;->g([B[B)V

    new-array v2, v6, [B

    invoke-interface {v0, v3, v3, v1, v2}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    iget-object v7, p0, La1/v;->m:[B

    invoke-static {v7, v2}, La1/v;->g([B[B)V

    array-length v2, p1

    iget v7, p0, La1/v;->o:I

    add-int v8, p2, v7

    if-lt v2, v8, :cond_8c

    iget-object v2, p0, La1/v;->m:[B

    invoke-static {v2, v3, p1, p2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v2, p0, La1/v;->c:Z

    if-nez v2, :cond_92

    iget-object v2, p0, La1/v;->m:[B

    iget v7, p0, La1/v;->o:I

    invoke-static {v7, v2}, La1/v;->d(I[B)V

    iget-object v2, p0, La1/v;->u:[B

    iget-object v7, p0, La1/v;->m:[B

    invoke-static {v2, v7}, La1/v;->g([B[B)V

    goto :goto_92

    :cond_8c
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    invoke-direct {p0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_92
    :goto_92
    iget-object v2, p0, La1/v;->u:[B

    invoke-static {v2, v1}, La1/v;->g([B[B)V

    iget-object v2, p0, La1/v;->u:[B

    iget-object v7, p0, La1/v;->h:[B

    invoke-static {v2, v7}, La1/v;->g([B[B)V

    iget-object v2, p0, La1/v;->u:[B

    invoke-interface {v0, v3, v3, v2, v2}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    iget-object v2, p0, La1/v;->u:[B

    iget-object v7, p0, La1/v;->s:[B

    invoke-static {v2, v7}, La1/v;->g([B[B)V

    iget v2, p0, La1/v;->d:I

    new-array v7, v2, [B

    iput-object v7, p0, La1/v;->v:[B

    iget-object v8, p0, La1/v;->u:[B

    invoke-static {v8, v3, v7, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, La1/v;->o:I

    iget-boolean v7, p0, La1/v;->c:Z

    if-eqz v7, :cond_d2

    array-length v5, p1

    add-int/2addr p2, v2

    iget v7, p0, La1/v;->d:I

    add-int v8, p2, v7

    if-lt v5, v8, :cond_cc

    iget-object v4, p0, La1/v;->v:[B

    invoke-static {v4, v3, p1, p2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, La1/v;->d:I

    add-int/2addr v2, p1

    goto :goto_da

    :cond_cc
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    invoke-direct {p0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d2
    iget-object p1, p0, La1/v;->v:[B

    invoke-static {p1, v5}, Lm4/d;->o([B[B)Z

    move-result p1

    if-eqz p1, :cond_11d

    :goto_da
    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->reset()V

    iget-object p1, p0, La1/v;->b:Lorg/bouncycastle/crypto/d;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->reset()V

    iget-object p1, p0, La1/v;->l:[B

    if-eqz p1, :cond_e9

    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([BB)V

    :cond_e9
    iget-object p1, p0, La1/v;->m:[B

    if-eqz p1, :cond_f0

    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([BB)V

    :cond_f0
    iput v3, p0, La1/v;->n:I

    iput v3, p0, La1/v;->o:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, La1/v;->p:J

    iput-wide p1, p0, La1/v;->q:J

    iget-object p1, p0, La1/v;->r:[B

    if-eqz p1, :cond_101

    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([BB)V

    :cond_101
    iget-object p1, p0, La1/v;->s:[B

    if-eqz p1, :cond_108

    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([BB)V

    :cond_108
    iget-object p1, p0, La1/v;->k:[B

    invoke-static {p1, v3, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, La1/v;->u:[B

    if-eqz p1, :cond_114

    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([BB)V

    :cond_114
    iget-object p1, p0, La1/v;->e:[B

    if-eqz p1, :cond_11c

    array-length p2, p1

    invoke-virtual {p0, p1, v3, p2}, La1/v;->a([BII)V

    :cond_11c
    return v2

    :cond_11d
    new-instance p0, Lorg/bouncycastle/crypto/x;

    const-string p1, "mac check in OCB failed"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(I)[B
    .registers 4

    :goto_0
    iget-object v0, p0, La1/v;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_18

    iget-object v0, p0, La1/v;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, La1/v;->c([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_18
    iget-object p0, p0, La1/v;->f:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public final f(I[B)V
    .registers 10

    iget-object v0, p0, La1/v;->t:[B

    array-length v1, p2

    add-int/lit8 v2, p1, 0x10

    if-lt v1, v2, :cond_56

    iget-boolean v1, p0, La1/v;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    iget-object v1, p0, La1/v;->u:[B

    iget-object v3, p0, La1/v;->m:[B

    invoke-static {v1, v3}, La1/v;->g([B[B)V

    iput v2, p0, La1/v;->o:I

    :cond_15
    iget-wide v3, p0, La1/v;->q:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, La1/v;->q:J

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    invoke-virtual {p0, v1}, La1/v;->e(I)[B

    move-result-object v1

    invoke-static {v0, v1}, La1/v;->g([B[B)V

    iget-object v1, p0, La1/v;->m:[B

    invoke-static {v1, v0}, La1/v;->g([B[B)V

    iget-object v1, p0, La1/v;->b:Lorg/bouncycastle/crypto/d;

    iget-object v3, p0, La1/v;->m:[B

    invoke-interface {v1, v2, v2, v3, v3}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    iget-object v1, p0, La1/v;->m:[B

    invoke-static {v1, v0}, La1/v;->g([B[B)V

    iget-object v0, p0, La1/v;->m:[B

    const/16 v1, 0x10

    invoke-static {v0, v2, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean p1, p0, La1/v;->c:Z

    if-nez p1, :cond_55

    iget-object p1, p0, La1/v;->u:[B

    iget-object p2, p0, La1/v;->m:[B

    invoke-static {p1, p2}, La1/v;->g([B[B)V

    iget-object p1, p0, La1/v;->m:[B

    iget p2, p0, La1/v;->d:I

    invoke-static {p1, v1, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, La1/v;->d:I

    iput p1, p0, La1/v;->o:I

    :cond_55
    return-void

    :cond_56
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "Output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, La1/v;->b:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/OCB"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOutputSize(I)I
    .registers 3

    iget v0, p0, La1/v;->o:I

    add-int/2addr p1, v0

    iget-boolean v0, p0, La1/v;->c:Z

    iget p0, p0, La1/v;->d:I

    if-eqz v0, :cond_b

    add-int/2addr p1, p0

    return p1

    :cond_b
    if-ge p1, p0, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    sub-int/2addr p1, p0

    return p1
.end method

.method public final getUnderlyingCipher()Lorg/bouncycastle/crypto/d;
    .registers 1

    iget-object p0, p0, La1/v;->b:Lorg/bouncycastle/crypto/d;

    return-object p0
.end method

.method public final getUpdateOutputSize(I)I
    .registers 3

    iget v0, p0, La1/v;->o:I

    add-int/2addr p1, v0

    iget-boolean v0, p0, La1/v;->c:Z

    if-nez v0, :cond_e

    iget p0, p0, La1/v;->d:I

    if-ge p1, p0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    sub-int/2addr p1, p0

    :cond_e
    rem-int/lit8 p0, p1, 0x10

    sub-int/2addr p1, p0

    return p1
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 14

    iget-object v0, p0, La1/v;->k:[B

    iget-object v1, p0, La1/v;->j:[B

    iget-object v2, p0, La1/v;->a:Lorg/bouncycastle/crypto/d;

    iget-boolean v3, p0, La1/v;->c:Z

    iput-boolean p1, p0, La1/v;->c:Z

    const/4 v4, 0x0

    iput-object v4, p0, La1/v;->v:[B

    instance-of v5, p2, Le1/a;

    const/16 v6, 0x8

    const/16 v7, 0x10

    if-eqz v5, :cond_45

    check-cast p2, Le1/a;

    iget-object v5, p2, Le1/a;->d:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    iget-object v8, p2, Le1/a;->c:[B

    invoke-static {v8}, Lm4/d;->e([B)[B

    move-result-object v8

    iput-object v8, p0, La1/v;->e:[B

    iget v8, p2, Le1/a;->x:I

    const/16 v9, 0x40

    if-lt v8, v9, :cond_39

    const/16 v9, 0x80

    if-gt v8, v9, :cond_39

    rem-int/lit8 v9, v8, 0x8

    if-nez v9, :cond_39

    div-int/2addr v8, v6

    iput v8, p0, La1/v;->d:I

    iget-object p2, p2, Le1/a;->q:Le1/o0;

    goto :goto_55

    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value for MAC size: "

    invoke-static {v8, p1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    instance-of v5, p2, Le1/s0;

    if-eqz v5, :cond_137

    check-cast p2, Le1/s0;

    iget-object v5, p2, Le1/s0;->c:[B

    iput-object v4, p0, La1/v;->e:[B

    iput v7, p0, La1/v;->d:I

    iget-object p2, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    check-cast p2, Le1/o0;

    :goto_55
    new-array v8, v7, [B

    iput-object v8, p0, La1/v;->l:[B

    if-eqz p1, :cond_5d

    move v8, v7

    goto :goto_60

    :cond_5d
    iget v8, p0, La1/v;->d:I

    add-int/2addr v8, v7

    :goto_60
    new-array v8, v8, [B

    iput-object v8, p0, La1/v;->m:[B

    const/4 v8, 0x0

    if-nez v5, :cond_69

    new-array v5, v8, [B

    :cond_69
    array-length v9, v5

    const/16 v10, 0xf

    if-gt v9, v10, :cond_12f

    const/4 v9, 0x1

    if-eqz p2, :cond_7c

    invoke-interface {v2, v9, p2}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    iget-object v3, p0, La1/v;->b:Lorg/bouncycastle/crypto/d;

    invoke-interface {v3, p1, p2}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    iput-object v4, p0, La1/v;->i:[B

    goto :goto_7e

    :cond_7c
    if-ne v3, p1, :cond_127

    :goto_7e
    new-array p1, v7, [B

    iput-object p1, p0, La1/v;->g:[B

    invoke-interface {v2, v8, v8, p1, p1}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    iget-object p1, p0, La1/v;->g:[B

    invoke-static {p1}, La1/v;->c([B)[B

    move-result-object p1

    iput-object p1, p0, La1/v;->h:[B

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, La1/v;->f:Ljava/util/Vector;

    iget-object p2, p0, La1/v;->h:[B

    invoke-static {p2}, La1/v;->c([B)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-array p1, v7, [B

    array-length p2, v5

    rsub-int/lit8 p2, p2, 0x10

    array-length v3, v5

    invoke-static {v5, v8, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, La1/v;->d:I

    shl-int/lit8 p2, p2, 0x4

    int-to-byte p2, p2

    aput-byte p2, p1, v8

    array-length p2, v5

    rsub-int/lit8 p2, p2, 0xf

    aget-byte v3, p1, p2

    or-int/2addr v3, v9

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    aget-byte p2, p1, v10

    and-int/lit8 v3, p2, 0x3f

    and-int/lit16 p2, p2, 0xc0

    int-to-byte p2, p2

    aput-byte p2, p1, v10

    iget-object p2, p0, La1/v;->i:[B

    if-eqz p2, :cond_c9

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_e3

    :cond_c9
    new-array p2, v7, [B

    iput-object p1, p0, La1/v;->i:[B

    invoke-interface {v2, v8, v8, p1, p2}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    invoke-static {p2, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p1, v8

    :goto_d4
    if-ge p1, v6, :cond_e3

    add-int/lit8 v2, p1, 0x10

    aget-byte v4, p2, p1

    add-int/lit8 p1, p1, 0x1

    aget-byte v5, p2, p1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    goto :goto_d4

    :cond_e3
    rem-int/lit8 p1, v3, 0x8

    div-int/2addr v3, v6

    if-nez p1, :cond_ec

    invoke-static {v1, v3, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_103

    :cond_ec
    move p2, v8

    :goto_ed
    if-ge p2, v7, :cond_103

    aget-byte v2, v1, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v9

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v2, p1

    rsub-int/lit8 v5, p1, 0x8

    ushr-int/2addr v4, v5

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_ed

    :cond_103
    :goto_103
    iput v8, p0, La1/v;->n:I

    iput v8, p0, La1/v;->o:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, La1/v;->p:J

    iput-wide p1, p0, La1/v;->q:J

    new-array p1, v7, [B

    iput-object p1, p0, La1/v;->r:[B

    new-array p1, v7, [B

    iput-object p1, p0, La1/v;->s:[B

    iget-object p1, p0, La1/v;->t:[B

    invoke-static {v0, v8, p1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v7, [B

    iput-object p1, p0, La1/v;->u:[B

    iget-object p1, p0, La1/v;->e:[B

    if-eqz p1, :cond_126

    array-length p2, p1

    invoke-virtual {p0, p1, v8, p2}, La1/v;->a([BII)V

    :cond_126
    return-void

    :cond_127
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot change encrypting state without providing key."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IV must be no more than 15 bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_137
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameters passed to OCB"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final processByte(B[BI)I
    .registers 6

    iget-object v0, p0, La1/v;->m:[B

    iget v1, p0, La1/v;->o:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La1/v;->o:I

    array-length p1, v0

    if-ne v1, p1, :cond_13

    invoke-virtual {p0, p3, p2}, La1/v;->f(I[B)V

    const/16 p0, 0x10

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final processBytes([BII[BI)I
    .registers 11

    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_37

    const/4 v0, 0x0

    if-ne p1, p4, :cond_18

    invoke-virtual {p0, p3}, La1/v;->getUpdateOutputSize(I)I

    move-result v1

    invoke-static {p2, p3, p5, v1}, Lm4/d;->J(IIII)Z

    move-result v1

    if-eqz v1, :cond_18

    new-array p1, p3, [B

    invoke-static {p4, p2, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p2, v0

    :cond_18
    move v1, v0

    :goto_19
    if-ge v0, p3, :cond_36

    iget-object v2, p0, La1/v;->m:[B

    iget v3, p0, La1/v;->o:I

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, La1/v;->o:I

    array-length v2, v2

    if-ne v3, v2, :cond_33

    add-int v2, p5, v1

    invoke-virtual {p0, v2, p4}, La1/v;->f(I[B)V

    add-int/lit8 v1, v1, 0x10

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_36
    return v1

    :cond_37
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "Input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
