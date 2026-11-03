.class public Lv0/d0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/o0;


# static fields
.field public static final o:[I


# instance fields
.field public g:I

.field public final h:[I

.field public final i:[I

.field public final j:[B

.field public k:Z

.field public l:I

.field public m:I

.field public n:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, "expand 16-byte kexpand 32-byte k"

    invoke-static {v0}, Lm4/m;->c(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0x8

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v3, v1, :cond_19

    invoke-static {v4, v0}, Lm4/d;->z(I[B)I

    move-result v5

    aput v5, v2, v3

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_19
    sput-object v2, Lv0/d0;->o:[I

    const-string v0, "expand 32-byte k"

    invoke-static {v0}, Lm4/m;->c(Ljava/lang/String;)[B

    const-string v0, "expand 16-byte k"

    invoke-static {v0}, Lm4/m;->c(Ljava/lang/String;)[B

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lv0/d0;->g:I

    const/16 v1, 0x10

    new-array v2, v1, [I

    iput-object v2, p0, Lv0/d0;->h:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lv0/d0;->i:[I

    const/16 v1, 0x40

    new-array v1, v1, [B

    iput-object v1, p0, Lv0/d0;->j:[B

    iput-boolean v0, p0, Lv0/d0;->k:Z

    return-void
.end method

.method public static d(I[I)V
    .registers 5

    add-int/lit8 p0, p0, -0x10

    div-int/lit8 p0, p0, 0x4

    sget-object v0, Lv0/d0;->o:[I

    aget v1, v0, p0

    const/4 v2, 0x0

    aput v1, p1, v2

    add-int/lit8 v1, p0, 0x1

    aget v1, v0, v1

    const/4 v2, 0x1

    aput v1, p1, v2

    add-int/lit8 v1, p0, 0x2

    aget v1, v0, v1

    const/4 v2, 0x2

    aput v1, p1, v2

    const/4 v1, 0x3

    add-int/2addr p0, v1

    aget p0, v0, p0

    aput p0, p1, v1

    return-void
.end method

.method public static f(I[I[I)V
    .registers 45

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_237

    array-length v2, v1

    if-ne v2, v3, :cond_231

    rem-int/lit8 v2, p0, 0x2

    if-nez v2, :cond_229

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    const/4 v6, 0x2

    aget v7, v0, v6

    const/4 v8, 0x3

    aget v9, v0, v8

    const/4 v10, 0x4

    aget v11, v0, v10

    const/4 v12, 0x5

    aget v13, v0, v12

    const/4 v14, 0x6

    aget v15, v0, v14

    move/from16 v16, v2

    const/4 v2, 0x7

    aget v17, v0, v2

    const/16 v18, 0x8

    aget v19, v0, v18

    move/from16 v20, v4

    const/16 v4, 0x9

    aget v21, v0, v4

    const/16 v22, 0xa

    aget v23, v0, v22

    const/16 v24, 0xb

    aget v25, v0, v24

    const/16 v26, 0xc

    aget v27, v0, v26

    move/from16 v28, v6

    const/16 v6, 0xd

    aget v29, v0, v6

    const/16 v30, 0xe

    aget v31, v0, v30

    const/16 v32, 0xf

    aget v33, v0, v32

    move/from16 v34, v33

    move/from16 v33, v31

    move/from16 v31, v29

    move/from16 v29, v27

    move/from16 v27, v25

    move/from16 v25, v23

    move/from16 v23, v21

    move/from16 v21, v19

    move/from16 v19, v17

    move/from16 v17, v15

    move v15, v13

    move v13, v11

    move v11, v9

    move v9, v7

    move v7, v5

    move v5, v3

    move/from16 v3, p0

    :goto_6a
    if-lez v3, :cond_1c0

    move/from16 v35, v8

    add-int v8, v5, v29

    invoke-static {v8, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v8

    xor-int/2addr v8, v13

    add-int v13, v8, v5

    invoke-static {v13, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v13

    xor-int v13, v21, v13

    move/from16 v36, v10

    add-int v10, v13, v8

    invoke-static {v10, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    xor-int v10, v29, v10

    move/from16 v37, v12

    add-int v12, v10, v13

    move/from16 v38, v14

    const/16 v14, 0x12

    invoke-static {v12, v14}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v12

    xor-int/2addr v5, v12

    add-int v12, v15, v7

    invoke-static {v12, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v12

    xor-int v12, v23, v12

    add-int v2, v12, v15

    invoke-static {v2, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    xor-int v2, v31, v2

    add-int v4, v2, v12

    invoke-static {v4, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v4

    xor-int/2addr v4, v7

    add-int v7, v4, v2

    invoke-static {v7, v14}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    xor-int/2addr v7, v15

    add-int v15, v25, v17

    const/4 v14, 0x7

    invoke-static {v15, v14}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v15

    xor-int v14, v33, v15

    add-int v15, v14, v25

    const/16 v6, 0x9

    invoke-static {v15, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v15

    xor-int v6, v9, v15

    add-int v9, v6, v14

    const/16 v15, 0xd

    invoke-static {v9, v15}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v9

    xor-int v9, v17, v9

    add-int v15, v9, v6

    const/16 v0, 0x12

    invoke-static {v15, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v15

    xor-int v0, v25, v15

    add-int v15, v34, v27

    move/from16 v17, v0

    const/4 v0, 0x7

    invoke-static {v15, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v15

    xor-int v0, v11, v15

    add-int v11, v0, v34

    const/16 v15, 0x9

    invoke-static {v11, v15}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v11

    xor-int v11, v19, v11

    add-int v15, v11, v0

    move/from16 v21, v0

    const/16 v0, 0xd

    invoke-static {v15, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v15

    xor-int v0, v27, v15

    add-int v15, v0, v11

    move/from16 v19, v0

    const/16 v0, 0x12

    invoke-static {v15, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v15

    xor-int v0, v34, v15

    add-int v15, v5, v21

    move/from16 v23, v0

    const/4 v0, 0x7

    invoke-static {v15, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v15

    xor-int v0, v4, v15

    add-int v4, v0, v5

    const/16 v15, 0x9

    invoke-static {v4, v15}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v4

    xor-int/2addr v4, v6

    add-int v6, v4, v0

    const/16 v15, 0xd

    invoke-static {v6, v15}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v6

    xor-int v6, v21, v6

    add-int v15, v6, v4

    move/from16 v21, v0

    const/16 v0, 0x12

    invoke-static {v15, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v15

    xor-int/2addr v5, v15

    add-int v0, v7, v8

    const/4 v15, 0x7

    invoke-static {v0, v15}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    xor-int/2addr v0, v9

    add-int v9, v0, v7

    const/16 v15, 0x9

    invoke-static {v9, v15}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v9

    xor-int/2addr v9, v11

    add-int v11, v9, v0

    const/16 v15, 0xd

    invoke-static {v11, v15}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v11

    xor-int/2addr v8, v11

    add-int v11, v8, v9

    const/16 v15, 0x12

    invoke-static {v11, v15}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v11

    xor-int v15, v7, v11

    add-int v7, v17, v12

    const/4 v11, 0x7

    invoke-static {v7, v11}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    xor-int v27, v19, v7

    add-int v7, v27, v17

    const/16 v11, 0x9

    invoke-static {v7, v11}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    xor-int/2addr v7, v13

    add-int v11, v7, v27

    const/16 v13, 0xd

    invoke-static {v11, v13}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v11

    xor-int/2addr v11, v12

    add-int v12, v11, v7

    const/16 v13, 0x12

    invoke-static {v12, v13}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v12

    xor-int v25, v17, v12

    add-int v12, v23, v14

    const/4 v13, 0x7

    invoke-static {v12, v13}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v12

    xor-int v29, v10, v12

    add-int v10, v29, v23

    const/16 v12, 0x9

    invoke-static {v10, v12}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    xor-int v31, v2, v10

    add-int v2, v31, v29

    const/16 v13, 0xd

    invoke-static {v2, v13}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    xor-int v33, v14, v2

    add-int v2, v33, v31

    const/16 v13, 0x12

    invoke-static {v2, v13}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    xor-int v34, v23, v2

    add-int/lit8 v3, v3, -0x2

    move/from16 v2, v21

    move/from16 v21, v7

    move v7, v2

    move/from16 v17, v0

    move v13, v8

    move/from16 v19, v9

    move/from16 v23, v11

    move/from16 v8, v35

    move/from16 v10, v36

    move/from16 v12, v37

    move/from16 v14, v38

    const/4 v2, 0x7

    move-object/from16 v0, p1

    move v9, v4

    move v11, v6

    const/16 v4, 0x9

    const/16 v6, 0xd

    goto/16 :goto_6a

    :cond_1c0
    move/from16 v35, v8

    move/from16 v36, v10

    move/from16 v37, v12

    move/from16 v38, v14

    aget v0, p1, v16

    add-int/2addr v5, v0

    aput v5, v1, v16

    aget v0, p1, v20

    add-int/2addr v7, v0

    aput v7, v1, v20

    aget v0, p1, v28

    add-int/2addr v9, v0

    aput v9, v1, v28

    aget v0, p1, v35

    add-int/2addr v11, v0

    aput v11, v1, v35

    aget v0, p1, v36

    add-int/2addr v13, v0

    aput v13, v1, v36

    aget v0, p1, v37

    add-int/2addr v15, v0

    aput v15, v1, v37

    aget v0, p1, v38

    add-int v17, v17, v0

    aput v17, v1, v38

    const/16 v39, 0x7

    aget v0, p1, v39

    add-int v19, v19, v0

    aput v19, v1, v39

    aget v0, p1, v18

    add-int v21, v21, v0

    aput v21, v1, v18

    const/16 v40, 0x9

    aget v0, p1, v40

    add-int v23, v23, v0

    aput v23, v1, v40

    aget v0, p1, v22

    add-int v25, v25, v0

    aput v25, v1, v22

    aget v0, p1, v24

    add-int v27, v27, v0

    aput v27, v1, v24

    aget v0, p1, v26

    add-int v29, v29, v0

    aput v29, v1, v26

    const/16 v41, 0xd

    aget v0, p1, v41

    add-int v31, v31, v0

    aput v31, v1, v41

    aget v0, p1, v30

    add-int v33, v33, v0

    aput v33, v1, v30

    aget v0, p1, v32

    add-int v34, v34, v0

    aput v34, v1, v32

    return-void

    :cond_229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of rounds must be even"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object p0, p0, Lv0/d0;->h:[I

    const/16 v0, 0x8

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    if-nez v1, :cond_14

    const/16 v0, 0x9

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    :cond_14
    return-void
.end method

.method public b([B)V
    .registers 4

    const/16 v0, 0x14

    iget-object v1, p0, Lv0/d0;->h:[I

    iget-object p0, p0, Lv0/d0;->i:[I

    invoke-static {v0, v1, p0}, Lv0/d0;->f(I[I[I)V

    invoke-static {p1, p0}, Lm4/d;->y([B[I)V

    return-void
.end method

.method public c()I
    .registers 1

    const/16 p0, 0x8

    return p0
.end method

.method public e()V
    .registers 3

    iget-object p0, p0, Lv0/d0;->h:[I

    const/16 v0, 0x9

    const/4 v1, 0x0

    aput v1, p0, v0

    const/16 v0, 0x8

    aput v1, p0, v0

    return-void
.end method

.method public g([B[B)V
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lv0/d0;->h:[I

    if-eqz p1, :cond_57

    array-length v2, p1

    const/16 v3, 0x10

    if-eq v2, v3, :cond_2b

    array-length v2, p1

    const/16 v4, 0x20

    if-ne v2, v4, :cond_10

    goto :goto_2b

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lv0/d0;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " requires 128 bit or 256 bit key"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2b
    :goto_2b
    array-length p0, p1

    sub-int/2addr p0, v3

    const/4 v2, 0x4

    div-int/2addr p0, v2

    sget-object v4, Lv0/d0;->o:[I

    aget v5, v4, p0

    aput v5, v1, v0

    add-int/lit8 v5, p0, 0x1

    aget v5, v4, v5

    const/4 v6, 0x5

    aput v5, v1, v6

    add-int/lit8 v5, p0, 0x2

    aget v5, v4, v5

    const/16 v6, 0xa

    aput v5, v1, v6

    add-int/lit8 p0, p0, 0x3

    aget p0, v4, p0

    const/16 v4, 0xf

    aput p0, v1, v4

    const/4 p0, 0x1

    invoke-static {p1, v0, v1, p0, v2}, Lm4/d;->B([BI[III)V

    array-length p0, p1

    sub-int/2addr p0, v3

    const/16 v3, 0xb

    invoke-static {p1, p0, v1, v3, v2}, Lm4/d;->B([BI[III)V

    :cond_57
    const/4 p0, 0x6

    const/4 p1, 0x2

    invoke-static {p2, v0, v1, p0, p1}, Lm4/d;->B([BI[III)V

    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "Salsa20"

    return-object p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 6

    instance-of p1, p2, Le1/s0;

    if-eqz p1, :cond_a9

    move-object p1, p2

    check-cast p1, Le1/s0;

    iget-object v0, p1, Le1/s0;->c:[B

    if-eqz v0, :cond_82

    array-length v1, v0

    invoke-virtual {p0}, Lv0/d0;->c()I

    move-result v2

    if-ne v1, v2, :cond_82

    iget-object p1, p1, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    if-nez p1, :cond_3a

    iget-boolean p1, p0, Lv0/d0;->k:Z

    if-eqz p1, :cond_1f

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lv0/d0;->g([B[B)V

    goto :goto_58

    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lv0/d0;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " KeyParameter can not be null for first initialisation"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    instance-of v1, p1, Le1/o0;

    if-eqz v1, :cond_67

    check-cast p1, Le1/o0;

    iget-object p1, p1, Le1/o0;->c:[B

    invoke-virtual {p0, p1, v0}, Lv0/d0;->g([B[B)V

    invoke-virtual {p0}, Lv0/d0;->getAlgorithmName()Ljava/lang/String;

    array-length p1, p1

    instance-of p1, p2, Lorg/bouncycastle/crypto/j;

    if-nez p1, :cond_5f

    sget-object p1, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_58
    invoke-virtual {p0}, Lv0/d0;->reset()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv0/d0;->k:Z

    return-void

    :cond_5f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params should not be CryptoServicePurpose"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_67
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lv0/d0;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Init parameters must contain a KeyParameter (or null for re-init)"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_82
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lv0/d0;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " requires exactly "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv0/d0;->c()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes of IV"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lv0/d0;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Init parameters must include an IV"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final processBytes([BII[BI)I
    .registers 12

    iget-boolean v0, p0, Lv0/d0;->k:Z

    if-eqz v0, :cond_67

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_5f

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_57

    iget v0, p0, Lv0/d0;->l:I

    add-int/2addr v0, p3

    iput v0, p0, Lv0/d0;->l:I

    if-ge v0, p3, :cond_32

    if-ltz v0, :cond_32

    iget v0, p0, Lv0/d0;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv0/d0;->m:I

    if-nez v0, :cond_32

    iget v0, p0, Lv0/d0;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv0/d0;->n:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_2a

    goto :goto_32

    :cond_2a
    new-instance p0, Lorg/bouncycastle/crypto/c0;

    const-string p1, "2^70 byte limit per IV would be exceeded; Change IV"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    :goto_32
    const/4 v0, 0x0

    :goto_33
    if-ge v0, p3, :cond_56

    add-int v1, v0, p5

    iget v2, p0, Lv0/d0;->g:I

    iget-object v3, p0, Lv0/d0;->j:[B

    aget-byte v4, v3, v2

    add-int v5, v0, p2

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p4, v1

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v1, v2, 0x3f

    iput v1, p0, Lv0/d0;->g:I

    if-nez v1, :cond_53

    invoke-virtual {p0}, Lv0/d0;->a()V

    invoke-virtual {p0, v3}, Lv0/d0;->b([B)V

    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_56
    return p3

    :cond_57
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5f
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_67
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lv0/d0;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not initialised"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lv0/d0;->g:I

    iput v0, p0, Lv0/d0;->l:I

    iput v0, p0, Lv0/d0;->m:I

    iput v0, p0, Lv0/d0;->n:I

    invoke-virtual {p0}, Lv0/d0;->e()V

    iget-object v0, p0, Lv0/d0;->j:[B

    invoke-virtual {p0, v0}, Lv0/d0;->b([B)V

    return-void
.end method
