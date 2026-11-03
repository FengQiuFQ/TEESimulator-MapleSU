.class public final Lx0/o;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/t;


# instance fields
.field public final g:Lorg/bouncycastle/crypto/v;

.field public h:[B

.field public i:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/v;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/o;->g:Lorg/bouncycastle/crypto/v;

    return-void
.end method


# virtual methods
.method public final generateBytes([BII)I
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    array-length v3, v1

    sub-int/2addr v3, v2

    if-ltz v3, :cond_7b

    int-to-long v3, v2

    iget-object v5, v0, Lx0/o;->g:Lorg/bouncycastle/crypto/v;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v6

    const-wide v7, 0x1ffffffffL

    cmp-long v7, v3, v7

    if-gtz v7, :cond_73

    int-to-long v7, v6

    add-long v9, v3, v7

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    div-long/2addr v9, v7

    long-to-int v7, v9

    invoke-interface {v5}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v8

    new-array v8, v8, [B

    const/4 v9, 0x4

    new-array v10, v9, [B

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lm4/d;->w([BII)V

    move v13, v12

    move v14, v13

    move v15, v14

    :goto_33
    if-ge v13, v7, :cond_6e

    move/from16 p2, v11

    iget-object v11, v0, Lx0/o;->h:[B

    move/from16 v16, v7

    array-length v7, v11

    invoke-interface {v5, v11, v12, v7}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v5, v10, v12, v9}, Lorg/bouncycastle/crypto/v;->update([BII)V

    iget-object v7, v0, Lx0/o;->i:[B

    if-eqz v7, :cond_4a

    array-length v11, v7

    invoke-interface {v5, v7, v12, v11}, Lorg/bouncycastle/crypto/v;->update([BII)V

    :cond_4a
    invoke-interface {v5, v8, v12}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    if-le v2, v6, :cond_55

    invoke-static {v8, v12, v1, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v14, v6

    sub-int/2addr v2, v6

    goto :goto_58

    :cond_55
    invoke-static {v8, v12, v1, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_58
    const/4 v7, 0x3

    aget-byte v11, v10, v7

    add-int/lit8 v11, v11, 0x1

    int-to-byte v11, v11

    aput-byte v11, v10, v7

    if-nez v11, :cond_67

    add-int/lit16 v15, v15, 0x100

    invoke-static {v10, v15, v12}, Lm4/d;->w([BII)V

    :cond_67
    add-int/lit8 v13, v13, 0x1

    move/from16 v11, p2

    move/from16 v7, v16

    goto :goto_33

    :cond_6e
    invoke-interface {v5}, Lorg/bouncycastle/crypto/v;->reset()V

    long-to-int v0, v3

    return v0

    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output length too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7b
    new-instance v0, Lorg/bouncycastle/crypto/d0;

    const-string v1, "output buffer too small"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final init(Lorg/bouncycastle/crypto/u;)V
    .registers 3

    instance-of v0, p1, Le1/n0;

    if-eqz v0, :cond_f

    check-cast p1, Le1/n0;

    iget-object v0, p1, Le1/n0;->b:[B

    iput-object v0, p0, Lx0/o;->h:[B

    iget-object p1, p1, Le1/n0;->a:[B

    iput-object p1, p0, Lx0/o;->i:[B

    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "KDF parameters required for generator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
