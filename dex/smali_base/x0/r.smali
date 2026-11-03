.class public final Lx0/r;
.super Lorg/bouncycastle/crypto/e0;


# instance fields
.field public final a:Lz0/d;

.field public final b:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/v;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz0/d;

    invoke-direct {v0, p1}, Lz0/d;-><init>(Lorg/bouncycastle/crypto/v;)V

    iput-object v0, p0, Lx0/r;->a:Lz0/d;

    iget p1, v0, Lz0/d;->h:I

    new-array p1, p1, [B

    iput-object p1, p0, Lx0/r;->b:[B

    return-void
.end method


# virtual methods
.method public final a(I)[B
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lx0/r;->a:Lz0/d;

    iget v2, v1, Lz0/d;->h:I

    add-int v3, p1, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    div-int/2addr v3, v2

    const/4 v5, 0x4

    new-array v6, v5, [B

    mul-int v7, v3, v2

    new-array v7, v7, [B

    new-instance v8, Le1/o0;

    iget-object v9, v0, Lorg/bouncycastle/crypto/e0;->password:[B

    invoke-direct {v8, v9}, Le1/o0;-><init>([B)V

    invoke-virtual {v1, v8}, Lz0/d;->init(Lorg/bouncycastle/crypto/g;)V

    const/4 v8, 0x0

    move v9, v4

    move v10, v8

    :goto_1f
    if-gt v9, v3, :cond_73

    const/4 v11, 0x3

    :goto_22
    aget-byte v12, v6, v11

    add-int/2addr v12, v4

    int-to-byte v12, v12

    aput-byte v12, v6, v11

    if-nez v12, :cond_2d

    add-int/lit8 v11, v11, -0x1

    goto :goto_22

    :cond_2d
    iget-object v11, v0, Lorg/bouncycastle/crypto/e0;->salt:[B

    iget v12, v0, Lorg/bouncycastle/crypto/e0;->iterationCount:I

    if-eqz v12, :cond_6b

    if-eqz v11, :cond_39

    array-length v13, v11

    invoke-virtual {v1, v11, v8, v13}, Lz0/d;->update([BII)V

    :cond_39
    invoke-virtual {v1, v6, v8, v5}, Lz0/d;->update([BII)V

    iget-object v11, v0, Lx0/r;->b:[B

    invoke-virtual {v1, v11, v8}, Lz0/d;->doFinal([BI)I

    array-length v13, v11

    invoke-static {v11, v8, v7, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v13, v4

    :goto_46
    if-ge v13, v12, :cond_66

    array-length v14, v11

    invoke-virtual {v1, v11, v8, v14}, Lz0/d;->update([BII)V

    invoke-virtual {v1, v11, v8}, Lz0/d;->doFinal([BI)I

    move v14, v8

    :goto_50
    array-length v15, v11

    if-eq v14, v15, :cond_62

    add-int v15, v10, v14

    aget-byte v16, v7, v15

    aget-byte v17, v11, v14

    xor-int v4, v16, v17

    int-to-byte v4, v4

    aput-byte v4, v7, v15

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    goto :goto_50

    :cond_62
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x1

    goto :goto_46

    :cond_66
    add-int/2addr v10, v2

    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x1

    goto :goto_1f

    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iteration count must be at least 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    return-object v7
.end method

.method public final generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/g;
    .registers 2

    invoke-virtual {p0, p1}, Lx0/r;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/g;

    move-result-object p0

    return-object p0
.end method

.method public final generateDerivedParameters(I)Lorg/bouncycastle/crypto/g;
    .registers 4

    div-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lx0/r;->a(I)[B

    move-result-object p0

    new-instance v0, Le1/o0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Le1/o0;-><init>([BII)V

    return-object v0
.end method

.method public final generateDerivedParameters(II)Lorg/bouncycastle/crypto/g;
    .registers 6

    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Lx0/r;->a(I)[B

    move-result-object p0

    new-instance v0, Le1/s0;

    new-instance v1, Le1/o0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Le1/o0;-><init>([BII)V

    invoke-direct {v0, v1, p0, p1, p2}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[BII)V

    return-object v0
.end method
