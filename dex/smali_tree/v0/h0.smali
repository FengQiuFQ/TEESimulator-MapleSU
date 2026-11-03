.class public final Lv0/h0;
.super Ld2/l;


# instance fields
.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(I[J[J)V
    .registers 4

    iput p1, p0, Lv0/h0;->q:I

    invoke-direct {p0, p2, p3}, Ld2/l;-><init>([J[J)V

    return-void
.end method


# virtual methods
.method public final a([J[J)V
    .registers 89

    move-object/from16 v0, p0

    iget v1, v0, Lv0/h0;->q:I

    packed-switch v1, :pswitch_data_87e

    iget-object v1, v0, Ld2/l;->d:Ljava/lang/Object;

    check-cast v1, [J

    iget-object v0, v0, Ld2/l;->c:Ljava/lang/Object;

    check-cast v0, [J

    sget-object v2, Lv0/i0;->n:[I

    sget-object v3, Lv0/i0;->q:[I

    array-length v4, v1

    const/16 v5, 0x11

    if-ne v4, v5, :cond_237

    array-length v4, v0

    const/4 v6, 0x5

    if-ne v4, v6, :cond_231

    const/4 v4, 0x0

    aget-wide v7, p1, v4

    const/4 v9, 0x1

    aget-wide v10, p1, v9

    const/4 v12, 0x2

    aget-wide v13, p1, v12

    const/4 v15, 0x3

    aget-wide v16, p1, v15

    const/16 v18, 0x4

    aget-wide v19, p1, v18

    aget-wide v21, p1, v6

    const/16 v23, 0x6

    aget-wide v24, p1, v23

    const/16 v26, 0x7

    aget-wide v27, p1, v26

    move/from16 p0, v4

    move v4, v5

    :goto_39
    if-lt v4, v9, :cond_1f1

    aget v29, v2, v4

    aget v30, v3, v4

    add-int/lit8 v31, v29, 0x1

    aget-wide v32, v1, v31

    sub-long v7, v7, v32

    add-int/lit8 v32, v29, 0x2

    aget-wide v33, v1, v32

    sub-long v10, v10, v33

    add-int/lit8 v33, v29, 0x3

    aget-wide v34, v1, v33

    sub-long v13, v13, v34

    add-int/lit8 v34, v29, 0x4

    aget-wide v35, v1, v34

    move/from16 v38, v6

    sub-long v5, v16, v35

    add-int/lit8 v16, v29, 0x5

    aget-wide v35, v1, v16

    move/from16 v39, v12

    move-wide/from16 v40, v13

    sub-long v12, v19, v35

    add-int/lit8 v14, v29, 0x6

    aget-wide v19, v1, v14

    add-int/lit8 v17, v30, 0x1

    aget-wide v35, v0, v17

    add-long v19, v19, v35

    move/from16 v35, v9

    move-wide/from16 v42, v10

    sub-long v9, v21, v19

    add-int/lit8 v11, v29, 0x7

    aget-wide v19, v1, v11

    add-int/lit8 v21, v30, 0x2

    aget-wide v21, v0, v21

    add-long v19, v19, v21

    move-object/from16 v44, v0

    move-object/from16 v36, v1

    sub-long v0, v24, v19

    add-int/lit8 v19, v29, 0x8

    aget-wide v19, v36, v19

    move-object/from16 v45, v2

    move-object/from16 v46, v3

    int-to-long v2, v4

    add-long v19, v19, v2

    const-wide/16 v21, 0x1

    add-long v19, v19, v21

    move-wide/from16 v21, v2

    sub-long v2, v27, v19

    move/from16 v47, v15

    const/16 v15, 0x8

    move/from16 p1, v4

    move-wide/from16 v48, v5

    move-wide/from16 v4, v42

    invoke-static {v15, v4, v5, v0, v1}, Lv0/i0;->f(IJJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const/16 v6, 0x23

    invoke-static {v6, v2, v3, v7, v8}, Lv0/i0;->f(IJJ)J

    move-result-wide v2

    sub-long/2addr v7, v2

    const/16 v6, 0x38

    move/from16 v19, v14

    move-wide/from16 v14, v40

    invoke-static {v6, v9, v10, v14, v15}, Lv0/i0;->f(IJJ)J

    move-result-wide v9

    sub-long/2addr v14, v9

    const/16 v6, 0x16

    move-wide/from16 v24, v2

    move-wide/from16 v2, v48

    invoke-static {v6, v2, v3, v12, v13}, Lv0/i0;->f(IJJ)J

    move-result-wide v2

    sub-long/2addr v12, v2

    const/16 v6, 0x19

    invoke-static {v6, v4, v5, v12, v13}, Lv0/i0;->f(IJJ)J

    move-result-wide v4

    sub-long/2addr v12, v4

    const/16 v6, 0x1d

    invoke-static {v6, v2, v3, v0, v1}, Lv0/i0;->f(IJJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v6, 0x27

    invoke-static {v6, v9, v10, v7, v8}, Lv0/i0;->f(IJJ)J

    move-result-wide v9

    sub-long/2addr v7, v9

    const/16 v6, 0x2b

    move-wide/from16 v40, v2

    move-wide/from16 v2, v24

    invoke-static {v6, v2, v3, v14, v15}, Lv0/i0;->f(IJJ)J

    move-result-wide v2

    sub-long/2addr v14, v2

    const/16 v6, 0xd

    invoke-static {v6, v4, v5, v14, v15}, Lv0/i0;->f(IJJ)J

    move-result-wide v4

    sub-long/2addr v14, v4

    const/16 v6, 0x32

    invoke-static {v6, v2, v3, v12, v13}, Lv0/i0;->f(IJJ)J

    move-result-wide v2

    sub-long/2addr v12, v2

    const/16 v6, 0xa

    invoke-static {v6, v9, v10, v0, v1}, Lv0/i0;->f(IJJ)J

    move-result-wide v9

    sub-long/2addr v0, v9

    move-wide/from16 v24, v0

    move-wide/from16 v0, v40

    const/16 v6, 0x11

    invoke-static {v6, v0, v1, v7, v8}, Lv0/i0;->f(IJJ)J

    move-result-wide v0

    sub-long/2addr v7, v0

    const/16 v6, 0x27

    invoke-static {v6, v4, v5, v7, v8}, Lv0/i0;->f(IJJ)J

    move-result-wide v4

    sub-long/2addr v7, v4

    const/16 v6, 0x1e

    invoke-static {v6, v0, v1, v14, v15}, Lv0/i0;->f(IJJ)J

    move-result-wide v0

    sub-long/2addr v14, v0

    const/16 v6, 0x22

    invoke-static {v6, v9, v10, v12, v13}, Lv0/i0;->f(IJJ)J

    move-result-wide v9

    sub-long/2addr v12, v9

    const/16 v6, 0x18

    move-wide/from16 v40, v0

    move-wide/from16 v0, v24

    invoke-static {v6, v2, v3, v0, v1}, Lv0/i0;->f(IJJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    aget-wide v24, v36, v29

    sub-long v7, v7, v24

    aget-wide v24, v36, v31

    sub-long v4, v4, v24

    aget-wide v24, v36, v32

    sub-long v14, v14, v24

    aget-wide v24, v36, v33

    move-wide/from16 v28, v0

    sub-long v0, v40, v24

    aget-wide v24, v36, v34

    sub-long v12, v12, v24

    aget-wide v24, v36, v16

    aget-wide v30, v44, v30

    add-long v24, v24, v30

    sub-long v9, v9, v24

    aget-wide v24, v36, v19

    aget-wide v16, v44, v17

    add-long v24, v24, v16

    move-wide/from16 v16, v2

    sub-long v2, v28, v24

    aget-wide v24, v36, v11

    add-long v24, v24, v21

    move-wide/from16 v21, v0

    sub-long v0, v16, v24

    const/16 v6, 0x2c

    invoke-static {v6, v4, v5, v2, v3}, Lv0/i0;->f(IJJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/16 v6, 0x9

    invoke-static {v6, v0, v1, v7, v8}, Lv0/i0;->f(IJJ)J

    move-result-wide v0

    sub-long/2addr v7, v0

    const/16 v6, 0x36

    invoke-static {v6, v9, v10, v14, v15}, Lv0/i0;->f(IJJ)J

    move-result-wide v9

    sub-long/2addr v14, v9

    move-wide/from16 v16, v0

    move-wide/from16 v0, v21

    const/16 v6, 0x38

    invoke-static {v6, v0, v1, v12, v13}, Lv0/i0;->f(IJJ)J

    move-result-wide v0

    sub-long/2addr v12, v0

    const/16 v6, 0x11

    invoke-static {v6, v4, v5, v12, v13}, Lv0/i0;->f(IJJ)J

    move-result-wide v4

    sub-long/2addr v12, v4

    const/16 v11, 0x31

    invoke-static {v11, v0, v1, v2, v3}, Lv0/i0;->f(IJJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v11, 0x24

    invoke-static {v11, v9, v10, v7, v8}, Lv0/i0;->f(IJJ)J

    move-result-wide v9

    sub-long/2addr v7, v9

    move-wide/from16 v19, v7

    move-wide/from16 v6, v16

    const/16 v8, 0x27

    invoke-static {v8, v6, v7, v14, v15}, Lv0/i0;->f(IJJ)J

    move-result-wide v6

    sub-long/2addr v14, v6

    const/16 v8, 0x21

    invoke-static {v8, v4, v5, v14, v15}, Lv0/i0;->f(IJJ)J

    move-result-wide v4

    sub-long/2addr v14, v4

    const/16 v8, 0x1b

    invoke-static {v8, v6, v7, v12, v13}, Lv0/i0;->f(IJJ)J

    move-result-wide v6

    sub-long/2addr v12, v6

    const/16 v8, 0xe

    invoke-static {v8, v9, v10, v2, v3}, Lv0/i0;->f(IJJ)J

    move-result-wide v8

    sub-long/2addr v2, v8

    const/16 v10, 0x2a

    move-wide/from16 v21, v12

    move-wide/from16 v11, v19

    invoke-static {v10, v0, v1, v11, v12}, Lv0/i0;->f(IJJ)J

    move-result-wide v0

    sub-long v10, v11, v0

    const/16 v12, 0x2e

    invoke-static {v12, v4, v5, v10, v11}, Lv0/i0;->f(IJJ)J

    move-result-wide v4

    sub-long/2addr v10, v4

    const/16 v12, 0x24

    invoke-static {v12, v0, v1, v14, v15}, Lv0/i0;->f(IJJ)J

    move-result-wide v16

    sub-long v13, v14, v16

    const/16 v0, 0x13

    move-wide/from16 v19, v4

    move-wide/from16 v4, v21

    invoke-static {v0, v8, v9, v4, v5}, Lv0/i0;->f(IJJ)J

    move-result-wide v21

    sub-long v0, v4, v21

    const/16 v4, 0x25

    invoke-static {v4, v6, v7, v2, v3}, Lv0/i0;->f(IJJ)J

    move-result-wide v27

    sub-long v24, v2, v27

    add-int/lit8 v4, p1, -0x2

    move-wide v7, v10

    move-wide/from16 v10, v19

    move/from16 v9, v35

    move/from16 v6, v38

    move/from16 v12, v39

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    move/from16 v15, v47

    const/16 v5, 0x11

    move-wide/from16 v19, v0

    move-object/from16 v1, v36

    move-object/from16 v0, v44

    goto/16 :goto_39

    :cond_1f1
    move-object/from16 v44, v0

    move-object/from16 v36, v1

    move/from16 v38, v6

    move/from16 v35, v9

    move/from16 v39, v12

    move/from16 v47, v15

    aget-wide v0, v36, p0

    sub-long/2addr v7, v0

    aget-wide v0, v36, v35

    sub-long/2addr v10, v0

    aget-wide v0, v36, v39

    sub-long/2addr v13, v0

    aget-wide v0, v36, v47

    sub-long v16, v16, v0

    aget-wide v0, v36, v18

    sub-long v19, v19, v0

    aget-wide v0, v36, v38

    aget-wide v2, v44, p0

    add-long/2addr v0, v2

    sub-long v21, v21, v0

    aget-wide v0, v36, v23

    aget-wide v2, v44, v35

    add-long/2addr v0, v2

    sub-long v24, v24, v0

    aget-wide v0, v36, v26

    sub-long v27, v27, v0

    aput-wide v7, p2, p0

    aput-wide v10, p2, v35

    aput-wide v13, p2, v39

    aput-wide v16, p2, v47

    aput-wide v19, p2, v18

    aput-wide v21, p2, v38

    aput-wide v24, p2, v23

    aput-wide v27, p2, v26

    return-void

    :cond_231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_23d
    iget-object v1, v0, Ld2/l;->d:Ljava/lang/Object;

    check-cast v1, [J

    iget-object v0, v0, Ld2/l;->c:Ljava/lang/Object;

    check-cast v0, [J

    sget-object v2, Lv0/i0;->p:[I

    sget-object v3, Lv0/i0;->q:[I

    array-length v4, v1

    const/16 v5, 0x9

    if-ne v4, v5, :cond_370

    array-length v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_36a

    const/4 v4, 0x0

    aget-wide v6, p1, v4

    const/4 v8, 0x1

    aget-wide v9, p1, v8

    const/4 v11, 0x2

    aget-wide v12, p1, v11

    const/4 v14, 0x3

    aget-wide v15, p1, v14

    const/16 v17, 0x11

    move/from16 p0, v4

    move/from16 v4, v17

    :goto_264
    if-lt v4, v8, :cond_346

    aget v17, v2, v4

    aget v18, v3, v4

    add-int/lit8 v19, v17, 0x1

    aget-wide v20, v1, v19

    sub-long v6, v6, v20

    add-int/lit8 v20, v17, 0x2

    aget-wide v21, v1, v20

    add-int/lit8 v23, v18, 0x1

    aget-wide v24, v0, v23

    add-long v21, v21, v24

    sub-long v9, v9, v21

    add-int/lit8 v21, v17, 0x3

    aget-wide v24, v1, v21

    add-int/lit8 v22, v18, 0x2

    aget-wide v26, v0, v22

    add-long v24, v24, v26

    sub-long v12, v12, v24

    add-int/lit8 v22, v17, 0x4

    aget-wide v24, v1, v22

    move/from16 v22, v14

    move-wide/from16 v26, v15

    int-to-long v14, v4

    add-long v24, v24, v14

    const-wide/16 v28, 0x1

    add-long v24, v24, v28

    move/from16 v16, v8

    move-wide/from16 v28, v9

    sub-long v8, v26, v24

    const/16 v10, 0x20

    invoke-static {v10, v8, v9, v6, v7}, Lv0/i0;->f(IJJ)J

    move-result-wide v8

    sub-long/2addr v6, v8

    move-wide/from16 v25, v6

    move-wide/from16 v5, v28

    invoke-static {v10, v5, v6, v12, v13}, Lv0/i0;->f(IJJ)J

    move-result-wide v5

    sub-long/2addr v12, v5

    const/16 v7, 0x3a

    move/from16 v28, v11

    move-wide/from16 v29, v12

    move-wide/from16 v11, v25

    invoke-static {v7, v5, v6, v11, v12}, Lv0/i0;->f(IJJ)J

    move-result-wide v5

    sub-long v10, v11, v5

    const/16 v7, 0x16

    move-wide/from16 v12, v29

    invoke-static {v7, v8, v9, v12, v13}, Lv0/i0;->f(IJJ)J

    move-result-wide v7

    sub-long/2addr v12, v7

    const/16 v9, 0x2e

    invoke-static {v9, v7, v8, v10, v11}, Lv0/i0;->f(IJJ)J

    move-result-wide v7

    sub-long/2addr v10, v7

    const/16 v9, 0xc

    invoke-static {v9, v5, v6, v12, v13}, Lv0/i0;->f(IJJ)J

    move-result-wide v5

    sub-long/2addr v12, v5

    const/16 v9, 0x19

    invoke-static {v9, v5, v6, v10, v11}, Lv0/i0;->f(IJJ)J

    move-result-wide v5

    sub-long/2addr v10, v5

    const/16 v9, 0x21

    invoke-static {v9, v7, v8, v12, v13}, Lv0/i0;->f(IJJ)J

    move-result-wide v7

    sub-long/2addr v12, v7

    aget-wide v25, v1, v17

    sub-long v10, v10, v25

    aget-wide v25, v1, v19

    aget-wide v17, v0, v18

    add-long v25, v25, v17

    sub-long v5, v5, v25

    aget-wide v17, v1, v20

    aget-wide v19, v0, v23

    add-long v17, v17, v19

    sub-long v12, v12, v17

    aget-wide v17, v1, v21

    add-long v17, v17, v14

    sub-long v7, v7, v17

    const/4 v14, 0x5

    invoke-static {v14, v7, v8, v10, v11}, Lv0/i0;->f(IJJ)J

    move-result-wide v7

    sub-long/2addr v10, v7

    const/16 v9, 0x25

    invoke-static {v9, v5, v6, v12, v13}, Lv0/i0;->f(IJJ)J

    move-result-wide v5

    sub-long/2addr v12, v5

    const/16 v9, 0x17

    invoke-static {v9, v5, v6, v10, v11}, Lv0/i0;->f(IJJ)J

    move-result-wide v5

    sub-long/2addr v10, v5

    const/16 v9, 0x28

    invoke-static {v9, v7, v8, v12, v13}, Lv0/i0;->f(IJJ)J

    move-result-wide v7

    sub-long/2addr v12, v7

    const/16 v9, 0x34

    invoke-static {v9, v7, v8, v10, v11}, Lv0/i0;->f(IJJ)J

    move-result-wide v7

    sub-long/2addr v10, v7

    const/16 v9, 0x39

    invoke-static {v9, v5, v6, v12, v13}, Lv0/i0;->f(IJJ)J

    move-result-wide v5

    sub-long/2addr v12, v5

    const/16 v9, 0xe

    invoke-static {v9, v5, v6, v10, v11}, Lv0/i0;->f(IJJ)J

    move-result-wide v5

    sub-long v9, v10, v5

    const/16 v11, 0x10

    invoke-static {v11, v7, v8, v12, v13}, Lv0/i0;->f(IJJ)J

    move-result-wide v7

    sub-long/2addr v12, v7

    add-int/lit8 v4, v4, -0x2

    move-wide/from16 v82, v7

    move/from16 v8, v16

    move-wide/from16 v15, v82

    move/from16 v11, v28

    move-wide/from16 v82, v5

    move v5, v14

    move-wide v6, v9

    move/from16 v14, v22

    move-wide/from16 v9, v82

    goto/16 :goto_264

    :cond_346
    move/from16 v28, v11

    move/from16 v22, v14

    move-wide/from16 v26, v15

    move/from16 v16, v8

    aget-wide v2, v1, p0

    sub-long/2addr v6, v2

    aget-wide v2, v1, v16

    aget-wide v4, v0, p0

    add-long/2addr v2, v4

    sub-long/2addr v9, v2

    aget-wide v2, v1, v28

    aget-wide v4, v0, v16

    add-long/2addr v2, v4

    sub-long/2addr v12, v2

    aget-wide v0, v1, v22

    sub-long v0, v26, v0

    aput-wide v6, p2, p0

    aput-wide v9, p2, v16

    aput-wide v12, p2, v28

    aput-wide v0, p2, v22

    return-void

    :cond_36a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_376
    iget-object v1, v0, Ld2/l;->d:Ljava/lang/Object;

    check-cast v1, [J

    iget-object v0, v0, Ld2/l;->c:Ljava/lang/Object;

    check-cast v0, [J

    sget-object v2, Lv0/i0;->o:[I

    sget-object v3, Lv0/i0;->q:[I

    array-length v4, v1

    const/16 v5, 0x21

    if-ne v4, v5, :cond_878

    array-length v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_872

    const/4 v4, 0x0

    aget-wide v6, p1, v4

    const/4 v8, 0x1

    aget-wide v9, p1, v8

    const/4 v11, 0x2

    aget-wide v12, p1, v11

    const/4 v14, 0x3

    aget-wide v15, p1, v14

    move/from16 p0, v4

    const/4 v4, 0x4

    aget-wide v17, p1, v4

    aget-wide v19, p1, v5

    const/16 v21, 0x6

    aget-wide v22, p1, v21

    const/16 v24, 0x7

    aget-wide v25, p1, v24

    move/from16 v27, v11

    const/16 v11, 0x8

    aget-wide v28, p1, v11

    move/from16 v30, v14

    const/16 v14, 0x9

    aget-wide v31, p1, v14

    const/16 v11, 0xa

    aget-wide v34, p1, v11

    const/16 v36, 0xb

    aget-wide v37, p1, v36

    const/16 v11, 0xc

    aget-wide v40, p1, v11

    const/16 v5, 0xd

    aget-wide v43, p1, v5

    const/16 v45, 0xe

    aget-wide v46, p1, v45

    const/16 v48, 0xf

    aget-wide v49, p1, v48

    const/16 v11, 0x13

    :goto_3cc
    if-lt v11, v8, :cond_7ed

    aget v53, v2, v11

    aget v54, v3, v11

    add-int/lit8 v55, v53, 0x1

    aget-wide v56, v1, v55

    sub-long v6, v6, v56

    add-int/lit8 v56, v53, 0x2

    aget-wide v57, v1, v56

    sub-long v9, v9, v57

    add-int/lit8 v57, v53, 0x3

    aget-wide v58, v1, v57

    sub-long v12, v12, v58

    add-int/lit8 v58, v53, 0x4

    aget-wide v59, v1, v58

    sub-long v4, v15, v59

    add-int/lit8 v15, v53, 0x5

    aget-wide v59, v1, v15

    move/from16 v62, v8

    move-wide/from16 v63, v9

    sub-long v8, v17, v59

    add-int/lit8 v10, v53, 0x6

    aget-wide v16, v1, v10

    move/from16 v60, v15

    sub-long v14, v19, v16

    add-int/lit8 v16, v53, 0x7

    aget-wide v17, v1, v16

    move-object/from16 v66, v0

    move-object/from16 v65, v1

    sub-long v0, v22, v17

    add-int/lit8 v17, v53, 0x8

    aget-wide v18, v65, v17

    move-object/from16 v67, v2

    move-object/from16 v68, v3

    sub-long v2, v25, v18

    add-int/lit8 v18, v53, 0x9

    aget-wide v19, v65, v18

    move-wide/from16 v22, v2

    sub-long v2, v28, v19

    add-int/lit8 v19, v53, 0xa

    aget-wide v25, v65, v19

    move-wide/from16 v69, v4

    sub-long v4, v31, v25

    add-int/lit8 v20, v53, 0xb

    aget-wide v25, v65, v20

    move-wide/from16 v28, v2

    sub-long v2, v34, v25

    add-int/lit8 v25, v53, 0xc

    aget-wide v31, v65, v25

    move-wide/from16 v34, v2

    sub-long v2, v37, v31

    add-int/lit8 v26, v53, 0xd

    aget-wide v31, v65, v26

    move-wide/from16 v71, v14

    sub-long v14, v40, v31

    add-int/lit8 v31, v53, 0xe

    aget-wide v37, v65, v31

    add-int/lit8 v32, v54, 0x1

    aget-wide v40, v66, v32

    add-long v37, v37, v40

    move-wide/from16 v40, v14

    sub-long v14, v43, v37

    add-int/lit8 v37, v53, 0xf

    aget-wide v43, v65, v37

    add-int/lit8 v38, v54, 0x2

    aget-wide v73, v66, v38

    add-long v43, v43, v73

    move-wide/from16 v73, v4

    sub-long v4, v46, v43

    add-int/lit8 v38, v53, 0x10

    aget-wide v43, v65, v38

    move-wide/from16 v46, v4

    int-to-long v4, v11

    add-long v43, v43, v4

    const-wide/16 v75, 0x1

    add-long v43, v43, v75

    move-wide/from16 v75, v4

    sub-long v4, v49, v43

    move/from16 v77, v10

    const/16 v10, 0x9

    invoke-static {v10, v4, v5, v6, v7}, Lv0/i0;->f(IJJ)J

    move-result-wide v4

    sub-long/2addr v6, v4

    const/16 v10, 0x30

    invoke-static {v10, v2, v3, v12, v13}, Lv0/i0;->f(IJJ)J

    move-result-wide v2

    sub-long/2addr v12, v2

    const/16 v10, 0x23

    invoke-static {v10, v14, v15, v0, v1}, Lv0/i0;->f(IJJ)J

    move-result-wide v14

    sub-long/2addr v0, v14

    const/16 v10, 0x34

    move-wide/from16 v43, v2

    move-wide/from16 v2, v73

    invoke-static {v10, v2, v3, v8, v9}, Lv0/i0;->f(IJJ)J

    move-result-wide v2

    sub-long/2addr v8, v2

    const/16 v10, 0x17

    move-wide/from16 v49, v46

    move-wide/from16 v46, v14

    move-wide/from16 v14, v49

    move-wide/from16 v49, v2

    move-wide/from16 v2, v63

    invoke-static {v10, v2, v3, v14, v15}, Lv0/i0;->f(IJJ)J

    move-result-wide v2

    sub-long/2addr v14, v2

    const/16 v10, 0x1f

    move-wide/from16 v63, v28

    move-wide/from16 v28, v4

    move-wide/from16 v4, v63

    move-wide/from16 v63, v14

    move-wide/from16 v14, v71

    invoke-static {v10, v14, v15, v4, v5}, Lv0/i0;->f(IJJ)J

    move-result-wide v14

    sub-long/2addr v4, v14

    const/16 v10, 0x25

    move-wide/from16 v71, v34

    move-wide/from16 v34, v0

    move-wide/from16 v0, v71

    move-wide/from16 v71, v4

    move-wide/from16 v4, v69

    invoke-static {v10, v4, v5, v0, v1}, Lv0/i0;->f(IJJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const/16 v10, 0x14

    move-wide/from16 v73, v0

    move-wide/from16 v0, v22

    move-wide/from16 v22, v2

    move-wide/from16 v2, v40

    invoke-static {v10, v0, v1, v2, v3}, Lv0/i0;->f(IJJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v10, 0x1f

    invoke-static {v10, v0, v1, v6, v7}, Lv0/i0;->f(IJJ)J

    move-result-wide v0

    sub-long/2addr v6, v0

    const/16 v10, 0x2c

    invoke-static {v10, v14, v15, v12, v13}, Lv0/i0;->f(IJJ)J

    move-result-wide v14

    sub-long/2addr v12, v14

    const/16 v10, 0x2f

    invoke-static {v10, v4, v5, v8, v9}, Lv0/i0;->f(IJJ)J

    move-result-wide v4

    sub-long/2addr v8, v4

    const/16 v10, 0x2e

    move-wide/from16 v78, v22

    move-wide/from16 v22, v4

    move-wide/from16 v4, v78

    move-wide/from16 v78, v14

    move-wide/from16 v14, v34

    invoke-static {v10, v4, v5, v14, v15}, Lv0/i0;->f(IJJ)J

    move-result-wide v4

    sub-long/2addr v14, v4

    move/from16 v70, v11

    move-wide/from16 v10, v28

    move-wide/from16 v28, v4

    const/16 v4, 0x13

    invoke-static {v4, v10, v11, v2, v3}, Lv0/i0;->f(IJJ)J

    move-result-wide v10

    sub-long/2addr v2, v10

    const/16 v4, 0x2a

    move-wide/from16 v34, v2

    move-wide/from16 v2, v46

    move-wide/from16 v46, v0

    move-wide/from16 v0, v63

    invoke-static {v4, v2, v3, v0, v1}, Lv0/i0;->f(IJJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v4, 0x2c

    move-wide/from16 v63, v0

    move-wide/from16 v0, v43

    move-wide/from16 v43, v8

    move-wide/from16 v8, v71

    invoke-static {v4, v0, v1, v8, v9}, Lv0/i0;->f(IJJ)J

    move-result-wide v0

    sub-long v4, v8, v0

    const/16 v8, 0x19

    move-wide/from16 v71, v4

    move-wide/from16 v4, v49

    move-wide/from16 v49, v10

    move-wide/from16 v9, v73

    invoke-static {v8, v4, v5, v9, v10}, Lv0/i0;->f(IJJ)J

    move-result-wide v4

    sub-long v8, v9, v4

    const/16 v10, 0x10

    invoke-static {v10, v4, v5, v6, v7}, Lv0/i0;->f(IJJ)J

    move-result-wide v4

    sub-long/2addr v6, v4

    const/16 v11, 0x22

    invoke-static {v11, v2, v3, v12, v13}, Lv0/i0;->f(IJJ)J

    move-result-wide v2

    sub-long/2addr v12, v2

    const/16 v11, 0x38

    invoke-static {v11, v0, v1, v14, v15}, Lv0/i0;->f(IJJ)J

    move-result-wide v0

    sub-long/2addr v14, v0

    const/16 v11, 0x33

    move-wide/from16 v73, v2

    move-wide/from16 v2, v43

    move-wide/from16 v43, v0

    move-wide/from16 v0, v49

    invoke-static {v11, v0, v1, v2, v3}, Lv0/i0;->f(IJJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    move-wide/from16 v10, v46

    move-wide/from16 v46, v0

    const/4 v0, 0x4

    invoke-static {v0, v10, v11, v8, v9}, Lv0/i0;->f(IJJ)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const/16 v0, 0x35

    move-wide/from16 v49, v8

    move-wide/from16 v8, v22

    move-wide/from16 v22, v4

    move-wide/from16 v4, v34

    invoke-static {v0, v8, v9, v4, v5}, Lv0/i0;->f(IJJ)J

    move-result-wide v0

    sub-long/2addr v4, v0

    const/16 v8, 0x2a

    move-wide/from16 v34, v63

    move-wide/from16 v63, v10

    move-wide/from16 v9, v34

    move-wide/from16 v34, v4

    move-wide/from16 v4, v78

    invoke-static {v8, v4, v5, v9, v10}, Lv0/i0;->f(IJJ)J

    move-result-wide v4

    sub-long v8, v9, v4

    const/16 v10, 0x29

    move-wide/from16 v78, v8

    move-wide/from16 v8, v28

    move-wide/from16 v28, v14

    move-wide/from16 v14, v71

    invoke-static {v10, v8, v9, v14, v15}, Lv0/i0;->f(IJJ)J

    move-result-wide v8

    sub-long/2addr v14, v8

    invoke-static {v10, v8, v9, v6, v7}, Lv0/i0;->f(IJJ)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const/16 v11, 0x9

    invoke-static {v11, v0, v1, v12, v13}, Lv0/i0;->f(IJJ)J

    move-result-wide v0

    sub-long/2addr v12, v0

    const/16 v11, 0x25

    invoke-static {v11, v4, v5, v2, v3}, Lv0/i0;->f(IJJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    move-wide/from16 v10, v28

    move-wide/from16 v28, v0

    move-wide/from16 v0, v63

    move-wide/from16 v63, v2

    const/16 v2, 0x1f

    invoke-static {v2, v0, v1, v10, v11}, Lv0/i0;->f(IJJ)J

    move-result-wide v0

    sub-long v2, v10, v0

    move-wide/from16 v10, v22

    move-wide/from16 v22, v0

    const/16 v0, 0xc

    invoke-static {v0, v10, v11, v14, v15}, Lv0/i0;->f(IJJ)J

    move-result-wide v10

    sub-long/2addr v14, v10

    move-wide/from16 v0, v43

    move-wide/from16 v43, v2

    move-wide/from16 v2, v49

    move-wide/from16 v49, v4

    const/16 v4, 0x2f

    invoke-static {v4, v0, v1, v2, v3}, Lv0/i0;->f(IJJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v4, 0x2c

    move-wide/from16 v80, v34

    move-wide/from16 v34, v2

    move-wide/from16 v2, v80

    move-wide/from16 v80, v0

    move-wide/from16 v0, v73

    invoke-static {v4, v0, v1, v2, v3}, Lv0/i0;->f(IJJ)J

    move-result-wide v0

    sub-long v4, v2, v0

    const/16 v2, 0x1e

    move-wide/from16 v72, v0

    move-wide/from16 v0, v46

    move-wide/from16 v46, v4

    move-wide/from16 v3, v78

    invoke-static {v2, v0, v1, v3, v4}, Lv0/i0;->f(IJJ)J

    move-result-wide v0

    sub-long v2, v3, v0

    aget-wide v4, v65, v53

    sub-long/2addr v6, v4

    aget-wide v4, v65, v55

    sub-long/2addr v8, v4

    aget-wide v4, v65, v56

    sub-long/2addr v12, v4

    aget-wide v4, v65, v57

    sub-long v4, v28, v4

    aget-wide v28, v65, v58

    move-wide/from16 v55, v0

    sub-long v0, v63, v28

    aget-wide v28, v65, v60

    move-wide/from16 v57, v2

    sub-long v2, v49, v28

    aget-wide v28, v65, v77

    move-wide/from16 v49, v10

    sub-long v10, v43, v28

    aget-wide v28, v65, v16

    move-wide/from16 v43, v14

    sub-long v14, v22, v28

    aget-wide v16, v65, v17

    move-wide/from16 v22, v14

    sub-long v14, v43, v16

    aget-wide v16, v65, v18

    move-wide/from16 v28, v4

    sub-long v4, v49, v16

    aget-wide v16, v65, v19

    move-wide/from16 v18, v2

    sub-long v2, v34, v16

    aget-wide v16, v65, v20

    move-wide/from16 v34, v2

    sub-long v2, v80, v16

    aget-wide v16, v65, v25

    move-wide/from16 v43, v14

    sub-long v14, v46, v16

    aget-wide v16, v65, v26

    aget-wide v25, v66, v54

    add-long v16, v16, v25

    move-wide/from16 v25, v14

    sub-long v14, v72, v16

    aget-wide v16, v65, v31

    aget-wide v31, v66, v32

    add-long v16, v16, v31

    move-wide/from16 v31, v8

    sub-long v8, v57, v16

    aget-wide v16, v65, v37

    add-long v16, v16, v75

    move-wide/from16 v37, v8

    sub-long v8, v55, v16

    move-wide/from16 v16, v0

    const/4 v0, 0x5

    invoke-static {v0, v8, v9, v6, v7}, Lv0/i0;->f(IJJ)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const/16 v0, 0x14

    invoke-static {v0, v2, v3, v12, v13}, Lv0/i0;->f(IJJ)J

    move-result-wide v0

    sub-long/2addr v12, v0

    const/16 v2, 0x30

    invoke-static {v2, v14, v15, v10, v11}, Lv0/i0;->f(IJJ)J

    move-result-wide v2

    sub-long/2addr v10, v2

    move-wide/from16 v14, v16

    move-wide/from16 v16, v0

    const/16 v0, 0x29

    invoke-static {v0, v4, v5, v14, v15}, Lv0/i0;->f(IJJ)J

    move-result-wide v4

    sub-long v0, v14, v4

    move-wide/from16 v14, v31

    move-wide/from16 v31, v4

    move-wide/from16 v4, v37

    move-wide/from16 v37, v2

    const/16 v2, 0x2f

    invoke-static {v2, v14, v15, v4, v5}, Lv0/i0;->f(IJJ)J

    move-result-wide v14

    sub-long v2, v4, v14

    const/16 v4, 0x1c

    move-wide/from16 v46, v2

    move-wide/from16 v2, v18

    move-wide/from16 v18, v8

    move-wide/from16 v8, v43

    invoke-static {v4, v2, v3, v8, v9}, Lv0/i0;->f(IJJ)J

    move-result-wide v2

    sub-long v4, v8, v2

    move-wide/from16 v8, v28

    move-wide/from16 v28, v4

    move-wide/from16 v4, v34

    move-wide/from16 v34, v10

    const/16 v10, 0x10

    invoke-static {v10, v8, v9, v4, v5}, Lv0/i0;->f(IJJ)J

    move-result-wide v8

    sub-long/2addr v4, v8

    const/16 v10, 0x19

    move-wide/from16 v43, v4

    move-wide/from16 v4, v22

    move-wide/from16 v22, v14

    move-wide/from16 v14, v25

    invoke-static {v10, v4, v5, v14, v15}, Lv0/i0;->f(IJJ)J

    move-result-wide v4

    sub-long/2addr v14, v4

    const/16 v10, 0x21

    invoke-static {v10, v4, v5, v6, v7}, Lv0/i0;->f(IJJ)J

    move-result-wide v4

    sub-long/2addr v6, v4

    const/4 v10, 0x4

    invoke-static {v10, v2, v3, v12, v13}, Lv0/i0;->f(IJJ)J

    move-result-wide v2

    sub-long/2addr v12, v2

    const/16 v10, 0x33

    invoke-static {v10, v8, v9, v0, v1}, Lv0/i0;->f(IJJ)J

    move-result-wide v8

    sub-long/2addr v0, v8

    move-wide/from16 v10, v22

    move-wide/from16 v22, v2

    move-wide v2, v10

    move-wide/from16 v25, v8

    move-wide/from16 v10, v34

    const/16 v8, 0xd

    invoke-static {v8, v2, v3, v10, v11}, Lv0/i0;->f(IJJ)J

    move-result-wide v2

    sub-long/2addr v10, v2

    const/16 v8, 0x22

    move-wide/from16 v34, v2

    move-wide/from16 v2, v18

    invoke-static {v8, v2, v3, v14, v15}, Lv0/i0;->f(IJJ)J

    move-result-wide v2

    sub-long/2addr v14, v2

    move-wide/from16 v18, v14

    move-wide/from16 v8, v37

    move-wide/from16 v14, v46

    move-wide/from16 v37, v4

    const/16 v4, 0x29

    invoke-static {v4, v8, v9, v14, v15}, Lv0/i0;->f(IJJ)J

    move-result-wide v4

    sub-long v8, v14, v4

    const/16 v14, 0x3b

    move-wide/from16 v46, v8

    move-wide/from16 v8, v16

    move-wide v15, v0

    move-wide/from16 v0, v28

    invoke-static {v14, v8, v9, v0, v1}, Lv0/i0;->f(IJJ)J

    move-result-wide v8

    sub-long/2addr v0, v8

    const/16 v14, 0x11

    move-wide/from16 v28, v0

    move-wide/from16 v0, v31

    move-wide/from16 v31, v2

    move-wide/from16 v2, v43

    invoke-static {v14, v0, v1, v2, v3}, Lv0/i0;->f(IJJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v14, 0x26

    invoke-static {v14, v0, v1, v6, v7}, Lv0/i0;->f(IJJ)J

    move-result-wide v0

    sub-long/2addr v6, v0

    const/16 v14, 0x13

    invoke-static {v14, v4, v5, v12, v13}, Lv0/i0;->f(IJJ)J

    move-result-wide v4

    sub-long/2addr v12, v4

    const/16 v14, 0xa

    invoke-static {v14, v8, v9, v10, v11}, Lv0/i0;->f(IJJ)J

    move-result-wide v8

    sub-long/2addr v10, v8

    const/16 v14, 0x37

    move-wide/from16 v43, v4

    move-wide v4, v15

    move-wide v15, v8

    move-wide/from16 v8, v31

    invoke-static {v14, v8, v9, v4, v5}, Lv0/i0;->f(IJJ)J

    move-result-wide v8

    sub-long/2addr v4, v8

    const/16 v14, 0x31

    move-wide/from16 v31, v8

    move-wide/from16 v8, v37

    invoke-static {v14, v8, v9, v2, v3}, Lv0/i0;->f(IJJ)J

    move-result-wide v8

    sub-long/2addr v2, v8

    const/16 v14, 0x12

    move-wide/from16 v37, v18

    move-wide/from16 v17, v0

    move-wide/from16 v0, v37

    move-wide/from16 v37, v2

    move-wide/from16 v2, v25

    invoke-static {v14, v2, v3, v0, v1}, Lv0/i0;->f(IJJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v14, 0x17

    move-wide/from16 v19, v0

    move-wide/from16 v0, v22

    move-wide/from16 v22, v8

    move-wide/from16 v8, v46

    invoke-static {v14, v0, v1, v8, v9}, Lv0/i0;->f(IJJ)J

    move-result-wide v0

    sub-long/2addr v8, v0

    const/16 v14, 0x34

    move-wide/from16 v25, v28

    move-wide/from16 v28, v10

    move-wide/from16 v10, v25

    move-wide/from16 v25, v8

    move-wide/from16 v8, v34

    invoke-static {v14, v8, v9, v10, v11}, Lv0/i0;->f(IJJ)J

    move-result-wide v8

    sub-long/2addr v10, v8

    const/16 v14, 0x18

    invoke-static {v14, v8, v9, v6, v7}, Lv0/i0;->f(IJJ)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const/16 v14, 0xd

    invoke-static {v14, v2, v3, v12, v13}, Lv0/i0;->f(IJJ)J

    move-result-wide v2

    sub-long/2addr v12, v2

    const/16 v14, 0x8

    invoke-static {v14, v0, v1, v4, v5}, Lv0/i0;->f(IJJ)J

    move-result-wide v0

    sub-long/2addr v4, v0

    move-wide/from16 v34, v22

    move-wide/from16 v22, v0

    move-wide/from16 v0, v34

    move-wide/from16 v34, v15

    move-wide/from16 v14, v28

    move-wide/from16 v28, v2

    const/16 v2, 0x2f

    invoke-static {v2, v0, v1, v14, v15}, Lv0/i0;->f(IJJ)J

    move-result-wide v0

    sub-long v2, v14, v0

    move-wide/from16 v14, v17

    move-wide/from16 v16, v0

    const/16 v0, 0x8

    invoke-static {v0, v14, v15, v10, v11}, Lv0/i0;->f(IJJ)J

    move-result-wide v14

    sub-long v0, v10, v14

    const/16 v10, 0x11

    move-wide/from16 v40, v0

    move-wide/from16 v0, v34

    move-wide/from16 v34, v2

    move-wide/from16 v2, v37

    invoke-static {v10, v0, v1, v2, v3}, Lv0/i0;->f(IJJ)J

    move-result-wide v37

    sub-long v0, v2, v37

    const/16 v2, 0x16

    move-wide/from16 v10, v19

    move-wide/from16 v18, v0

    move-wide v0, v10

    move-wide/from16 v10, v43

    invoke-static {v2, v10, v11, v0, v1}, Lv0/i0;->f(IJJ)J

    move-result-wide v43

    sub-long v0, v0, v43

    move-wide/from16 v10, v25

    move-wide/from16 v2, v31

    move-wide/from16 v25, v0

    const/16 v0, 0x25

    invoke-static {v0, v2, v3, v10, v11}, Lv0/i0;->f(IJJ)J

    move-result-wide v49

    sub-long v46, v10, v49

    add-int/lit8 v11, v70, -0x2

    move-wide/from16 v0, v34

    move-wide/from16 v34, v18

    move-wide/from16 v19, v22

    move-wide/from16 v22, v0

    move-wide v9, v8

    move-wide/from16 v31, v14

    move/from16 v8, v62

    move-object/from16 v1, v65

    move-object/from16 v0, v66

    move-object/from16 v2, v67

    move-object/from16 v3, v68

    const/16 v14, 0x9

    move-wide/from16 v82, v4

    const/4 v4, 0x4

    move-wide/from16 v84, v16

    move-wide/from16 v17, v82

    move-wide/from16 v15, v28

    move-wide/from16 v28, v40

    move-wide/from16 v40, v25

    move-wide/from16 v25, v84

    goto/16 :goto_3cc

    :cond_7ed
    move-object/from16 v66, v0

    move-object/from16 v65, v1

    move/from16 v62, v8

    aget-wide v0, v65, p0

    sub-long/2addr v6, v0

    aget-wide v0, v65, v62

    sub-long/2addr v9, v0

    aget-wide v0, v65, v27

    sub-long/2addr v12, v0

    aget-wide v0, v65, v30

    sub-long/2addr v15, v0

    const/16 v61, 0x4

    aget-wide v0, v65, v61

    sub-long v17, v17, v0

    const/16 v42, 0x5

    aget-wide v0, v65, v42

    sub-long v19, v19, v0

    aget-wide v0, v65, v21

    sub-long v22, v22, v0

    aget-wide v0, v65, v24

    sub-long v25, v25, v0

    const/16 v33, 0x8

    aget-wide v0, v65, v33

    sub-long v28, v28, v0

    const/16 v59, 0x9

    aget-wide v0, v65, v59

    sub-long v31, v31, v0

    const/16 v39, 0xa

    aget-wide v0, v65, v39

    sub-long v34, v34, v0

    aget-wide v0, v65, v36

    sub-long v37, v37, v0

    const/16 v52, 0xc

    aget-wide v0, v65, v52

    sub-long v40, v40, v0

    const/16 v51, 0xd

    aget-wide v0, v65, v51

    aget-wide v2, v66, p0

    add-long/2addr v0, v2

    sub-long v43, v43, v0

    aget-wide v0, v65, v45

    aget-wide v2, v66, v62

    add-long/2addr v0, v2

    sub-long v46, v46, v0

    aget-wide v0, v65, v48

    sub-long v49, v49, v0

    aput-wide v6, p2, p0

    aput-wide v9, p2, v62

    aput-wide v12, p2, v27

    aput-wide v15, p2, v30

    const/16 v61, 0x4

    aput-wide v17, p2, v61

    const/16 v42, 0x5

    aput-wide v19, p2, v42

    aput-wide v22, p2, v21

    aput-wide v25, p2, v24

    const/16 v33, 0x8

    aput-wide v28, p2, v33

    const/16 v59, 0x9

    aput-wide v31, p2, v59

    const/16 v39, 0xa

    aput-wide v34, p2, v39

    aput-wide v37, p2, v36

    const/16 v52, 0xc

    aput-wide v40, p2, v52

    const/16 v51, 0xd

    aput-wide v43, p2, v51

    aput-wide v46, p2, v45

    aput-wide v49, p2, v48

    return-void

    :cond_872
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_878
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_data_87e
    .packed-switch 0x0
        :pswitch_376
        :pswitch_23d
    .end packed-switch
.end method

.method public final b([J[J)V
    .registers 88

    move-object/from16 v0, p0

    iget v1, v0, Lv0/h0;->q:I

    packed-switch v1, :pswitch_data_862

    iget-object v1, v0, Ld2/l;->d:Ljava/lang/Object;

    check-cast v1, [J

    iget-object v0, v0, Ld2/l;->c:Ljava/lang/Object;

    check-cast v0, [J

    sget-object v2, Lv0/i0;->n:[I

    sget-object v3, Lv0/i0;->q:[I

    array-length v4, v1

    const/16 v5, 0x11

    if-ne v4, v5, :cond_240

    array-length v4, v0

    const/4 v6, 0x5

    if-ne v4, v6, :cond_23a

    const/4 v4, 0x0

    aget-wide v7, p1, v4

    const/4 v9, 0x1

    aget-wide v10, p1, v9

    const/4 v12, 0x2

    aget-wide v13, p1, v12

    const/4 v15, 0x3

    aget-wide v16, p1, v15

    const/16 v18, 0x4

    aget-wide v19, p1, v18

    aget-wide v21, p1, v6

    const/16 v23, 0x6

    aget-wide v24, p1, v23

    const/16 v26, 0x7

    aget-wide v27, p1, v26

    aget-wide v29, v1, v4

    add-long v7, v7, v29

    aget-wide v29, v1, v9

    add-long v10, v10, v29

    aget-wide v29, v1, v12

    add-long v13, v13, v29

    aget-wide v29, v1, v15

    add-long v16, v16, v29

    aget-wide v29, v1, v18

    add-long v19, v19, v29

    aget-wide v29, v1, v6

    aget-wide v31, v0, v4

    add-long v29, v29, v31

    add-long v29, v29, v21

    aget-wide v21, v1, v23

    aget-wide v31, v0, v9

    add-long v21, v21, v31

    add-long v21, v21, v24

    aget-wide v24, v1, v26

    add-long v27, v27, v24

    move/from16 p0, v6

    move/from16 p1, v12

    move-wide/from16 v24, v13

    move-wide/from16 v12, v27

    move/from16 v27, v4

    move v4, v9

    move/from16 v28, v4

    move-wide/from16 v83, v16

    move-wide/from16 v16, v7

    move-wide/from16 v6, v83

    move-wide/from16 v8, v29

    :goto_73
    const/16 v14, 0x12

    if-ge v4, v14, :cond_226

    aget v14, v2, v4

    aget v29, v3, v4

    move-wide/from16 v31, v6

    add-long v5, v16, v10

    const/16 v7, 0x2e

    invoke-static {v7, v10, v11, v5, v6}, Lv0/i0;->e(IJJ)J

    move-result-wide v10

    move-object/from16 v33, v0

    move-object v7, v1

    add-long v0, v24, v31

    move/from16 v34, v15

    const/16 v15, 0x24

    move-object/from16 v35, v2

    move-object/from16 v36, v3

    move-wide/from16 v2, v31

    invoke-static {v15, v2, v3, v0, v1}, Lv0/i0;->e(IJJ)J

    move-result-wide v2

    move-wide/from16 v16, v0

    add-long v0, v19, v8

    const/16 v15, 0x13

    invoke-static {v15, v8, v9, v0, v1}, Lv0/i0;->e(IJJ)J

    move-result-wide v8

    move-wide/from16 v19, v0

    add-long v0, v21, v12

    const/16 v15, 0x25

    invoke-static {v15, v12, v13, v0, v1}, Lv0/i0;->e(IJJ)J

    move-result-wide v12

    move-wide/from16 v21, v0

    add-long v0, v16, v10

    const/16 v15, 0x21

    invoke-static {v15, v10, v11, v0, v1}, Lv0/i0;->e(IJJ)J

    move-result-wide v10

    move-wide v15, v0

    add-long v0, v19, v12

    move-wide/from16 v31, v5

    const/16 v5, 0x1b

    invoke-static {v5, v12, v13, v0, v1}, Lv0/i0;->e(IJJ)J

    move-result-wide v5

    add-long v12, v21, v8

    move-wide/from16 v19, v0

    const/16 v0, 0xe

    invoke-static {v0, v8, v9, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v0

    add-long v8, v31, v2

    move-object/from16 v31, v7

    const/16 v7, 0x2a

    invoke-static {v7, v2, v3, v8, v9}, Lv0/i0;->e(IJJ)J

    move-result-wide v2

    move-wide/from16 v21, v8

    add-long v7, v19, v10

    const/16 v9, 0x11

    invoke-static {v9, v10, v11, v7, v8}, Lv0/i0;->e(IJJ)J

    move-result-wide v10

    add-long/2addr v12, v2

    const/16 v9, 0x31

    invoke-static {v9, v2, v3, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v2

    move-wide/from16 v19, v7

    add-long v7, v21, v0

    const/16 v9, 0x24

    invoke-static {v9, v0, v1, v7, v8}, Lv0/i0;->e(IJJ)J

    move-result-wide v0

    move-wide/from16 v21, v7

    add-long v7, v15, v5

    const/16 v9, 0x27

    invoke-static {v9, v5, v6, v7, v8}, Lv0/i0;->e(IJJ)J

    move-result-wide v5

    add-long/2addr v12, v10

    const/16 v15, 0x2c

    invoke-static {v15, v10, v11, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v10

    move-wide/from16 v16, v10

    add-long v9, v21, v5

    const/16 v11, 0x9

    invoke-static {v11, v5, v6, v9, v10}, Lv0/i0;->e(IJJ)J

    move-result-wide v5

    add-long/2addr v7, v0

    const/16 v11, 0x36

    invoke-static {v11, v0, v1, v7, v8}, Lv0/i0;->e(IJJ)J

    move-result-wide v0

    move-wide/from16 v21, v0

    add-long v0, v19, v2

    const/16 v11, 0x38

    invoke-static {v11, v2, v3, v0, v1}, Lv0/i0;->e(IJJ)J

    move-result-wide v2

    aget-wide v19, v31, v14

    add-long v9, v9, v19

    add-int/lit8 v19, v14, 0x1

    aget-wide v24, v31, v19

    move-wide/from16 v37, v12

    add-long v11, v16, v24

    add-int/lit8 v16, v14, 0x2

    aget-wide v24, v31, v16

    add-long v7, v7, v24

    add-int/lit8 v17, v14, 0x3

    aget-wide v24, v31, v17

    add-long v2, v2, v24

    add-int/lit8 v20, v14, 0x4

    aget-wide v24, v31, v20

    add-long v0, v0, v24

    add-int/lit8 v24, v14, 0x5

    aget-wide v39, v31, v24

    aget-wide v41, v33, v29

    add-long v39, v39, v41

    move/from16 v32, v14

    add-long v13, v39, v21

    add-int/lit8 v21, v32, 0x6

    aget-wide v39, v31, v21

    add-int/lit8 v22, v29, 0x1

    aget-wide v41, v33, v22

    add-long v39, v39, v41

    add-long v39, v39, v37

    add-int/lit8 v37, v32, 0x7

    aget-wide v41, v31, v37

    move-wide/from16 v43, v0

    int-to-long v0, v4

    add-long v41, v41, v0

    add-long v5, v41, v5

    add-long/2addr v9, v11

    const/16 v15, 0x27

    invoke-static {v15, v11, v12, v9, v10}, Lv0/i0;->e(IJJ)J

    move-result-wide v11

    add-long/2addr v7, v2

    const/16 v15, 0x1e

    invoke-static {v15, v2, v3, v7, v8}, Lv0/i0;->e(IJJ)J

    move-result-wide v2

    move-wide/from16 v41, v0

    add-long v0, v43, v13

    const/16 v15, 0x22

    invoke-static {v15, v13, v14, v0, v1}, Lv0/i0;->e(IJJ)J

    move-result-wide v13

    move-wide/from16 v43, v0

    add-long v0, v39, v5

    const/16 v15, 0x18

    invoke-static {v15, v5, v6, v0, v1}, Lv0/i0;->e(IJJ)J

    move-result-wide v5

    add-long/2addr v7, v11

    const/16 v15, 0xd

    invoke-static {v15, v11, v12, v7, v8}, Lv0/i0;->e(IJJ)J

    move-result-wide v11

    move-wide/from16 v39, v0

    add-long v0, v43, v5

    const/16 v15, 0x32

    invoke-static {v15, v5, v6, v0, v1}, Lv0/i0;->e(IJJ)J

    move-result-wide v5

    move-wide/from16 v43, v0

    add-long v0, v39, v13

    const/16 v15, 0xa

    invoke-static {v15, v13, v14, v0, v1}, Lv0/i0;->e(IJJ)J

    move-result-wide v13

    add-long/2addr v9, v2

    const/16 v15, 0x11

    invoke-static {v15, v2, v3, v9, v10}, Lv0/i0;->e(IJJ)J

    move-result-wide v2

    move-wide/from16 v39, v0

    add-long v0, v43, v11

    const/16 v15, 0x19

    invoke-static {v15, v11, v12, v0, v1}, Lv0/i0;->e(IJJ)J

    move-result-wide v11

    move-wide/from16 v43, v0

    add-long v0, v39, v2

    const/16 v15, 0x1d

    invoke-static {v15, v2, v3, v0, v1}, Lv0/i0;->e(IJJ)J

    move-result-wide v2

    add-long/2addr v9, v13

    const/16 v15, 0x27

    invoke-static {v15, v13, v14, v9, v10}, Lv0/i0;->e(IJJ)J

    move-result-wide v13

    add-long/2addr v7, v5

    const/16 v15, 0x2b

    invoke-static {v15, v5, v6, v7, v8}, Lv0/i0;->e(IJJ)J

    move-result-wide v5

    add-long/2addr v0, v11

    const/16 v15, 0x8

    invoke-static {v15, v11, v12, v0, v1}, Lv0/i0;->e(IJJ)J

    move-result-wide v11

    add-long/2addr v9, v5

    move/from16 v38, v15

    const/16 v15, 0x23

    invoke-static {v15, v5, v6, v9, v10}, Lv0/i0;->e(IJJ)J

    move-result-wide v5

    add-long/2addr v7, v13

    const/16 v15, 0x38

    invoke-static {v15, v13, v14, v7, v8}, Lv0/i0;->e(IJJ)J

    move-result-wide v13

    move-wide/from16 v39, v0

    add-long v0, v43, v2

    const/16 v15, 0x16

    invoke-static {v15, v2, v3, v0, v1}, Lv0/i0;->e(IJJ)J

    move-result-wide v2

    aget-wide v43, v31, v19

    add-long v9, v9, v43

    aget-wide v15, v31, v16

    add-long/2addr v11, v15

    aget-wide v15, v31, v17

    add-long/2addr v7, v15

    aget-wide v15, v31, v20

    add-long/2addr v2, v15

    aget-wide v15, v31, v24

    add-long v19, v0, v15

    aget-wide v0, v31, v21

    aget-wide v15, v33, v22

    add-long/2addr v0, v15

    add-long/2addr v0, v13

    aget-wide v13, v31, v37

    add-int/lit8 v29, v29, 0x2

    aget-wide v15, v33, v29

    add-long/2addr v13, v15

    add-long v21, v13, v39

    add-int/lit8 v14, v32, 0x8

    aget-wide v13, v31, v14

    add-long v13, v13, v41

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    add-long/2addr v5, v13

    add-int/lit8 v4, v4, 0x2

    move-wide/from16 v24, v7

    move-wide/from16 v16, v9

    move-wide v10, v11

    move/from16 v15, v34

    move-wide v8, v0

    move-wide v12, v5

    move-object/from16 v1, v31

    move-object/from16 v0, v33

    const/16 v5, 0x11

    move-wide v6, v2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    goto/16 :goto_73

    :cond_226
    move-wide v2, v6

    move/from16 v34, v15

    aput-wide v16, p2, v27

    aput-wide v10, p2, v28

    aput-wide v24, p2, p1

    aput-wide v2, p2, v34

    aput-wide v19, p2, v18

    aput-wide v8, p2, p0

    aput-wide v21, p2, v23

    aput-wide v12, p2, v26

    return-void

    :cond_23a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_246
    iget-object v1, v0, Ld2/l;->d:Ljava/lang/Object;

    check-cast v1, [J

    iget-object v0, v0, Ld2/l;->c:Ljava/lang/Object;

    check-cast v0, [J

    sget-object v2, Lv0/i0;->p:[I

    sget-object v3, Lv0/i0;->q:[I

    array-length v4, v1

    const/16 v5, 0x9

    if-ne v4, v5, :cond_381

    array-length v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_37b

    const/4 v4, 0x0

    aget-wide v6, p1, v4

    const/4 v8, 0x1

    aget-wide v9, p1, v8

    const/4 v11, 0x2

    aget-wide v12, p1, v11

    const/4 v14, 0x3

    aget-wide v15, p1, v14

    aget-wide v17, v1, v4

    add-long v6, v6, v17

    aget-wide v17, v1, v8

    aget-wide v19, v0, v4

    add-long v17, v17, v19

    add-long v17, v17, v9

    aget-wide v9, v1, v11

    aget-wide v19, v0, v8

    add-long v9, v9, v19

    add-long/2addr v9, v12

    aget-wide v12, v1, v14

    add-long/2addr v15, v12

    move/from16 p0, v8

    move-wide v12, v15

    move-wide v15, v9

    move-wide/from16 v8, v17

    move/from16 v17, v4

    move/from16 v10, p0

    :goto_287
    const/16 v4, 0x12

    if-ge v10, v4, :cond_36e

    aget v4, v2, v10

    aget v18, v3, v10

    add-long/2addr v6, v8

    move/from16 v19, v11

    const/16 v11, 0xe

    invoke-static {v11, v8, v9, v6, v7}, Lv0/i0;->e(IJJ)J

    move-result-wide v8

    move v11, v14

    add-long v14, v15, v12

    move/from16 p1, v11

    const/16 v11, 0x10

    invoke-static {v11, v12, v13, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v11

    add-long/2addr v6, v11

    const/16 v13, 0x34

    invoke-static {v13, v11, v12, v6, v7}, Lv0/i0;->e(IJJ)J

    move-result-wide v11

    add-long/2addr v14, v8

    const/16 v13, 0x39

    invoke-static {v13, v8, v9, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v8

    add-long/2addr v6, v8

    const/16 v13, 0x17

    invoke-static {v13, v8, v9, v6, v7}, Lv0/i0;->e(IJJ)J

    move-result-wide v8

    add-long/2addr v14, v11

    const/16 v13, 0x28

    invoke-static {v13, v11, v12, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v11

    add-long/2addr v6, v11

    invoke-static {v5, v11, v12, v6, v7}, Lv0/i0;->e(IJJ)J

    move-result-wide v11

    add-long/2addr v14, v8

    const/16 v13, 0x25

    invoke-static {v13, v8, v9, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v8

    aget-wide v20, v1, v4

    add-long v6, v6, v20

    add-int/lit8 v13, v4, 0x1

    aget-wide v20, v1, v13

    aget-wide v22, v0, v18

    add-long v20, v20, v22

    add-long v8, v20, v8

    add-int/lit8 v16, v4, 0x2

    aget-wide v20, v1, v16

    add-int/lit8 v22, v18, 0x1

    aget-wide v23, v0, v22

    add-long v20, v20, v23

    add-long v20, v20, v14

    add-int/lit8 v14, v4, 0x3

    aget-wide v23, v1, v14

    move-wide/from16 v26, v6

    int-to-long v5, v10

    add-long v23, v23, v5

    add-long v11, v23, v11

    move-object/from16 v24, v0

    move-object/from16 v23, v1

    add-long v0, v26, v8

    const/16 v7, 0x19

    invoke-static {v7, v8, v9, v0, v1}, Lv0/i0;->e(IJJ)J

    move-result-wide v7

    move-wide/from16 v26, v0

    add-long v0, v20, v11

    const/16 v9, 0x21

    invoke-static {v9, v11, v12, v0, v1}, Lv0/i0;->e(IJJ)J

    move-result-wide v11

    move-wide/from16 v20, v0

    add-long v0, v26, v11

    const/16 v9, 0x2e

    invoke-static {v9, v11, v12, v0, v1}, Lv0/i0;->e(IJJ)J

    move-result-wide v11

    move-wide/from16 v26, v0

    add-long v0, v20, v7

    const/16 v9, 0xc

    invoke-static {v9, v7, v8, v0, v1}, Lv0/i0;->e(IJJ)J

    move-result-wide v7

    move-wide/from16 v20, v0

    add-long v0, v26, v7

    const/16 v9, 0x3a

    invoke-static {v9, v7, v8, v0, v1}, Lv0/i0;->e(IJJ)J

    move-result-wide v7

    move-wide/from16 v26, v0

    add-long v0, v20, v11

    const/16 v9, 0x16

    invoke-static {v9, v11, v12, v0, v1}, Lv0/i0;->e(IJJ)J

    move-result-wide v11

    move-wide/from16 v20, v0

    add-long v0, v26, v11

    const/16 v9, 0x20

    invoke-static {v9, v11, v12, v0, v1}, Lv0/i0;->e(IJJ)J

    move-result-wide v11

    move-wide/from16 v26, v0

    add-long v0, v20, v7

    invoke-static {v9, v7, v8, v0, v1}, Lv0/i0;->e(IJJ)J

    move-result-wide v7

    aget-wide v20, v23, v13

    add-long v20, v26, v20

    aget-wide v15, v23, v16

    aget-wide v26, v24, v22

    add-long v15, v15, v26

    add-long v8, v15, v7

    aget-wide v13, v23, v14

    add-int/lit8 v18, v18, 0x2

    aget-wide v15, v24, v18

    add-long/2addr v13, v15

    add-long v15, v13, v0

    add-int/lit8 v4, v4, 0x4

    aget-wide v0, v23, v4

    add-long/2addr v0, v5

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    add-long v12, v0, v11

    add-int/lit8 v10, v10, 0x2

    move/from16 v14, p1

    move/from16 v11, v19

    move-wide/from16 v6, v20

    move-object/from16 v1, v23

    move-object/from16 v0, v24

    const/4 v5, 0x5

    goto/16 :goto_287

    :cond_36e
    move/from16 v19, v11

    move/from16 p1, v14

    aput-wide v6, p2, v17

    aput-wide v8, p2, p0

    aput-wide v15, p2, v19

    aput-wide v12, p2, p1

    return-void

    :cond_37b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_387
    iget-object v1, v0, Ld2/l;->d:Ljava/lang/Object;

    check-cast v1, [J

    iget-object v0, v0, Ld2/l;->c:Ljava/lang/Object;

    check-cast v0, [J

    sget-object v2, Lv0/i0;->o:[I

    sget-object v3, Lv0/i0;->q:[I

    array-length v4, v1

    const/16 v5, 0x21

    if-ne v4, v5, :cond_85c

    array-length v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_856

    const/4 v4, 0x0

    aget-wide v6, p1, v4

    const/4 v8, 0x1

    aget-wide v9, p1, v8

    const/4 v11, 0x2

    aget-wide v12, p1, v11

    const/4 v14, 0x3

    aget-wide v15, p1, v14

    move/from16 p0, v4

    const/4 v4, 0x4

    aget-wide v17, p1, v4

    aget-wide v19, p1, v5

    const/16 v21, 0x6

    aget-wide v22, p1, v21

    const/16 v24, 0x7

    aget-wide v25, p1, v24

    move/from16 v27, v8

    const/16 v8, 0x8

    aget-wide v28, p1, v8

    move/from16 v30, v11

    const/16 v11, 0x9

    aget-wide v31, p1, v11

    move/from16 v33, v14

    const/16 v14, 0xa

    aget-wide v34, p1, v14

    const/16 v36, 0xb

    aget-wide v37, p1, v36

    move/from16 v39, v11

    const/16 v11, 0xc

    aget-wide v40, p1, v11

    move/from16 v42, v11

    const/16 v11, 0xd

    aget-wide v43, p1, v11

    const/16 v45, 0xe

    aget-wide v46, p1, v45

    const/16 v48, 0xf

    aget-wide v49, p1, v48

    aget-wide v51, v1, p0

    add-long v6, v6, v51

    aget-wide v51, v1, v27

    add-long v9, v9, v51

    aget-wide v51, v1, v30

    add-long v12, v12, v51

    aget-wide v51, v1, v33

    add-long v15, v15, v51

    aget-wide v51, v1, v4

    add-long v17, v17, v51

    aget-wide v51, v1, v5

    add-long v19, v19, v51

    aget-wide v51, v1, v21

    add-long v22, v22, v51

    aget-wide v51, v1, v24

    add-long v25, v25, v51

    aget-wide v51, v1, v8

    add-long v28, v28, v51

    aget-wide v51, v1, v39

    add-long v31, v31, v51

    aget-wide v51, v1, v14

    add-long v34, v34, v51

    aget-wide v51, v1, v36

    add-long v37, v37, v51

    aget-wide v51, v1, v42

    add-long v40, v40, v51

    aget-wide v51, v1, v11

    aget-wide v53, v0, p0

    add-long v51, v51, v53

    add-long v51, v51, v43

    aget-wide v43, v1, v45

    aget-wide v53, v0, v27

    add-long v43, v43, v53

    add-long v43, v43, v46

    aget-wide v46, v1, v48

    add-long v49, v49, v46

    move-wide/from16 v55, v25

    move-wide/from16 v57, v31

    move-wide/from16 v59, v37

    move-wide/from16 v61, v49

    move-wide/from16 v63, v51

    move-wide/from16 v83, v6

    move/from16 v7, v27

    move-wide v5, v15

    move-wide/from16 v14, v19

    move-wide/from16 v18, v17

    move-wide/from16 v16, v83

    :goto_43e
    const/16 v4, 0x14

    if-ge v7, v4, :cond_819

    aget v26, v2, v7

    aget v31, v3, v7

    move-wide/from16 v37, v5

    add-long v4, v16, v9

    const/16 v6, 0x18

    invoke-static {v6, v9, v10, v4, v5}, Lv0/i0;->e(IJJ)J

    move-result-wide v9

    add-long v12, v12, v37

    move-wide/from16 v16, v9

    move-wide/from16 v8, v37

    invoke-static {v11, v8, v9, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v8

    move-wide/from16 v37, v12

    add-long v11, v18, v14

    const/16 v6, 0x8

    invoke-static {v6, v14, v15, v11, v12}, Lv0/i0;->e(IJJ)J

    move-result-wide v13

    move/from16 v49, v7

    move-wide/from16 v18, v11

    move-wide/from16 v10, v55

    add-long v6, v22, v10

    const/16 v12, 0x2f

    invoke-static {v12, v10, v11, v6, v7}, Lv0/i0;->e(IJJ)J

    move-result-wide v10

    move-wide/from16 v50, v13

    move-wide/from16 v12, v57

    add-long v14, v28, v12

    move-object/from16 v52, v0

    const/16 v0, 0x8

    invoke-static {v0, v12, v13, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v12

    move-object/from16 v53, v1

    move-object/from16 v54, v2

    move-object/from16 v55, v3

    move-wide/from16 v0, v59

    add-long v2, v34, v0

    move-wide/from16 v56, v4

    const/16 v4, 0x11

    invoke-static {v4, v0, v1, v2, v3}, Lv0/i0;->e(IJJ)J

    move-result-wide v0

    move-wide/from16 v28, v2

    move-wide/from16 v4, v63

    add-long v2, v40, v4

    move-wide/from16 v58, v6

    const/16 v6, 0x16

    invoke-static {v6, v4, v5, v2, v3}, Lv0/i0;->e(IJJ)J

    move-result-wide v4

    move-wide/from16 v34, v2

    move-wide/from16 v6, v61

    add-long v2, v43, v6

    move-wide/from16 v60, v14

    const/16 v14, 0x25

    invoke-static {v14, v6, v7, v2, v3}, Lv0/i0;->e(IJJ)J

    move-result-wide v6

    add-long v14, v56, v12

    move-wide/from16 v40, v2

    const/16 v2, 0x26

    invoke-static {v2, v12, v13, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v2

    add-long v12, v37, v4

    move-wide/from16 v37, v14

    const/16 v14, 0x13

    invoke-static {v14, v4, v5, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v4

    add-long v14, v58, v0

    move-wide/from16 v43, v12

    const/16 v12, 0xa

    invoke-static {v12, v0, v1, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v0

    add-long v12, v18, v6

    move-wide/from16 v18, v14

    const/16 v14, 0x37

    invoke-static {v14, v6, v7, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v6

    add-long v14, v28, v10

    move-wide/from16 v28, v12

    const/16 v12, 0x31

    invoke-static {v12, v10, v11, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v10

    add-long v12, v34, v8

    move-wide/from16 v34, v14

    const/16 v14, 0x12

    invoke-static {v14, v8, v9, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v8

    add-long v14, v40, v50

    move-wide/from16 v40, v12

    const/16 v12, 0x17

    move-wide/from16 v56, v2

    move-wide/from16 v2, v50

    invoke-static {v12, v2, v3, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v2

    add-long v12, v60, v16

    move-wide/from16 v50, v14

    const/16 v14, 0x34

    move-wide/from16 v58, v0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v0

    add-long v14, v37, v10

    move-wide/from16 v16, v12

    const/16 v12, 0x21

    invoke-static {v12, v10, v11, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v10

    add-long v12, v43, v2

    move-wide/from16 v37, v14

    const/4 v14, 0x4

    invoke-static {v14, v2, v3, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v2

    add-long v14, v28, v8

    move-wide/from16 v28, v12

    const/16 v12, 0x33

    invoke-static {v12, v8, v9, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v8

    add-long v12, v18, v0

    move-wide/from16 v18, v14

    const/16 v14, 0xd

    invoke-static {v14, v0, v1, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v0

    add-long v14, v40, v6

    move-wide/from16 v40, v12

    const/16 v12, 0x22

    invoke-static {v12, v6, v7, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v6

    add-long v12, v50, v4

    move-wide/from16 v43, v14

    const/16 v14, 0x29

    invoke-static {v14, v4, v5, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v4

    add-long v14, v16, v58

    move-wide/from16 v16, v12

    const/16 v12, 0x3b

    move-wide/from16 v60, v10

    move-wide/from16 v10, v58

    invoke-static {v12, v10, v11, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v10

    add-long v12, v34, v56

    move-wide/from16 v34, v14

    const/16 v14, 0x11

    move-wide/from16 v58, v8

    move-wide/from16 v8, v56

    invoke-static {v14, v8, v9, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v8

    add-long v14, v37, v6

    move-wide/from16 v37, v12

    const/4 v12, 0x5

    invoke-static {v12, v6, v7, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v56

    add-long v12, v28, v10

    const/16 v6, 0x14

    invoke-static {v6, v10, v11, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v10

    add-long v6, v40, v4

    move-wide/from16 v28, v10

    const/16 v10, 0x30

    invoke-static {v10, v4, v5, v6, v7}, Lv0/i0;->e(IJJ)J

    move-result-wide v4

    add-long v10, v18, v8

    move-wide/from16 v18, v4

    const/16 v4, 0x29

    invoke-static {v4, v8, v9, v10, v11}, Lv0/i0;->e(IJJ)J

    move-result-wide v8

    add-long v4, v16, v0

    move-wide/from16 v16, v6

    const/16 v6, 0x2f

    invoke-static {v6, v0, v1, v4, v5}, Lv0/i0;->e(IJJ)J

    move-result-wide v0

    add-long v6, v34, v2

    move-wide/from16 v34, v0

    const/16 v0, 0x1c

    invoke-static {v0, v2, v3, v6, v7}, Lv0/i0;->e(IJJ)J

    move-result-wide v0

    add-long v2, v37, v58

    move-wide/from16 v37, v0

    const/16 v0, 0x10

    move-wide/from16 v40, v4

    move-wide/from16 v4, v58

    invoke-static {v0, v4, v5, v2, v3}, Lv0/i0;->e(IJJ)J

    move-result-wide v4

    add-long v0, v43, v60

    move-wide/from16 v43, v2

    const/16 v2, 0x19

    move-wide/from16 v58, v4

    move-wide/from16 v3, v60

    invoke-static {v2, v3, v4, v0, v1}, Lv0/i0;->e(IJJ)J

    move-result-wide v2

    aget-wide v4, v53, v26

    add-long/2addr v14, v4

    add-int/lit8 v4, v26, 0x1

    aget-wide v60, v53, v4

    move-wide/from16 v62, v0

    add-long v0, v34, v60

    add-int/lit8 v5, v26, 0x2

    aget-wide v34, v53, v5

    add-long v12, v12, v34

    add-int/lit8 v34, v26, 0x3

    aget-wide v60, v53, v34

    move-wide/from16 v64, v2

    add-long v2, v58, v60

    add-int/lit8 v35, v26, 0x4

    aget-wide v58, v53, v35

    add-long v10, v10, v58

    add-int/lit8 v58, v26, 0x5

    aget-wide v59, v53, v58

    move/from16 v61, v4

    move/from16 v66, v5

    add-long v4, v37, v59

    add-int/lit8 v37, v26, 0x6

    aget-wide v59, v53, v37

    add-long v16, v16, v59

    add-int/lit8 v38, v26, 0x7

    aget-wide v59, v53, v38

    move-wide/from16 v67, v6

    add-long v6, v64, v59

    add-int/lit8 v59, v26, 0x8

    aget-wide v64, v53, v59

    add-long v64, v67, v64

    add-int/lit8 v60, v26, 0x9

    aget-wide v67, v53, v60

    add-long v8, v8, v67

    add-int/lit8 v67, v26, 0xa

    aget-wide v68, v53, v67

    add-long v43, v43, v68

    add-int/lit8 v68, v26, 0xb

    aget-wide v69, v53, v68

    move-wide/from16 v71, v10

    add-long v10, v28, v69

    add-int/lit8 v28, v26, 0xc

    aget-wide v69, v53, v28

    add-long v62, v62, v69

    add-int/lit8 v29, v26, 0xd

    aget-wide v69, v53, v29

    aget-wide v73, v52, v31

    add-long v69, v69, v73

    move-wide/from16 v73, v12

    add-long v12, v69, v18

    add-int/lit8 v18, v26, 0xe

    aget-wide v69, v53, v18

    add-int/lit8 v19, v31, 0x1

    aget-wide v75, v52, v19

    add-long v69, v69, v75

    add-long v69, v69, v40

    add-int/lit8 v40, v26, 0xf

    aget-wide v75, v53, v40

    move-wide/from16 v79, v12

    move-wide/from16 v77, v14

    move/from16 v14, v49

    int-to-long v12, v14

    add-long v75, v75, v12

    move-wide/from16 v81, v12

    add-long v12, v75, v56

    add-long v14, v77, v0

    move-wide/from16 v56, v12

    const/16 v12, 0x29

    invoke-static {v12, v0, v1, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v0

    add-long v12, v73, v2

    move-wide/from16 v73, v14

    move/from16 v14, v39

    invoke-static {v14, v2, v3, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v2

    add-long v14, v71, v4

    move-wide/from16 v71, v12

    const/16 v12, 0x25

    invoke-static {v12, v4, v5, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v4

    add-long v12, v16, v6

    move-wide/from16 v16, v14

    const/16 v14, 0x1f

    invoke-static {v14, v6, v7, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v6

    add-long v14, v64, v8

    move-wide/from16 v64, v12

    move/from16 v12, v42

    invoke-static {v12, v8, v9, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v8

    add-long v12, v43, v10

    move-wide/from16 v43, v14

    const/16 v14, 0x2f

    invoke-static {v14, v10, v11, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v10

    add-long v14, v62, v79

    move-wide/from16 v62, v12

    const/16 v12, 0x2c

    move-wide/from16 v75, v0

    move-wide/from16 v0, v79

    invoke-static {v12, v0, v1, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v0

    add-long v12, v69, v56

    move-wide/from16 v69, v14

    const/16 v14, 0x1e

    move-wide/from16 v77, v4

    move-wide/from16 v4, v56

    invoke-static {v14, v4, v5, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v4

    add-long v14, v73, v8

    move-wide/from16 v56, v12

    const/16 v12, 0x10

    invoke-static {v12, v8, v9, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v8

    add-long v12, v71, v0

    move-wide/from16 v71, v14

    const/16 v14, 0x22

    invoke-static {v14, v0, v1, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v0

    add-long v14, v64, v10

    move-wide/from16 v64, v12

    const/16 v12, 0x38

    invoke-static {v12, v10, v11, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v10

    add-long v12, v16, v4

    move-wide/from16 v16, v14

    const/16 v14, 0x33

    invoke-static {v14, v4, v5, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v4

    add-long v14, v62, v6

    move-wide/from16 v62, v12

    const/4 v12, 0x4

    invoke-static {v12, v6, v7, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v6

    add-long v12, v69, v2

    move-wide/from16 v69, v14

    const/16 v14, 0x35

    invoke-static {v14, v2, v3, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v2

    add-long v14, v56, v77

    move-wide/from16 v56, v12

    const/16 v12, 0x2a

    move-wide/from16 v73, v8

    move-wide/from16 v8, v77

    invoke-static {v12, v8, v9, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v8

    add-long v12, v43, v75

    move-wide/from16 v43, v14

    move-wide/from16 v14, v75

    move-wide/from16 v75, v10

    const/16 v10, 0x29

    invoke-static {v10, v14, v15, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v10

    add-long v14, v71, v6

    move-wide/from16 v71, v12

    const/16 v12, 0x1f

    invoke-static {v12, v6, v7, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v6

    add-long v12, v64, v8

    move-wide/from16 v64, v14

    const/16 v14, 0x2c

    invoke-static {v14, v8, v9, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v8

    add-long v14, v62, v2

    move-wide/from16 v62, v12

    const/16 v12, 0x2f

    invoke-static {v12, v2, v3, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v2

    add-long v12, v16, v10

    move-wide/from16 v16, v14

    const/16 v14, 0x2e

    invoke-static {v14, v10, v11, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v10

    add-long v14, v56, v4

    move-wide/from16 v56, v12

    const/16 v12, 0x13

    invoke-static {v12, v4, v5, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v4

    add-long v12, v43, v0

    move-wide/from16 v43, v14

    const/16 v14, 0x2a

    invoke-static {v14, v0, v1, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v0

    add-long v14, v71, v75

    move-wide/from16 v71, v12

    const/16 v12, 0x2c

    move-wide/from16 v77, v6

    move-wide/from16 v6, v75

    invoke-static {v12, v6, v7, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v6

    add-long v12, v69, v73

    move-wide/from16 v69, v14

    const/16 v14, 0x19

    move-wide/from16 v75, v2

    move-wide/from16 v2, v73

    invoke-static {v14, v2, v3, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v2

    add-long v14, v64, v4

    move-wide/from16 v64, v12

    const/16 v12, 0x9

    invoke-static {v12, v4, v5, v14, v15}, Lv0/i0;->e(IJJ)J

    move-result-wide v4

    add-long v12, v62, v6

    move-wide/from16 v62, v4

    const/16 v4, 0x30

    invoke-static {v4, v6, v7, v12, v13}, Lv0/i0;->e(IJJ)J

    move-result-wide v4

    add-long v6, v56, v0

    move-wide/from16 v56, v4

    const/16 v4, 0x23

    invoke-static {v4, v0, v1, v6, v7}, Lv0/i0;->e(IJJ)J

    move-result-wide v0

    add-long v4, v16, v2

    move-wide/from16 v16, v0

    const/16 v0, 0x34

    invoke-static {v0, v2, v3, v4, v5}, Lv0/i0;->e(IJJ)J

    move-result-wide v0

    add-long v2, v71, v10

    move-wide/from16 v71, v0

    const/16 v0, 0x17

    invoke-static {v0, v10, v11, v2, v3}, Lv0/i0;->e(IJJ)J

    move-result-wide v0

    add-long v10, v69, v8

    move-wide/from16 v69, v0

    const/16 v0, 0x1f

    invoke-static {v0, v8, v9, v10, v11}, Lv0/i0;->e(IJJ)J

    move-result-wide v0

    add-long v8, v64, v75

    move-wide/from16 v64, v0

    move-wide/from16 v22, v2

    move-wide/from16 v0, v75

    const/16 v2, 0x25

    invoke-static {v2, v0, v1, v8, v9}, Lv0/i0;->e(IJJ)J

    move-result-wide v0

    add-long v2, v43, v77

    move-wide/from16 v43, v0

    move-wide/from16 v73, v4

    move-wide/from16 v0, v77

    const/16 v4, 0x14

    invoke-static {v4, v0, v1, v2, v3}, Lv0/i0;->e(IJJ)J

    move-result-wide v0

    aget-wide v4, v53, v61

    add-long/2addr v4, v14

    aget-wide v14, v53, v66

    add-long v14, v69, v14

    aget-wide v69, v53, v34

    add-long v12, v12, v69

    aget-wide v34, v53, v35

    add-long v34, v43, v34

    aget-wide v43, v53, v58

    add-long v43, v73, v43

    aget-wide v69, v53, v37

    add-long v64, v64, v69

    aget-wide v37, v53, v38

    add-long v6, v6, v37

    aget-wide v37, v53, v59

    add-long v0, v0, v37

    aget-wide v37, v53, v60

    add-long v10, v10, v37

    aget-wide v37, v53, v67

    add-long v37, v71, v37

    aget-wide v58, v53, v68

    add-long v8, v8, v58

    aget-wide v58, v53, v28

    add-long v59, v56, v58

    aget-wide v28, v53, v29

    add-long v2, v2, v28

    aget-wide v28, v53, v18

    aget-wide v18, v52, v19

    add-long v28, v28, v18

    add-long v16, v28, v16

    aget-wide v18, v53, v40

    add-int/lit8 v31, v31, 0x2

    aget-wide v28, v52, v31

    add-long v18, v18, v28

    add-long v18, v18, v22

    const/16 v22, 0x10

    add-int/lit8 v26, v26, 0x10

    aget-wide v22, v53, v26

    add-long v22, v22, v81

    const-wide/16 v28, 0x1

    add-long v22, v22, v28

    add-long v61, v22, v62

    add-int/lit8 v22, v49, 0x2

    move-wide/from16 v28, v6

    move/from16 v7, v22

    move-wide/from16 v22, v28

    move-wide/from16 v28, v43

    move-wide/from16 v43, v18

    move-wide/from16 v18, v28

    move-wide/from16 v40, v2

    move-wide/from16 v28, v10

    move-wide/from16 v57, v37

    move-object/from16 v2, v54

    move-object/from16 v3, v55

    const/16 v11, 0xd

    const/16 v39, 0x9

    const/16 v42, 0xc

    move-wide/from16 v55, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    move-wide/from16 v83, v8

    const/16 v8, 0x8

    move-wide v9, v14

    move-wide/from16 v14, v64

    move-wide/from16 v63, v16

    move-wide/from16 v16, v4

    move-wide/from16 v5, v34

    move-wide/from16 v34, v83

    goto/16 :goto_43e

    :cond_819
    move-wide v2, v9

    move-wide/from16 v31, v12

    move-wide/from16 v10, v55

    move-wide/from16 v12, v57

    move-wide/from16 v0, v59

    move-wide v8, v5

    move-wide/from16 v6, v61

    move-wide/from16 v4, v63

    aput-wide v16, p2, p0

    aput-wide v2, p2, v27

    aput-wide v31, p2, v30

    aput-wide v8, p2, v33

    const/16 v25, 0x4

    aput-wide v18, p2, v25

    const/16 v51, 0x5

    aput-wide v14, p2, v51

    aput-wide v22, p2, v21

    aput-wide v10, p2, v24

    const/16 v46, 0x8

    aput-wide v28, p2, v46

    const/16 v39, 0x9

    aput-wide v12, p2, v39

    const/16 v20, 0xa

    aput-wide v34, p2, v20

    aput-wide v0, p2, v36

    const/16 v42, 0xc

    aput-wide v40, p2, v42

    const/16 v47, 0xd

    aput-wide v4, p2, v47

    aput-wide v43, p2, v45

    aput-wide v6, p2, v48

    return-void

    :cond_856
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_85c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_data_862
    .packed-switch 0x0
        :pswitch_387
        :pswitch_246
    .end packed-switch
.end method
