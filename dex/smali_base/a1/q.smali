.class public final La1/q;
.super Ljava/lang/Object;

# interfaces
.implements La1/a;


# instance fields
.field public final a:Lorg/bouncycastle/crypto/d;

.field public final b:Lb1/b;

.field public final c:[B

.field public final d:[B

.field public final e:La1/p;

.field public final f:La1/p;

.field public g:La1/d;

.field public h:La1/d;

.field public i:Z

.field public j:[B

.field public k:[B

.field public l:I

.field public final m:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/d;)V
    .registers 5

    new-instance v0, Lb1/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb1/b;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x10

    new-array v2, v1, [B

    iput-object v2, p0, La1/q;->c:[B

    new-array v2, v1, [B

    iput-object v2, p0, La1/q;->d:[B

    new-array v2, v1, [B

    iput-object v2, p0, La1/q;->m:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v2

    if-ne v2, v1, :cond_30

    iput-object p1, p0, La1/q;->a:Lorg/bouncycastle/crypto/d;

    iput-object v0, p0, La1/q;->b:Lb1/b;

    new-instance p1, La1/p;

    invoke-direct {p1, p0}, La1/p;-><init>(La1/q;)V

    iput-object p1, p0, La1/q;->e:La1/p;

    new-instance p1, La1/p;

    invoke-direct {p1, p0}, La1/p;-><init>(La1/q;)V

    iput-object p1, p0, La1/q;->f:La1/p;

    return-void

    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cipher required with a block size of 16."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d([BIIZ)V
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_5

    :cond_4
    array-length p0, p0

    :goto_5
    add-int v0, p1, p2

    if-ltz p2, :cond_12

    if-ltz p1, :cond_12

    if-gez v0, :cond_e

    goto :goto_12

    :cond_e
    if-le v0, p0, :cond_11

    goto :goto_12

    :cond_11
    return-void

    :cond_12
    :goto_12
    if-eqz p3, :cond_1c

    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "Output buffer too short."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_23

    :cond_1c
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "Input buffer too short."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :goto_23
    throw p0
.end method

.method public static f(II[B[B)V
    .registers 7

    const/4 v0, 0x0

    const/16 v1, 0xf

    :goto_3
    if-ge v0, p1, :cond_10

    add-int v2, p0, v0

    aget-byte v2, p2, v2

    aput-byte v2, p3, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_10
    return-void
.end method


# virtual methods
.method public final a([BII)V
    .registers 10

    iget v0, p0, La1/q;->l:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_33

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2b

    iget-object p0, p0, La1/q;->e:La1/p;

    iget-wide v0, p0, La1/p;->j:J

    const-wide/high16 v2, -0x8000000000000000L

    add-long/2addr v0, v2

    const v4, 0x7fffffe7

    sub-int/2addr v4, p3

    int-to-long v4, v4

    add-long/2addr v4, v2

    cmp-long v0, v0, v4

    if-gtz v0, :cond_23

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, La1/q;->d([BIIZ)V

    invoke-virtual {p0, p1, p2, p3}, La1/p;->a([BII)V

    return-void

    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "AEAD byte count exceeded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "AEAD data cannot be processed after ordinary data"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cipher is not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()[B
    .registers 1

    iget-object p0, p0, La1/q;->m:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final c()[B
    .registers 10

    iget-object v0, p0, La1/q;->f:La1/p;

    iget-object v1, v0, La1/p;->k:Ljava/lang/Object;

    check-cast v1, La1/q;

    iget-object v2, v1, La1/q;->d:[B

    iget v3, v0, La1/p;->g:I

    const/4 v4, 0x0

    if-lez v3, :cond_1a

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([BB)V

    iget-object v3, v0, La1/p;->h:[B

    iget v5, v0, La1/p;->g:I

    invoke-static {v4, v5, v3, v2}, La1/q;->f(II[B[B)V

    invoke-virtual {v1, v2}, La1/q;->g([B)V

    :cond_1a
    const/16 v1, 0x10

    new-array v2, v1, [B

    new-array v3, v1, [B

    iget-wide v5, v0, La1/p;->j:J

    const-wide/16 v7, 0x8

    mul-long/2addr v5, v7

    invoke-static {v4, v5, v6, v3}, Lm4/d;->E(IJ[B)V

    iget-object v0, p0, La1/q;->e:La1/p;

    iget-wide v5, v0, La1/p;->j:J

    mul-long/2addr v5, v7

    const/16 v0, 0x8

    invoke-static {v0, v5, v6, v3}, Lm4/d;->E(IJ[B)V

    invoke-virtual {p0, v3}, La1/q;->g([B)V

    iget-object v0, p0, La1/q;->c:[B

    invoke-static {v4, v1, v0, v2}, La1/q;->f(II[B[B)V

    new-array v0, v1, [B

    move v1, v4

    :goto_3d
    const/16 v3, 0xc

    if-ge v1, v3, :cond_4e

    aget-byte v3, v2, v1

    iget-object v5, p0, La1/q;->k:[B

    aget-byte v5, v5, v1

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_4e
    const/16 v1, 0xf

    aget-byte v3, v2, v1

    and-int/lit16 v3, v3, -0x81

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    iget-object p0, p0, La1/q;->a:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0, v4, v4, v2, v0}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    return-object v0
.end method

.method public final doFinal([BI)I
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, La1/q;->e(I)V

    invoke-virtual {v0, v3}, La1/q;->getOutputSize(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v1, v2, v4, v5}, La1/q;->d([BIIZ)V

    iget-boolean v4, v0, La1/q;->i:Z

    const/4 v6, 0x4

    iget-object v7, v0, La1/q;->m:[B

    iget-object v8, v0, La1/q;->a:Lorg/bouncycastle/crypto/d;

    const/16 v9, 0xf

    const/16 v10, 0x10

    if-eqz v4, :cond_99

    invoke-virtual {v0}, La1/q;->c()[B

    move-result-object v4

    iget-object v11, v0, La1/q;->g:La1/d;

    invoke-virtual {v11}, La1/d;->d()[B

    move-result-object v11

    invoke-static {v4}, Lm4/d;->e([B)[B

    move-result-object v12

    aget-byte v13, v12, v9

    or-int/lit8 v13, v13, -0x80

    int-to-byte v13, v13

    aput-byte v13, v12, v9

    new-array v9, v10, [B

    iget-object v13, v0, La1/q;->g:La1/d;

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v13

    move v14, v3

    :goto_3d
    if-lez v13, :cond_7b

    invoke-interface {v8, v3, v3, v12, v9}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v15

    move/from16 v16, v5

    move v5, v3

    :goto_49
    if-ge v5, v15, :cond_5d

    aget-byte v17, v9, v5

    add-int v18, v5, v14

    aget-byte v18, v11, v18

    move/from16 v19, v10

    xor-int v10, v17, v18

    int-to-byte v10, v10

    aput-byte v10, v9, v5

    add-int/lit8 v5, v5, 0x1

    move/from16 v10, v19

    goto :goto_49

    :cond_5d
    move/from16 v19, v10

    add-int v5, v2, v14

    invoke-static {v9, v3, v1, v5, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v13, v15

    add-int/2addr v14, v15

    move v5, v3

    :goto_67
    if-ge v5, v6, :cond_76

    aget-byte v10, v12, v5

    add-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    aput-byte v10, v12, v5

    if-eqz v10, :cond_73

    goto :goto_76

    :cond_73
    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    :cond_76
    :goto_76
    move/from16 v5, v16

    move/from16 v10, v19

    goto :goto_3d

    :cond_7b
    move/from16 v19, v10

    iget-object v5, v0, La1/q;->g:La1/d;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x10

    iget-object v6, v0, La1/q;->g:La1/d;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    add-int/2addr v6, v2

    move/from16 v2, v19

    invoke-static {v4, v3, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v7

    invoke-static {v4, v3, v7, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0}, La1/q;->h()V

    return v5

    :cond_99
    move/from16 v16, v5

    iget-object v4, v0, La1/q;->h:La1/d;

    invoke-virtual {v4}, La1/d;->d()[B

    move-result-object v4

    iget-object v5, v0, La1/q;->h:La1/d;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    add-int/lit8 v10, v5, -0x10

    if-ltz v10, :cond_126

    invoke-static {v4, v10, v5}, Lm4/d;->q([BII)[B

    move-result-object v5

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v11

    aget-byte v12, v11, v9

    or-int/lit8 v12, v12, -0x80

    int-to-byte v12, v12

    aput-byte v12, v11, v9

    const/16 v9, 0x10

    new-array v12, v9, [B

    move v13, v3

    :goto_bf
    if-lez v10, :cond_fa

    invoke-interface {v8, v3, v3, v11, v12}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v14

    move v15, v3

    :goto_c9
    if-ge v15, v14, :cond_db

    aget-byte v17, v12, v15

    add-int v18, v15, v13

    aget-byte v18, v4, v18

    xor-int v9, v17, v18

    int-to-byte v9, v9

    aput-byte v9, v12, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v9, 0x10

    goto :goto_c9

    :cond_db
    iget-object v9, v0, La1/q;->g:La1/d;

    invoke-virtual {v9, v12, v3, v14}, Ljava/io/OutputStream;->write([BII)V

    iget-object v9, v0, La1/q;->f:La1/p;

    invoke-virtual {v9, v12, v3, v14}, La1/p;->a([BII)V

    sub-int/2addr v10, v14

    add-int/2addr v13, v14

    move v9, v3

    :goto_e8
    if-ge v9, v6, :cond_f7

    aget-byte v14, v11, v9

    add-int/lit8 v14, v14, 0x1

    int-to-byte v14, v14

    aput-byte v14, v11, v9

    if-eqz v14, :cond_f4

    goto :goto_f7

    :cond_f4
    add-int/lit8 v9, v9, 0x1

    goto :goto_e8

    :cond_f7
    :goto_f7
    const/16 v9, 0x10

    goto :goto_bf

    :cond_fa
    invoke-virtual {v0}, La1/q;->c()[B

    move-result-object v4

    invoke-static {v4, v5}, Lm4/d;->o([B[B)Z

    move-result v5

    if-eqz v5, :cond_11b

    array-length v5, v7

    invoke-static {v4, v3, v7, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v0, La1/q;->g:La1/d;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    iget-object v5, v0, La1/q;->g:La1/d;

    invoke-virtual {v5}, La1/d;->d()[B

    move-result-object v5

    invoke-static {v5, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0}, La1/q;->h()V

    return v4

    :cond_11b
    invoke-virtual {v0}, La1/q;->h()V

    new-instance v0, Lorg/bouncycastle/crypto/x;

    const-string v1, "mac check failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_126
    new-instance v0, Lorg/bouncycastle/crypto/x;

    const-string v1, "Data too short"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(I)V
    .registers 8

    iget v0, p0, La1/q;->l:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_56

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2a

    iget-object v0, p0, La1/q;->e:La1/p;

    iget-object v1, v0, La1/p;->k:Ljava/lang/Object;

    check-cast v1, La1/q;

    iget-object v2, v1, La1/q;->d:[B

    iget v3, v0, La1/p;->g:I

    if-lez v3, :cond_24

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    iget-object v4, v0, La1/p;->h:[B

    iget v0, v0, La1/p;->g:I

    invoke-static {v3, v0, v4, v2}, La1/q;->f(II[B[B)V

    invoke-virtual {v1, v2}, La1/q;->g([B)V

    :cond_24
    iget v0, p0, La1/q;->l:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, La1/q;->l:I

    :cond_2a
    iget-object v0, p0, La1/q;->g:La1/d;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    iget-boolean v2, p0, La1/q;->i:Z

    if-nez v2, :cond_40

    iget-object p0, p0, La1/q;->h:La1/d;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    int-to-long v0, p0

    const-wide/32 v2, 0x7ffffff7

    goto :goto_43

    :cond_40
    const-wide/32 v2, 0x7fffffe7

    :goto_43
    const-wide/high16 v4, -0x8000000000000000L

    add-long/2addr v0, v4

    int-to-long p0, p1

    sub-long/2addr v2, p0

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-gtz p0, :cond_4e

    return-void

    :cond_4e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "byte count exceeded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_56
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cipher is not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g([B)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x10

    iget-object v2, p0, La1/q;->c:[B

    if-ge v0, v1, :cond_12

    aget-byte v1, v2, v0

    aget-byte v3, p1, v0

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    iget-object p0, p0, La1/q;->b:Lb1/b;

    invoke-virtual {p0, v2}, Lb1/b;->i([B)V

    return-void
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, La1/q;->a:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-GCM-SIV"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOutputSize(I)I
    .registers 4

    iget-boolean v0, p0, La1/q;->i:Z

    const/16 v1, 0x10

    if-eqz v0, :cond_f

    iget-object p0, p0, La1/q;->g:La1/d;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    add-int/2addr p0, p1

    add-int/2addr p0, v1

    return p0

    :cond_f
    iget-object p0, p0, La1/q;->h:La1/d;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    add-int/2addr p0, p1

    if-le p0, v1, :cond_1a

    sub-int/2addr p0, v1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final getUnderlyingCipher()Lorg/bouncycastle/crypto/d;
    .registers 1

    iget-object p0, p0, La1/q;->a:Lorg/bouncycastle/crypto/d;

    return-object p0
.end method

.method public final getUpdateOutputSize(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final h()V
    .registers 6

    iget-object v0, p0, La1/q;->g:La1/d;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, La1/d;->a()V

    :cond_7
    iget-object v0, p0, La1/q;->e:La1/p;

    const/4 v1, 0x0

    iput v1, v0, La1/p;->g:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, La1/p;->j:J

    iget-object v4, p0, La1/q;->f:La1/p;

    iput v1, v4, La1/p;->g:I

    iput-wide v2, v4, La1/p;->j:J

    new-instance v2, La1/d;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, La1/d;-><init>(BI)V

    iput-object v2, p0, La1/q;->g:La1/d;

    iget-boolean v2, p0, La1/q;->i:Z

    if-eqz v2, :cond_25

    const/4 v2, 0x0

    goto :goto_2c

    :cond_25
    new-instance v2, La1/d;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, La1/d;-><init>(BI)V

    :goto_2c
    iput-object v2, p0, La1/q;->h:La1/d;

    iget v2, p0, La1/q;->l:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, La1/q;->l:I

    iget-object v2, p0, La1/q;->c:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object p0, p0, La1/q;->j:[B

    if-eqz p0, :cond_41

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, La1/p;->a([BII)V

    :cond_41
    return-void
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 13

    instance-of v0, p2, Le1/a;

    if-eqz v0, :cond_15

    check-cast p2, Le1/a;

    iget-object v0, p2, Le1/a;->c:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iget-object v1, p2, Le1/a;->d:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v1

    iget-object p2, p2, Le1/a;->q:Le1/o0;

    goto :goto_22

    :cond_15
    instance-of v0, p2, Le1/s0;

    if-eqz v0, :cond_e4

    check-cast p2, Le1/s0;

    iget-object v1, p2, Le1/s0;->c:[B

    iget-object p2, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    check-cast p2, Le1/o0;

    const/4 v0, 0x0

    :goto_22
    if-eqz v1, :cond_dc

    array-length v2, v1

    const/16 v3, 0xc

    if-ne v2, v3, :cond_dc

    if-eqz p2, :cond_d4

    iget-object v2, p2, Le1/o0;->c:[B

    array-length v4, v2

    const/16 v5, 0x20

    const/16 v6, 0x10

    if-eq v4, v6, :cond_37

    array-length v4, v2

    if-ne v4, v5, :cond_d4

    :cond_37
    iput-boolean p1, p0, La1/q;->i:Z

    iput-object v0, p0, La1/q;->j:[B

    iput-object v1, p0, La1/q;->k:[B

    new-array p1, v6, [B

    new-array v0, v6, [B

    new-array v4, v6, [B

    array-length v2, v2

    new-array v7, v2, [B

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static {v1, v9, p1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, La1/q;->a:Lorg/bouncycastle/crypto/d;

    const/4 v3, 0x1

    invoke-interface {v1, v3, p2}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    invoke-interface {v1, v9, v9, p1, v0}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    const/16 p2, 0x8

    invoke-static {v0, v9, v4, v9, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v8, p1, v9

    add-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, p1, v9

    invoke-interface {v1, v9, v9, p1, v0}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    invoke-static {v0, v9, v4, p2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v8, p1, v9

    add-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, p1, v9

    invoke-interface {v1, v9, v9, p1, v0}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    invoke-static {v0, v9, v7, v9, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v8, p1, v9

    add-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, p1, v9

    invoke-interface {v1, v9, v9, p1, v0}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    invoke-static {v0, v9, v7, p2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ne v2, v5, :cond_99

    aget-byte v5, p1, v9

    add-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, p1, v9

    invoke-interface {v1, v9, v9, p1, v0}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    invoke-static {v0, v9, v7, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v5, p1, v9

    add-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, p1, v9

    invoke-interface {v1, v9, v9, p1, v0}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    const/16 p1, 0x18

    invoke-static {v0, v9, v7, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_99
    new-instance p1, Le1/o0;

    invoke-direct {p1, v7, v9, v2}, Le1/o0;-><init>([BII)V

    invoke-interface {v1, v3, p1}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    invoke-static {v9, v6, v4, v0}, La1/q;->f(II[B[B)V

    move p1, v9

    move p2, p1

    :goto_a6
    if-ge p1, v6, :cond_bd

    aget-byte v1, v0, p1

    shr-int/lit8 v2, v1, 0x1

    and-int/lit8 v2, v2, 0x7f

    or-int/2addr p2, v2

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    and-int/lit8 p2, v1, 0x1

    if-nez p2, :cond_b8

    move p2, v9

    goto :goto_ba

    :cond_b8
    const/16 p2, -0x80

    :goto_ba
    add-int/lit8 p1, p1, 0x1

    goto :goto_a6

    :cond_bd
    if-eqz p2, :cond_c6

    aget-byte p1, v0, v9

    xor-int/lit8 p1, p1, -0x1f

    int-to-byte p1, p1

    aput-byte p1, v0, v9

    :cond_c6
    iget-object p1, p0, La1/q;->b:Lb1/b;

    invoke-virtual {p1, v0}, Lb1/b;->h([B)V

    iget p1, p0, La1/q;->l:I

    or-int/2addr p1, v3

    iput p1, p0, La1/q;->l:I

    invoke-virtual {p0}, La1/q;->h()V

    return-void

    :cond_d4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_dc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid nonce"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameters passed to GCM-SIV"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final processByte(B[BI)I
    .registers 5

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, La1/q;->e(I)V

    iget-boolean p3, p0, La1/q;->i:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_18

    iget-object p3, p0, La1/q;->g:La1/d;

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object p0, p0, La1/q;->f:La1/p;

    iget-object p3, p0, La1/p;->i:[B

    aput-byte p1, p3, v0

    invoke-virtual {p0, p3, v0, p2}, La1/p;->a([BII)V

    goto :goto_1d

    :cond_18
    iget-object p0, p0, La1/q;->h:La1/d;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    :goto_1d
    return v0
.end method

.method public final processBytes([BII[BI)I
    .registers 6

    invoke-virtual {p0, p3}, La1/q;->e(I)V

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, La1/q;->d([BIIZ)V

    iget-boolean p5, p0, La1/q;->i:Z

    if-eqz p5, :cond_16

    iget-object p5, p0, La1/q;->g:La1/d;

    invoke-virtual {p5, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object p0, p0, La1/q;->f:La1/p;

    invoke-virtual {p0, p1, p2, p3}, La1/p;->a([BII)V

    goto :goto_1b

    :cond_16
    iget-object p0, p0, La1/q;->h:La1/d;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_1b
    return p4
.end method
