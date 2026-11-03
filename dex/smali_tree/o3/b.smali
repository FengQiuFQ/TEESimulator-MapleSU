.class public final Lo3/b;
.super Ljava/security/SecureRandom;


# instance fields
.field public final c:[B

.field public final d:[B


# direct methods
.method public constructor <init>([BLs0/o;)V
    .registers 11

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    array-length v0, p1

    const/16 v1, 0x10

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/16 v4, 0x30

    if-lt v0, v4, :cond_1e

    new-array p2, v4, [B

    invoke-static {p1, v3, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v2, [B

    iput-object p1, p0, Lo3/b;->c:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lo3/b;->d:[B

    invoke-static {p2, p1, v0}, Lo3/b;->a([B[B[B)V

    return-void

    :cond_1e
    array-length v0, p1

    rsub-int/lit8 v0, v0, 0x30

    invoke-interface {p2}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v5

    array-length v6, p1

    invoke-virtual {p2, p1, v3, v6}, Ls0/o;->update([BII)V

    new-array v6, v5, [B

    invoke-interface {p2, v6, v3}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    if-ne v0, v5, :cond_31

    goto :goto_62

    :cond_31
    if-ge v0, v5, :cond_38

    invoke-static {v0, v6}, Lm4/d;->p(I[B)[B

    move-result-object v6

    goto :goto_62

    :cond_38
    invoke-static {v5, v6}, Lm4/d;->p(I[B)[B

    move-result-object v7

    :goto_3c
    sub-int/2addr v0, v5

    if-lt v0, v5, :cond_4c

    invoke-virtual {p2, v6, v3, v5}, Ls0/o;->update([BII)V

    new-array v6, v5, [B

    invoke-interface {p2, v6, v3}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    invoke-static {v7, v6}, Lm4/d;->j([B[B)[B

    move-result-object v7

    goto :goto_3c

    :cond_4c
    if-lez v0, :cond_61

    invoke-virtual {p2, v6, v3, v5}, Ls0/o;->update([BII)V

    new-array v5, v5, [B

    invoke-interface {p2, v5, v3}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    array-length p2, v7

    add-int v6, p2, v0

    invoke-static {v6, v7}, Lm4/d;->p(I[B)[B

    move-result-object v6

    invoke-static {v5, v3, v6, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_62

    :cond_61
    move-object v6, v7

    :goto_62
    invoke-static {p1, v6}, Lm4/d;->j([B[B)[B

    move-result-object p1

    new-array p2, v4, [B

    invoke-static {p1, v3, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v2, [B

    iput-object p1, p0, Lo3/b;->c:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lo3/b;->d:[B

    invoke-static {p2, p1, v0}, Lo3/b;->a([B[B[B)V

    return-void
.end method

.method public static a([B[B[B)V
    .registers 11

    const/16 v0, 0x30

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    const/4 v4, 0x3

    if-ge v3, v4, :cond_27

    const/16 v4, 0xf

    :goto_b
    if-ltz v4, :cond_1f

    aget-byte v5, p2, v4

    and-int/lit16 v6, v5, 0xff

    const/16 v7, 0xff

    if-ne v6, v7, :cond_1a

    aput-byte v2, p2, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_b

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    :cond_1f
    mul-int/lit8 v4, v3, 0x10

    invoke-static {v4, p1, p2, v1}, Lo3/b;->b(I[B[B[B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_27
    if-eqz p0, :cond_37

    move v3, v2

    :goto_2a
    if-ge v3, v0, :cond_37

    aget-byte v4, v1, v3

    aget-byte v5, p0, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_37
    array-length p0, p1

    invoke-static {v1, v2, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p0, 0x20

    array-length p1, p2

    invoke-static {v1, p0, p2, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static b(I[B[B[B)V
    .registers 6

    :try_start_0
    new-instance v0, Lv0/a;

    invoke-direct {v0}, Lv0/a;-><init>()V

    new-instance v1, Le1/o0;

    invoke-direct {v1, p1}, Le1/o0;-><init>([B)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Lv0/a;->init(ZLorg/bouncycastle/crypto/g;)V

    const/4 p1, 0x0

    :goto_f
    array-length v1, p2

    if-eq p1, v1, :cond_1a

    add-int v1, p0, p1

    invoke-virtual {v0, p1, v1, p2, p3}, Lv0/a;->b(II[B[B)I
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_1b

    add-int/lit8 p1, p1, 0x10

    goto :goto_f

    :cond_1a
    return-void

    :catchall_1b
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "drbg failure: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final nextBytes([B)V
    .registers 13

    const/16 v0, 0x10

    new-array v1, v0, [B

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_7
    if-lez v2, :cond_38

    const/16 v5, 0xf

    move v6, v5

    :goto_c
    if-ltz v6, :cond_22

    iget-object v7, p0, Lo3/b;->d:[B

    aget-byte v8, v7, v6

    and-int/lit16 v9, v8, 0xff

    const/16 v10, 0xff

    if-ne v9, v10, :cond_1d

    aput-byte v3, v7, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_c

    :cond_1d
    add-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    :cond_22
    iget-object v6, p0, Lo3/b;->c:[B

    iget-object v7, p0, Lo3/b;->d:[B

    invoke-static {v3, v6, v7, v1}, Lo3/b;->b(I[B[B[B)V

    if-le v2, v5, :cond_33

    invoke-static {v1, v3, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x10

    add-int/lit8 v2, v2, -0x10

    goto :goto_7

    :cond_33
    invoke-static {v1, v3, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v3

    goto :goto_7

    :cond_38
    iget-object p1, p0, Lo3/b;->c:[B

    iget-object p0, p0, Lo3/b;->d:[B

    const/4 v0, 0x0

    invoke-static {v0, p1, p0}, Lo3/b;->a([B[B[B)V

    return-void
.end method
