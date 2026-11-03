.class public final Ls0/x;
.super Ls0/j;


# instance fields
.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public final s:[I

.field public t:I


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lorg/bouncycastle/crypto/j;->d:Lorg/bouncycastle/crypto/j;

    invoke-direct {p0, v0}, Ls0/j;-><init>(Lorg/bouncycastle/crypto/j;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Ls0/x;->s:[I

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-virtual {p0}, Ls0/x;->reset()V

    return-void
.end method

.method public constructor <init>(Ls0/x;)V
    .registers 3

    iget-object v0, p1, Ls0/j;->g:Lorg/bouncycastle/crypto/j;

    invoke-direct {p0, v0}, Ls0/j;-><init>(Lorg/bouncycastle/crypto/j;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Ls0/x;->s:[I

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-virtual {p0, p1}, Ls0/x;->r(Ls0/x;)V

    return-void
.end method

.method public static i(IIIIII)I
    .registers 6

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    add-int/2addr p0, p1

    add-int/2addr p0, p4

    invoke-static {p0, p5}, Ls0/x;->q(II)I

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

    invoke-static {p1, p5}, Ls0/x;->q(II)I

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

    invoke-static {p0, p5}, Ls0/x;->q(II)I

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

    invoke-static {p1, p5}, Ls0/x;->q(II)I

    move-result p0

    return p0
.end method

.method public static m(IIIIII)I
    .registers 6

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    add-int/2addr p0, p1

    add-int/2addr p0, p4

    invoke-static {p0, p5}, Ls0/x;->q(II)I

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

    invoke-static {p1, p5}, Ls0/x;->q(II)I

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

    invoke-static {p0, p5}, Ls0/x;->q(II)I

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

    invoke-static {p1, p5}, Ls0/x;->q(II)I

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

    new-instance v0, Ls0/x;

    invoke-direct {v0, p0}, Ls0/x;-><init>(Ls0/x;)V

    return-object v0
.end method

.method public final c(Lm4/e;)V
    .registers 2

    check-cast p1, Ls0/x;

    invoke-virtual {p0, p1}, Ls0/x;->r(Ls0/x;)V

    return-void
.end method

.method public final doFinal([BI)I
    .registers 5

    invoke-virtual {p0}, Ls0/j;->e()V

    iget v0, p0, Ls0/x;->k:I

    invoke-static {p1, v0, p2}, Lm4/d;->x([BII)V

    iget v0, p0, Ls0/x;->l:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v0, v1}, Lm4/d;->x([BII)V

    iget v0, p0, Ls0/x;->m:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v0, v1}, Lm4/d;->x([BII)V

    iget v0, p0, Ls0/x;->n:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {p1, v0, v1}, Lm4/d;->x([BII)V

    iget v0, p0, Ls0/x;->o:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {p1, v0, v1}, Lm4/d;->x([BII)V

    iget v0, p0, Ls0/x;->p:I

    add-int/lit8 v1, p2, 0x14

    invoke-static {p1, v0, v1}, Lm4/d;->x([BII)V

    iget v0, p0, Ls0/x;->q:I

    add-int/lit8 v1, p2, 0x18

    invoke-static {p1, v0, v1}, Lm4/d;->x([BII)V

    iget v0, p0, Ls0/x;->r:I

    add-int/lit8 p2, p2, 0x1c

    invoke-static {p1, v0, p2}, Lm4/d;->x([BII)V

    invoke-virtual {p0}, Ls0/x;->reset()V

    const/16 p0, 0x20

    return p0
.end method

.method public final f()V
    .registers 57

    move-object/from16 v0, p0

    iget v1, v0, Ls0/x;->k:I

    iget v2, v0, Ls0/x;->l:I

    iget v3, v0, Ls0/x;->m:I

    iget v4, v0, Ls0/x;->n:I

    iget v8, v0, Ls0/x;->o:I

    iget v9, v0, Ls0/x;->p:I

    iget v12, v0, Ls0/x;->q:I

    move v10, v8

    iget v8, v0, Ls0/x;->r:I

    iget-object v15, v0, Ls0/x;->s:[I

    const/4 v11, 0x0

    aget v5, v15, v11

    const/16 v6, 0xb

    invoke-static/range {v1 .. v6}, Ls0/x;->i(IIIIII)I

    move-result v16

    const/4 v1, 0x1

    aget v6, v15, v1

    const/16 v7, 0xe

    move v5, v4

    move v4, v2

    move v2, v5

    move v5, v3

    move/from16 v3, v16

    invoke-static/range {v2 .. v7}, Ls0/x;->i(IIIIII)I

    move-result v17

    move v2, v4

    move v3, v5

    const/16 v23, 0x2

    aget v6, v15, v23

    const/16 v7, 0xf

    move v5, v2

    move v2, v3

    move/from16 v4, v16

    move/from16 v3, v17

    invoke-static/range {v2 .. v7}, Ls0/x;->i(IIIIII)I

    move-result v18

    move v2, v5

    const/16 v30, 0x3

    aget v6, v15, v30

    const/16 v7, 0xc

    move/from16 v5, v16

    move/from16 v4, v17

    move/from16 v3, v18

    invoke-static/range {v2 .. v7}, Ls0/x;->i(IIIIII)I

    move-result v17

    move v3, v4

    const/4 v2, 0x4

    aget v20, v15, v2

    const/16 v21, 0x5

    move/from16 v19, v3

    invoke-static/range {v16 .. v21}, Ls0/x;->i(IIIIII)I

    move-result v24

    move/from16 v55, v19

    move/from16 v19, v17

    move/from16 v17, v55

    const/4 v3, 0x5

    aget v21, v15, v3

    const/16 v22, 0x8

    move/from16 v20, v18

    move/from16 v18, v24

    invoke-static/range {v17 .. v22}, Ls0/x;->i(IIIIII)I

    move-result v31

    move/from16 v18, v20

    const/4 v4, 0x6

    aget v28, v15, v4

    const/16 v29, 0x7

    move/from16 v27, v19

    move/from16 v26, v24

    move/from16 v25, v31

    move/from16 v24, v18

    invoke-static/range {v24 .. v29}, Ls0/x;->i(IIIIII)I

    move-result v32

    move/from16 v24, v26

    const/16 v16, 0x7

    aget v28, v15, v16

    const/16 v29, 0x9

    move/from16 v27, v24

    move/from16 v26, v31

    move/from16 v25, v32

    move/from16 v24, v19

    invoke-static/range {v24 .. v29}, Ls0/x;->i(IIIIII)I

    move-result v33

    move/from16 v24, v27

    const/16 v17, 0x8

    aget v28, v15, v17

    const/16 v29, 0xb

    move/from16 v27, v31

    move/from16 v26, v32

    move/from16 v25, v33

    invoke-static/range {v24 .. v29}, Ls0/x;->i(IIIIII)I

    move-result v34

    const/16 v18, 0x9

    aget v35, v15, v18

    const/16 v36, 0xd

    move/from16 v55, v34

    move/from16 v34, v32

    move/from16 v32, v55

    invoke-static/range {v31 .. v36}, Ls0/x;->i(IIIIII)I

    move-result v35

    move/from16 v55, v34

    move/from16 v34, v32

    move/from16 v32, v55

    const/16 v19, 0xa

    aget v36, v15, v19

    const/16 v37, 0xe

    move/from16 v55, v35

    move/from16 v35, v33

    move/from16 v33, v55

    invoke-static/range {v32 .. v37}, Ls0/x;->i(IIIIII)I

    move-result v36

    move/from16 v55, v35

    move/from16 v35, v33

    move/from16 v33, v55

    const/16 v20, 0xb

    aget v37, v15, v20

    const/16 v38, 0xf

    move/from16 v55, v36

    move/from16 v36, v34

    move/from16 v34, v55

    invoke-static/range {v33 .. v38}, Ls0/x;->i(IIIIII)I

    move-result v24

    move/from16 v55, v36

    move/from16 v36, v34

    move/from16 v34, v55

    const/16 v21, 0xc

    aget v38, v15, v21

    const/16 v39, 0x6

    move/from16 v37, v35

    move/from16 v35, v24

    invoke-static/range {v34 .. v39}, Ls0/x;->i(IIIIII)I

    move-result v40

    move/from16 v35, v37

    const/16 v22, 0xd

    aget v28, v15, v22

    const/16 v29, 0x7

    move/from16 v26, v24

    move/from16 v24, v35

    move/from16 v27, v36

    move/from16 v25, v40

    invoke-static/range {v24 .. v29}, Ls0/x;->i(IIIIII)I

    move-result v41

    move/from16 v24, v26

    const/16 v31, 0xe

    aget v28, v15, v31

    const/16 v29, 0x9

    move/from16 v27, v24

    move/from16 v24, v36

    move/from16 v26, v40

    move/from16 v25, v41

    invoke-static/range {v24 .. v29}, Ls0/x;->i(IIIIII)I

    move-result v42

    move/from16 v24, v27

    const/16 v32, 0xf

    aget v28, v15, v32

    const/16 v29, 0x8

    move/from16 v26, v25

    move/from16 v27, v40

    move/from16 v25, v42

    invoke-static/range {v24 .. v29}, Ls0/x;->i(IIIIII)I

    move-result v33

    move v6, v9

    move/from16 v25, v26

    aget v9, v15, v3

    move v5, v10

    const/16 v10, 0x8

    move v7, v12

    invoke-static/range {v5 .. v10}, Ls0/x;->p(IIIIII)I

    move-result v34

    aget v13, v15, v31

    const/16 v14, 0x9

    move v9, v8

    move v5, v11

    move/from16 v10, v34

    move v11, v6

    invoke-static/range {v9 .. v14}, Ls0/x;->p(IIIIII)I

    move-result v34

    aget v13, v15, v16

    move v12, v6

    move v9, v7

    move v11, v10

    move/from16 v10, v34

    invoke-static/range {v9 .. v14}, Ls0/x;->p(IIIIII)I

    move-result v36

    move v10, v11

    aget v13, v15, v5

    const/16 v14, 0xb

    move v9, v6

    move v12, v10

    move/from16 v11, v34

    move/from16 v10, v36

    invoke-static/range {v9 .. v14}, Ls0/x;->p(IIIIII)I

    move-result v35

    move v10, v12

    aget v38, v15, v18

    const/16 v39, 0xd

    move/from16 v37, v34

    move/from16 v34, v10

    invoke-static/range {v34 .. v39}, Ls0/x;->p(IIIIII)I

    move-result v43

    move/from16 v34, v37

    aget v38, v15, v23

    const/16 v39, 0xf

    move/from16 v37, v36

    move/from16 v36, v35

    move/from16 v35, v43

    invoke-static/range {v34 .. v39}, Ls0/x;->p(IIIIII)I

    move-result v6

    move/from16 v35, v36

    move/from16 v36, v37

    aget v47, v15, v20

    const/16 v48, 0xf

    move/from16 v44, v6

    move/from16 v46, v35

    move/from16 v45, v43

    move/from16 v43, v36

    invoke-static/range {v43 .. v48}, Ls0/x;->p(IIIIII)I

    move-result v7

    move/from16 v43, v45

    aget v47, v15, v2

    const/16 v48, 0x5

    move/from16 v45, v6

    move/from16 v44, v7

    move/from16 v46, v43

    move/from16 v43, v35

    invoke-static/range {v43 .. v48}, Ls0/x;->p(IIIIII)I

    move-result v8

    move/from16 v43, v46

    aget v47, v15, v22

    const/16 v48, 0x7

    move/from16 v46, v6

    move/from16 v45, v7

    move/from16 v44, v8

    invoke-static/range {v43 .. v48}, Ls0/x;->p(IIIIII)I

    move-result v9

    aget v10, v15, v4

    const/4 v11, 0x7

    move/from16 v55, v9

    move v9, v7

    move/from16 v7, v55

    invoke-static/range {v6 .. v11}, Ls0/x;->p(IIIIII)I

    move-result v34

    move/from16 v55, v9

    move v9, v7

    move/from16 v7, v55

    aget v11, v15, v32

    const/16 v12, 0x8

    move v10, v8

    move/from16 v8, v34

    invoke-static/range {v7 .. v12}, Ls0/x;->p(IIIIII)I

    move-result v37

    move v8, v10

    aget v12, v15, v17

    const/16 v13, 0xb

    move v11, v9

    move/from16 v10, v34

    move/from16 v9, v37

    invoke-static/range {v8 .. v13}, Ls0/x;->p(IIIIII)I

    move-result v36

    move v9, v11

    aget v13, v15, v1

    const/16 v14, 0xe

    move/from16 v12, v34

    move/from16 v10, v36

    move/from16 v11, v37

    invoke-static/range {v9 .. v14}, Ls0/x;->p(IIIIII)I

    move-result v35

    aget v38, v15, v19

    const/16 v39, 0xe

    invoke-static/range {v34 .. v39}, Ls0/x;->p(IIIIII)I

    move-result v6

    aget v47, v15, v30

    const/16 v48, 0xc

    move/from16 v44, v6

    move/from16 v45, v35

    move/from16 v46, v36

    move/from16 v43, v37

    invoke-static/range {v43 .. v48}, Ls0/x;->p(IIIIII)I

    move-result v7

    aget v47, v15, v21

    const/16 v48, 0x6

    move/from16 v45, v6

    move/from16 v44, v7

    move/from16 v46, v35

    move/from16 v43, v36

    invoke-static/range {v43 .. v48}, Ls0/x;->p(IIIIII)I

    move-result v8

    aget v45, v15, v16

    const/16 v46, 0x7

    move/from16 v44, v25

    move/from16 v41, v35

    move/from16 v43, v42

    move/from16 v42, v33

    invoke-static/range {v41 .. v46}, Ls0/x;->j(IIIIII)I

    move-result v36

    move/from16 v42, v43

    aget v45, v15, v2

    const/16 v46, 0x6

    move/from16 v41, v25

    move/from16 v43, v33

    move/from16 v44, v42

    move/from16 v42, v36

    invoke-static/range {v41 .. v46}, Ls0/x;->j(IIIIII)I

    move-result v35

    move/from16 v42, v44

    aget v46, v15, v22

    const/16 v47, 0x8

    move/from16 v45, v33

    move/from16 v43, v35

    move/from16 v44, v36

    invoke-static/range {v42 .. v47}, Ls0/x;->j(IIIIII)I

    move-result v34

    aget v37, v15, v1

    const/16 v38, 0xd

    invoke-static/range {v33 .. v38}, Ls0/x;->j(IIIIII)I

    move-result v9

    aget v13, v15, v19

    const/16 v14, 0xb

    move v10, v9

    move/from16 v11, v34

    move/from16 v12, v35

    move/from16 v9, v36

    invoke-static/range {v9 .. v14}, Ls0/x;->j(IIIIII)I

    move-result v24

    move v9, v10

    aget v13, v15, v4

    const/16 v14, 0x9

    move v11, v9

    move/from16 v10, v24

    move/from16 v12, v34

    move/from16 v9, v35

    invoke-static/range {v9 .. v14}, Ls0/x;->j(IIIIII)I

    move-result v41

    move v9, v11

    aget v13, v15, v32

    const/4 v14, 0x7

    move v12, v9

    move/from16 v11, v24

    move/from16 v9, v34

    move/from16 v10, v41

    invoke-static/range {v9 .. v14}, Ls0/x;->j(IIIIII)I

    move-result v26

    move v9, v12

    aget v13, v15, v30

    const/16 v14, 0xf

    move/from16 v12, v24

    move/from16 v10, v26

    move/from16 v11, v41

    invoke-static/range {v9 .. v14}, Ls0/x;->j(IIIIII)I

    move-result v33

    aget v28, v15, v21

    const/16 v29, 0x7

    move/from16 v25, v33

    move/from16 v27, v41

    invoke-static/range {v24 .. v29}, Ls0/x;->j(IIIIII)I

    move-result v34

    aget v45, v15, v5

    const/16 v46, 0xc

    move/from16 v44, v10

    move/from16 v43, v33

    move/from16 v42, v34

    invoke-static/range {v41 .. v46}, Ls0/x;->j(IIIIII)I

    move-result v35

    aget v46, v15, v18

    const/16 v47, 0xf

    move/from16 v42, v10

    move/from16 v45, v33

    move/from16 v44, v34

    move/from16 v43, v35

    invoke-static/range {v42 .. v47}, Ls0/x;->j(IIIIII)I

    move-result v34

    move/from16 v36, v44

    aget v37, v15, v3

    const/16 v38, 0x9

    invoke-static/range {v33 .. v38}, Ls0/x;->j(IIIIII)I

    move-result v9

    move/from16 v55, v36

    move/from16 v36, v34

    move/from16 v34, v55

    aget v38, v15, v23

    const/16 v39, 0xb

    move/from16 v37, v35

    move/from16 v35, v9

    invoke-static/range {v34 .. v39}, Ls0/x;->j(IIIIII)I

    move-result v24

    move/from16 v35, v37

    aget v28, v15, v31

    move/from16 v26, v9

    move/from16 v25, v24

    move/from16 v24, v35

    move/from16 v27, v36

    invoke-static/range {v24 .. v29}, Ls0/x;->j(IIIIII)I

    move-result v41

    move/from16 v24, v25

    aget v28, v15, v20

    const/16 v29, 0xd

    move/from16 v27, v9

    move/from16 v26, v24

    move/from16 v24, v36

    move/from16 v25, v41

    invoke-static/range {v24 .. v29}, Ls0/x;->j(IIIIII)I

    move-result v10

    move/from16 v24, v26

    aget v13, v15, v17

    const/16 v14, 0xc

    move/from16 v12, v24

    move/from16 v11, v25

    invoke-static/range {v9 .. v14}, Ls0/x;->j(IIIIII)I

    move-result v33

    move/from16 v26, v10

    aget v44, v15, v4

    const/16 v45, 0x9

    move/from16 v43, v6

    move/from16 v42, v7

    move/from16 v41, v8

    invoke-static/range {v40 .. v45}, Ls0/x;->o(IIIIII)I

    move-result v9

    aget v10, v15, v20

    const/16 v11, 0xd

    move/from16 v55, v9

    move v9, v7

    move/from16 v7, v55

    invoke-static/range {v6 .. v11}, Ls0/x;->o(IIIIII)I

    move-result v34

    move/from16 v55, v9

    move v9, v7

    move/from16 v7, v55

    aget v11, v15, v30

    const/16 v12, 0xf

    move v10, v8

    move/from16 v8, v34

    invoke-static/range {v7 .. v12}, Ls0/x;->o(IIIIII)I

    move-result v35

    move v8, v10

    aget v12, v15, v16

    const/4 v13, 0x7

    move v11, v9

    move/from16 v10, v34

    move/from16 v9, v35

    invoke-static/range {v8 .. v13}, Ls0/x;->o(IIIIII)I

    move-result v36

    move v9, v11

    aget v13, v15, v5

    move/from16 v12, v34

    move/from16 v11, v35

    move/from16 v10, v36

    invoke-static/range {v9 .. v14}, Ls0/x;->o(IIIIII)I

    move-result v37

    aget v38, v15, v22

    const/16 v39, 0x8

    move/from16 v55, v37

    move/from16 v37, v35

    move/from16 v35, v55

    invoke-static/range {v34 .. v39}, Ls0/x;->o(IIIIII)I

    move-result v38

    move/from16 v55, v37

    move/from16 v37, v35

    move/from16 v35, v55

    aget v39, v15, v3

    const/16 v40, 0x9

    move/from16 v55, v38

    move/from16 v38, v36

    move/from16 v36, v55

    invoke-static/range {v35 .. v40}, Ls0/x;->o(IIIIII)I

    move-result v6

    move/from16 v55, v38

    move/from16 v38, v36

    move/from16 v36, v55

    aget v40, v15, v19

    const/16 v41, 0xb

    move/from16 v39, v37

    move/from16 v37, v6

    invoke-static/range {v36 .. v41}, Ls0/x;->o(IIIIII)I

    move-result v7

    move/from16 v37, v39

    aget v41, v15, v31

    const/16 v42, 0x7

    move/from16 v39, v6

    move/from16 v40, v38

    move/from16 v38, v7

    invoke-static/range {v37 .. v42}, Ls0/x;->o(IIIIII)I

    move-result v8

    move/from16 v38, v40

    aget v10, v15, v32

    const/4 v11, 0x7

    move v9, v8

    move v8, v7

    move v7, v9

    move v9, v6

    move/from16 v6, v38

    invoke-static/range {v6 .. v11}, Ls0/x;->o(IIIIII)I

    move-result v39

    move v6, v8

    move v8, v7

    move v7, v6

    move v6, v9

    aget v10, v15, v17

    const/16 v11, 0xc

    move v9, v7

    move/from16 v7, v39

    invoke-static/range {v6 .. v11}, Ls0/x;->o(IIIIII)I

    move-result v40

    move v7, v9

    aget v11, v15, v21

    const/4 v12, 0x7

    move v10, v8

    move/from16 v9, v39

    move/from16 v8, v40

    invoke-static/range {v7 .. v12}, Ls0/x;->o(IIIIII)I

    move-result v41

    move v8, v10

    aget v12, v15, v2

    const/4 v13, 0x6

    move/from16 v11, v39

    move/from16 v10, v40

    move/from16 v9, v41

    invoke-static/range {v8 .. v13}, Ls0/x;->o(IIIIII)I

    move-result v40

    move v8, v10

    aget v43, v15, v18

    const/16 v44, 0xf

    move/from16 v42, v8

    invoke-static/range {v39 .. v44}, Ls0/x;->o(IIIIII)I

    move-result v36

    aget v44, v15, v1

    const/16 v45, 0xd

    move/from16 v42, v40

    move/from16 v43, v41

    move/from16 v40, v8

    move/from16 v41, v36

    invoke-static/range {v40 .. v45}, Ls0/x;->o(IIIIII)I

    move-result v35

    move/from16 v40, v42

    move/from16 v41, v43

    aget v45, v15, v23

    const/16 v46, 0xb

    move/from16 v42, v35

    move/from16 v43, v36

    move/from16 v44, v40

    invoke-static/range {v41 .. v46}, Ls0/x;->o(IIIIII)I

    move-result v6

    aget v28, v15, v30

    const/16 v29, 0xb

    move/from16 v27, v25

    move/from16 v25, v6

    invoke-static/range {v24 .. v29}, Ls0/x;->k(IIIIII)I

    move-result v7

    move/from16 v25, v27

    aget v45, v15, v19

    const/16 v46, 0xd

    move/from16 v43, v6

    move/from16 v42, v7

    move/from16 v41, v25

    move/from16 v44, v26

    invoke-static/range {v41 .. v46}, Ls0/x;->k(IIIIII)I

    move-result v8

    aget v46, v15, v31

    const/16 v47, 0x6

    move/from16 v45, v6

    move/from16 v44, v7

    move/from16 v43, v8

    move/from16 v42, v26

    invoke-static/range {v42 .. v47}, Ls0/x;->k(IIIIII)I

    move-result v9

    aget v10, v15, v2

    const/4 v11, 0x7

    move/from16 v55, v9

    move v9, v7

    move/from16 v7, v55

    invoke-static/range {v6 .. v11}, Ls0/x;->k(IIIIII)I

    move-result v24

    move/from16 v55, v9

    move v9, v7

    move/from16 v7, v55

    aget v11, v15, v18

    const/16 v12, 0xe

    move v10, v8

    move/from16 v8, v24

    invoke-static/range {v7 .. v12}, Ls0/x;->k(IIIIII)I

    move-result v41

    move v8, v10

    aget v12, v15, v32

    const/16 v13, 0x9

    move v11, v9

    move/from16 v10, v24

    move/from16 v9, v41

    invoke-static/range {v8 .. v13}, Ls0/x;->k(IIIIII)I

    move-result v26

    move v9, v11

    aget v13, v15, v17

    const/16 v14, 0xd

    move/from16 v12, v24

    move/from16 v10, v26

    move/from16 v11, v41

    invoke-static/range {v9 .. v14}, Ls0/x;->k(IIIIII)I

    move-result v25

    aget v28, v15, v1

    const/16 v29, 0xf

    move/from16 v27, v41

    invoke-static/range {v24 .. v29}, Ls0/x;->k(IIIIII)I

    move-result v42

    aget v45, v15, v23

    const/16 v46, 0xe

    move/from16 v44, v10

    move/from16 v43, v25

    invoke-static/range {v41 .. v46}, Ls0/x;->k(IIIIII)I

    move-result v47

    aget v46, v15, v16

    move/from16 v43, v47

    const/16 v47, 0x8

    move/from16 v45, v25

    move/from16 v44, v42

    move/from16 v42, v10

    invoke-static/range {v42 .. v47}, Ls0/x;->k(IIIIII)I

    move-result v47

    move/from16 v42, v44

    aget v46, v15, v5

    move/from16 v50, v47

    const/16 v47, 0xd

    move/from16 v45, v42

    move/from16 v44, v43

    move/from16 v43, v50

    move/from16 v42, v25

    invoke-static/range {v42 .. v47}, Ls0/x;->k(IIIIII)I

    move-result v49

    move/from16 v43, v44

    move/from16 v42, v45

    aget v46, v15, v4

    const/16 v47, 0x6

    move/from16 v45, v43

    move/from16 v43, v49

    move/from16 v44, v50

    invoke-static/range {v42 .. v47}, Ls0/x;->k(IIIIII)I

    move-result v48

    move/from16 v43, v45

    aget v51, v15, v22

    const/16 v52, 0x5

    move/from16 v47, v43

    invoke-static/range {v47 .. v52}, Ls0/x;->k(IIIIII)I

    move-result v6

    aget v51, v15, v20

    const/16 v52, 0xc

    move/from16 v47, v50

    move/from16 v50, v49

    move/from16 v49, v48

    move/from16 v48, v6

    invoke-static/range {v47 .. v52}, Ls0/x;->k(IIIIII)I

    move-result v7

    move/from16 v48, v49

    move/from16 v49, v50

    aget v10, v15, v3

    const/4 v11, 0x7

    move v8, v6

    move/from16 v9, v48

    move/from16 v6, v49

    invoke-static/range {v6 .. v11}, Ls0/x;->k(IIIIII)I

    move-result v24

    move v6, v8

    aget v10, v15, v21

    const/4 v11, 0x5

    move v9, v6

    move v8, v7

    move/from16 v7, v24

    move/from16 v6, v48

    invoke-static/range {v6 .. v11}, Ls0/x;->k(IIIIII)I

    move-result v41

    move v7, v8

    move v6, v9

    aget v37, v15, v32

    const/16 v38, 0x9

    move/from16 v34, v33

    move/from16 v33, v40

    invoke-static/range {v33 .. v38}, Ls0/x;->n(IIIIII)I

    move-result v8

    move/from16 v33, v34

    aget v37, v15, v3

    const/16 v38, 0x7

    move/from16 v34, v35

    move/from16 v35, v33

    move/from16 v33, v36

    move/from16 v36, v34

    move/from16 v34, v8

    invoke-static/range {v33 .. v38}, Ls0/x;->n(IIIIII)I

    move-result v9

    move/from16 v33, v35

    move/from16 v35, v36

    aget v37, v15, v1

    const/16 v38, 0xf

    move/from16 v36, v33

    move/from16 v33, v35

    move/from16 v35, v34

    move/from16 v34, v9

    invoke-static/range {v33 .. v38}, Ls0/x;->n(IIIIII)I

    move-result v10

    move/from16 v33, v35

    move/from16 v35, v34

    move/from16 v34, v33

    move/from16 v33, v36

    aget v37, v15, v30

    const/16 v38, 0xb

    move/from16 v36, v34

    move/from16 v34, v10

    invoke-static/range {v33 .. v38}, Ls0/x;->n(IIIIII)I

    move-result v9

    move/from16 v34, v36

    aget v12, v15, v16

    const/16 v13, 0x8

    move/from16 v8, v34

    move/from16 v11, v35

    invoke-static/range {v8 .. v13}, Ls0/x;->n(IIIIII)I

    move-result v42

    aget v13, v15, v31

    const/4 v14, 0x6

    move v11, v9

    move v12, v10

    move/from16 v9, v35

    move/from16 v10, v42

    invoke-static/range {v9 .. v14}, Ls0/x;->n(IIIIII)I

    move-result v43

    move v9, v11

    move v10, v12

    aget v46, v15, v4

    const/16 v47, 0x6

    move/from16 v45, v9

    move/from16 v44, v42

    move/from16 v42, v10

    invoke-static/range {v42 .. v47}, Ls0/x;->n(IIIIII)I

    move-result v33

    move/from16 v42, v44

    aget v46, v15, v18

    const/16 v47, 0xe

    move/from16 v45, v42

    move/from16 v44, v43

    move/from16 v42, v9

    move/from16 v43, v33

    invoke-static/range {v42 .. v47}, Ls0/x;->n(IIIIII)I

    move-result v34

    move/from16 v43, v44

    move/from16 v42, v45

    aget v46, v15, v20

    const/16 v47, 0xc

    move/from16 v44, v33

    move/from16 v45, v43

    move/from16 v43, v34

    invoke-static/range {v42 .. v47}, Ls0/x;->n(IIIIII)I

    move-result v35

    move/from16 v43, v45

    aget v47, v15, v17

    const/16 v48, 0xd

    move/from16 v46, v33

    move/from16 v45, v34

    move/from16 v44, v35

    invoke-static/range {v43 .. v48}, Ls0/x;->n(IIIIII)I

    move-result v34

    move/from16 v36, v45

    aget v37, v15, v21

    const/16 v38, 0x5

    invoke-static/range {v33 .. v38}, Ls0/x;->n(IIIIII)I

    move-result v8

    move/from16 v55, v36

    move/from16 v36, v34

    move/from16 v34, v55

    aget v38, v15, v23

    const/16 v39, 0xe

    move/from16 v37, v35

    move/from16 v35, v8

    invoke-static/range {v34 .. v39}, Ls0/x;->n(IIIIII)I

    move-result v9

    move/from16 v35, v37

    aget v12, v15, v19

    const/16 v13, 0xd

    move v10, v8

    move/from16 v8, v35

    move/from16 v11, v36

    invoke-static/range {v8 .. v13}, Ls0/x;->n(IIIIII)I

    move-result v12

    move v8, v10

    move v10, v12

    aget v12, v15, v5

    move v11, v10

    move v10, v9

    move v9, v11

    move v11, v8

    move/from16 v8, v36

    invoke-static/range {v8 .. v13}, Ls0/x;->n(IIIIII)I

    move-result v27

    move v8, v10

    move v10, v9

    move v9, v8

    move v8, v11

    aget v12, v15, v2

    const/4 v13, 0x7

    move v11, v9

    move/from16 v9, v27

    invoke-static/range {v8 .. v13}, Ls0/x;->n(IIIIII)I

    move-result v8

    move/from16 v55, v11

    move v11, v9

    move/from16 v9, v55

    aget v13, v15, v22

    const/4 v14, 0x5

    move v12, v10

    move v10, v8

    invoke-static/range {v9 .. v14}, Ls0/x;->n(IIIIII)I

    move-result v33

    move/from16 v27, v11

    move v13, v12

    aget v8, v15, v1

    const/16 v11, 0xb

    move v9, v10

    move v10, v8

    move v8, v9

    move v9, v7

    move/from16 v7, v41

    invoke-static/range {v6 .. v11}, Ls0/x;->l(IIIIII)I

    move-result v34

    move v10, v9

    move v9, v7

    move v7, v10

    move v10, v8

    aget v11, v15, v18

    const/16 v12, 0xc

    move/from16 v8, v34

    invoke-static/range {v7 .. v12}, Ls0/x;->l(IIIIII)I

    move-result v35

    aget v45, v15, v20

    const/16 v46, 0xe

    move/from16 v44, v9

    move/from16 v41, v10

    move/from16 v43, v34

    move/from16 v42, v35

    invoke-static/range {v41 .. v46}, Ls0/x;->l(IIIIII)I

    move-result v36

    aget v45, v15, v19

    const/16 v46, 0xf

    move/from16 v41, v9

    move/from16 v44, v34

    move/from16 v43, v35

    move/from16 v42, v36

    invoke-static/range {v41 .. v46}, Ls0/x;->l(IIIIII)I

    move-result v37

    aget v38, v15, v5

    move/from16 v55, v37

    move/from16 v37, v35

    move/from16 v35, v55

    invoke-static/range {v34 .. v39}, Ls0/x;->l(IIIIII)I

    move-result v38

    move/from16 v55, v37

    move/from16 v37, v35

    move/from16 v35, v55

    aget v39, v15, v17

    const/16 v40, 0xf

    move/from16 v55, v38

    move/from16 v38, v36

    move/from16 v36, v55

    invoke-static/range {v35 .. v40}, Ls0/x;->l(IIIIII)I

    move-result v6

    move/from16 v55, v38

    move/from16 v38, v36

    move/from16 v36, v55

    aget v40, v15, v21

    const/16 v41, 0x9

    move/from16 v39, v37

    move/from16 v37, v6

    invoke-static/range {v36 .. v41}, Ls0/x;->l(IIIIII)I

    move-result v7

    move/from16 v37, v39

    aget v41, v15, v2

    const/16 v42, 0x8

    move/from16 v39, v6

    move/from16 v40, v38

    move/from16 v38, v7

    invoke-static/range {v37 .. v42}, Ls0/x;->l(IIIIII)I

    move-result v7

    move/from16 v8, v38

    move/from16 v38, v40

    aget v10, v15, v22

    const/16 v11, 0x9

    move v9, v6

    move/from16 v6, v38

    invoke-static/range {v6 .. v11}, Ls0/x;->l(IIIIII)I

    move-result v39

    move v6, v9

    aget v10, v15, v30

    const/16 v11, 0xe

    move v9, v8

    move v8, v7

    move/from16 v7, v39

    invoke-static/range {v6 .. v11}, Ls0/x;->l(IIIIII)I

    move-result v40

    move v7, v8

    move v8, v9

    aget v11, v15, v16

    const/4 v12, 0x5

    move v10, v7

    move v7, v8

    move/from16 v9, v39

    move/from16 v8, v40

    invoke-static/range {v7 .. v12}, Ls0/x;->l(IIIIII)I

    move-result v41

    move v7, v10

    aget v47, v15, v32

    const/16 v48, 0x6

    move/from16 v43, v7

    move/from16 v45, v8

    move/from16 v46, v39

    move/from16 v44, v41

    invoke-static/range {v43 .. v48}, Ls0/x;->l(IIIIII)I

    move-result v49

    aget v43, v15, v31

    const/16 v44, 0x8

    move/from16 v42, v8

    move/from16 v40, v49

    invoke-static/range {v39 .. v44}, Ls0/x;->l(IIIIII)I

    move-result v52

    aget v44, v15, v3

    const/16 v45, 0x6

    move/from16 v40, v8

    move/from16 v43, v41

    move/from16 v42, v49

    move/from16 v41, v52

    invoke-static/range {v40 .. v45}, Ls0/x;->l(IIIIII)I

    move-result v51

    move/from16 v41, v43

    aget v45, v15, v4

    const/16 v46, 0x5

    move/from16 v44, v49

    move/from16 v42, v51

    move/from16 v43, v52

    invoke-static/range {v41 .. v46}, Ls0/x;->l(IIIIII)I

    move-result v50

    aget v53, v15, v23

    const/16 v54, 0xc

    invoke-static/range {v49 .. v54}, Ls0/x;->l(IIIIII)I

    move-result v6

    aget v28, v15, v17

    move/from16 v26, v24

    move/from16 v25, v33

    move/from16 v24, v13

    invoke-static/range {v24 .. v29}, Ls0/x;->m(IIIIII)I

    move-result v36

    move/from16 v24, v26

    move/from16 v11, v27

    aget v28, v15, v4

    const/16 v29, 0x5

    move/from16 v27, v24

    move/from16 v26, v33

    move/from16 v25, v36

    move/from16 v24, v11

    invoke-static/range {v24 .. v29}, Ls0/x;->m(IIIIII)I

    move-result v35

    move/from16 v24, v27

    aget v28, v15, v2

    const/16 v29, 0x8

    move/from16 v27, v33

    move/from16 v25, v35

    move/from16 v26, v36

    invoke-static/range {v24 .. v29}, Ls0/x;->m(IIIIII)I

    move-result v34

    aget v37, v15, v1

    const/16 v38, 0xb

    invoke-static/range {v33 .. v38}, Ls0/x;->m(IIIIII)I

    move-result v39

    aget v11, v15, v30

    const/16 v12, 0xe

    move/from16 v9, v34

    move/from16 v10, v35

    move/from16 v7, v36

    move/from16 v8, v39

    invoke-static/range {v7 .. v12}, Ls0/x;->m(IIIIII)I

    move-result v38

    aget v41, v15, v20

    const/16 v42, 0xe

    move/from16 v40, v34

    move/from16 v37, v35

    invoke-static/range {v37 .. v42}, Ls0/x;->m(IIIIII)I

    move-result v7

    aget v11, v15, v32

    const/4 v12, 0x6

    move v8, v7

    move/from16 v7, v34

    move/from16 v9, v38

    move/from16 v10, v39

    invoke-static/range {v7 .. v12}, Ls0/x;->m(IIIIII)I

    move-result v24

    move v7, v8

    aget v11, v15, v5

    const/16 v12, 0xe

    move v9, v7

    move/from16 v8, v24

    move/from16 v10, v38

    move/from16 v7, v39

    invoke-static/range {v7 .. v12}, Ls0/x;->m(IIIIII)I

    move-result v25

    move v7, v9

    aget v28, v15, v3

    const/16 v29, 0x6

    move/from16 v27, v7

    move/from16 v26, v8

    move/from16 v24, v38

    invoke-static/range {v24 .. v29}, Ls0/x;->m(IIIIII)I

    move-result v8

    move/from16 v24, v26

    aget v11, v15, v21

    const/16 v12, 0x9

    move/from16 v10, v24

    move/from16 v9, v25

    invoke-static/range {v7 .. v12}, Ls0/x;->m(IIIIII)I

    move-result v32

    move v9, v8

    move v8, v10

    aget v28, v15, v23

    const/16 v29, 0xc

    move/from16 v24, v8

    move/from16 v26, v9

    move/from16 v27, v25

    move/from16 v25, v32

    invoke-static/range {v24 .. v29}, Ls0/x;->m(IIIIII)I

    move-result v33

    move/from16 v25, v27

    aget v29, v15, v22

    const/16 v30, 0x9

    move/from16 v28, v9

    move/from16 v27, v32

    move/from16 v26, v33

    invoke-static/range {v25 .. v30}, Ls0/x;->m(IIIIII)I

    move-result v34

    aget v13, v15, v18

    const/16 v14, 0xc

    move/from16 v12, v32

    move/from16 v11, v33

    move/from16 v10, v34

    invoke-static/range {v9 .. v14}, Ls0/x;->m(IIIIII)I

    move-result v33

    move/from16 v35, v11

    aget v36, v15, v16

    const/16 v37, 0x5

    invoke-static/range {v32 .. v37}, Ls0/x;->m(IIIIII)I

    move-result v36

    move/from16 v55, v35

    move/from16 v35, v33

    move/from16 v33, v55

    aget v37, v15, v19

    const/16 v38, 0xf

    move/from16 v55, v36

    move/from16 v36, v34

    move/from16 v34, v55

    invoke-static/range {v33 .. v38}, Ls0/x;->m(IIIIII)I

    move-result v1

    move/from16 v55, v36

    move/from16 v36, v34

    move/from16 v34, v55

    aget v38, v15, v31

    const/16 v39, 0x8

    move/from16 v37, v35

    move/from16 v35, v1

    invoke-static/range {v34 .. v39}, Ls0/x;->m(IIIIII)I

    move-result v1

    move/from16 v2, v35

    move/from16 v35, v37

    iget v3, v0, Ls0/x;->k:I

    add-int v3, v3, v52

    iput v3, v0, Ls0/x;->k:I

    iget v3, v0, Ls0/x;->l:I

    add-int/2addr v3, v6

    iput v3, v0, Ls0/x;->l:I

    iget v3, v0, Ls0/x;->m:I

    add-int v3, v3, v50

    iput v3, v0, Ls0/x;->m:I

    iget v3, v0, Ls0/x;->n:I

    add-int v3, v3, v36

    iput v3, v0, Ls0/x;->n:I

    iget v3, v0, Ls0/x;->o:I

    add-int v3, v3, v35

    iput v3, v0, Ls0/x;->o:I

    iget v3, v0, Ls0/x;->p:I

    add-int/2addr v3, v1

    iput v3, v0, Ls0/x;->p:I

    iget v1, v0, Ls0/x;->q:I

    add-int/2addr v1, v2

    iput v1, v0, Ls0/x;->q:I

    iget v1, v0, Ls0/x;->r:I

    add-int v1, v1, v51

    iput v1, v0, Ls0/x;->r:I

    iput v5, v0, Ls0/x;->t:I

    move v11, v5

    :goto_7f7
    array-length v0, v15

    if-eq v11, v0, :cond_7ff

    aput v5, v15, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_7f7

    :cond_7ff
    return-void
.end method

.method public final g(J)V
    .registers 5

    iget v0, p0, Ls0/x;->t:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    invoke-virtual {p0}, Ls0/x;->f()V

    :cond_9
    long-to-int v0, p1

    iget-object p0, p0, Ls0/x;->s:[I

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

    const-string p0, "RIPEMD256"

    return-object p0
.end method

.method public final getDigestSize()I
    .registers 1

    const/16 p0, 0x20

    return p0
.end method

.method public final h(I[B)V
    .registers 5

    iget v0, p0, Ls0/x;->t:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ls0/x;->t:I

    invoke-static {p1, p2}, Lm4/d;->z(I[B)I

    move-result p1

    iget-object p2, p0, Ls0/x;->s:[I

    aput p1, p2, v0

    iget p1, p0, Ls0/x;->t:I

    const/16 p2, 0x10

    if-ne p1, p2, :cond_17

    invoke-virtual {p0}, Ls0/x;->f()V

    :cond_17
    return-void
.end method

.method public final r(Ls0/x;)V
    .registers 6

    invoke-virtual {p0, p1}, Ls0/j;->d(Ls0/j;)V

    iget v0, p1, Ls0/x;->k:I

    iput v0, p0, Ls0/x;->k:I

    iget v0, p1, Ls0/x;->l:I

    iput v0, p0, Ls0/x;->l:I

    iget v0, p1, Ls0/x;->m:I

    iput v0, p0, Ls0/x;->m:I

    iget v0, p1, Ls0/x;->n:I

    iput v0, p0, Ls0/x;->n:I

    iget v0, p1, Ls0/x;->o:I

    iput v0, p0, Ls0/x;->o:I

    iget v0, p1, Ls0/x;->p:I

    iput v0, p0, Ls0/x;->p:I

    iget v0, p1, Ls0/x;->q:I

    iput v0, p0, Ls0/x;->q:I

    iget v0, p1, Ls0/x;->r:I

    iput v0, p0, Ls0/x;->r:I

    iget-object v0, p1, Ls0/x;->s:[I

    iget-object v1, p0, Ls0/x;->s:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Ls0/x;->t:I

    iput p1, p0, Ls0/x;->t:I

    return-void
.end method

.method public final reset()V
    .registers 5

    invoke-super {p0}, Ls0/j;->reset()V

    const v0, 0x67452301

    iput v0, p0, Ls0/x;->k:I

    const v0, -0x10325477

    iput v0, p0, Ls0/x;->l:I

    const v0, -0x67452302

    iput v0, p0, Ls0/x;->m:I

    const v0, 0x10325476

    iput v0, p0, Ls0/x;->n:I

    const v0, 0x76543210

    iput v0, p0, Ls0/x;->o:I

    const v0, -0x1234568

    iput v0, p0, Ls0/x;->p:I

    const v0, -0x76543211

    iput v0, p0, Ls0/x;->q:I

    const v0, 0x1234567

    iput v0, p0, Ls0/x;->r:I

    const/4 v0, 0x0

    iput v0, p0, Ls0/x;->t:I

    move v1, v0

    :goto_2f
    iget-object v2, p0, Ls0/x;->s:[I

    array-length v3, v2

    if-eq v1, v3, :cond_39

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_39
    return-void
.end method
