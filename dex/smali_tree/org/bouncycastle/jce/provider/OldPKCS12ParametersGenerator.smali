.class Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;
.super Lorg/bouncycastle/crypto/e0;


# static fields
.field public static final IV_MATERIAL:I = 0x2

.field public static final KEY_MATERIAL:I = 0x1

.field public static final MAC_MATERIAL:I = 0x3


# instance fields
.field private digest:Lorg/bouncycastle/crypto/v;

.field private u:I

.field private v:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/v;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/v;

    instance-of v0, p1, Ls0/r;

    const/16 v1, 0x40

    if-eqz v0, :cond_12

    const/16 p1, 0x10

    iput p1, p0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->u:I

    :goto_f
    iput v1, p0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    return-void

    :cond_12
    instance-of v0, p1, Ls0/z;

    const/16 v2, 0x14

    if-eqz v0, :cond_1b

    :goto_18
    iput v2, p0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->u:I

    goto :goto_f

    :cond_1b
    instance-of v0, p1, Ls0/w;

    if-eqz v0, :cond_20

    goto :goto_18

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Digest "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/v;->getAlgorithmName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unsupported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private adjust([BI[B)V
    .registers 8

    array-length p0, p3

    add-int/lit8 p0, p0, -0x1

    aget-byte p0, p3, p0

    and-int/lit16 p0, p0, 0xff

    array-length v0, p3

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    array-length v0, p3

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    ushr-int/lit8 p0, p0, 0x8

    array-length v0, p3

    add-int/lit8 v0, v0, -0x2

    :goto_1e
    if-ltz v0, :cond_34

    aget-byte v1, p3, v0

    and-int/lit16 v1, v1, 0xff

    add-int v2, p2, v0

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    add-int/2addr v1, p0

    int-to-byte p0, v1

    aput-byte p0, p1, v2

    ushr-int/lit8 p0, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_34
    return-void
.end method

.method private generateDerivedKey(II)[B
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v2, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    new-array v3, v2, [B

    new-array v4, v1, [B

    const/4 v5, 0x0

    move v6, v5

    :goto_c
    if-eq v6, v2, :cond_16

    move/from16 v7, p1

    int-to-byte v8, v7

    aput-byte v8, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_16
    iget-object v6, v0, Lorg/bouncycastle/crypto/e0;->salt:[B

    const/4 v7, 0x1

    if-eqz v6, :cond_36

    array-length v8, v6

    if-eqz v8, :cond_36

    iget v8, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    array-length v6, v6

    add-int/2addr v6, v8

    sub-int/2addr v6, v7

    div-int/2addr v6, v8

    mul-int/2addr v6, v8

    new-array v8, v6, [B

    move v9, v5

    :goto_28
    if-eq v9, v6, :cond_38

    iget-object v10, v0, Lorg/bouncycastle/crypto/e0;->salt:[B

    array-length v11, v10

    rem-int v11, v9, v11

    aget-byte v10, v10, v11

    aput-byte v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_28

    :cond_36
    new-array v8, v5, [B

    :cond_38
    iget-object v6, v0, Lorg/bouncycastle/crypto/e0;->password:[B

    if-eqz v6, :cond_57

    array-length v9, v6

    if-eqz v9, :cond_57

    iget v9, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    array-length v6, v6

    add-int/2addr v6, v9

    sub-int/2addr v6, v7

    div-int/2addr v6, v9

    mul-int/2addr v6, v9

    new-array v9, v6, [B

    move v10, v5

    :goto_49
    if-eq v10, v6, :cond_59

    iget-object v11, v0, Lorg/bouncycastle/crypto/e0;->password:[B

    array-length v12, v11

    rem-int v12, v10, v12

    aget-byte v11, v11, v12

    aput-byte v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_49

    :cond_57
    new-array v9, v5, [B

    :cond_59
    array-length v6, v8

    array-length v10, v9

    add-int/2addr v6, v10

    new-array v10, v6, [B

    array-length v11, v8

    invoke-static {v8, v5, v10, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v8

    array-length v11, v9

    invoke-static {v9, v5, v10, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v8, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    new-array v9, v8, [B

    iget v11, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->u:I

    add-int v12, v1, v11

    sub-int/2addr v12, v7

    div-int/2addr v12, v11

    move v11, v7

    :goto_72
    if-gt v11, v12, :cond_d0

    iget v13, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->u:I

    new-array v14, v13, [B

    iget-object v15, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {v15, v3, v5, v2}, Lorg/bouncycastle/crypto/v;->update([BII)V

    iget-object v15, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {v15, v10, v5, v6}, Lorg/bouncycastle/crypto/v;->update([BII)V

    iget-object v15, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {v15, v14, v5}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    move v15, v7

    :goto_88
    iget v7, v0, Lorg/bouncycastle/crypto/e0;->iterationCount:I

    if-eq v15, v7, :cond_99

    iget-object v7, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {v7, v14, v5, v13}, Lorg/bouncycastle/crypto/v;->update([BII)V

    iget-object v7, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/v;

    invoke-interface {v7, v14, v5}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    add-int/lit8 v15, v15, 0x1

    goto :goto_88

    :cond_99
    move v7, v5

    :goto_9a
    if-eq v7, v8, :cond_a5

    rem-int v15, v7, v13

    aget-byte v15, v14, v15

    aput-byte v15, v9, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_9a

    :cond_a5
    move v7, v5

    :goto_a6
    iget v15, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->v:I

    div-int v5, v6, v15

    if-eq v7, v5, :cond_b4

    mul-int/2addr v15, v7

    invoke-direct {v0, v10, v15, v9}, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->adjust([BI[B)V

    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    goto :goto_a6

    :cond_b4
    if-ne v11, v12, :cond_c2

    add-int/lit8 v5, v11, -0x1

    iget v7, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->u:I

    mul-int/2addr v5, v7

    sub-int v7, v1, v5

    const/4 v15, 0x0

    invoke-static {v14, v15, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_cb

    :cond_c2
    const/4 v15, 0x0

    add-int/lit8 v5, v11, -0x1

    iget v7, v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->u:I

    mul-int/2addr v5, v7

    invoke-static {v14, v15, v4, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_cb
    add-int/lit8 v11, v11, 0x1

    move v5, v15

    const/4 v7, 0x1

    goto :goto_72

    :cond_d0
    return-object v4
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/g;
    .registers 4

    div-int/lit8 p1, p1, 0x8

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object p0

    new-instance v0, Le1/o0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Le1/o0;-><init>([BII)V

    return-object v0
.end method

.method public generateDerivedParameters(I)Lorg/bouncycastle/crypto/g;
    .registers 4

    div-int/lit8 p1, p1, 0x8

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object p0

    new-instance v0, Le1/o0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Le1/o0;-><init>([BII)V

    return-object v0
.end method

.method public generateDerivedParameters(II)Lorg/bouncycastle/crypto/g;
    .registers 7

    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, p2}, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object p0

    new-instance v1, Le1/s0;

    new-instance v2, Le1/o0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Le1/o0;-><init>([BII)V

    invoke-direct {v1, v2, p0, v3, p2}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[BII)V

    return-object v1
.end method
