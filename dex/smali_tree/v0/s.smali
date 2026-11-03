.class public final Lv0/s;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/d;


# static fields
.field public static final j:[B


# instance fields
.field public final g:[I

.field public h:Z

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lv0/s;->j:[B

    return-void

    :array_a
    .array-data 1
        -0x80t
        0x1bt
        0x36t
        0x6ct
        -0x28t
        -0x55t
        0x4dt
        -0x66t
        0x2ft
        0x5et
        -0x44t
        0x63t
        -0x3at
        -0x69t
        0x35t
        0x6at
        -0x2ct
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lv0/s;->g:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv0/s;->h:Z

    return-void
.end method


# virtual methods
.method public final b(II[B[B)I
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-boolean v5, v0, Lv0/s;->h:Z

    if-eqz v5, :cond_16c

    array-length v5, v3

    const/16 v6, 0x10

    sub-int/2addr v5, v6

    if-gt v1, v5, :cond_164

    array-length v5, v4

    sub-int/2addr v5, v6

    if-gt v2, v5, :cond_15c

    iget-boolean v5, v0, Lv0/s;->i:Z

    const/16 v9, 0x1f

    const/4 v10, 0x5

    sget-object v11, Lv0/s;->j:[B

    const/4 v13, 0x2

    const/4 v14, 0x1

    iget-object v0, v0, Lv0/s;->g:[I

    const/16 v16, 0x3

    const/16 v12, 0x8

    const/16 v17, 0x0

    const/16 v15, 0x18

    if-eqz v5, :cond_c2

    invoke-static {v1, v3}, Lm4/d;->b(I[B)I

    move-result v5

    add-int/lit8 v7, v1, 0x4

    invoke-static {v7, v3}, Lm4/d;->b(I[B)I

    move-result v7

    add-int/lit8 v8, v1, 0x8

    invoke-static {v8, v3}, Lm4/d;->b(I[B)I

    move-result v8

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1, v3}, Lm4/d;->b(I[B)I

    move-result v1

    aget v18, v0, v17

    aget v19, v0, v14

    aget v20, v0, v13

    aget v21, v0, v16

    :goto_4b
    aget-byte v0, v11, v17

    and-int/lit16 v0, v0, 0xff

    xor-int/2addr v0, v5

    xor-int v3, v0, v8

    invoke-static {v3, v12}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v5

    invoke-static {v3, v15}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v16

    xor-int v5, v5, v16

    xor-int/2addr v3, v5

    xor-int v0, v0, v18

    xor-int v5, v7, v19

    xor-int v7, v8, v20

    xor-int v1, v1, v21

    xor-int v8, v5, v1

    invoke-static {v8, v12}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v16

    invoke-static {v8, v15}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v22

    xor-int v16, v16, v22

    xor-int v8, v8, v16

    xor-int/2addr v0, v8

    xor-int/2addr v5, v3

    xor-int/2addr v7, v8

    xor-int/2addr v1, v3

    add-int/lit8 v3, v17, 0x1

    if-le v3, v6, :cond_8e

    invoke-static {v4, v0, v2}, Lm4/d;->w([BII)V

    add-int/lit8 v0, v2, 0x4

    invoke-static {v4, v5, v0}, Lm4/d;->w([BII)V

    add-int/lit8 v0, v2, 0x8

    invoke-static {v4, v7, v0}, Lm4/d;->w([BII)V

    add-int/lit8 v0, v2, 0xc

    invoke-static {v4, v1, v0}, Lm4/d;->w([BII)V

    return v6

    :cond_8e
    invoke-static {v5, v14}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v5

    invoke-static {v7, v10}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    invoke-static {v1, v13}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    or-int v8, v1, v7

    xor-int/2addr v5, v8

    not-int v8, v5

    and-int v16, v7, v8

    xor-int v0, v0, v16

    xor-int/2addr v8, v1

    xor-int/2addr v7, v8

    xor-int/2addr v7, v0

    or-int v8, v0, v7

    xor-int/2addr v5, v8

    and-int v8, v7, v5

    xor-int/2addr v1, v8

    invoke-static {v5, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v5

    const/16 v8, 0x1b

    invoke-static {v7, v8}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    const/16 v8, 0x1e

    invoke-static {v0, v8}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    move/from16 v17, v3

    move v8, v7

    move v7, v5

    move v5, v1

    move v1, v0

    goto :goto_4b

    :cond_c2
    invoke-static {v1, v3}, Lm4/d;->b(I[B)I

    move-result v5

    add-int/lit8 v7, v1, 0x4

    invoke-static {v7, v3}, Lm4/d;->b(I[B)I

    move-result v7

    add-int/lit8 v8, v1, 0x8

    invoke-static {v8, v3}, Lm4/d;->b(I[B)I

    move-result v8

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1, v3}, Lm4/d;->b(I[B)I

    move-result v1

    aget v3, v0, v17

    aget v17, v0, v14

    aget v18, v0, v13

    aget v0, v0, v16

    move/from16 v16, v6

    move/from16 v19, v16

    :goto_e4
    xor-int v6, v5, v8

    invoke-static {v6, v12}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v20

    invoke-static {v6, v15}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v21

    xor-int v20, v20, v21

    xor-int v6, v6, v20

    xor-int/2addr v5, v3

    xor-int v7, v7, v17

    xor-int v8, v8, v18

    xor-int/2addr v1, v0

    xor-int v9, v7, v1

    invoke-static {v9, v12}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v21

    invoke-static {v9, v15}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v22

    xor-int v21, v21, v22

    xor-int v9, v9, v21

    xor-int/2addr v5, v9

    xor-int/2addr v7, v6

    xor-int/2addr v8, v9

    xor-int/2addr v1, v6

    aget-byte v6, v11, v16

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v5, v6

    add-int/lit8 v16, v16, -0x1

    if-gez v16, :cond_126

    invoke-static {v4, v5, v2}, Lm4/d;->w([BII)V

    add-int/lit8 v0, v2, 0x4

    invoke-static {v4, v7, v0}, Lm4/d;->w([BII)V

    add-int/lit8 v0, v2, 0x8

    invoke-static {v4, v8, v0}, Lm4/d;->w([BII)V

    add-int/lit8 v0, v2, 0xc

    invoke-static {v4, v1, v0}, Lm4/d;->w([BII)V

    return v19

    :cond_126
    invoke-static {v7, v14}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v6

    invoke-static {v8, v10}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    invoke-static {v1, v13}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    or-int v8, v1, v7

    xor-int/2addr v6, v8

    not-int v8, v6

    and-int v9, v7, v8

    xor-int/2addr v5, v9

    xor-int/2addr v8, v1

    xor-int/2addr v7, v8

    xor-int/2addr v7, v5

    or-int v8, v5, v7

    xor-int/2addr v6, v8

    and-int v8, v7, v6

    xor-int/2addr v1, v8

    const/16 v8, 0x1f

    invoke-static {v6, v8}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v6

    const/16 v9, 0x1b

    invoke-static {v7, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    const/16 v8, 0x1e

    invoke-static {v5, v8}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v5

    move v8, v5

    move v5, v1

    move v1, v8

    move v8, v7

    const/16 v9, 0x1f

    move v7, v6

    goto :goto_e4

    :cond_15c
    new-instance v0, Lorg/bouncycastle/crypto/d0;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_164
    new-instance v0, Lorg/bouncycastle/crypto/q;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Noekeon not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()I
    .registers 1

    const/16 p0, 0x10

    return p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "Noekeon"

    return-object p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Le1/o0;

    if-eqz v3, :cond_80

    move-object v3, v2

    check-cast v3, Le1/o0;

    iget-object v3, v3, Le1/o0;->c:[B

    array-length v4, v3

    const/16 v5, 0x10

    if-ne v4, v5, :cond_78

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_17
    const/4 v7, 0x4

    iget-object v8, v0, Lv0/s;->g:[I

    if-ge v5, v7, :cond_26

    invoke-static {v6, v3}, Lm4/d;->b(I[B)I

    move-result v9

    aput v9, v8, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_26
    const/4 v3, 0x1

    if-nez v1, :cond_5c

    aget v5, v8, v4

    aget v6, v8, v3

    const/4 v7, 0x2

    aget v9, v8, v7

    const/4 v10, 0x3

    aget v11, v8, v10

    xor-int v12, v5, v9

    const/16 v13, 0x8

    invoke-static {v12, v13}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v14

    const/16 v15, 0x18

    invoke-static {v12, v15}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v16

    xor-int v14, v14, v16

    xor-int/2addr v12, v14

    xor-int v14, v6, v11

    invoke-static {v14, v13}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v13

    invoke-static {v14, v15}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v15

    xor-int/2addr v13, v15

    xor-int/2addr v13, v14

    xor-int/2addr v5, v13

    xor-int/2addr v6, v12

    xor-int/2addr v9, v13

    xor-int/2addr v11, v12

    aput v5, v8, v4

    aput v6, v8, v3

    aput v9, v8, v7

    aput v11, v8, v10

    :cond_5c
    iput-boolean v1, v0, Lv0/s;->i:Z

    iput-boolean v3, v0, Lv0/s;->h:Z

    instance-of v0, v2, Lorg/bouncycastle/crypto/j;

    if-nez v0, :cond_70

    sget-object v0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params should not be CryptoServicePurpose"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key length not 128 bits."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameter passed to Noekeon init - "

    invoke-static {v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->c(Ljava/lang/String;Lorg/bouncycastle/crypto/g;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final reset()V
    .registers 1

    return-void
.end method
