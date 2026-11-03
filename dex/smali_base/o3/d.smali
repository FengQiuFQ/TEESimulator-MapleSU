.class public final Lo3/d;
.super La3/a;


# instance fields
.field public final A1:[[S

.field public final B1:[[[S

.field public final C1:[[[S

.field public final D1:[[[S

.field public final E1:[[[S

.field public final F1:[[[S

.field public final G1:[[[S

.field public final H1:[[[S

.field public final I1:[B

.field public final J1:[B

.field public final q:[B

.field public final x:[[S

.field public final y:[[S

.field public final z1:[[S


# direct methods
.method public constructor <init>(Lo3/c;[B)V
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2}, La3/a;-><init>(ZLo3/c;)V

    iget-object v4, v2, Lo3/c;->z1:Ls0/o;

    iget v5, v2, Lo3/c;->q:I

    iget v6, v2, Lo3/c;->d:I

    iget v7, v2, Lo3/c;->c:I

    iget v8, v2, Lo3/c;->A1:I

    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/16 v10, 0x20

    const/4 v11, 0x3

    const/4 v13, 0x0

    if-ne v8, v11, :cond_1f8

    invoke-static {v1, v13, v10}, Lm4/d;->q([BII)[B

    move-result-object v8

    iput-object v8, v0, Lo3/d;->I1:[B

    const/16 v11, 0x40

    invoke-static {v1, v10, v11}, Lm4/d;->q([BII)[B

    move-result-object v1

    iput-object v1, v0, Lo3/d;->q:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v1

    invoke-static {v8}, Lm4/d;->e([B)[B

    move-result-object v8

    new-instance v10, Lo3/b;

    invoke-direct {v10, v1, v4}, Lo3/b;-><init>([BLs0/o;)V

    new-instance v11, Lo3/b;

    invoke-direct {v11, v8, v4}, Lo3/b;-><init>([BLs0/o;)V

    invoke-static {v10, v6, v5}, Lt4/d;->U(Lo3/b;II)[[S

    move-result-object v4

    invoke-static {v10, v7, v6}, Lt4/d;->U(Lo3/b;II)[[S

    move-result-object v8

    invoke-static {v10, v7, v5}, Lt4/d;->U(Lo3/b;II)[[S

    move-result-object v14

    invoke-static {v10, v6, v5}, Lt4/d;->U(Lo3/b;II)[[S

    move-result-object v10

    invoke-static {v8, v10}, Lq4/k;->C0([[S[[S)[[S

    move-result-object v15

    invoke-static {v15, v14}, Lq4/k;->i([[S[[S)[[S

    move-result-object v14

    invoke-static {v11, v6, v7, v7, v3}, Lt4/d;->T(Lo3/b;IIIZ)[[[S

    move-result-object v15

    invoke-static {v11, v6, v7, v6, v13}, Lt4/d;->T(Lo3/b;IIIZ)[[[S

    move-result-object v12

    move-object/from16 p2, v1

    invoke-static {v11, v5, v7, v7, v3}, Lt4/d;->T(Lo3/b;IIIZ)[[[S

    move-result-object v1

    invoke-static {v11, v5, v7, v6, v13}, Lt4/d;->T(Lo3/b;IIIZ)[[[S

    move-result-object v2

    invoke-static {v11, v5, v7, v5, v13}, Lt4/d;->T(Lo3/b;IIIZ)[[[S

    move-result-object v7

    invoke-static {v11, v5, v6, v6, v3}, Lt4/d;->T(Lo3/b;IIIZ)[[[S

    move-result-object v17

    invoke-static {v11, v5, v6, v5, v13}, Lt4/d;->T(Lo3/b;IIIZ)[[[S

    move-result-object v11

    invoke-static {v4, v1, v15}, Lq4/k;->E0([[S[[[S[[[S)[[[S

    move-result-object v15

    invoke-static {v4, v2, v12}, Lq4/k;->E0([[S[[[S[[[S)[[[S

    move-result-object v12

    invoke-static {v15}, Lt4/d;->u([[[S)[[[S

    move-result-object v18

    move/from16 v19, v3

    new-array v3, v6, [[[S

    move/from16 v20, v13

    :goto_84
    if-ge v13, v6, :cond_a7

    aget-object v21, v15, v13

    move-object/from16 v22, v1

    invoke-static/range {v21 .. v21}, Lq4/k;->j([[S)[[S

    move-result-object v1

    aput-object v1, v3, v13

    invoke-static {v1, v8}, Lq4/k;->C0([[S[[S)[[S

    move-result-object v1

    aput-object v1, v3, v13

    move-object/from16 v21, v2

    aget-object v2, v12, v13

    invoke-static {v1, v2}, Lq4/k;->i([[S[[S)[[S

    move-result-object v1

    aput-object v1, v3, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v21

    move-object/from16 v1, v22

    goto :goto_84

    :cond_a7
    move-object/from16 v22, v1

    move-object/from16 v21, v2

    new-array v1, v5, [[[S

    new-array v12, v5, [[[S

    new-array v13, v5, [[[S

    new-array v2, v5, [[[S

    invoke-static/range {v22 .. v22}, Lt4/d;->u([[[S)[[[S

    move-result-object v6

    move/from16 v15, v20

    :goto_b9
    if-ge v15, v5, :cond_1aa

    aget-object v23, v22, v15

    move-object/from16 v24, v1

    invoke-static/range {v23 .. v23}, Lq4/k;->j([[S)[[S

    move-result-object v1

    move-object/from16 v23, v2

    invoke-static {v1, v8}, Lq4/k;->C0([[S[[S)[[S

    move-result-object v2

    aput-object v2, v24, v15

    move-object/from16 v25, v3

    aget-object v3, v21, v15

    invoke-static {v2, v3}, Lq4/k;->i([[S[[S)[[S

    move-result-object v2

    aput-object v2, v24, v15

    invoke-static {v1, v14}, Lq4/k;->C0([[S[[S)[[S

    move-result-object v1

    aput-object v1, v12, v15

    aget-object v1, v21, v15

    invoke-static {v1, v10}, Lq4/k;->C0([[S[[S)[[S

    move-result-object v1

    aget-object v2, v12, v15

    invoke-static {v2, v1}, Lq4/k;->i([[S[[S)[[S

    move-result-object v1

    aput-object v1, v12, v15

    aget-object v2, v7, v15

    invoke-static {v1, v2}, Lq4/k;->i([[S[[S)[[S

    move-result-object v1

    aput-object v1, v12, v15

    aget-object v1, v22, v15

    invoke-static {v1, v8}, Lq4/k;->C0([[S[[S)[[S

    move-result-object v1

    aget-object v2, v21, v15

    invoke-static {v1, v2}, Lq4/k;->i([[S[[S)[[S

    move-result-object v1

    invoke-static {v8}, Lq4/k;->Z0([[S)[[S

    move-result-object v2

    invoke-static {v2, v1}, Lq4/k;->C0([[S[[S)[[S

    move-result-object v1

    aput-object v1, v13, v15

    aget-object v3, v17, v15

    invoke-static {v1, v3}, Lq4/k;->i([[S[[S)[[S

    move-result-object v1

    aput-object v1, v13, v15

    array-length v3, v1

    move-object/from16 v26, v4

    aget-object v4, v1, v20

    array-length v4, v4

    if-ne v3, v4, :cond_1a2

    array-length v3, v1

    array-length v4, v1

    move/from16 v27, v3

    move/from16 v28, v4

    const/4 v3, 0x2

    new-array v4, v3, [I

    aput v28, v4, v19

    aput v27, v4, v20

    invoke-static {v9, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    move-object/from16 v27, v3

    move/from16 v4, v20

    :goto_12e
    array-length v3, v1

    if-ge v4, v3, :cond_160

    aget-object v3, v27, v4

    aget-object v28, v1, v4

    aget-short v28, v28, v4

    aput-short v28, v3, v4

    add-int/lit8 v3, v4, 0x1

    move-object/from16 v28, v1

    move v1, v3

    move/from16 v29, v1

    :goto_140
    aget-object v3, v28, v20

    array-length v3, v3

    if-ge v1, v3, :cond_15b

    aget-object v3, v27, v4

    aget-object v30, v28, v4

    aget-short v30, v30, v1

    aget-object v31, v28, v1

    aget-short v31, v31, v4

    sget-object v32, Lo3/a;->a:[[B

    move/from16 v32, v1

    xor-int v1, v30, v31

    int-to-short v1, v1

    aput-short v1, v3, v32

    add-int/lit8 v1, v32, 0x1

    goto :goto_140

    :cond_15b
    move-object/from16 v1, v28

    move/from16 v4, v29

    goto :goto_12e

    :cond_160
    aput-object v27, v13, v15

    aget-object v1, v12, v15

    invoke-static {v2, v1}, Lq4/k;->C0([[S[[S)[[S

    move-result-object v1

    aput-object v1, v23, v15

    aget-object v1, v21, v15

    invoke-static {v1}, Lq4/k;->Z0([[S)[[S

    move-result-object v1

    invoke-static {v1, v14}, Lq4/k;->C0([[S[[S)[[S

    move-result-object v1

    aget-object v2, v23, v15

    invoke-static {v2, v1}, Lq4/k;->i([[S[[S)[[S

    move-result-object v1

    aput-object v1, v23, v15

    aget-object v1, v17, v15

    invoke-static {v1}, Lq4/k;->j([[S)[[S

    move-result-object v1

    invoke-static {v1, v10}, Lq4/k;->C0([[S[[S)[[S

    move-result-object v1

    aget-object v2, v23, v15

    invoke-static {v2, v1}, Lq4/k;->i([[S[[S)[[S

    move-result-object v1

    aput-object v1, v23, v15

    aget-object v2, v11, v15

    invoke-static {v1, v2}, Lq4/k;->i([[S[[S)[[S

    move-result-object v1

    aput-object v1, v23, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v23

    move-object/from16 v1, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    goto/16 :goto_b9

    :cond_1a2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Computation to upper triangular matrix is not possible!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1aa
    move-object/from16 v24, v1

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    new-instance v1, Lo3/d;

    move-object v2, v10

    move-object v10, v6

    move-object v6, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v8

    move-object v7, v14

    move-object/from16 v8, v18

    move-object/from16 v14, v23

    move-object/from16 v11, v24

    move-object/from16 v9, v25

    invoke-direct/range {v1 .. v14}, Lo3/d;-><init>(Lo3/c;[B[[S[[S[[S[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S)V

    const/4 v2, 0x0

    iput-object v2, v0, Lo3/d;->J1:[B

    iget-object v2, v1, Lo3/d;->x:[[S

    iput-object v2, v0, Lo3/d;->x:[[S

    iget-object v2, v1, Lo3/d;->y:[[S

    iput-object v2, v0, Lo3/d;->y:[[S

    iget-object v2, v1, Lo3/d;->z1:[[S

    iput-object v2, v0, Lo3/d;->z1:[[S

    iget-object v2, v1, Lo3/d;->A1:[[S

    iput-object v2, v0, Lo3/d;->A1:[[S

    iget-object v2, v1, Lo3/d;->B1:[[[S

    iput-object v2, v0, Lo3/d;->B1:[[[S

    iget-object v2, v1, Lo3/d;->C1:[[[S

    iput-object v2, v0, Lo3/d;->C1:[[[S

    iget-object v2, v1, Lo3/d;->D1:[[[S

    iput-object v2, v0, Lo3/d;->D1:[[[S

    iget-object v2, v1, Lo3/d;->E1:[[[S

    iput-object v2, v0, Lo3/d;->E1:[[[S

    iget-object v2, v1, Lo3/d;->F1:[[[S

    iput-object v2, v0, Lo3/d;->F1:[[[S

    iget-object v2, v1, Lo3/d;->G1:[[[S

    iput-object v2, v0, Lo3/d;->G1:[[[S

    iget-object v1, v1, Lo3/d;->H1:[[[S

    iput-object v1, v0, Lo3/d;->H1:[[[S

    return-void

    :cond_1f8
    move/from16 v19, v3

    move/from16 v20, v13

    const/4 v3, 0x2

    new-array v2, v3, [I

    aput v5, v2, v19

    aput v6, v2, v20

    invoke-static {v9, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    iput-object v2, v0, Lo3/d;->x:[[S

    new-array v4, v3, [I

    aput v6, v4, v19

    aput v7, v4, v20

    invoke-static {v9, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[S

    iput-object v4, v0, Lo3/d;->y:[[S

    new-array v8, v3, [I

    aput v5, v8, v19

    aput v7, v8, v20

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[S

    iput-object v8, v0, Lo3/d;->A1:[[S

    new-array v12, v3, [I

    aput v5, v12, v19

    aput v6, v12, v20

    invoke-static {v9, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[S

    iput-object v12, v0, Lo3/d;->z1:[[S

    new-array v13, v11, [I

    aput v7, v13, v3

    aput v7, v13, v19

    aput v6, v13, v20

    invoke-static {v9, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[[S

    iput-object v13, v0, Lo3/d;->B1:[[[S

    new-array v14, v11, [I

    aput v6, v14, v3

    aput v7, v14, v19

    aput v6, v14, v20

    invoke-static {v9, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[[S

    iput-object v14, v0, Lo3/d;->C1:[[[S

    new-array v15, v11, [I

    aput v7, v15, v3

    aput v7, v15, v19

    aput v5, v15, v20

    invoke-static {v9, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[[S

    iput-object v15, v0, Lo3/d;->D1:[[[S

    move/from16 v16, v3

    new-array v3, v11, [I

    aput v6, v3, v16

    aput v7, v3, v19

    aput v5, v3, v20

    invoke-static {v9, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[S

    iput-object v3, v0, Lo3/d;->E1:[[[S

    new-array v10, v11, [I

    aput v5, v10, v16

    aput v7, v10, v19

    aput v5, v10, v20

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[[S

    iput-object v7, v0, Lo3/d;->F1:[[[S

    new-array v10, v11, [I

    aput v6, v10, v16

    aput v6, v10, v19

    aput v5, v10, v20

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[[S

    iput-object v10, v0, Lo3/d;->G1:[[[S

    new-array v11, v11, [I

    aput v5, v11, v16

    aput v6, v11, v19

    aput v5, v11, v20

    invoke-static {v9, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[[S

    iput-object v5, v0, Lo3/d;->H1:[[[S

    const/4 v6, 0x0

    iput-object v6, v0, Lo3/d;->I1:[B

    move/from16 v9, v20

    const/16 v6, 0x20

    invoke-static {v1, v9, v6}, Lm4/d;->q([BII)[B

    move-result-object v6

    iput-object v6, v0, Lo3/d;->q:[B

    array-length v6, v6

    invoke-static {v2, v1, v6}, Lt4/d;->o0([[S[BI)I

    move-result v2

    add-int/2addr v2, v6

    invoke-static {v4, v1, v2}, Lt4/d;->o0([[S[BI)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v8, v1, v4}, Lt4/d;->o0([[S[BI)I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {v12, v1, v2}, Lt4/d;->o0([[S[BI)I

    move-result v4

    add-int/2addr v4, v2

    move/from16 v2, v19

    invoke-static {v13, v1, v4, v2}, Lt4/d;->p0([[[S[BIZ)I

    move-result v6

    add-int/2addr v6, v4

    const/4 v9, 0x0

    invoke-static {v14, v1, v6, v9}, Lt4/d;->p0([[[S[BIZ)I

    move-result v4

    add-int/2addr v4, v6

    invoke-static {v15, v1, v4, v2}, Lt4/d;->p0([[[S[BIZ)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v3, v1, v6, v9}, Lt4/d;->p0([[[S[BIZ)I

    move-result v3

    add-int/2addr v3, v6

    invoke-static {v7, v1, v3, v9}, Lt4/d;->p0([[[S[BIZ)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v10, v1, v4, v2}, Lt4/d;->p0([[[S[BIZ)I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {v5, v1, v2, v9}, Lt4/d;->p0([[[S[BIZ)I

    move-result v3

    add-int/2addr v3, v2

    array-length v2, v1

    invoke-static {v1, v3, v2}, Lm4/d;->q([BII)[B

    move-result-object v1

    iput-object v1, v0, Lo3/d;->J1:[B

    return-void
.end method

.method public constructor <init>(Lo3/c;[B[[S[[S[[S[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S)V
    .registers 15

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, La3/a;-><init>(ZLo3/c;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lo3/d;->I1:[B

    iput-object p1, p0, Lo3/d;->J1:[B

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lo3/d;->q:[B

    invoke-static {p3}, Lt4/d;->t([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lo3/d;->x:[[S

    invoke-static {p4}, Lt4/d;->t([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lo3/d;->y:[[S

    invoke-static {p5}, Lt4/d;->t([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lo3/d;->z1:[[S

    invoke-static {p6}, Lt4/d;->t([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lo3/d;->A1:[[S

    invoke-static {p7}, Lt4/d;->u([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lo3/d;->B1:[[[S

    invoke-static {p8}, Lt4/d;->u([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lo3/d;->C1:[[[S

    invoke-static {p9}, Lt4/d;->u([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lo3/d;->D1:[[[S

    invoke-static {p10}, Lt4/d;->u([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lo3/d;->E1:[[[S

    invoke-static {p11}, Lt4/d;->u([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lo3/d;->F1:[[[S

    invoke-static {p12}, Lt4/d;->u([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lo3/d;->G1:[[[S

    invoke-static {p13}, Lt4/d;->u([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lo3/d;->H1:[[[S

    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .registers 5

    iget-object v0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast v0, Lo3/c;

    iget v0, v0, Lo3/c;->A1:I

    iget-object v1, p0, Lo3/d;->q:[B

    iget-object v2, p0, Lo3/d;->I1:[B

    const/4 v3, 0x3

    if-ne v0, v3, :cond_12

    invoke-static {v2, v1}, Lm4/d;->j([B[B)[B

    move-result-object p0

    return-object p0

    :cond_12
    if-ne v0, v3, :cond_19

    invoke-static {v2, v1}, Lm4/d;->j([B[B)[B

    move-result-object v0

    goto :goto_89

    :cond_19
    iget-object v0, p0, Lo3/d;->x:[[S

    invoke-static {v0}, Lt4/d;->a0([[S)[B

    move-result-object v0

    invoke-static {v1, v0}, Lm4/d;->j([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lo3/d;->y:[[S

    invoke-static {v1}, Lt4/d;->a0([[S)[B

    move-result-object v1

    invoke-static {v0, v1}, Lm4/d;->j([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lo3/d;->A1:[[S

    invoke-static {v1}, Lt4/d;->a0([[S)[B

    move-result-object v1

    invoke-static {v0, v1}, Lm4/d;->j([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lo3/d;->z1:[[S

    invoke-static {v1}, Lt4/d;->a0([[S)[B

    move-result-object v1

    invoke-static {v0, v1}, Lm4/d;->j([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lo3/d;->B1:[[[S

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lt4/d;->b0([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lm4/d;->j([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lo3/d;->C1:[[[S

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lt4/d;->b0([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lm4/d;->j([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lo3/d;->D1:[[[S

    invoke-static {v1, v2}, Lt4/d;->b0([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lm4/d;->j([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lo3/d;->E1:[[[S

    invoke-static {v1, v3}, Lt4/d;->b0([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lm4/d;->j([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lo3/d;->F1:[[[S

    invoke-static {v1, v3}, Lt4/d;->b0([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lm4/d;->j([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lo3/d;->G1:[[[S

    invoke-static {v1, v2}, Lt4/d;->b0([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lm4/d;->j([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lo3/d;->H1:[[[S

    invoke-static {v1, v3}, Lt4/d;->b0([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lm4/d;->j([B[B)[B

    move-result-object v0

    :goto_89
    iget-object p0, p0, Lo3/d;->J1:[B

    invoke-static {v0, p0}, Lm4/d;->j([B[B)[B

    move-result-object p0

    return-object p0
.end method
