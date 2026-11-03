.class public final Ls0/v;
.super Ls0/j;


# instance fields
.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public final o:[I

.field public p:I


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lorg/bouncycastle/crypto/j;->d:Lorg/bouncycastle/crypto/j;

    invoke-direct {p0, v0}, Ls0/j;-><init>(Lorg/bouncycastle/crypto/j;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Ls0/v;->o:[I

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-virtual {p0}, Ls0/v;->reset()V

    return-void
.end method

.method public constructor <init>(Ls0/v;)V
    .registers 3

    iget-object v0, p1, Ls0/j;->g:Lorg/bouncycastle/crypto/j;

    invoke-direct {p0, v0}, Ls0/j;-><init>(Lorg/bouncycastle/crypto/j;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Ls0/v;->o:[I

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-virtual {p0, p1}, Ls0/v;->r(Ls0/v;)V

    return-void
.end method

.method public static i(IIIIII)I
    .registers 6

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    add-int/2addr p0, p1

    add-int/2addr p0, p4

    invoke-static {p0, p5}, Ls0/v;->q(II)I

    move-result p0

    return p0
.end method

.method public static j(IIIIII)I
    .registers 6

    and-int/2addr p2, p1

    not-int p1, p1

    and-int/2addr p1, p3

    or-int/2addr p1, p2

    add-int/2addr p1, p0

    add-int/2addr p1, p4

    const p0, 0x5a827999

    add-int/2addr p1, p0

    invoke-static {p1, p5}, Ls0/v;->q(II)I

    move-result p0

    return p0
.end method

.method public static k(IIIIII)I
    .registers 6

    not-int p2, p2

    or-int/2addr p1, p2

    xor-int/2addr p1, p3

    add-int/2addr p0, p1

    add-int/2addr p0, p4

    const p1, 0x6ed9eba1

    add-int/2addr p0, p1

    invoke-static {p0, p5}, Ls0/v;->q(II)I

    move-result p0

    return p0
.end method

.method public static l(IIIIII)I
    .registers 6

    and-int/2addr p1, p3

    not-int p3, p3

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    add-int/2addr p1, p0

    add-int/2addr p1, p4

    const p0, -0x70e44324

    add-int/2addr p1, p0

    invoke-static {p1, p5}, Ls0/v;->q(II)I

    move-result p0

    return p0
.end method

.method public static m(IIIIII)I
    .registers 6

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    add-int/2addr p0, p1

    add-int/2addr p0, p4

    invoke-static {p0, p5}, Ls0/v;->q(II)I

    move-result p0

    return p0
.end method

.method public static n(IIIIII)I
    .registers 6

    and-int/2addr p2, p1

    not-int p1, p1

    and-int/2addr p1, p3

    or-int/2addr p1, p2

    add-int/2addr p1, p0

    add-int/2addr p1, p4

    const p0, 0x6d703ef3

    add-int/2addr p1, p0

    invoke-static {p1, p5}, Ls0/v;->q(II)I

    move-result p0

    return p0
.end method

.method public static o(IIIIII)I
    .registers 6

    not-int p2, p2

    or-int/2addr p1, p2

    xor-int/2addr p1, p3

    add-int/2addr p0, p1

    add-int/2addr p0, p4

    const p1, 0x5c4dd124

    add-int/2addr p0, p1

    invoke-static {p0, p5}, Ls0/v;->q(II)I

    move-result p0

    return p0
.end method

.method public static p(IIIIII)I
    .registers 6

    and-int/2addr p1, p3

    not-int p3, p3

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    add-int/2addr p1, p0

    add-int/2addr p1, p4

    const p0, 0x50a28be6

    add-int/2addr p1, p0

    invoke-static {p1, p5}, Ls0/v;->q(II)I

    move-result p0

    return p0
.end method

.method public static q(II)I
    .registers 3

    shl-int v0, p0, p1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final a()Lm4/e;
    .registers 2

    new-instance v0, Ls0/v;

    invoke-direct {v0, p0}, Ls0/v;-><init>(Ls0/v;)V

    return-object v0
.end method

.method public final c(Lm4/e;)V
    .registers 2

    check-cast p1, Ls0/v;

    invoke-virtual {p0, p1}, Ls0/v;->r(Ls0/v;)V

    return-void
.end method

.method public final doFinal([BI)I
    .registers 5

    invoke-virtual {p0}, Ls0/j;->e()V

    iget v0, p0, Ls0/v;->k:I

    invoke-static {p1, v0, p2}, Lm4/d;->x([BII)V

    iget v0, p0, Ls0/v;->l:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v0, v1}, Lm4/d;->x([BII)V

    iget v0, p0, Ls0/v;->m:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v0, v1}, Lm4/d;->x([BII)V

    iget v0, p0, Ls0/v;->n:I

    add-int/lit8 p2, p2, 0xc

    invoke-static {p1, v0, p2}, Lm4/d;->x([BII)V

    invoke-virtual {p0}, Ls0/v;->reset()V

    const/16 p0, 0x10

    return p0
.end method

.method public final f()V
    .registers 58

    move-object/from16 v0, p0

    iget v1, v0, Ls0/v;->k:I

    iget v2, v0, Ls0/v;->l:I

    iget v3, v0, Ls0/v;->m:I

    iget v4, v0, Ls0/v;->n:I

    iget-object v8, v0, Ls0/v;->o:[I

    const/4 v9, 0x0

    aget v5, v8, v9

    const/16 v6, 0xb

    invoke-static/range {v1 .. v6}, Ls0/v;->i(IIIIII)I

    move-result v5

    const/16 v16, 0x1

    aget v6, v8, v16

    const/16 v7, 0xe

    move/from16 v56, v4

    move v4, v2

    move/from16 v2, v56

    move/from16 v56, v5

    move v5, v3

    move/from16 v3, v56

    invoke-static/range {v2 .. v7}, Ls0/v;->i(IIIIII)I

    move-result v10

    move/from16 v17, v2

    move v2, v4

    move v4, v3

    move v3, v5

    const/16 v18, 0x2

    aget v6, v8, v18

    const/16 v7, 0xf

    move v5, v2

    move v2, v3

    move v3, v10

    invoke-static/range {v2 .. v7}, Ls0/v;->i(IIIIII)I

    move-result v19

    move/from16 v25, v2

    move v2, v5

    const/16 v26, 0x3

    aget v6, v8, v26

    const/16 v7, 0xc

    move v5, v4

    move v4, v3

    move/from16 v3, v19

    invoke-static/range {v2 .. v7}, Ls0/v;->i(IIIIII)I

    move-result v22

    move v3, v4

    move v4, v5

    const/16 v27, 0x4

    aget v14, v8, v27

    const/4 v15, 0x5

    move v13, v3

    move v10, v4

    move/from16 v12, v19

    move/from16 v11, v22

    invoke-static/range {v10 .. v15}, Ls0/v;->i(IIIIII)I

    move-result v21

    const/16 v34, 0x5

    aget v14, v8, v34

    const/16 v15, 0x8

    move v10, v3

    move/from16 v13, v19

    move/from16 v11, v21

    move/from16 v12, v22

    invoke-static/range {v10 .. v15}, Ls0/v;->i(IIIIII)I

    move-result v31

    const/16 v35, 0x6

    aget v23, v8, v35

    const/16 v24, 0x7

    move/from16 v20, v31

    invoke-static/range {v19 .. v24}, Ls0/v;->i(IIIIII)I

    move-result v31

    const/16 v19, 0x7

    aget v14, v8, v19

    const/16 v15, 0x9

    move/from16 v12, v20

    move/from16 v13, v21

    move/from16 v10, v22

    move/from16 v11, v31

    invoke-static/range {v10 .. v15}, Ls0/v;->i(IIIIII)I

    move-result v36

    const/16 v22, 0x8

    aget v32, v8, v22

    const/16 v33, 0xb

    move/from16 v28, v21

    move/from16 v30, v31

    move/from16 v29, v36

    move/from16 v31, v20

    invoke-static/range {v28 .. v33}, Ls0/v;->i(IIIIII)I

    move-result v39

    move/from16 v31, v30

    const/16 v21, 0x9

    aget v32, v8, v21

    const/16 v33, 0xd

    move/from16 v28, v20

    move/from16 v30, v36

    move/from16 v29, v39

    invoke-static/range {v28 .. v33}, Ls0/v;->i(IIIIII)I

    move-result v38

    const/16 v20, 0xa

    aget v14, v8, v20

    const/16 v15, 0xe

    move/from16 v10, v31

    move/from16 v13, v36

    move/from16 v11, v38

    move/from16 v12, v39

    invoke-static/range {v10 .. v15}, Ls0/v;->i(IIIIII)I

    move-result v37

    const/16 v23, 0xb

    aget v40, v8, v23

    const/16 v41, 0xf

    invoke-static/range {v36 .. v41}, Ls0/v;->i(IIIIII)I

    move-result v10

    const/16 v24, 0xc

    aget v14, v8, v24

    const/4 v15, 0x6

    move v11, v10

    move/from16 v12, v37

    move/from16 v13, v38

    move/from16 v10, v39

    invoke-static/range {v10 .. v15}, Ls0/v;->i(IIIIII)I

    move-result v42

    move v10, v11

    const/16 v36, 0xd

    aget v14, v8, v36

    const/4 v15, 0x7

    move v12, v10

    move/from16 v13, v37

    move/from16 v10, v38

    move/from16 v11, v42

    invoke-static/range {v10 .. v15}, Ls0/v;->i(IIIIII)I

    move-result v31

    move v10, v12

    const/16 v38, 0xe

    aget v44, v8, v38

    const/16 v45, 0x9

    move/from16 v43, v10

    move/from16 v41, v31

    move/from16 v40, v37

    invoke-static/range {v40 .. v45}, Ls0/v;->i(IIIIII)I

    move-result v31

    const/16 v37, 0xf

    aget v14, v8, v37

    const/16 v15, 0x8

    move/from16 v11, v31

    move/from16 v12, v41

    move/from16 v13, v42

    invoke-static/range {v10 .. v15}, Ls0/v;->i(IIIIII)I

    move-result v49

    aget v32, v8, v19

    const/16 v33, 0x7

    move/from16 v30, v31

    move/from16 v31, v41

    move/from16 v28, v42

    move/from16 v29, v49

    invoke-static/range {v28 .. v33}, Ls0/v;->j(IIIIII)I

    move-result v48

    move/from16 v31, v30

    aget v32, v8, v27

    const/16 v33, 0x6

    move/from16 v28, v41

    move/from16 v29, v48

    move/from16 v30, v49

    invoke-static/range {v28 .. v33}, Ls0/v;->j(IIIIII)I

    move-result v47

    aget v50, v8, v36

    const/16 v51, 0x8

    move/from16 v46, v31

    invoke-static/range {v46 .. v51}, Ls0/v;->j(IIIIII)I

    move-result v10

    aget v3, v8, v16

    const/16 v48, 0xd

    move/from16 v44, v10

    move/from16 v46, v29

    move/from16 v45, v47

    move/from16 v43, v49

    move/from16 v47, v3

    invoke-static/range {v43 .. v48}, Ls0/v;->j(IIIIII)I

    move-result v39

    move/from16 v47, v45

    move/from16 v48, v46

    aget v14, v8, v20

    const/16 v15, 0xb

    move v12, v10

    move/from16 v11, v39

    move/from16 v13, v47

    move/from16 v10, v48

    invoke-static/range {v10 .. v15}, Ls0/v;->j(IIIIII)I

    move-result v42

    move v10, v12

    aget v14, v8, v35

    const/16 v15, 0x9

    move v13, v10

    move/from16 v12, v39

    move/from16 v11, v42

    move/from16 v10, v47

    invoke-static/range {v10 .. v15}, Ls0/v;->j(IIIIII)I

    move-result v31

    move v10, v13

    aget v14, v8, v37

    const/4 v15, 0x7

    move/from16 v11, v31

    move/from16 v13, v39

    move/from16 v12, v42

    invoke-static/range {v10 .. v15}, Ls0/v;->j(IIIIII)I

    move-result v31

    move/from16 v41, v11

    aget v43, v8, v26

    const/16 v44, 0xf

    move/from16 v40, v31

    invoke-static/range {v39 .. v44}, Ls0/v;->j(IIIIII)I

    move-result v10

    aget v32, v8, v24

    const/16 v33, 0x7

    move/from16 v29, v10

    move/from16 v30, v31

    move/from16 v31, v41

    move/from16 v28, v42

    invoke-static/range {v28 .. v33}, Ls0/v;->j(IIIIII)I

    move-result v43

    move/from16 v31, v30

    aget v32, v8, v9

    const/16 v33, 0xc

    move/from16 v30, v10

    move/from16 v28, v41

    move/from16 v29, v43

    invoke-static/range {v28 .. v33}, Ls0/v;->j(IIIIII)I

    move-result v44

    aget v47, v8, v21

    const/16 v48, 0xf

    move/from16 v46, v10

    move/from16 v45, v43

    move/from16 v43, v31

    invoke-static/range {v43 .. v48}, Ls0/v;->j(IIIIII)I

    move-result v47

    move/from16 v43, v45

    aget v14, v8, v34

    const/16 v15, 0x9

    move/from16 v13, v43

    move/from16 v12, v44

    move/from16 v11, v47

    invoke-static/range {v10 .. v15}, Ls0/v;->j(IIIIII)I

    move-result v52

    aget v3, v8, v18

    const/16 v48, 0xb

    move/from16 v46, v44

    move/from16 v45, v47

    move/from16 v44, v52

    move/from16 v47, v3

    invoke-static/range {v43 .. v48}, Ls0/v;->j(IIIIII)I

    move-result v31

    move/from16 v47, v45

    move/from16 v44, v46

    aget v48, v8, v38

    const/16 v49, 0x7

    move/from16 v45, v31

    move/from16 v46, v52

    invoke-static/range {v44 .. v49}, Ls0/v;->j(IIIIII)I

    move-result v50

    aget v53, v8, v23

    const/16 v54, 0xd

    move/from16 v51, v31

    move/from16 v49, v47

    invoke-static/range {v49 .. v54}, Ls0/v;->j(IIIIII)I

    move-result v10

    aget v32, v8, v22

    move/from16 v29, v10

    move/from16 v30, v50

    move/from16 v28, v52

    invoke-static/range {v28 .. v33}, Ls0/v;->j(IIIIII)I

    move-result v39

    aget v14, v8, v26

    const/16 v15, 0xb

    move v12, v10

    move/from16 v10, v31

    move/from16 v11, v39

    move/from16 v13, v50

    invoke-static/range {v10 .. v15}, Ls0/v;->k(IIIIII)I

    move-result v40

    move v10, v12

    aget v14, v8, v20

    const/16 v15, 0xd

    move v13, v10

    move/from16 v12, v39

    move/from16 v11, v40

    move/from16 v10, v50

    invoke-static/range {v10 .. v15}, Ls0/v;->k(IIIIII)I

    move-result v41

    move v10, v13

    aget v14, v8, v38

    const/4 v15, 0x6

    move/from16 v13, v39

    move/from16 v12, v40

    move/from16 v11, v41

    invoke-static/range {v10 .. v15}, Ls0/v;->k(IIIIII)I

    move-result v31

    aget v43, v8, v27

    const/16 v44, 0x7

    move/from16 v42, v40

    move/from16 v40, v31

    invoke-static/range {v39 .. v44}, Ls0/v;->k(IIIIII)I

    move-result v31

    move/from16 v56, v42

    move/from16 v42, v40

    move/from16 v40, v56

    aget v44, v8, v21

    const/16 v45, 0xe

    move/from16 v43, v41

    move/from16 v41, v31

    invoke-static/range {v40 .. v45}, Ls0/v;->k(IIIIII)I

    move-result v10

    move/from16 v41, v43

    aget v32, v8, v37

    const/16 v33, 0x9

    move/from16 v29, v10

    move/from16 v30, v31

    move/from16 v28, v41

    move/from16 v31, v42

    invoke-static/range {v28 .. v33}, Ls0/v;->k(IIIIII)I

    move-result v43

    move/from16 v31, v30

    aget v32, v8, v22

    const/16 v33, 0xd

    move/from16 v30, v10

    move/from16 v28, v42

    move/from16 v29, v43

    invoke-static/range {v28 .. v33}, Ls0/v;->k(IIIIII)I

    move-result v11

    aget v14, v8, v16

    const/16 v15, 0xf

    move v13, v10

    move/from16 v10, v31

    move/from16 v12, v43

    invoke-static/range {v10 .. v15}, Ls0/v;->k(IIIIII)I

    move-result v47

    move v10, v13

    aget v14, v8, v18

    const/16 v15, 0xe

    move v12, v11

    move/from16 v13, v43

    move/from16 v11, v47

    invoke-static/range {v10 .. v15}, Ls0/v;->k(IIIIII)I

    move-result v47

    move/from16 v44, v11

    move v11, v12

    move/from16 v28, v47

    aget v47, v8, v19

    const/16 v48, 0x8

    move/from16 v46, v11

    move/from16 v45, v44

    move/from16 v44, v28

    invoke-static/range {v43 .. v48}, Ls0/v;->k(IIIIII)I

    move-result v31

    move/from16 v44, v45

    aget v48, v8, v9

    const/16 v49, 0xd

    move/from16 v46, v28

    move/from16 v45, v31

    move/from16 v47, v44

    move/from16 v44, v11

    invoke-static/range {v44 .. v49}, Ls0/v;->k(IIIIII)I

    move-result v50

    move/from16 v44, v47

    aget v48, v8, v35

    const/16 v49, 0x6

    move/from16 v47, v28

    move/from16 v46, v31

    move/from16 v45, v50

    invoke-static/range {v44 .. v49}, Ls0/v;->k(IIIIII)I

    move-result v51

    aget v32, v8, v36

    const/16 v33, 0x5

    move/from16 v30, v50

    move/from16 v29, v51

    invoke-static/range {v28 .. v33}, Ls0/v;->k(IIIIII)I

    move-result v50

    move/from16 v52, v30

    aget v53, v8, v23

    const/16 v54, 0xc

    move/from16 v49, v31

    invoke-static/range {v49 .. v54}, Ls0/v;->k(IIIIII)I

    move-result v10

    move/from16 v56, v52

    move/from16 v52, v50

    move/from16 v50, v56

    aget v54, v8, v34

    const/16 v55, 0x7

    move/from16 v53, v51

    move/from16 v51, v10

    invoke-static/range {v50 .. v55}, Ls0/v;->k(IIIIII)I

    move-result v11

    move/from16 v51, v53

    aget v14, v8, v24

    const/4 v15, 0x5

    move v12, v10

    move/from16 v10, v51

    move/from16 v13, v52

    invoke-static/range {v10 .. v15}, Ls0/v;->k(IIIIII)I

    move-result v31

    move v10, v12

    aget v14, v8, v16

    const/16 v15, 0xb

    move v13, v10

    move v12, v11

    move/from16 v11, v31

    move/from16 v10, v52

    invoke-static/range {v10 .. v15}, Ls0/v;->l(IIIIII)I

    move-result v31

    move v10, v12

    move v12, v11

    move v11, v10

    move v10, v13

    aget v14, v8, v21

    const/16 v15, 0xc

    move v13, v11

    move/from16 v11, v31

    invoke-static/range {v10 .. v15}, Ls0/v;->l(IIIIII)I

    move-result v39

    move v11, v13

    aget v32, v8, v23

    const/16 v33, 0xe

    move/from16 v28, v11

    move/from16 v30, v31

    move/from16 v29, v39

    move/from16 v31, v12

    invoke-static/range {v28 .. v33}, Ls0/v;->l(IIIIII)I

    move-result v40

    move/from16 v31, v30

    aget v32, v8, v20

    const/16 v33, 0xf

    move/from16 v28, v12

    move/from16 v30, v39

    move/from16 v29, v40

    invoke-static/range {v28 .. v33}, Ls0/v;->l(IIIIII)I

    move-result v41

    aget v43, v8, v9

    const/16 v44, 0xe

    move/from16 v42, v41

    move/from16 v41, v40

    move/from16 v40, v42

    move/from16 v42, v39

    move/from16 v39, v31

    invoke-static/range {v39 .. v44}, Ls0/v;->l(IIIIII)I

    move-result v10

    move/from16 v39, v41

    move/from16 v41, v40

    move/from16 v40, v39

    move/from16 v39, v42

    aget v43, v8, v22

    const/16 v44, 0xf

    move/from16 v42, v40

    move/from16 v40, v10

    invoke-static/range {v39 .. v44}, Ls0/v;->l(IIIIII)I

    move-result v43

    move/from16 v56, v42

    move/from16 v42, v40

    move/from16 v40, v56

    aget v44, v8, v24

    const/16 v45, 0x9

    move/from16 v56, v43

    move/from16 v43, v41

    move/from16 v41, v56

    invoke-static/range {v40 .. v45}, Ls0/v;->l(IIIIII)I

    move-result v31

    move/from16 v56, v43

    move/from16 v43, v41

    move/from16 v41, v56

    aget v45, v8, v27

    const/16 v46, 0x8

    move/from16 v44, v42

    move/from16 v42, v31

    invoke-static/range {v41 .. v46}, Ls0/v;->l(IIIIII)I

    move-result v10

    move/from16 v42, v44

    aget v14, v8, v36

    const/16 v15, 0x9

    move v11, v10

    move/from16 v12, v31

    move/from16 v10, v42

    move/from16 v13, v43

    invoke-static/range {v10 .. v15}, Ls0/v;->l(IIIIII)I

    move-result v44

    move v10, v11

    aget v32, v8, v26

    const/16 v33, 0xe

    move/from16 v30, v10

    move/from16 v28, v43

    move/from16 v29, v44

    invoke-static/range {v28 .. v33}, Ls0/v;->l(IIIIII)I

    move-result v47

    move/from16 v12, v29

    aget v14, v8, v19

    const/4 v15, 0x5

    move v13, v10

    move/from16 v10, v31

    move/from16 v11, v47

    invoke-static/range {v10 .. v15}, Ls0/v;->l(IIIIII)I

    move-result v48

    move v10, v13

    aget v14, v8, v37

    const/4 v15, 0x6

    move v13, v12

    move/from16 v12, v47

    move/from16 v11, v48

    invoke-static/range {v10 .. v15}, Ls0/v;->l(IIIIII)I

    move-result v47

    move v11, v12

    move v12, v13

    aget v3, v8, v38

    const/16 v49, 0x8

    move/from16 v44, v12

    move/from16 v45, v47

    move/from16 v46, v48

    move/from16 v48, v3

    move/from16 v47, v11

    invoke-static/range {v44 .. v49}, Ls0/v;->l(IIIIII)I

    move-result v31

    move/from16 v42, v45

    move/from16 v48, v46

    aget v49, v8, v34

    const/16 v50, 0x6

    move/from16 v46, v31

    move/from16 v45, v47

    move/from16 v47, v42

    invoke-static/range {v45 .. v50}, Ls0/v;->l(IIIIII)I

    move-result v40

    aget v43, v8, v35

    const/16 v44, 0x5

    move/from16 v41, v31

    move/from16 v39, v48

    invoke-static/range {v39 .. v44}, Ls0/v;->l(IIIIII)I

    move-result v29

    aget v32, v8, v18

    const/16 v33, 0xc

    move/from16 v30, v40

    move/from16 v28, v42

    invoke-static/range {v28 .. v33}, Ls0/v;->l(IIIIII)I

    move-result v10

    aget v5, v8, v34

    const/16 v6, 0x8

    move/from16 v4, v17

    move/from16 v3, v25

    invoke-static/range {v1 .. v6}, Ls0/v;->p(IIIIII)I

    move-result v5

    aget v6, v8, v38

    const/16 v7, 0x9

    move/from16 v56, v4

    move v4, v2

    move/from16 v2, v56

    move/from16 v56, v5

    move v5, v3

    move/from16 v3, v56

    invoke-static/range {v2 .. v7}, Ls0/v;->p(IIIIII)I

    move-result v41

    move v2, v4

    move v4, v3

    move v3, v5

    aget v6, v8, v19

    move v5, v2

    move v2, v3

    move/from16 v3, v41

    invoke-static/range {v2 .. v7}, Ls0/v;->p(IIIIII)I

    move-result v42

    move v2, v5

    aget v6, v8, v9

    const/16 v7, 0xb

    move v5, v4

    move v4, v3

    move/from16 v3, v42

    invoke-static/range {v2 .. v7}, Ls0/v;->p(IIIIII)I

    move-result v43

    move v3, v4

    move v4, v5

    aget v45, v8, v21

    const/16 v46, 0xd

    move/from16 v41, v43

    move/from16 v43, v42

    move/from16 v42, v41

    move/from16 v44, v3

    move/from16 v41, v4

    invoke-static/range {v41 .. v46}, Ls0/v;->p(IIIIII)I

    move-result v47

    move/from16 v3, v43

    move/from16 v43, v42

    move/from16 v42, v3

    move/from16 v3, v44

    aget v45, v8, v18

    const/16 v46, 0xf

    move/from16 v41, v3

    move/from16 v44, v42

    move/from16 v42, v47

    invoke-static/range {v41 .. v46}, Ls0/v;->p(IIIIII)I

    move-result v48

    move/from16 v42, v44

    aget v46, v8, v23

    move/from16 v44, v47

    const/16 v47, 0xf

    move/from16 v45, v43

    move/from16 v43, v48

    invoke-static/range {v42 .. v47}, Ls0/v;->p(IIIIII)I

    move-result v49

    move/from16 v47, v44

    move/from16 v43, v45

    aget v1, v8, v27

    move/from16 v50, v48

    const/16 v48, 0x5

    move/from16 v46, v47

    move/from16 v44, v49

    move/from16 v45, v50

    move/from16 v47, v1

    invoke-static/range {v43 .. v48}, Ls0/v;->p(IIIIII)I

    move-result v48

    move/from16 v47, v46

    aget v51, v8, v36

    const/16 v52, 0x7

    invoke-static/range {v47 .. v52}, Ls0/v;->p(IIIIII)I

    move-result v1

    aget v52, v8, v35

    const/16 v53, 0x7

    move/from16 v51, v50

    move/from16 v50, v48

    move/from16 v48, v51

    move/from16 v51, v49

    move/from16 v49, v1

    invoke-static/range {v48 .. v53}, Ls0/v;->p(IIIIII)I

    move-result v2

    move/from16 v48, v50

    move/from16 v49, v51

    aget v5, v8, v37

    const/16 v6, 0x8

    move v3, v1

    move/from16 v4, v48

    move/from16 v1, v49

    invoke-static/range {v1 .. v6}, Ls0/v;->p(IIIIII)I

    move-result v5

    move v1, v3

    aget v6, v8, v22

    move v4, v2

    move v3, v5

    move/from16 v2, v48

    move v5, v1

    invoke-static/range {v2 .. v7}, Ls0/v;->p(IIIIII)I

    move-result v2

    aget v5, v8, v16

    const/16 v6, 0xe

    invoke-static/range {v1 .. v6}, Ls0/v;->p(IIIIII)I

    move-result v41

    move/from16 v56, v4

    move v4, v2

    move/from16 v2, v56

    aget v6, v8, v20

    const/16 v7, 0xe

    move v5, v3

    move/from16 v3, v41

    invoke-static/range {v2 .. v7}, Ls0/v;->p(IIIIII)I

    move-result v42

    move v3, v5

    aget v45, v8, v26

    const/16 v46, 0xc

    move/from16 v44, v4

    move/from16 v43, v41

    move/from16 v41, v3

    invoke-static/range {v41 .. v46}, Ls0/v;->p(IIIIII)I

    move-result v47

    move/from16 v41, v43

    aget v45, v8, v24

    const/16 v46, 0x6

    move/from16 v44, v41

    move/from16 v43, v42

    move/from16 v42, v47

    move/from16 v41, v4

    invoke-static/range {v41 .. v46}, Ls0/v;->p(IIIIII)I

    move-result v48

    move/from16 v42, v43

    move/from16 v41, v44

    aget v45, v8, v35

    const/16 v46, 0x9

    move/from16 v44, v42

    move/from16 v43, v47

    move/from16 v42, v48

    invoke-static/range {v41 .. v46}, Ls0/v;->o(IIIIII)I

    move-result v49

    move/from16 v42, v44

    aget v46, v8, v23

    const/16 v47, 0xd

    move/from16 v45, v43

    move/from16 v44, v48

    move/from16 v43, v49

    invoke-static/range {v42 .. v47}, Ls0/v;->o(IIIIII)I

    move-result v48

    move/from16 v50, v44

    move/from16 v47, v45

    aget v51, v8, v26

    const/16 v52, 0xf

    invoke-static/range {v47 .. v52}, Ls0/v;->o(IIIIII)I

    move-result v1

    move/from16 v56, v50

    move/from16 v50, v48

    move/from16 v48, v56

    aget v52, v8, v19

    move/from16 v51, v49

    move/from16 v49, v1

    invoke-static/range {v48 .. v53}, Ls0/v;->o(IIIIII)I

    move-result v2

    move/from16 v49, v51

    aget v5, v8, v9

    const/16 v6, 0xc

    move v3, v1

    move/from16 v1, v49

    move/from16 v4, v50

    invoke-static/range {v1 .. v6}, Ls0/v;->o(IIIIII)I

    move-result v5

    move v1, v3

    move v3, v5

    aget v5, v8, v36

    const/16 v6, 0x8

    move v4, v3

    move v3, v2

    move v2, v4

    move v4, v1

    move/from16 v1, v50

    invoke-static/range {v1 .. v6}, Ls0/v;->o(IIIIII)I

    move-result v41

    move v1, v3

    move v3, v2

    move v2, v1

    move v1, v4

    aget v5, v8, v34

    const/16 v6, 0x9

    move v4, v2

    move/from16 v2, v41

    invoke-static/range {v1 .. v6}, Ls0/v;->o(IIIIII)I

    move-result v42

    move/from16 v56, v4

    move v4, v2

    move/from16 v2, v56

    aget v6, v8, v20

    const/16 v7, 0xb

    move v5, v3

    move/from16 v3, v42

    invoke-static/range {v2 .. v7}, Ls0/v;->o(IIIIII)I

    move-result v43

    move v3, v5

    aget v45, v8, v38

    const/16 v46, 0x7

    move/from16 v41, v43

    move/from16 v43, v42

    move/from16 v42, v41

    move/from16 v41, v3

    move/from16 v44, v4

    invoke-static/range {v41 .. v46}, Ls0/v;->o(IIIIII)I

    move-result v47

    move/from16 v4, v43

    move/from16 v43, v42

    move/from16 v42, v4

    move/from16 v4, v44

    aget v45, v8, v37

    move/from16 v41, v4

    move/from16 v44, v42

    move/from16 v42, v47

    invoke-static/range {v41 .. v46}, Ls0/v;->o(IIIIII)I

    move-result v48

    move/from16 v42, v44

    aget v46, v8, v22

    move/from16 v44, v47

    const/16 v47, 0xc

    move/from16 v45, v43

    move/from16 v43, v48

    invoke-static/range {v42 .. v47}, Ls0/v;->o(IIIIII)I

    move-result v49

    move/from16 v47, v44

    move/from16 v43, v45

    aget v1, v8, v24

    move/from16 v50, v48

    const/16 v48, 0x7

    move/from16 v46, v47

    move/from16 v44, v49

    move/from16 v45, v50

    move/from16 v47, v1

    invoke-static/range {v43 .. v48}, Ls0/v;->o(IIIIII)I

    move-result v48

    move/from16 v47, v46

    aget v51, v8, v27

    const/16 v52, 0x6

    invoke-static/range {v47 .. v52}, Ls0/v;->o(IIIIII)I

    move-result v1

    aget v52, v8, v21

    const/16 v53, 0xf

    move/from16 v51, v50

    move/from16 v50, v48

    move/from16 v48, v51

    move/from16 v51, v49

    move/from16 v49, v1

    invoke-static/range {v48 .. v53}, Ls0/v;->o(IIIIII)I

    move-result v2

    move/from16 v48, v50

    move/from16 v49, v51

    aget v5, v8, v16

    const/16 v6, 0xd

    move v3, v1

    move/from16 v4, v48

    move/from16 v1, v49

    invoke-static/range {v1 .. v6}, Ls0/v;->o(IIIIII)I

    move-result v5

    move v1, v3

    aget v6, v8, v18

    move v4, v2

    move v3, v5

    move/from16 v2, v48

    move v5, v1

    invoke-static/range {v2 .. v7}, Ls0/v;->o(IIIIII)I

    move-result v2

    aget v5, v8, v37

    const/16 v6, 0x9

    invoke-static/range {v1 .. v6}, Ls0/v;->n(IIIIII)I

    move-result v41

    move/from16 v56, v4

    move v4, v2

    move/from16 v2, v56

    aget v6, v8, v34

    const/4 v7, 0x7

    move v5, v3

    move/from16 v3, v41

    invoke-static/range {v2 .. v7}, Ls0/v;->n(IIIIII)I

    move-result v42

    move v3, v5

    aget v45, v8, v16

    const/16 v46, 0xf

    move/from16 v44, v4

    move/from16 v43, v41

    move/from16 v41, v3

    invoke-static/range {v41 .. v46}, Ls0/v;->n(IIIIII)I

    move-result v47

    move/from16 v41, v43

    aget v45, v8, v26

    const/16 v46, 0xb

    move/from16 v44, v41

    move/from16 v43, v42

    move/from16 v42, v47

    move/from16 v41, v4

    invoke-static/range {v41 .. v46}, Ls0/v;->n(IIIIII)I

    move-result v48

    move/from16 v42, v43

    move/from16 v41, v44

    aget v45, v8, v19

    const/16 v46, 0x8

    move/from16 v44, v42

    move/from16 v43, v47

    move/from16 v42, v48

    invoke-static/range {v41 .. v46}, Ls0/v;->n(IIIIII)I

    move-result v49

    move/from16 v42, v44

    aget v46, v8, v38

    const/16 v47, 0x6

    move/from16 v45, v43

    move/from16 v44, v48

    move/from16 v43, v49

    invoke-static/range {v42 .. v47}, Ls0/v;->n(IIIIII)I

    move-result v48

    move/from16 v50, v44

    move/from16 v47, v45

    aget v51, v8, v35

    const/16 v52, 0x6

    invoke-static/range {v47 .. v52}, Ls0/v;->n(IIIIII)I

    move-result v1

    move/from16 v56, v50

    move/from16 v50, v48

    move/from16 v48, v56

    aget v52, v8, v21

    const/16 v53, 0xe

    move/from16 v51, v49

    move/from16 v49, v1

    invoke-static/range {v48 .. v53}, Ls0/v;->n(IIIIII)I

    move-result v2

    move/from16 v49, v51

    aget v5, v8, v23

    const/16 v6, 0xc

    move v3, v1

    move/from16 v1, v49

    move/from16 v4, v50

    invoke-static/range {v1 .. v6}, Ls0/v;->n(IIIIII)I

    move-result v5

    move v1, v3

    move v3, v5

    aget v5, v8, v22

    const/16 v6, 0xd

    move v4, v3

    move v3, v2

    move v2, v4

    move v4, v1

    move/from16 v1, v50

    invoke-static/range {v1 .. v6}, Ls0/v;->n(IIIIII)I

    move-result v41

    move v1, v3

    move v3, v2

    move v2, v1

    move v1, v4

    aget v5, v8, v24

    const/4 v6, 0x5

    move v4, v2

    move/from16 v2, v41

    invoke-static/range {v1 .. v6}, Ls0/v;->n(IIIIII)I

    move-result v42

    move/from16 v56, v4

    move v4, v2

    move/from16 v2, v56

    aget v6, v8, v18

    const/16 v7, 0xe

    move v5, v3

    move/from16 v3, v42

    invoke-static/range {v2 .. v7}, Ls0/v;->n(IIIIII)I

    move-result v43

    move v3, v5

    aget v45, v8, v20

    const/16 v46, 0xd

    move/from16 v41, v43

    move/from16 v43, v42

    move/from16 v42, v41

    move/from16 v41, v3

    move/from16 v44, v4

    invoke-static/range {v41 .. v46}, Ls0/v;->n(IIIIII)I

    move-result v47

    move/from16 v4, v43

    move/from16 v43, v42

    move/from16 v42, v4

    move/from16 v4, v44

    aget v45, v8, v9

    move/from16 v41, v4

    move/from16 v44, v42

    move/from16 v42, v47

    invoke-static/range {v41 .. v46}, Ls0/v;->n(IIIIII)I

    move-result v48

    move/from16 v42, v44

    aget v46, v8, v27

    move/from16 v44, v47

    const/16 v47, 0x7

    move/from16 v45, v43

    move/from16 v43, v48

    invoke-static/range {v42 .. v47}, Ls0/v;->n(IIIIII)I

    move-result v49

    move/from16 v47, v44

    move/from16 v43, v45

    aget v1, v8, v36

    move/from16 v50, v48

    const/16 v48, 0x5

    move/from16 v46, v47

    move/from16 v44, v49

    move/from16 v45, v50

    move/from16 v47, v1

    invoke-static/range {v43 .. v48}, Ls0/v;->n(IIIIII)I

    move-result v48

    move/from16 v47, v46

    aget v51, v8, v22

    const/16 v52, 0xf

    invoke-static/range {v47 .. v52}, Ls0/v;->m(IIIIII)I

    move-result v1

    aget v52, v8, v35

    const/16 v53, 0x5

    move/from16 v51, v50

    move/from16 v50, v48

    move/from16 v48, v51

    move/from16 v51, v49

    move/from16 v49, v1

    invoke-static/range {v48 .. v53}, Ls0/v;->m(IIIIII)I

    move-result v2

    move/from16 v48, v50

    move/from16 v49, v51

    aget v5, v8, v27

    const/16 v6, 0x8

    move v3, v1

    move/from16 v4, v48

    move/from16 v1, v49

    invoke-static/range {v1 .. v6}, Ls0/v;->m(IIIIII)I

    move-result v5

    move v1, v3

    aget v6, v8, v16

    const/16 v7, 0xb

    move v4, v2

    move v3, v5

    move/from16 v2, v48

    move v5, v1

    invoke-static/range {v2 .. v7}, Ls0/v;->m(IIIIII)I

    move-result v2

    aget v5, v8, v26

    const/16 v6, 0xe

    invoke-static/range {v1 .. v6}, Ls0/v;->m(IIIIII)I

    move-result v43

    move/from16 v56, v4

    move v4, v2

    move/from16 v2, v56

    aget v6, v8, v23

    const/16 v7, 0xe

    move v5, v3

    move/from16 v3, v43

    invoke-static/range {v2 .. v7}, Ls0/v;->m(IIIIII)I

    move-result v42

    move v3, v5

    aget v45, v8, v37

    const/16 v46, 0x6

    move/from16 v41, v3

    move/from16 v44, v4

    invoke-static/range {v41 .. v46}, Ls0/v;->m(IIIIII)I

    move-result v11

    aget v15, v8, v9

    const/16 v16, 0xe

    move v12, v11

    move/from16 v13, v42

    move/from16 v14, v43

    move v11, v4

    invoke-static/range {v11 .. v16}, Ls0/v;->m(IIIIII)I

    move-result v44

    move v11, v12

    aget v15, v8, v34

    const/16 v16, 0x6

    move v13, v11

    move/from16 v14, v42

    move/from16 v11, v43

    move/from16 v12, v44

    invoke-static/range {v11 .. v16}, Ls0/v;->m(IIIIII)I

    move-result v47

    move v11, v13

    aget v15, v8, v24

    const/16 v16, 0x9

    move v14, v11

    move v13, v12

    move/from16 v11, v42

    move/from16 v12, v47

    invoke-static/range {v11 .. v16}, Ls0/v;->m(IIIIII)I

    move-result v1

    move v12, v13

    move v11, v14

    aget v15, v8, v18

    const/16 v16, 0xc

    move v14, v12

    move/from16 v13, v47

    move v12, v1

    invoke-static/range {v11 .. v16}, Ls0/v;->m(IIIIII)I

    move-result v2

    move v12, v14

    aget v48, v8, v36

    const/16 v49, 0x9

    move/from16 v46, v1

    move/from16 v45, v2

    move/from16 v44, v12

    invoke-static/range {v44 .. v49}, Ls0/v;->m(IIIIII)I

    move-result v2

    move/from16 v3, v45

    aget v5, v8, v21

    const/16 v6, 0xc

    move v4, v1

    move/from16 v1, v47

    invoke-static/range {v1 .. v6}, Ls0/v;->m(IIIIII)I

    move-result v16

    move v1, v4

    aget v5, v8, v19

    const/4 v6, 0x5

    move v4, v3

    move v3, v2

    move/from16 v2, v16

    invoke-static/range {v1 .. v6}, Ls0/v;->m(IIIIII)I

    move-result v15

    move v2, v3

    move v3, v4

    aget v6, v8, v20

    const/16 v7, 0xf

    move v5, v2

    move v2, v3

    move v3, v15

    move/from16 v4, v16

    invoke-static/range {v2 .. v7}, Ls0/v;->m(IIIIII)I

    move-result v14

    move v2, v5

    aget v17, v8, v38

    const/16 v18, 0x8

    move v13, v2

    invoke-static/range {v13 .. v18}, Ls0/v;->m(IIIIII)I

    move-result v1

    iget v2, v0, Ls0/v;->l:I

    add-int v29, v29, v2

    add-int v2, v29, v15

    iget v3, v0, Ls0/v;->m:I

    add-int v3, v3, v40

    add-int v3, v3, v16

    iput v3, v0, Ls0/v;->l:I

    iget v3, v0, Ls0/v;->n:I

    add-int v3, v3, v31

    add-int/2addr v3, v1

    iput v3, v0, Ls0/v;->m:I

    iget v1, v0, Ls0/v;->k:I

    add-int/2addr v1, v10

    add-int/2addr v1, v14

    iput v1, v0, Ls0/v;->n:I

    iput v2, v0, Ls0/v;->k:I

    iput v9, v0, Ls0/v;->p:I

    move v0, v9

    :goto_7f0
    array-length v1, v8

    if-eq v0, v1, :cond_7f8

    aput v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7f0

    :cond_7f8
    return-void
.end method

.method public final g(J)V
    .registers 5

    iget v0, p0, Ls0/v;->p:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    invoke-virtual {p0}, Ls0/v;->f()V

    :cond_9
    long-to-int v0, p1

    iget-object p0, p0, Ls0/v;->o:[I

    aput v0, p0, v1

    const/16 v0, 0x20

    ushr-long/2addr p1, v0

    long-to-int p1, p1

    const/16 p2, 0xf

    aput p1, p0, p2

    return-void
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "RIPEMD128"

    return-object p0
.end method

.method public final getDigestSize()I
    .registers 1

    const/16 p0, 0x10

    return p0
.end method

.method public final h(I[B)V
    .registers 5

    iget v0, p0, Ls0/v;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ls0/v;->p:I

    invoke-static {p1, p2}, Lm4/d;->z(I[B)I

    move-result p1

    iget-object p2, p0, Ls0/v;->o:[I

    aput p1, p2, v0

    iget p1, p0, Ls0/v;->p:I

    const/16 p2, 0x10

    if-ne p1, p2, :cond_17

    invoke-virtual {p0}, Ls0/v;->f()V

    :cond_17
    return-void
.end method

.method public final r(Ls0/v;)V
    .registers 6

    invoke-virtual {p0, p1}, Ls0/j;->d(Ls0/j;)V

    iget v0, p1, Ls0/v;->k:I

    iput v0, p0, Ls0/v;->k:I

    iget v0, p1, Ls0/v;->l:I

    iput v0, p0, Ls0/v;->l:I

    iget v0, p1, Ls0/v;->m:I

    iput v0, p0, Ls0/v;->m:I

    iget v0, p1, Ls0/v;->n:I

    iput v0, p0, Ls0/v;->n:I

    iget-object v0, p1, Ls0/v;->o:[I

    iget-object v1, p0, Ls0/v;->o:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Ls0/v;->p:I

    iput p1, p0, Ls0/v;->p:I

    return-void
.end method

.method public final reset()V
    .registers 5

    invoke-super {p0}, Ls0/j;->reset()V

    const v0, 0x67452301

    iput v0, p0, Ls0/v;->k:I

    const v0, -0x10325477

    iput v0, p0, Ls0/v;->l:I

    const v0, -0x67452302

    iput v0, p0, Ls0/v;->m:I

    const v0, 0x10325476

    iput v0, p0, Ls0/v;->n:I

    const/4 v0, 0x0

    iput v0, p0, Ls0/v;->p:I

    move v1, v0

    :goto_1b
    iget-object v2, p0, Ls0/v;->o:[I

    array-length v3, v2

    if-eq v1, v3, :cond_25

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_25
    return-void
.end method
