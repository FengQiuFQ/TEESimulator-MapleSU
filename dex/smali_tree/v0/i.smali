.class public final Lv0/i;
.super Lv0/d0;


# direct methods
.method public static h([I[I)V
    .registers 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1d1

    array-length v2, v1

    if-ne v2, v3, :cond_1cb

    const/4 v2, 0x0

    aget v4, v0, v2

    const/4 v5, 0x1

    aget v6, v0, v5

    const/4 v7, 0x2

    aget v8, v0, v7

    const/4 v9, 0x3

    aget v10, v0, v9

    const/4 v11, 0x4

    aget v12, v0, v11

    const/4 v13, 0x5

    aget v14, v0, v13

    const/4 v15, 0x6

    aget v16, v0, v15

    move/from16 v17, v2

    const/4 v2, 0x7

    aget v18, v0, v2

    move/from16 v19, v5

    const/16 v5, 0x8

    aget v20, v0, v5

    const/16 v21, 0x9

    aget v22, v0, v21

    const/16 v23, 0xa

    aget v24, v0, v23

    const/16 v25, 0xb

    aget v26, v0, v25

    move/from16 v27, v7

    const/16 v7, 0xc

    aget v28, v0, v7

    const/16 v29, 0xd

    aget v30, v0, v29

    const/16 v31, 0xe

    aget v32, v0, v31

    const/16 v33, 0xf

    aget v34, v0, v33

    const/16 v35, 0x14

    :goto_4c
    if-lez v35, :cond_164

    add-int/2addr v4, v12

    move/from16 v36, v9

    xor-int v9, v28, v4

    invoke-static {v9, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v9

    add-int v20, v20, v9

    xor-int v12, v12, v20

    invoke-static {v12, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v12

    add-int/2addr v4, v12

    xor-int/2addr v9, v4

    invoke-static {v9, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v9

    add-int v20, v20, v9

    xor-int v12, v12, v20

    invoke-static {v12, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v12

    add-int/2addr v6, v14

    move/from16 v37, v11

    xor-int v11, v30, v6

    invoke-static {v11, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v11

    add-int v22, v22, v11

    xor-int v14, v14, v22

    invoke-static {v14, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v14

    add-int/2addr v6, v14

    xor-int/2addr v11, v6

    invoke-static {v11, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v11

    add-int v22, v22, v11

    xor-int v14, v14, v22

    invoke-static {v14, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v14

    add-int v8, v8, v16

    move/from16 v38, v13

    xor-int v13, v32, v8

    invoke-static {v13, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v13

    add-int v24, v24, v13

    move/from16 v39, v15

    xor-int v15, v16, v24

    invoke-static {v15, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v15

    add-int/2addr v8, v15

    xor-int/2addr v13, v8

    invoke-static {v13, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v13

    add-int v24, v24, v13

    xor-int v15, v15, v24

    invoke-static {v15, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v15

    add-int v10, v10, v18

    xor-int v2, v34, v10

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    add-int v26, v26, v2

    xor-int v3, v18, v26

    invoke-static {v3, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v3

    add-int/2addr v10, v3

    xor-int/2addr v2, v10

    invoke-static {v2, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    add-int v26, v26, v2

    xor-int v3, v3, v26

    const/4 v5, 0x7

    invoke-static {v3, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v3

    add-int/2addr v4, v14

    xor-int/2addr v2, v4

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    add-int v24, v24, v2

    xor-int v5, v14, v24

    invoke-static {v5, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v5

    add-int/2addr v4, v5

    xor-int/2addr v2, v4

    const/16 v14, 0x8

    invoke-static {v2, v14}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v34

    add-int v24, v24, v34

    xor-int v2, v5, v24

    const/4 v5, 0x7

    invoke-static {v2, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v14

    add-int/2addr v6, v15

    xor-int v2, v9, v6

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    add-int v26, v26, v2

    xor-int v5, v15, v26

    invoke-static {v5, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v5

    add-int/2addr v6, v5

    xor-int/2addr v2, v6

    const/16 v9, 0x8

    invoke-static {v2, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v28

    add-int v26, v26, v28

    xor-int v2, v5, v26

    const/4 v5, 0x7

    invoke-static {v2, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v16

    add-int/2addr v8, v3

    xor-int v2, v11, v8

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    add-int v20, v20, v2

    xor-int v3, v3, v20

    invoke-static {v3, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v3

    add-int/2addr v8, v3

    xor-int/2addr v2, v8

    const/16 v9, 0x8

    invoke-static {v2, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v30

    add-int v20, v20, v30

    xor-int v2, v3, v20

    const/4 v5, 0x7

    invoke-static {v2, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v18

    add-int/2addr v10, v12

    xor-int v2, v13, v10

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    add-int v22, v22, v2

    xor-int v3, v12, v22

    invoke-static {v3, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v3

    add-int/2addr v10, v3

    xor-int/2addr v2, v10

    const/16 v9, 0x8

    invoke-static {v2, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v32

    add-int v22, v22, v32

    xor-int v2, v3, v22

    const/4 v3, 0x7

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v12

    add-int/lit8 v35, v35, -0x2

    move v3, v5

    move/from16 v9, v36

    move/from16 v11, v37

    move/from16 v13, v38

    move/from16 v15, v39

    const/4 v2, 0x7

    const/16 v5, 0x8

    goto/16 :goto_4c

    :cond_164
    move/from16 v36, v9

    move/from16 v37, v11

    move/from16 v38, v13

    move/from16 v39, v15

    aget v2, v0, v17

    add-int/2addr v4, v2

    aput v4, v1, v17

    aget v2, v0, v19

    add-int/2addr v6, v2

    aput v6, v1, v19

    aget v2, v0, v27

    add-int/2addr v8, v2

    aput v8, v1, v27

    aget v2, v0, v36

    add-int/2addr v10, v2

    aput v10, v1, v36

    aget v2, v0, v37

    add-int/2addr v12, v2

    aput v12, v1, v37

    aget v2, v0, v38

    add-int/2addr v14, v2

    aput v14, v1, v38

    aget v2, v0, v39

    add-int v16, v16, v2

    aput v16, v1, v39

    const/16 v40, 0x7

    aget v2, v0, v40

    add-int v18, v18, v2

    aput v18, v1, v40

    const/16 v41, 0x8

    aget v2, v0, v41

    add-int v20, v20, v2

    aput v20, v1, v41

    aget v2, v0, v21

    add-int v22, v22, v2

    aput v22, v1, v21

    aget v2, v0, v23

    add-int v24, v24, v2

    aput v24, v1, v23

    aget v2, v0, v25

    add-int v26, v26, v2

    aput v26, v1, v25

    aget v2, v0, v7

    add-int v28, v28, v2

    aput v28, v1, v7

    aget v2, v0, v29

    add-int v30, v30, v2

    aput v30, v1, v29

    aget v2, v0, v31

    add-int v32, v32, v2

    aput v32, v1, v31

    aget v0, v0, v33

    add-int v34, v34, v0

    aput v34, v1, v33

    return-void

    :cond_1cb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1d1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object p0, p0, Lv0/d0;->h:[I

    const/16 v0, 0xc

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    if-nez v1, :cond_14

    const/16 v0, 0xd

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    :cond_14
    return-void
.end method

.method public final b([B)V
    .registers 3

    iget-object v0, p0, Lv0/d0;->h:[I

    iget-object p0, p0, Lv0/d0;->i:[I

    invoke-static {v0, p0}, Lv0/i;->h([I[I)V

    invoke-static {p1, p0}, Lm4/d;->y([B[I)V

    return-void
.end method

.method public final e()V
    .registers 3

    iget-object p0, p0, Lv0/d0;->h:[I

    const/16 v0, 0xd

    const/4 v1, 0x0

    aput v1, p0, v0

    const/16 v0, 0xc

    aput v1, p0, v0

    return-void
.end method

.method public final g([B[B)V
    .registers 7

    const/4 v0, 0x0

    iget-object p0, p0, Lv0/d0;->h:[I

    if-eqz p1, :cond_27

    array-length v1, p1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_18

    array-length v1, p1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_10

    goto :goto_18

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ChaCha20 requires 128 bit or 256 bit key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    :goto_18
    array-length v1, p1

    invoke-static {v1, p0}, Lv0/d0;->d(I[I)V

    const/4 v1, 0x4

    invoke-static {p1, v0, p0, v1, v1}, Lm4/d;->B([BI[III)V

    array-length v3, p1

    sub-int/2addr v3, v2

    const/16 v2, 0x8

    invoke-static {p1, v3, p0, v2, v1}, Lm4/d;->B([BI[III)V

    :cond_27
    const/16 p1, 0xe

    const/4 v1, 0x2

    invoke-static {p2, v0, p0, p1, v1}, Lm4/d;->B([BI[III)V

    return-void
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "ChaCha20"

    return-object p0
.end method
