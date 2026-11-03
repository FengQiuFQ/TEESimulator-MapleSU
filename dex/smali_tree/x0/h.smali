.class public final Lx0/h;
.super Ljava/lang/Object;


# static fields
.field public static final h:Ljava/math/BigInteger;

.field public static final i:Ljava/math/BigInteger;


# instance fields
.field public final a:Ls0/j;

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/security/SecureRandom;

.field public f:Z

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lx0/h;->h:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lx0/h;->i:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget v0, Lj1/a;->a:I

    new-instance v0, Ls0/z;

    invoke-direct {v0}, Ls0/z;-><init>()V

    invoke-direct {p0, v0}, Lx0/h;-><init>(Ls0/j;)V

    return-void
.end method

.method public constructor <init>(Ls0/j;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/h;->a:Ls0/j;

    return-void
.end method

.method public static b([B)V
    .registers 3

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_14

    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    if-eqz v1, :cond_11

    goto :goto_14

    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_14
    :goto_14
    return-void
.end method


# virtual methods
.method public final a()Le1/m;
    .registers 23

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lx0/h;->f:Z

    sget-object v2, Lx0/h;->i:Ljava/math/BigInteger;

    const/4 v3, 0x1

    iget-object v4, v0, Lx0/h;->a:Ls0/j;

    const/4 v5, 0x0

    sget-object v6, Lx0/h;->h:Ljava/math/BigInteger;

    if-eqz v1, :cond_15d

    invoke-interface {v4}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    iget v7, v0, Lx0/h;->c:I

    div-int/lit8 v7, v7, 0x8

    new-array v8, v7, [B

    iget v9, v0, Lx0/h;->b:I

    add-int/lit8 v10, v9, -0x1

    div-int v11, v10, v1

    rem-int/2addr v10, v1

    div-int/lit8 v9, v9, 0x8

    new-array v1, v9, [B

    invoke-interface {v4}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v10

    new-array v12, v10, [B

    :goto_2b
    iget-object v13, v0, Lx0/h;->e:Ljava/security/SecureRandom;

    invoke-virtual {v13, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v4, v8, v5, v7}, Ls0/j;->update([BII)V

    invoke-interface {v4, v12, v5}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    new-instance v13, Ljava/math/BigInteger;

    invoke-direct {v13, v3, v12}, Ljava/math/BigInteger;-><init>(I[B)V

    iget v14, v0, Lx0/h;->c:I

    sub-int/2addr v14, v3

    invoke-virtual {v6, v14}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v13

    iget v14, v0, Lx0/h;->c:I

    sub-int/2addr v14, v3

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v13

    iget v14, v0, Lx0/h;->d:I

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v14

    if-nez v14, :cond_5a

    goto :goto_2b

    :cond_5a
    invoke-static {v8}, Lm4/d;->e([B)[B

    move-result-object v14

    iget v15, v0, Lx0/h;->b:I

    mul-int/lit8 v15, v15, 0x4

    move v3, v5

    :goto_63
    if-ge v3, v15, :cond_15a

    const/4 v5, 0x1

    :goto_66
    if-gt v5, v11, :cond_84

    invoke-static {v14}, Lx0/h;->b([B)V

    mul-int v18, v5, v10

    move/from16 v19, v5

    sub-int v5, v9, v18

    move/from16 v18, v9

    array-length v9, v14

    move/from16 v20, v10

    const/4 v10, 0x0

    invoke-virtual {v4, v14, v10, v9}, Ls0/j;->update([BII)V

    invoke-interface {v4, v1, v5}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    add-int/lit8 v5, v19, 0x1

    move/from16 v9, v18

    move/from16 v10, v20

    goto :goto_66

    :cond_84
    move/from16 v18, v9

    move/from16 v20, v10

    const/4 v10, 0x0

    mul-int v5, v11, v20

    sub-int v9, v18, v5

    invoke-static {v14}, Lx0/h;->b([B)V

    array-length v5, v14

    invoke-virtual {v4, v14, v10, v5}, Ls0/j;->update([BII)V

    invoke-interface {v4, v12, v10}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    sub-int v5, v20, v9

    invoke-static {v12, v5, v1, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v5, v1, v10

    or-int/lit8 v5, v5, -0x80

    int-to-byte v5, v5

    aput-byte v5, v1, v10

    new-instance v5, Ljava/math/BigInteger;

    const/4 v9, 0x1

    invoke-direct {v5, v9, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v13, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    iget v10, v0, Lx0/h;->b:I

    if-eq v9, v10, :cond_c3

    goto/16 :goto_151

    :cond_c3
    iget v9, v0, Lx0/h;->d:I

    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v9

    if-eqz v9, :cond_151

    iget v1, v0, Lx0/h;->g:I

    if-ltz v1, :cond_128

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    const-string v10, "6767656E"

    invoke-static {v10}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object v10

    array-length v11, v10

    add-int/2addr v11, v7

    add-int/lit8 v12, v11, 0x3

    new-array v14, v12, [B

    const/4 v15, 0x0

    invoke-static {v8, v15, v14, v15, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v17, v11

    array-length v11, v10

    invoke-static {v10, v15, v14, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-byte v1, v1

    aput-byte v1, v14, v17

    invoke-interface {v4}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    const/4 v7, 0x1

    :goto_f7
    const/high16 v10, 0x10000

    if-ge v7, v10, :cond_119

    invoke-static {v14}, Lx0/h;->b([B)V

    invoke-virtual {v4, v14, v15, v12}, Ls0/j;->update([BII)V

    invoke-interface {v4, v1, v15}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    new-instance v10, Ljava/math/BigInteger;

    const/4 v11, 0x1

    invoke-direct {v10, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v10, v9, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_115

    goto :goto_11a

    :cond_115
    add-int/lit8 v7, v7, 0x1

    const/4 v15, 0x0

    goto :goto_f7

    :cond_119
    const/4 v10, 0x0

    :goto_11a
    if-eqz v10, :cond_128

    new-instance v0, Le1/m;

    new-instance v1, Le1/p;

    const/4 v15, 0x0

    invoke-direct {v1, v8, v3, v15}, Le1/p;-><init>([BII)V

    invoke-direct {v0, v5, v13, v10, v1}, Le1/m;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Le1/p;)V

    return-object v0

    :cond_128
    iget-object v9, v0, Lx0/h;->e:Ljava/security/SecureRandom;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :cond_136
    invoke-static {v2, v0, v9}, Lm4/a;->d(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v10, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    const/4 v11, 0x1

    if-le v4, v11, :cond_136

    new-instance v0, Le1/m;

    new-instance v2, Le1/p;

    const/4 v15, 0x0

    invoke-direct {v2, v8, v3, v15}, Le1/p;-><init>([BII)V

    invoke-direct {v0, v5, v13, v1, v2}, Le1/m;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Le1/p;)V

    return-object v0

    :cond_151
    :goto_151
    add-int/lit8 v3, v3, 0x1

    move/from16 v9, v18

    move/from16 v10, v20

    const/4 v5, 0x0

    goto/16 :goto_63

    :cond_15a
    const/4 v3, 0x1

    goto/16 :goto_2b

    :cond_15d
    const/16 v1, 0x14

    new-array v3, v1, [B

    new-array v5, v1, [B

    new-array v7, v1, [B

    new-array v8, v1, [B

    iget v9, v0, Lx0/h;->b:I

    add-int/lit8 v10, v9, -0x1

    div-int/lit16 v10, v10, 0xa0

    div-int/lit8 v9, v9, 0x8

    new-array v11, v9, [B

    instance-of v12, v4, Ls0/z;

    if-eqz v12, :cond_269

    :goto_175
    iget-object v12, v0, Lx0/h;->e:Ljava/security/SecureRandom;

    invoke-virtual {v12, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v15, 0x0

    invoke-virtual {v4, v3, v15, v1}, Ls0/j;->update([BII)V

    move-object v12, v4

    check-cast v12, Ls0/z;

    invoke-virtual {v12, v5, v15}, Ls0/z;->doFinal([BI)I

    invoke-static {v3, v15, v7, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lx0/h;->b([B)V

    invoke-virtual {v4, v7, v15, v1}, Ls0/j;->update([BII)V

    invoke-virtual {v12, v7, v15}, Ls0/z;->doFinal([BI)I

    move v13, v15

    :goto_191
    if-eq v13, v1, :cond_19f

    aget-byte v14, v5, v13

    aget-byte v17, v7, v13

    xor-int v14, v14, v17

    int-to-byte v14, v14

    aput-byte v14, v8, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_191

    :cond_19f
    aget-byte v13, v8, v15

    or-int/lit8 v13, v13, -0x80

    int-to-byte v13, v13

    aput-byte v13, v8, v15

    const/16 v13, 0x13

    aget-byte v14, v8, v13

    const/4 v15, 0x1

    or-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v8, v13

    new-instance v13, Ljava/math/BigInteger;

    invoke-direct {v13, v15, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    iget v14, v0, Lx0/h;->d:I

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v14

    if-nez v14, :cond_1bd

    goto :goto_175

    :cond_1bd
    invoke-static {v3}, Lm4/d;->e([B)[B

    move-result-object v14

    invoke-static {v14}, Lx0/h;->b([B)V

    const/4 v15, 0x0

    :goto_1c5
    const/16 v1, 0x1000

    if-ge v15, v1, :cond_263

    const/4 v1, 0x1

    :goto_1ca
    if-gt v1, v10, :cond_1e8

    invoke-static {v14}, Lx0/h;->b([B)V

    mul-int/lit8 v19, v1, 0x14

    move/from16 v20, v1

    sub-int v1, v9, v19

    move-object/from16 v19, v7

    array-length v7, v14

    move-object/from16 v21, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v14, v8, v7}, Ls0/j;->update([BII)V

    invoke-virtual {v12, v11, v1}, Ls0/z;->doFinal([BI)I

    add-int/lit8 v1, v20, 0x1

    move-object/from16 v7, v19

    move-object/from16 v8, v21

    goto :goto_1ca

    :cond_1e8
    move-object/from16 v19, v7

    move-object/from16 v21, v8

    const/4 v8, 0x0

    mul-int/lit8 v1, v10, 0x14

    sub-int v1, v9, v1

    invoke-static {v14}, Lx0/h;->b([B)V

    array-length v7, v14

    invoke-virtual {v4, v14, v8, v7}, Ls0/j;->update([BII)V

    invoke-virtual {v12, v5, v8}, Ls0/z;->doFinal([BI)I

    rsub-int/lit8 v7, v1, 0x14

    invoke-static {v5, v7, v11, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v1, v11, v8

    or-int/lit8 v1, v1, -0x80

    int-to-byte v1, v1

    aput-byte v1, v11, v8

    new-instance v1, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v1, v7, v11}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v13, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    iget v8, v0, Lx0/h;->b:I

    if-eq v7, v8, :cond_22a

    :cond_225
    const/16 v17, 0x1

    const/16 v20, 0x0

    goto :goto_25b

    :cond_22a
    iget v7, v0, Lx0/h;->d:I

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v7

    if-eqz v7, :cond_225

    iget-object v7, v0, Lx0/h;->e:Ljava/security/SecureRandom;

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :cond_240
    invoke-static {v2, v0, v7}, Lm4/a;->d(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v8, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_240

    new-instance v0, Le1/m;

    new-instance v2, Le1/p;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v15, v5}, Le1/p;-><init>([BII)V

    invoke-direct {v0, v1, v13, v4, v2}, Le1/m;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Le1/p;)V

    return-object v0

    :goto_25b
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v19

    move-object/from16 v8, v21

    goto/16 :goto_1c5

    :cond_263
    const/16 v20, 0x0

    const/16 v1, 0x14

    goto/16 :goto_175

    :cond_269
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can only use SHA-1 for generating FIPS 186-2 parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(IILjava/security/SecureRandom;)V
    .registers 6

    iput p1, p0, Lx0/h;->b:I

    const/16 v0, 0x400

    if-le p1, v0, :cond_9

    const/16 v1, 0x100

    goto :goto_b

    :cond_9
    const/16 v1, 0xa0

    :goto_b
    iput v1, p0, Lx0/h;->c:I

    iput p2, p0, Lx0/h;->d:I

    if-gt p1, v0, :cond_14

    const/16 p1, 0x28

    goto :goto_1b

    :cond_14
    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x30

    :goto_1b
    add-int/lit8 p2, p2, 0x1

    div-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    iput-object p3, p0, Lx0/h;->e:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lx0/h;->f:Z

    const/4 p1, -0x1

    iput p1, p0, Lx0/h;->g:I

    return-void
.end method

.method public final d(Le1/l;)V
    .registers 8

    iget v0, p1, Le1/l;->a:I

    iget v1, p1, Le1/l;->b:I

    const/16 v2, 0x400

    if-lt v0, v2, :cond_77

    const/16 v3, 0xc00

    if-gt v0, v3, :cond_77

    rem-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_77

    if-ne v0, v2, :cond_1f

    const/16 v4, 0xa0

    if-ne v1, v4, :cond_17

    goto :goto_1f

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "N must be 160 for L = 1024"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    :goto_1f
    const/16 v4, 0x800

    const/16 v5, 0x100

    if-ne v0, v4, :cond_34

    const/16 v4, 0xe0

    if-eq v1, v4, :cond_34

    if-ne v1, v5, :cond_2c

    goto :goto_34

    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "N must be 224 or 256 for L = 2048"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    :goto_34
    if-ne v0, v3, :cond_41

    if-ne v1, v5, :cond_39

    goto :goto_41

    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "N must be 256 for L = 3072"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    :goto_41
    iget-object v3, p0, Lx0/h;->a:Ls0/j;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    if-lt v3, v1, :cond_6f

    iput v0, p0, Lx0/h;->b:I

    iput v1, p0, Lx0/h;->c:I

    iget v1, p1, Le1/l;->c:I

    iput v1, p0, Lx0/h;->d:I

    const/4 v3, 0x1

    if-gt v0, v2, :cond_59

    const/16 v0, 0x28

    goto :goto_5f

    :cond_59
    sub-int/2addr v0, v3

    div-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x30

    :goto_5f
    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    iget-object p1, p1, Le1/l;->d:Ljava/security/SecureRandom;

    iput-object p1, p0, Lx0/h;->e:Ljava/security/SecureRandom;

    iput-boolean v3, p0, Lx0/h;->f:Z

    const/4 p1, -0x1

    iput p1, p0, Lx0/h;->g:I

    return-void

    :cond_6f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Digest output size too small for value of N"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "L values must be between 1024 and 3072 and a multiple of 1024"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
