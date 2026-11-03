.class public final Lk2/o;
.super Lk2/p;


# instance fields
.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lk2/h;Lk2/b0;Lk2/b0;I)V
    .registers 5

    iput p4, p0, Lk2/o;->g:I

    invoke-direct {p0, p1, p2, p3}, Lk2/p;-><init>(Lk2/h;Lk2/b0;Lk2/b0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V
    .registers 6

    iput p5, p0, Lk2/o;->g:I

    invoke-direct {p0, p1, p2, p3, p4}, Lk2/p;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;)V

    return-void
.end method

.method private final A(Lk2/p;)Lk2/p;
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v1

    :cond_b
    invoke-virtual {v1}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_12

    return-object v0

    :cond_12
    if-ne v0, v1, :cond_19

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    return-object v0

    :cond_19
    iget-object v2, v0, Lk2/p;->b:Lk2/b0;

    check-cast v2, Ln2/n;

    iget-object v3, v0, Lk2/p;->c:Lk2/b0;

    check-cast v3, Ln2/n;

    iget-object v4, v1, Lk2/p;->b:Lk2/b0;

    check-cast v4, Ln2/n;

    invoke-virtual {v1}, Lk2/p;->i()Lk2/b0;

    move-result-object v5

    check-cast v5, Ln2/n;

    iget-object v6, v0, Lk2/p;->d:[Lk2/b0;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Ln2/n;

    invoke-virtual {v1}, Lk2/p;->j()Lk2/b0;

    move-result-object v1

    check-cast v1, Ln2/n;

    const/16 v8, 0xe

    new-array v9, v8, [I

    const/4 v10, 0x7

    new-array v11, v10, [I

    new-array v12, v10, [I

    new-array v13, v10, [I

    iget-object v6, v6, Ln2/n;->l:[I

    invoke-static {v6}, Lt4/d;->k0([I)Z

    move-result v14

    if-eqz v14, :cond_50

    iget-object v4, v4, Ln2/n;->l:[I

    iget-object v5, v5, Ln2/n;->l:[I

    goto :goto_62

    :cond_50
    invoke-static {v6, v12}, Ln2/b;->k1([I[I)V

    iget-object v4, v4, Ln2/n;->l:[I

    invoke-static {v12, v4, v11}, Ln2/b;->m0([I[I[I)V

    invoke-static {v12, v6, v12}, Ln2/b;->m0([I[I[I)V

    iget-object v4, v5, Ln2/n;->l:[I

    invoke-static {v12, v4, v12}, Ln2/b;->m0([I[I[I)V

    move-object v4, v11

    move-object v5, v12

    :goto_62
    iget-object v1, v1, Ln2/n;->l:[I

    invoke-static {v1}, Lt4/d;->k0([I)Z

    move-result v15

    if-eqz v15, :cond_71

    iget-object v2, v2, Ln2/n;->l:[I

    iget-object v3, v3, Ln2/n;->l:[I

    :goto_6e
    move/from16 v16, v7

    goto :goto_84

    :cond_71
    invoke-static {v1, v13}, Ln2/b;->k1([I[I)V

    iget-object v2, v2, Ln2/n;->l:[I

    invoke-static {v13, v2, v9}, Ln2/b;->m0([I[I[I)V

    invoke-static {v13, v1, v13}, Ln2/b;->m0([I[I[I)V

    iget-object v2, v3, Ln2/n;->l:[I

    invoke-static {v13, v2, v13}, Ln2/b;->m0([I[I[I)V

    move-object v2, v9

    move-object v3, v13

    goto :goto_6e

    :goto_84
    new-array v7, v10, [I

    invoke-static {v2, v4, v7}, Ln2/b;->K1([I[I[I)V

    invoke-static {v3, v5, v11}, Ln2/b;->K1([I[I[I)V

    invoke-static {v7}, Lt4/d;->m0([I)Z

    move-result v4

    iget-object v5, v0, Lk2/p;->a:Lk2/h;

    if-eqz v4, :cond_a4

    invoke-static {v11}, Lt4/d;->m0([I)Z

    move-result v1

    if-eqz v1, :cond_9f

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    return-object v0

    :cond_9f
    invoke-virtual {v5}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    return-object v0

    :cond_a4
    invoke-static {v7, v12}, Ln2/b;->k1([I[I)V

    new-array v0, v10, [I

    invoke-static {v12, v7, v0}, Ln2/b;->m0([I[I[I)V

    invoke-static {v12, v2, v12}, Ln2/b;->m0([I[I[I)V

    sget-object v2, Ln2/b;->p:[I

    move/from16 v4, v16

    move/from16 v17, v4

    :goto_b5
    if-ge v4, v10, :cond_be

    aget v18, v0, v4

    or-int v17, v17, v18

    add-int/lit8 v4, v4, 0x1

    goto :goto_b5

    :cond_be
    ushr-int/lit8 v4, v17, 0x1

    const/4 v10, 0x1

    and-int/lit8 v17, v17, 0x1

    or-int v4, v4, v17

    sub-int/2addr v4, v10

    shr-int/lit8 v4, v4, 0x1f

    if-eqz v4, :cond_ce

    invoke-static {v2, v2, v0}, Lt4/d;->K0([I[I[I)I

    goto :goto_d1

    :cond_ce
    invoke-static {v2, v0, v0}, Lt4/d;->K0([I[I[I)I

    :goto_d1
    invoke-static {v3, v0, v9}, Lt4/d;->v0([I[I[I)V

    invoke-static {v12, v12, v0}, Lt4/d;->l([I[I[I)I

    move-result v2

    invoke-static {v2, v0}, Ln2/b;->W0(I[I)V

    new-instance v2, Ln2/n;

    invoke-direct {v2, v13}, Ln2/n;-><init>([I)V

    invoke-static {v11, v13}, Ln2/b;->k1([I[I)V

    invoke-static {v13, v0, v13}, Ln2/b;->K1([I[I[I)V

    new-instance v3, Ln2/n;

    invoke-direct {v3, v0}, Ln2/n;-><init>([I)V

    invoke-static {v12, v13, v0}, Ln2/b;->K1([I[I[I)V

    invoke-static {v0, v11, v9}, Lt4/d;->x0([I[I[I)I

    move-result v4

    if-nez v4, :cond_103

    const/16 v4, 0xd

    aget v4, v9, v4

    const/4 v11, -0x1

    if-ne v4, v11, :cond_110

    sget-object v4, Ln2/b;->q:[I

    invoke-static {v8, v9, v4}, Ls2/b;->D(I[I[I)Z

    move-result v4

    if-eqz v4, :cond_110

    :cond_103
    sget-object v4, Ln2/b;->r:[I

    const/16 v11, 0x9

    invoke-static {v11, v4, v9}, Ls2/b;->e(I[I[I)I

    move-result v4

    if-eqz v4, :cond_110

    invoke-static {v8, v11, v9}, Ls2/b;->H(II[I)I

    :cond_110
    invoke-static {v9, v0}, Ln2/b;->H0([I[I)V

    new-instance v0, Ln2/n;

    invoke-direct {v0, v7}, Ln2/n;-><init>([I)V

    if-nez v14, :cond_11d

    invoke-static {v7, v6, v7}, Ln2/b;->m0([I[I[I)V

    :cond_11d
    if-nez v15, :cond_122

    invoke-static {v7, v1, v7}, Ln2/b;->m0([I[I[I)V

    :cond_122
    new-array v1, v10, [Lk2/b0;

    aput-object v0, v1, v16

    new-instance v17, Lk2/o;

    const/16 v22, 0x9

    move-object/from16 v21, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v18, v5

    invoke-direct/range {v17 .. v22}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v17
.end method

.method private final B(Lk2/p;)Lk2/p;
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v1

    :cond_b
    invoke-virtual {v1}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_12

    return-object v0

    :cond_12
    if-ne v0, v1, :cond_19

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    return-object v0

    :cond_19
    iget-object v2, v0, Lk2/p;->b:Lk2/b0;

    check-cast v2, Ln2/p;

    iget-object v3, v0, Lk2/p;->c:Lk2/b0;

    check-cast v3, Ln2/p;

    iget-object v4, v1, Lk2/p;->b:Lk2/b0;

    check-cast v4, Ln2/p;

    invoke-virtual {v1}, Lk2/p;->i()Lk2/b0;

    move-result-object v5

    check-cast v5, Ln2/p;

    iget-object v6, v0, Lk2/p;->d:[Lk2/b0;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Ln2/p;

    invoke-virtual {v1}, Lk2/p;->j()Lk2/b0;

    move-result-object v1

    check-cast v1, Ln2/p;

    const/16 v8, 0xe

    new-array v9, v8, [I

    const/4 v10, 0x7

    new-array v11, v10, [I

    new-array v12, v10, [I

    new-array v13, v10, [I

    iget-object v6, v6, Ln2/p;->l:[I

    invoke-static {v6}, Lt4/d;->k0([I)Z

    move-result v14

    if-eqz v14, :cond_50

    iget-object v4, v4, Ln2/p;->l:[I

    iget-object v5, v5, Ln2/p;->l:[I

    goto :goto_62

    :cond_50
    invoke-static {v6, v12}, Ln2/b;->l1([I[I)V

    iget-object v4, v4, Ln2/p;->l:[I

    invoke-static {v12, v4, v11}, Ln2/b;->o0([I[I[I)V

    invoke-static {v12, v6, v12}, Ln2/b;->o0([I[I[I)V

    iget-object v4, v5, Ln2/p;->l:[I

    invoke-static {v12, v4, v12}, Ln2/b;->o0([I[I[I)V

    move-object v4, v11

    move-object v5, v12

    :goto_62
    iget-object v1, v1, Ln2/p;->l:[I

    invoke-static {v1}, Lt4/d;->k0([I)Z

    move-result v15

    if-eqz v15, :cond_71

    iget-object v2, v2, Ln2/p;->l:[I

    iget-object v3, v3, Ln2/p;->l:[I

    :goto_6e
    move/from16 v16, v7

    goto :goto_84

    :cond_71
    invoke-static {v1, v13}, Ln2/b;->l1([I[I)V

    iget-object v2, v2, Ln2/p;->l:[I

    invoke-static {v13, v2, v9}, Ln2/b;->o0([I[I[I)V

    invoke-static {v13, v1, v13}, Ln2/b;->o0([I[I[I)V

    iget-object v2, v3, Ln2/p;->l:[I

    invoke-static {v13, v2, v13}, Ln2/b;->o0([I[I[I)V

    move-object v2, v9

    move-object v3, v13

    goto :goto_6e

    :goto_84
    new-array v7, v10, [I

    invoke-static {v2, v4, v7}, Ln2/b;->L1([I[I[I)V

    invoke-static {v3, v5, v11}, Ln2/b;->L1([I[I[I)V

    invoke-static {v7}, Lt4/d;->m0([I)Z

    move-result v4

    iget-object v5, v0, Lk2/p;->a:Lk2/h;

    if-eqz v4, :cond_a4

    invoke-static {v11}, Lt4/d;->m0([I)Z

    move-result v1

    if-eqz v1, :cond_9f

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    return-object v0

    :cond_9f
    invoke-virtual {v5}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    return-object v0

    :cond_a4
    invoke-static {v7, v12}, Ln2/b;->l1([I[I)V

    new-array v0, v10, [I

    invoke-static {v12, v7, v0}, Ln2/b;->o0([I[I[I)V

    invoke-static {v12, v2, v12}, Ln2/b;->o0([I[I[I)V

    sget-object v2, Ln2/b;->s:[I

    move/from16 v4, v16

    move/from16 v17, v4

    :goto_b5
    if-ge v4, v10, :cond_be

    aget v18, v0, v4

    or-int v17, v17, v18

    add-int/lit8 v4, v4, 0x1

    goto :goto_b5

    :cond_be
    ushr-int/lit8 v4, v17, 0x1

    const/4 v10, 0x1

    and-int/lit8 v17, v17, 0x1

    or-int v4, v4, v17

    sub-int/2addr v4, v10

    shr-int/lit8 v4, v4, 0x1f

    if-eqz v4, :cond_ce

    invoke-static {v2, v2, v0}, Lt4/d;->K0([I[I[I)I

    goto :goto_d1

    :cond_ce
    invoke-static {v2, v0, v0}, Lt4/d;->K0([I[I[I)I

    :goto_d1
    invoke-static {v3, v0, v9}, Lt4/d;->v0([I[I[I)V

    invoke-static {v12, v12, v0}, Lt4/d;->l([I[I[I)I

    move-result v2

    invoke-static {v2, v0}, Ln2/b;->X0(I[I)V

    new-instance v2, Ln2/p;

    invoke-direct {v2, v13}, Ln2/p;-><init>([I)V

    invoke-static {v11, v13}, Ln2/b;->l1([I[I)V

    invoke-static {v13, v0, v13}, Ln2/b;->L1([I[I[I)V

    new-instance v3, Ln2/p;

    invoke-direct {v3, v0}, Ln2/p;-><init>([I)V

    invoke-static {v12, v13, v0}, Ln2/b;->L1([I[I[I)V

    invoke-static {v0, v11, v9}, Lt4/d;->x0([I[I[I)I

    move-result v4

    if-nez v4, :cond_103

    const/16 v4, 0xd

    aget v4, v9, v4

    const/4 v11, -0x1

    if-ne v4, v11, :cond_110

    sget-object v4, Ln2/b;->t:[I

    invoke-static {v8, v9, v4}, Ls2/b;->D(I[I[I)Z

    move-result v4

    if-eqz v4, :cond_110

    :cond_103
    sget-object v4, Ln2/b;->u:[I

    const/16 v11, 0xb

    invoke-static {v11, v4, v9}, Ls2/b;->e(I[I[I)I

    move-result v4

    if-eqz v4, :cond_110

    invoke-static {v8, v11, v9}, Ls2/b;->H(II[I)I

    :cond_110
    invoke-static {v9, v0}, Ln2/b;->J0([I[I)V

    new-instance v0, Ln2/p;

    invoke-direct {v0, v7}, Ln2/p;-><init>([I)V

    if-nez v14, :cond_11d

    invoke-static {v7, v6, v7}, Ln2/b;->o0([I[I[I)V

    :cond_11d
    if-nez v15, :cond_122

    invoke-static {v7, v1, v7}, Ln2/b;->o0([I[I[I)V

    :cond_122
    new-array v1, v10, [Lk2/b0;

    aput-object v0, v1, v16

    new-instance v17, Lk2/o;

    const/16 v22, 0xa

    move-object/from16 v21, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v18, v5

    invoke-direct/range {v17 .. v22}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v17
.end method

.method private final C(Lk2/p;)Lk2/p;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v1

    :cond_b
    invoke-virtual {v1}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_12

    return-object v0

    :cond_12
    if-ne v0, v1, :cond_19

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    return-object v0

    :cond_19
    iget-object v2, v0, Lk2/p;->b:Lk2/b0;

    check-cast v2, Ln2/r;

    iget-object v3, v0, Lk2/p;->c:Lk2/b0;

    check-cast v3, Ln2/r;

    iget-object v4, v1, Lk2/p;->b:Lk2/b0;

    check-cast v4, Ln2/r;

    invoke-virtual {v1}, Lk2/p;->i()Lk2/b0;

    move-result-object v5

    check-cast v5, Ln2/r;

    iget-object v6, v0, Lk2/p;->d:[Lk2/b0;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Ln2/r;

    invoke-virtual {v1}, Lk2/p;->j()Lk2/b0;

    move-result-object v1

    check-cast v1, Ln2/r;

    const/16 v8, 0x10

    new-array v9, v8, [I

    new-array v10, v8, [I

    const/16 v11, 0x8

    new-array v12, v11, [I

    new-array v13, v11, [I

    new-array v14, v11, [I

    iget-object v6, v6, Ln2/r;->l:[I

    invoke-static {v6}, Lq4/k;->p0([I)Z

    move-result v15

    if-eqz v15, :cond_53

    iget-object v4, v4, Ln2/r;->l:[I

    iget-object v5, v5, Ln2/r;->l:[I

    goto :goto_6b

    :cond_53
    invoke-static {v6, v9}, Lq4/k;->L0([I[I)V

    invoke-static {v9, v13}, Ln2/b;->L0([I[I)V

    iget-object v4, v4, Ln2/r;->l:[I

    invoke-static {v13, v4, v12, v9}, Ln2/b;->Z([I[I[I[I)V

    invoke-static {v13, v6, v9}, Lq4/k;->y0([I[I[I)V

    invoke-static {v9, v13}, Ln2/b;->L0([I[I)V

    iget-object v4, v5, Ln2/r;->l:[I

    invoke-static {v13, v4, v13, v9}, Ln2/b;->Z([I[I[I[I)V

    move-object v4, v12

    move-object v5, v13

    :goto_6b
    iget-object v1, v1, Ln2/r;->l:[I

    invoke-static {v1}, Lq4/k;->p0([I)Z

    move-result v16

    if-eqz v16, :cond_7a

    iget-object v2, v2, Ln2/r;->l:[I

    iget-object v3, v3, Ln2/r;->l:[I

    :goto_77
    move/from16 v17, v7

    goto :goto_93

    :cond_7a
    invoke-static {v1, v9}, Lq4/k;->L0([I[I)V

    invoke-static {v9, v14}, Ln2/b;->L0([I[I)V

    iget-object v2, v2, Ln2/r;->l:[I

    invoke-static {v14, v2, v10, v9}, Ln2/b;->Z([I[I[I[I)V

    invoke-static {v14, v1, v9}, Lq4/k;->y0([I[I[I)V

    invoke-static {v9, v14}, Ln2/b;->L0([I[I)V

    iget-object v2, v3, Ln2/r;->l:[I

    invoke-static {v14, v2, v14, v9}, Ln2/b;->Z([I[I[I[I)V

    move-object v2, v10

    move-object v3, v14

    goto :goto_77

    :goto_93
    new-array v7, v11, [I

    invoke-static {v2, v4, v7}, Ln2/b;->M1([I[I[I)V

    invoke-static {v3, v5, v12}, Ln2/b;->M1([I[I[I)V

    invoke-static {v7}, Lq4/k;->t0([I)Z

    move-result v4

    iget-object v5, v0, Lk2/p;->a:Lk2/h;

    if-eqz v4, :cond_b3

    invoke-static {v12}, Lq4/k;->t0([I)Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    return-object v0

    :cond_ae
    invoke-virtual {v5}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    return-object v0

    :cond_b3
    invoke-static {v7, v9}, Lq4/k;->L0([I[I)V

    invoke-static {v9, v13}, Ln2/b;->L0([I[I)V

    new-array v0, v11, [I

    invoke-static {v13, v7, v9}, Lq4/k;->y0([I[I[I)V

    invoke-static {v9, v0}, Ln2/b;->L0([I[I)V

    invoke-static {v13, v2, v9}, Lq4/k;->y0([I[I[I)V

    invoke-static {v9, v13}, Ln2/b;->L0([I[I)V

    sget-object v2, Ln2/b;->v:[I

    move/from16 v4, v17

    move/from16 v18, v4

    :goto_cd
    if-ge v4, v11, :cond_d6

    aget v19, v0, v4

    or-int v18, v18, v19

    add-int/lit8 v4, v4, 0x1

    goto :goto_cd

    :cond_d6
    ushr-int/lit8 v4, v18, 0x1

    const/4 v11, 0x1

    and-int/lit8 v18, v18, 0x1

    or-int v4, v4, v18

    sub-int/2addr v4, v11

    shr-int/lit8 v4, v4, 0x1f

    if-eqz v4, :cond_e6

    invoke-static {v2, v2, v0}, Lq4/k;->R0([I[I[I)I

    goto :goto_e9

    :cond_e6
    invoke-static {v2, v0, v0}, Lq4/k;->R0([I[I[I)I

    :goto_e9
    invoke-static {v3, v0, v10}, Lq4/k;->y0([I[I[I)V

    invoke-static {v13, v13, v0}, Lq4/k;->g([I[I[I)I

    move-result v2

    invoke-static {v2, v0}, Ln2/b;->Y0(I[I)V

    new-instance v2, Ln2/r;

    invoke-direct {v2, v14}, Ln2/r;-><init>([I)V

    invoke-static {v12, v9}, Lq4/k;->L0([I[I)V

    invoke-static {v9, v14}, Ln2/b;->L0([I[I)V

    invoke-static {v14, v0, v14}, Ln2/b;->M1([I[I[I)V

    new-instance v3, Ln2/r;

    invoke-direct {v3, v0}, Ln2/r;-><init>([I)V

    invoke-static {v13, v14, v0}, Ln2/b;->M1([I[I[I)V

    invoke-static {v0, v12, v10}, Lq4/k;->B0([I[I[I)I

    move-result v4

    if-nez v4, :cond_11e

    const/16 v4, 0xf

    aget v4, v10, v4

    const/4 v12, -0x1

    if-ne v4, v12, :cond_12b

    sget-object v4, Ln2/b;->w:[I

    invoke-static {v8, v10, v4}, Ls2/b;->D(I[I[I)Z

    move-result v4

    if-eqz v4, :cond_12b

    :cond_11e
    sget-object v4, Ln2/b;->x:[I

    const/16 v12, 0xa

    invoke-static {v12, v4, v10}, Ls2/b;->e(I[I[I)I

    move-result v4

    if-eqz v4, :cond_12b

    invoke-static {v8, v12, v10}, Ls2/b;->H(II[I)I

    :cond_12b
    invoke-static {v10, v0}, Ln2/b;->L0([I[I)V

    new-instance v0, Ln2/r;

    invoke-direct {v0, v7}, Ln2/r;-><init>([I)V

    if-nez v15, :cond_138

    invoke-static {v7, v6, v7, v9}, Ln2/b;->Z([I[I[I[I)V

    :cond_138
    if-nez v16, :cond_13d

    invoke-static {v7, v1, v7, v9}, Ln2/b;->Z([I[I[I[I)V

    :cond_13d
    new-array v1, v11, [Lk2/b0;

    aput-object v0, v1, v17

    new-instance v18, Lk2/o;

    const/16 v23, 0xb

    move-object/from16 v22, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v19, v5

    invoke-direct/range {v18 .. v23}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v18
.end method

.method private final D(Lk2/p;)Lk2/p;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v1

    :cond_b
    invoke-virtual {v1}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_12

    return-object v0

    :cond_12
    if-ne v0, v1, :cond_19

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    return-object v0

    :cond_19
    iget-object v2, v0, Lk2/p;->b:Lk2/b0;

    check-cast v2, Ln2/t;

    iget-object v3, v0, Lk2/p;->c:Lk2/b0;

    check-cast v3, Ln2/t;

    iget-object v4, v1, Lk2/p;->b:Lk2/b0;

    check-cast v4, Ln2/t;

    invoke-virtual {v1}, Lk2/p;->i()Lk2/b0;

    move-result-object v5

    check-cast v5, Ln2/t;

    iget-object v6, v0, Lk2/p;->d:[Lk2/b0;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Ln2/t;

    invoke-virtual {v1}, Lk2/p;->j()Lk2/b0;

    move-result-object v1

    check-cast v1, Ln2/t;

    const/16 v8, 0x10

    new-array v9, v8, [I

    new-array v10, v8, [I

    const/16 v11, 0x8

    new-array v12, v11, [I

    new-array v13, v11, [I

    new-array v14, v11, [I

    iget-object v6, v6, Ln2/t;->l:[I

    invoke-static {v6}, Lq4/k;->p0([I)Z

    move-result v15

    if-eqz v15, :cond_53

    iget-object v4, v4, Ln2/t;->l:[I

    iget-object v5, v5, Ln2/t;->l:[I

    goto :goto_6b

    :cond_53
    invoke-static {v6, v9}, Lq4/k;->L0([I[I)V

    invoke-static {v9, v13}, Ln2/b;->N0([I[I)V

    iget-object v4, v4, Ln2/t;->l:[I

    invoke-static {v13, v4, v12, v9}, Ln2/b;->c0([I[I[I[I)V

    invoke-static {v13, v6, v9}, Lq4/k;->y0([I[I[I)V

    invoke-static {v9, v13}, Ln2/b;->N0([I[I)V

    iget-object v4, v5, Ln2/t;->l:[I

    invoke-static {v13, v4, v13, v9}, Ln2/b;->c0([I[I[I[I)V

    move-object v4, v12

    move-object v5, v13

    :goto_6b
    iget-object v1, v1, Ln2/t;->l:[I

    invoke-static {v1}, Lq4/k;->p0([I)Z

    move-result v16

    if-eqz v16, :cond_7a

    iget-object v2, v2, Ln2/t;->l:[I

    iget-object v3, v3, Ln2/t;->l:[I

    :goto_77
    move/from16 v17, v7

    goto :goto_93

    :cond_7a
    invoke-static {v1, v9}, Lq4/k;->L0([I[I)V

    invoke-static {v9, v14}, Ln2/b;->N0([I[I)V

    iget-object v2, v2, Ln2/t;->l:[I

    invoke-static {v14, v2, v10, v9}, Ln2/b;->c0([I[I[I[I)V

    invoke-static {v14, v1, v9}, Lq4/k;->y0([I[I[I)V

    invoke-static {v9, v14}, Ln2/b;->N0([I[I)V

    iget-object v2, v3, Ln2/t;->l:[I

    invoke-static {v14, v2, v14, v9}, Ln2/b;->c0([I[I[I[I)V

    move-object v2, v10

    move-object v3, v14

    goto :goto_77

    :goto_93
    new-array v7, v11, [I

    invoke-static {v2, v4, v7}, Ln2/b;->N1([I[I[I)V

    invoke-static {v3, v5, v12}, Ln2/b;->N1([I[I[I)V

    invoke-static {v7}, Lq4/k;->t0([I)Z

    move-result v4

    iget-object v5, v0, Lk2/p;->a:Lk2/h;

    if-eqz v4, :cond_b3

    invoke-static {v12}, Lq4/k;->t0([I)Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    return-object v0

    :cond_ae
    invoke-virtual {v5}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    return-object v0

    :cond_b3
    invoke-static {v7, v9}, Lq4/k;->L0([I[I)V

    invoke-static {v9, v13}, Ln2/b;->N0([I[I)V

    new-array v0, v11, [I

    invoke-static {v13, v7, v9}, Lq4/k;->y0([I[I[I)V

    invoke-static {v9, v0}, Ln2/b;->N0([I[I)V

    invoke-static {v13, v2, v9}, Lq4/k;->y0([I[I[I)V

    invoke-static {v9, v13}, Ln2/b;->N0([I[I)V

    sget-object v2, Ln2/b;->y:[I

    move/from16 v4, v17

    move/from16 v18, v4

    :goto_cd
    if-ge v4, v11, :cond_d6

    aget v19, v0, v4

    or-int v18, v18, v19

    add-int/lit8 v4, v4, 0x1

    goto :goto_cd

    :cond_d6
    ushr-int/lit8 v4, v18, 0x1

    const/4 v11, 0x1

    and-int/lit8 v18, v18, 0x1

    or-int v4, v4, v18

    sub-int/2addr v4, v11

    shr-int/lit8 v4, v4, 0x1f

    if-eqz v4, :cond_e6

    invoke-static {v2, v2, v0}, Lq4/k;->R0([I[I[I)I

    goto :goto_e9

    :cond_e6
    invoke-static {v2, v0, v0}, Lq4/k;->R0([I[I[I)I

    :goto_e9
    invoke-static {v3, v0, v10}, Lq4/k;->y0([I[I[I)V

    invoke-static {v13, v13, v0}, Lq4/k;->g([I[I[I)I

    move-result v2

    invoke-static {v2, v0}, Ln2/b;->Z0(I[I)V

    new-instance v2, Ln2/t;

    invoke-direct {v2, v14}, Ln2/t;-><init>([I)V

    invoke-static {v12, v9}, Lq4/k;->L0([I[I)V

    invoke-static {v9, v14}, Ln2/b;->N0([I[I)V

    invoke-static {v14, v0, v14}, Ln2/b;->N1([I[I[I)V

    new-instance v3, Ln2/t;

    invoke-direct {v3, v0}, Ln2/t;-><init>([I)V

    invoke-static {v13, v14, v0}, Ln2/b;->N1([I[I[I)V

    sget-object v4, Ln2/b;->z:[I

    invoke-static {v0, v12, v10}, Lq4/k;->B0([I[I[I)I

    move-result v12

    if-nez v12, :cond_121

    const/16 v12, 0xf

    aget v12, v10, v12

    ushr-int/2addr v12, v11

    const v13, 0x7fffffff

    if-lt v12, v13, :cond_124

    invoke-static {v8, v10, v4}, Ls2/b;->D(I[I[I)Z

    move-result v12

    if-eqz v12, :cond_124

    :cond_121
    invoke-static {v8, v4, v10}, Ls2/b;->U(I[I[I)V

    :cond_124
    invoke-static {v10, v0}, Ln2/b;->N0([I[I)V

    new-instance v0, Ln2/t;

    invoke-direct {v0, v7}, Ln2/t;-><init>([I)V

    if-nez v15, :cond_131

    invoke-static {v7, v6, v7, v9}, Ln2/b;->c0([I[I[I[I)V

    :cond_131
    if-nez v16, :cond_136

    invoke-static {v7, v1, v7, v9}, Ln2/b;->c0([I[I[I[I)V

    :cond_136
    new-array v1, v11, [Lk2/b0;

    aput-object v0, v1, v17

    new-instance v18, Lk2/o;

    const/16 v23, 0xc

    move-object/from16 v22, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v19, v5

    invoke-direct/range {v18 .. v23}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v18
.end method

.method private final E(Lk2/p;)Lk2/p;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v1

    :cond_b
    invoke-virtual {v1}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_12

    return-object v0

    :cond_12
    if-ne v0, v1, :cond_19

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    return-object v0

    :cond_19
    iget-object v2, v0, Lk2/p;->b:Lk2/b0;

    check-cast v2, Ln2/v;

    iget-object v3, v0, Lk2/p;->c:Lk2/b0;

    check-cast v3, Ln2/v;

    iget-object v4, v1, Lk2/p;->b:Lk2/b0;

    check-cast v4, Ln2/v;

    invoke-virtual {v1}, Lk2/p;->i()Lk2/b0;

    move-result-object v5

    check-cast v5, Ln2/v;

    iget-object v6, v0, Lk2/p;->d:[Lk2/b0;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Ln2/v;

    invoke-virtual {v1}, Lk2/p;->j()Lk2/b0;

    move-result-object v1

    check-cast v1, Ln2/v;

    const/16 v8, 0x18

    new-array v9, v8, [I

    new-array v10, v8, [I

    new-array v11, v8, [I

    const/16 v12, 0xc

    new-array v13, v12, [I

    new-array v14, v12, [I

    invoke-virtual {v6}, Ln2/v;->s()Z

    move-result v15

    iget-object v6, v6, Ln2/v;->l:[I

    if-eqz v15, :cond_53

    iget-object v4, v4, Ln2/v;->l:[I

    iget-object v5, v5, Ln2/v;->l:[I

    goto :goto_6b

    :cond_53
    invoke-static {v6, v9}, Lq4/k;->M0([I[I)V

    invoke-static {v9, v13}, Ln2/b;->P0([I[I)V

    iget-object v4, v4, Ln2/v;->l:[I

    invoke-static {v13, v4, v11, v9}, Ln2/b;->f0([I[I[I[I)V

    invoke-static {v13, v6, v9}, Lq4/k;->z0([I[I[I)V

    invoke-static {v9, v13}, Ln2/b;->P0([I[I)V

    iget-object v4, v5, Ln2/v;->l:[I

    invoke-static {v13, v4, v13, v9}, Ln2/b;->f0([I[I[I[I)V

    move-object v4, v11

    move-object v5, v13

    :goto_6b
    invoke-virtual {v1}, Ln2/v;->s()Z

    move-result v16

    iget-object v1, v1, Ln2/v;->l:[I

    if-eqz v16, :cond_7a

    iget-object v2, v2, Ln2/v;->l:[I

    iget-object v3, v3, Ln2/v;->l:[I

    :goto_77
    move/from16 v17, v7

    goto :goto_93

    :cond_7a
    invoke-static {v1, v9}, Lq4/k;->M0([I[I)V

    invoke-static {v9, v14}, Ln2/b;->P0([I[I)V

    iget-object v2, v2, Ln2/v;->l:[I

    invoke-static {v14, v2, v10, v9}, Ln2/b;->f0([I[I[I[I)V

    invoke-static {v14, v1, v9}, Lq4/k;->z0([I[I[I)V

    invoke-static {v9, v14}, Ln2/b;->P0([I[I)V

    iget-object v2, v3, Ln2/v;->l:[I

    invoke-static {v14, v2, v14, v9}, Ln2/b;->f0([I[I[I[I)V

    move-object v2, v10

    move-object v3, v14

    goto :goto_77

    :goto_93
    new-array v7, v12, [I

    invoke-static {v2, v4, v7}, Ln2/b;->O1([I[I[I)V

    new-array v4, v12, [I

    invoke-static {v3, v5, v4}, Ln2/b;->O1([I[I[I)V

    invoke-static {v12, v7}, Ls2/b;->L(I[I)Z

    move-result v5

    iget-object v8, v0, Lk2/p;->a:Lk2/h;

    if-eqz v5, :cond_b5

    invoke-static {v12, v4}, Ls2/b;->L(I[I)Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    return-object v0

    :cond_b0
    invoke-virtual {v8}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    return-object v0

    :cond_b5
    invoke-static {v7, v9}, Lq4/k;->M0([I[I)V

    invoke-static {v9, v13}, Ln2/b;->P0([I[I)V

    new-array v0, v12, [I

    invoke-static {v13, v7, v9}, Lq4/k;->z0([I[I[I)V

    invoke-static {v9, v0}, Ln2/b;->P0([I[I)V

    invoke-static {v13, v2, v13, v9}, Ln2/b;->f0([I[I[I[I)V

    sget-object v2, Ln2/b;->A:[I

    move/from16 v5, v17

    move/from16 v18, v5

    :goto_cc
    if-ge v5, v12, :cond_d5

    aget v19, v0, v5

    or-int v18, v18, v19

    add-int/lit8 v5, v5, 0x1

    goto :goto_cc

    :cond_d5
    ushr-int/lit8 v5, v18, 0x1

    const/4 v12, 0x1

    and-int/lit8 v18, v18, 0x1

    or-int v5, v5, v18

    sub-int/2addr v5, v12

    shr-int/lit8 v5, v5, 0x1f

    if-eqz v5, :cond_e7

    const/16 v5, 0xc

    invoke-static {v5, v2, v2, v0}, Ls2/b;->R(I[I[I[I)I

    goto :goto_ec

    :cond_e7
    const/16 v5, 0xc

    invoke-static {v5, v2, v0, v0}, Ls2/b;->R(I[I[I[I)I

    :goto_ec
    invoke-static {v3, v0, v10}, Lq4/k;->z0([I[I[I)V

    invoke-static {v5, v13, v13, v0}, Ls2/b;->c(I[I[I[I)I

    move-result v2

    invoke-static {v2, v0}, Ln2/b;->a1(I[I)V

    new-instance v2, Ln2/v;

    invoke-direct {v2, v14}, Ln2/v;-><init>([I)V

    invoke-static {v4, v9}, Lq4/k;->M0([I[I)V

    invoke-static {v9, v14}, Ln2/b;->P0([I[I)V

    invoke-static {v14, v0, v14}, Ln2/b;->O1([I[I[I)V

    new-instance v3, Ln2/v;

    invoke-direct {v3, v0}, Ln2/v;-><init>([I)V

    invoke-static {v13, v14, v0}, Ln2/b;->O1([I[I[I)V

    invoke-static {v0, v4, v11}, Lq4/k;->z0([I[I[I)V

    const/16 v4, 0x18

    invoke-static {v4, v10, v11, v10}, Ls2/b;->a(I[I[I[I)I

    move-result v5

    if-nez v5, :cond_126

    const/16 v5, 0x17

    aget v5, v10, v5

    const/4 v11, -0x1

    if-ne v5, v11, :cond_133

    sget-object v5, Ln2/b;->B:[I

    invoke-static {v4, v10, v5}, Ls2/b;->D(I[I[I)Z

    move-result v5

    if-eqz v5, :cond_133

    :cond_126
    sget-object v5, Ln2/b;->C:[I

    const/16 v11, 0x11

    invoke-static {v11, v5, v10}, Ls2/b;->e(I[I[I)I

    move-result v5

    if-eqz v5, :cond_133

    invoke-static {v4, v11, v10}, Ls2/b;->H(II[I)I

    :cond_133
    invoke-static {v10, v0}, Ln2/b;->P0([I[I)V

    new-instance v0, Ln2/v;

    invoke-direct {v0, v7}, Ln2/v;-><init>([I)V

    if-nez v15, :cond_140

    invoke-static {v7, v6, v7, v9}, Ln2/b;->f0([I[I[I[I)V

    :cond_140
    if-nez v16, :cond_145

    invoke-static {v7, v1, v7, v9}, Ln2/b;->f0([I[I[I[I)V

    :cond_145
    new-array v1, v12, [Lk2/b0;

    aput-object v0, v1, v17

    new-instance v18, Lk2/o;

    const/16 v23, 0xd

    move-object/from16 v22, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v19, v8

    invoke-direct/range {v18 .. v23}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v18
.end method


# virtual methods
.method public F(Lk2/b0;Lk2/b0;)Lk2/b0;
    .registers 5

    iget-object p0, p0, Lk2/p;->a:Lk2/h;

    iget-object p0, p0, Lk2/h;->b:Lk2/b0;

    invoke-virtual {p0}, Lk2/b0;->t()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p1}, Lk2/b0;->s()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_36

    :cond_11
    if-nez p2, :cond_17

    invoke-virtual {p1}, Lk2/b0;->F()Lk2/b0;

    move-result-object p2

    :cond_17
    invoke-virtual {p2}, Lk2/b0;->F()Lk2/b0;

    move-result-object p1

    invoke-virtual {p0}, Lk2/b0;->B()Lk2/b0;

    move-result-object p2

    invoke-virtual {p2}, Lk2/b0;->c()I

    move-result v0

    invoke-virtual {p0}, Lk2/b0;->c()I

    move-result v1

    if-ge v0, v1, :cond_32

    invoke-virtual {p1, p2}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    invoke-virtual {p0}, Lk2/b0;->B()Lk2/b0;

    move-result-object p0

    return-object p0

    :cond_32
    invoke-virtual {p1, p0}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    :cond_36
    :goto_36
    return-object p0
.end method

.method public G(Ll2/d;[I)Ll2/d;
    .registers 5

    iget-object p0, p0, Lk2/p;->a:Lk2/h;

    iget-object p0, p0, Lk2/h;->b:Lk2/b0;

    check-cast p0, Ll2/d;

    iget-object v0, p1, Ll2/d;->l:[I

    invoke-static {v0}, Lq4/k;->p0([I)Z

    move-result v0

    if-eqz v0, :cond_f

    return-object p0

    :cond_f
    new-instance v0, Ll2/d;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lk2/b0;-><init>(I)V

    const/16 v1, 0x8

    new-array v1, v1, [I

    iput-object v1, v0, Ll2/d;->l:[I

    if-nez p2, :cond_23

    iget-object p1, p1, Ll2/d;->l:[I

    invoke-static {p1, v1}, Ll2/c;->d([I[I)V

    move-object p2, v1

    :cond_23
    invoke-static {p2, v1}, Ll2/c;->d([I[I)V

    iget-object p0, p0, Ll2/d;->l:[I

    invoke-static {v1, p0, v1}, Ll2/c;->a([I[I[I)V

    return-object v0
.end method

.method public H()Lk2/b0;
    .registers 5

    iget-object v0, p0, Lk2/p;->d:[Lk2/b0;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-nez v2, :cond_12

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lk2/o;->F(Lk2/b0;Lk2/b0;)Lk2/b0;

    move-result-object p0

    aput-object p0, v0, v1

    return-object p0

    :cond_12
    return-object v2
.end method

.method public I(Z)Lk2/o;
    .registers 16

    iget-object v0, p0, Lk2/p;->d:[Lk2/b0;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lk2/o;->H()Lk2/b0;

    move-result-object v1

    iget-object v2, p0, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v2}, Lk2/b0;->F()Lk2/b0;

    move-result-object v3

    invoke-virtual {v3, v3}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v4

    invoke-virtual {v4, v3}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v3

    invoke-virtual {v3, v1}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v3

    iget-object v4, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v4, v4}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v5

    invoke-virtual {v5, v4}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v4

    invoke-virtual {v2, v4}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v2

    invoke-virtual {v2, v2}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v2

    invoke-virtual {v3}, Lk2/b0;->F()Lk2/b0;

    move-result-object v6

    invoke-virtual {v2, v2}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v7

    invoke-virtual {v6, v7}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v10

    invoke-virtual {v4}, Lk2/b0;->F()Lk2/b0;

    move-result-object v4

    invoke-virtual {v4, v4}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v4

    invoke-virtual {v2, v10}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v2

    invoke-virtual {v3, v2}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v2

    invoke-virtual {v2, v4}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v11

    if-eqz p1, :cond_58

    invoke-virtual {v4, v1}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p1

    invoke-virtual {p1, p1}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object p1

    goto :goto_59

    :cond_58
    const/4 p1, 0x0

    :goto_59
    invoke-virtual {v0}, Lk2/b0;->s()Z

    move-result v1

    if-eqz v1, :cond_60

    goto :goto_64

    :cond_60
    invoke-virtual {v5, v0}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v5

    :goto_64
    new-instance v8, Lk2/o;

    filled-new-array {v5, p1}, [Lk2/b0;

    move-result-object v12

    const/4 v13, 0x0

    iget-object v9, p0, Lk2/p;->a:Lk2/h;

    invoke-direct/range {v8 .. v13}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v8
.end method

.method public J(Z)Lk2/o;
    .registers 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lk2/p;->b:Lk2/b0;

    check-cast v1, Ll2/d;

    iget-object v2, v0, Lk2/p;->c:Lk2/b0;

    check-cast v2, Ll2/d;

    iget-object v3, v0, Lk2/p;->d:[Lk2/b0;

    const/4 v4, 0x0

    aget-object v5, v3, v4

    move-object v6, v5

    check-cast v6, Ll2/d;

    const/4 v7, 0x1

    aget-object v8, v3, v7

    check-cast v8, Ll2/d;

    const/4 v9, 0x0

    if-nez v8, :cond_22

    check-cast v5, Ll2/d;

    invoke-virtual {v0, v5, v9}, Lk2/o;->G(Ll2/d;[I)Ll2/d;

    move-result-object v8

    aput-object v8, v3, v7

    :cond_22
    const/16 v3, 0x8

    new-array v5, v3, [I

    iget-object v10, v1, Ll2/d;->l:[I

    invoke-static {v10, v5}, Ll2/c;->d([I[I)V

    invoke-static {v5, v5, v5}, Lq4/k;->g([I[I[I)I

    move-result v10

    iget-object v11, v8, Ll2/d;->l:[I

    aget v12, v11, v4

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    move/from16 v16, v4

    aget v4, v5, v16

    move/from16 v17, v10

    int-to-long v9, v4

    and-long/2addr v9, v14

    add-long/2addr v12, v9

    long-to-int v4, v12

    aput v4, v5, v16

    const/16 v4, 0x20

    ushr-long v9, v12, v4

    aget v12, v11, v7

    int-to-long v12, v12

    and-long/2addr v12, v14

    move/from16 v18, v4

    aget v4, v5, v7

    move-wide/from16 v19, v14

    int-to-long v14, v4

    and-long v14, v14, v19

    add-long/2addr v12, v14

    add-long/2addr v12, v9

    long-to-int v4, v12

    aput v4, v5, v7

    ushr-long v9, v12, v18

    const/4 v4, 0x2

    aget v12, v11, v4

    int-to-long v12, v12

    and-long v12, v12, v19

    aget v14, v5, v4

    int-to-long v14, v14

    and-long v14, v14, v19

    add-long/2addr v12, v14

    add-long/2addr v12, v9

    long-to-int v9, v12

    aput v9, v5, v4

    ushr-long v9, v12, v18

    const/4 v12, 0x3

    aget v13, v11, v12

    int-to-long v13, v13

    and-long v13, v13, v19

    aget v15, v5, v12

    move/from16 v21, v12

    move-wide/from16 v22, v13

    int-to-long v12, v15

    and-long v12, v12, v19

    add-long v13, v22, v12

    add-long/2addr v13, v9

    long-to-int v9, v13

    aput v9, v5, v21

    ushr-long v9, v13, v18

    const/4 v12, 0x4

    aget v13, v11, v12

    int-to-long v13, v13

    and-long v13, v13, v19

    aget v15, v5, v12

    move/from16 v21, v12

    move-wide/from16 v22, v13

    int-to-long v12, v15

    and-long v12, v12, v19

    add-long v13, v22, v12

    add-long/2addr v13, v9

    long-to-int v9, v13

    aput v9, v5, v21

    ushr-long v9, v13, v18

    const/4 v12, 0x5

    aget v13, v11, v12

    int-to-long v13, v13

    and-long v13, v13, v19

    aget v15, v5, v12

    move/from16 v21, v12

    move-wide/from16 v22, v13

    int-to-long v12, v15

    and-long v12, v12, v19

    add-long v13, v22, v12

    add-long/2addr v13, v9

    long-to-int v9, v13

    aput v9, v5, v21

    ushr-long v9, v13, v18

    const/4 v12, 0x6

    aget v13, v11, v12

    int-to-long v13, v13

    and-long v13, v13, v19

    aget v15, v5, v12

    move/from16 v21, v12

    move-wide/from16 v22, v13

    int-to-long v12, v15

    and-long v12, v12, v19

    add-long v13, v22, v12

    add-long/2addr v13, v9

    long-to-int v9, v13

    aput v9, v5, v21

    ushr-long v9, v13, v18

    const/4 v12, 0x7

    aget v11, v11, v12

    int-to-long v13, v11

    and-long v13, v13, v19

    aget v11, v5, v12

    move v15, v12

    move-wide/from16 v21, v13

    int-to-long v12, v11

    and-long v11, v12, v19

    add-long v13, v21, v11

    add-long/2addr v13, v9

    long-to-int v9, v13

    aput v9, v5, v15

    ushr-long v9, v13, v18

    long-to-int v9, v9

    add-int v10, v17, v9

    invoke-static {v10, v5}, Ll2/c;->c(I[I)V

    new-array v9, v3, [I

    iget-object v10, v2, Ll2/d;->l:[I

    invoke-static {v10, v9}, Ll2/c;->h([I[I)V

    new-array v10, v3, [I

    iget-object v2, v2, Ll2/d;->l:[I

    invoke-static {v9, v2, v10}, Ll2/c;->a([I[I[I)V

    new-array v2, v3, [I

    iget-object v1, v1, Ll2/d;->l:[I

    invoke-static {v10, v1, v2}, Ll2/c;->a([I[I[I)V

    invoke-static {v2, v2}, Ll2/c;->h([I[I)V

    new-array v1, v3, [I

    invoke-static {v10, v1}, Ll2/c;->d([I[I)V

    invoke-static {v1, v1}, Ll2/c;->h([I[I)V

    new-instance v3, Ll2/d;

    invoke-direct {v3, v10}, Ll2/d;-><init>([I)V

    invoke-static {v5, v10}, Ll2/c;->d([I[I)V

    invoke-static {v10, v2, v10}, Ll2/c;->g([I[I[I)V

    invoke-static {v10, v2, v10}, Ll2/c;->g([I[I[I)V

    new-instance v11, Ll2/d;

    invoke-direct {v11, v2}, Ll2/d;-><init>([I)V

    invoke-static {v2, v10, v2}, Ll2/c;->g([I[I[I)V

    invoke-static {v2, v5, v2}, Ll2/c;->a([I[I[I)V

    invoke-static {v2, v1, v2}, Ll2/c;->g([I[I[I)V

    new-instance v2, Ll2/d;

    invoke-direct {v2, v9}, Ll2/d;-><init>([I)V

    iget-object v5, v6, Ll2/d;->l:[I

    invoke-static {v5}, Lq4/k;->p0([I)Z

    move-result v5

    if-nez v5, :cond_136

    iget-object v5, v6, Ll2/d;->l:[I

    invoke-static {v9, v5, v9}, Ll2/c;->a([I[I[I)V

    :cond_136
    if-eqz p1, :cond_146

    new-instance v9, Ll2/d;

    invoke-direct {v9, v1}, Ll2/d;-><init>([I)V

    iget-object v5, v8, Ll2/d;->l:[I

    invoke-static {v1, v5, v1}, Ll2/c;->a([I[I[I)V

    invoke-static {v1, v1}, Ll2/c;->h([I[I)V

    goto :goto_147

    :cond_146
    const/4 v9, 0x0

    :goto_147
    new-instance v17, Lk2/o;

    new-array v1, v4, [Lk2/b0;

    aput-object v2, v1, v16

    aput-object v9, v1, v7

    const/16 v22, 0x1

    iget-object v0, v0, Lk2/p;->a:Lk2/h;

    move-object/from16 v18, v0

    move-object/from16 v21, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v11

    invoke-direct/range {v17 .. v22}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v17
.end method

.method public final a(Lk2/p;)Lk2/p;
    .registers 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lk2/o;->g:I

    const/4 v11, 0x7

    const/4 v13, 0x6

    const/16 v14, 0xc

    const-wide/16 v16, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x5

    const-wide v18, 0xffffffffL

    const/4 v7, -0x1

    const/16 v8, 0x9

    const/16 v20, 0x20

    const/16 v21, 0xb

    iget-object v12, v0, Lk2/p;->d:[Lk2/b0;

    const/16 v22, 0x2

    iget-object v15, v0, Lk2/p;->c:Lk2/b0;

    const/16 v23, 0xf

    iget-object v3, v0, Lk2/p;->b:Lk2/b0;

    const/4 v4, 0x1

    const/4 v10, 0x0

    packed-switch v2, :pswitch_data_d94

    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_33

    move-object v0, v1

    goto/16 :goto_139

    :cond_33
    invoke-virtual {v1}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_3b

    goto/16 :goto_139

    :cond_3b
    if-ne v0, v1, :cond_43

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    goto/16 :goto_139

    :cond_43
    check-cast v3, Ln2/x;

    check-cast v15, Ln2/x;

    iget-object v2, v1, Lk2/p;->b:Lk2/b0;

    check-cast v2, Ln2/x;

    invoke-virtual {v1}, Lk2/p;->i()Lk2/b0;

    move-result-object v5

    check-cast v5, Ln2/x;

    aget-object v6, v12, v10

    check-cast v6, Ln2/x;

    invoke-virtual {v1}, Lk2/p;->j()Lk2/b0;

    move-result-object v1

    check-cast v1, Ln2/x;

    const/16 v7, 0x21

    new-array v7, v7, [I

    const/16 v8, 0x11

    new-array v9, v8, [I

    new-array v11, v8, [I

    new-array v12, v8, [I

    new-array v13, v8, [I

    invoke-virtual {v6}, Ln2/x;->s()Z

    move-result v14

    iget-object v6, v6, Ln2/x;->l:[I

    if-eqz v14, :cond_76

    iget-object v2, v2, Ln2/x;->l:[I

    iget-object v5, v5, Ln2/x;->l:[I

    goto :goto_8e

    :cond_76
    invoke-static {v6, v7}, Ln2/b;->S([I[I)V

    invoke-static {v7, v12}, Ln2/b;->A0([I[I)V

    iget-object v2, v2, Ln2/x;->l:[I

    invoke-static {v12, v2, v11, v7}, Ln2/b;->i0([I[I[I[I)V

    invoke-static {v12, v6, v7}, Ln2/b;->y([I[I[I)V

    invoke-static {v7, v12}, Ln2/b;->A0([I[I)V

    iget-object v2, v5, Ln2/x;->l:[I

    invoke-static {v12, v2, v12, v7}, Ln2/b;->i0([I[I[I[I)V

    move-object v2, v11

    move-object v5, v12

    :goto_8e
    invoke-virtual {v1}, Ln2/x;->s()Z

    move-result v16

    iget-object v1, v1, Ln2/x;->l:[I

    if-eqz v16, :cond_9d

    iget-object v3, v3, Ln2/x;->l:[I

    iget-object v15, v15, Ln2/x;->l:[I

    :goto_9a
    move/from16 v26, v10

    goto :goto_b6

    :cond_9d
    invoke-static {v1, v7}, Ln2/b;->S([I[I)V

    invoke-static {v7, v13}, Ln2/b;->A0([I[I)V

    iget-object v3, v3, Ln2/x;->l:[I

    invoke-static {v13, v3, v9, v7}, Ln2/b;->i0([I[I[I[I)V

    invoke-static {v13, v1, v7}, Ln2/b;->y([I[I[I)V

    invoke-static {v7, v13}, Ln2/b;->A0([I[I)V

    iget-object v3, v15, Ln2/x;->l:[I

    invoke-static {v13, v3, v13, v7}, Ln2/b;->i0([I[I[I[I)V

    move-object v3, v9

    move-object v15, v13

    goto :goto_9a

    :goto_b6
    new-array v10, v8, [I

    invoke-static {v3, v2, v10}, Ln2/b;->G1([I[I[I)V

    invoke-static {v15, v5, v11}, Ln2/b;->G1([I[I[I)V

    invoke-static {v8, v10}, Ls2/b;->L(I[I)Z

    move-result v2

    iget-object v5, v0, Lk2/p;->a:Lk2/h;

    if-eqz v2, :cond_d6

    invoke-static {v8, v11}, Ls2/b;->L(I[I)Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    goto :goto_139

    :cond_d1
    invoke-virtual {v5}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto :goto_139

    :cond_d6
    invoke-static {v10, v7}, Ln2/b;->S([I[I)V

    invoke-static {v7, v12}, Ln2/b;->A0([I[I)V

    new-array v0, v8, [I

    invoke-static {v12, v10, v7}, Ln2/b;->y([I[I[I)V

    invoke-static {v7, v0}, Ln2/b;->A0([I[I)V

    invoke-static {v12, v3, v7}, Ln2/b;->y([I[I[I)V

    invoke-static {v7, v12}, Ln2/b;->A0([I[I)V

    invoke-static {v15, v0, v7}, Ln2/b;->y([I[I[I)V

    invoke-static {v7, v9}, Ln2/b;->A0([I[I)V

    new-instance v2, Ln2/x;

    invoke-direct {v2, v13}, Ln2/x;-><init>([I)V

    invoke-static {v11, v7}, Ln2/b;->S([I[I)V

    invoke-static {v7, v13}, Ln2/b;->A0([I[I)V

    invoke-static {v13, v0, v13}, Ln2/b;->d([I[I[I)V

    invoke-static {v13, v12, v13}, Ln2/b;->G1([I[I[I)V

    invoke-static {v13, v12, v13}, Ln2/b;->G1([I[I[I)V

    new-instance v3, Ln2/x;

    invoke-direct {v3, v0}, Ln2/x;-><init>([I)V

    invoke-static {v12, v13, v0}, Ln2/b;->G1([I[I[I)V

    invoke-static {v0, v11, v7}, Ln2/b;->y([I[I[I)V

    invoke-static {v7, v11}, Ln2/b;->A0([I[I)V

    invoke-static {v11, v9, v0}, Ln2/b;->G1([I[I[I)V

    new-instance v0, Ln2/x;

    invoke-direct {v0, v10}, Ln2/x;-><init>([I)V

    if-nez v14, :cond_11f

    invoke-static {v10, v6, v10, v7}, Ln2/b;->i0([I[I[I[I)V

    :cond_11f
    if-nez v16, :cond_124

    invoke-static {v10, v1, v10, v7}, Ln2/b;->i0([I[I[I[I)V

    :cond_124
    new-array v1, v4, [Lk2/b0;

    aput-object v0, v1, v26

    new-instance v17, Lk2/o;

    const/16 v22, 0xe

    move-object/from16 v21, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v18, v5

    invoke-direct/range {v17 .. v22}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object/from16 v0, v17

    :goto_139
    return-object v0

    :pswitch_13a
    invoke-direct/range {p0 .. p1}, Lk2/o;->E(Lk2/p;)Lk2/p;

    move-result-object v0

    return-object v0

    :pswitch_13f
    invoke-direct/range {p0 .. p1}, Lk2/o;->D(Lk2/p;)Lk2/p;

    move-result-object v0

    return-object v0

    :pswitch_144
    invoke-direct/range {p0 .. p1}, Lk2/o;->C(Lk2/p;)Lk2/p;

    move-result-object v0

    return-object v0

    :pswitch_149
    invoke-direct/range {p0 .. p1}, Lk2/o;->B(Lk2/p;)Lk2/p;

    move-result-object v0

    return-object v0

    :pswitch_14e
    invoke-direct/range {p0 .. p1}, Lk2/o;->A(Lk2/p;)Lk2/p;

    move-result-object v0

    return-object v0

    :pswitch_153
    move/from16 v26, v10

    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_15e

    move-object v0, v1

    goto/16 :goto_280

    :cond_15e
    invoke-virtual {v1}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_166

    goto/16 :goto_280

    :cond_166
    if-ne v0, v1, :cond_16e

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    goto/16 :goto_280

    :cond_16e
    check-cast v3, Ln2/l;

    check-cast v15, Ln2/l;

    iget-object v2, v1, Lk2/p;->b:Lk2/b0;

    check-cast v2, Ln2/l;

    invoke-virtual {v1}, Lk2/p;->i()Lk2/b0;

    move-result-object v5

    check-cast v5, Ln2/l;

    aget-object v6, v12, v26

    check-cast v6, Ln2/l;

    invoke-virtual {v1}, Lk2/p;->j()Lk2/b0;

    move-result-object v1

    check-cast v1, Ln2/l;

    new-array v9, v14, [I

    new-array v10, v13, [I

    new-array v11, v13, [I

    new-array v12, v13, [I

    iget-object v6, v6, Ln2/l;->l:[I

    invoke-static {v6}, Lq4/k;->o0([I)Z

    move-result v16

    if-eqz v16, :cond_19b

    iget-object v2, v2, Ln2/l;->l:[I

    iget-object v5, v5, Ln2/l;->l:[I

    goto :goto_1ad

    :cond_19b
    invoke-static {v6, v11}, Ln2/b;->j1([I[I)V

    iget-object v2, v2, Ln2/l;->l:[I

    invoke-static {v11, v2, v10}, Ln2/b;->k0([I[I[I)V

    invoke-static {v11, v6, v11}, Ln2/b;->k0([I[I[I)V

    iget-object v2, v5, Ln2/l;->l:[I

    invoke-static {v11, v2, v11}, Ln2/b;->k0([I[I[I)V

    move-object v2, v10

    move-object v5, v11

    :goto_1ad
    iget-object v1, v1, Ln2/l;->l:[I

    invoke-static {v1}, Lq4/k;->o0([I)Z

    move-result v17

    if-eqz v17, :cond_1bc

    iget-object v3, v3, Ln2/l;->l:[I

    iget-object v15, v15, Ln2/l;->l:[I

    :goto_1b9
    move/from16 v27, v4

    goto :goto_1cf

    :cond_1bc
    invoke-static {v1, v12}, Ln2/b;->j1([I[I)V

    iget-object v3, v3, Ln2/l;->l:[I

    invoke-static {v12, v3, v9}, Ln2/b;->k0([I[I[I)V

    invoke-static {v12, v1, v12}, Ln2/b;->k0([I[I[I)V

    iget-object v3, v15, Ln2/l;->l:[I

    invoke-static {v12, v3, v12}, Ln2/b;->k0([I[I[I)V

    move-object v3, v9

    move-object v15, v12

    goto :goto_1b9

    :goto_1cf
    new-array v4, v13, [I

    invoke-static {v3, v2, v4}, Ln2/b;->J1([I[I[I)V

    invoke-static {v15, v5, v10}, Ln2/b;->J1([I[I[I)V

    invoke-static {v4}, Lq4/k;->s0([I)Z

    move-result v2

    iget-object v5, v0, Lk2/p;->a:Lk2/h;

    if-eqz v2, :cond_1f1

    invoke-static {v10}, Lq4/k;->s0([I)Z

    move-result v1

    if-eqz v1, :cond_1eb

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    goto/16 :goto_280

    :cond_1eb
    invoke-virtual {v5}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto/16 :goto_280

    :cond_1f1
    invoke-static {v4, v11}, Ln2/b;->j1([I[I)V

    new-array v0, v13, [I

    invoke-static {v11, v4, v0}, Ln2/b;->k0([I[I[I)V

    invoke-static {v11, v3, v11}, Ln2/b;->k0([I[I[I)V

    sget-object v2, Ln2/b;->m:[I

    move/from16 v3, v26

    move/from16 v18, v3

    :goto_202
    if-ge v3, v13, :cond_20b

    aget v19, v0, v3

    or-int v18, v18, v19

    add-int/lit8 v3, v3, 0x1

    goto :goto_202

    :cond_20b
    ushr-int/lit8 v3, v18, 0x1

    and-int/lit8 v13, v18, 0x1

    or-int/2addr v3, v13

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v3, v3, 0x1f

    if-eqz v3, :cond_21a

    invoke-static {v2, v2, v0}, Lq4/k;->P0([I[I[I)I

    goto :goto_21d

    :cond_21a
    invoke-static {v2, v0, v0}, Lq4/k;->P0([I[I[I)I

    :goto_21d
    invoke-static {v15, v0, v9}, Lq4/k;->x0([I[I[I)V

    invoke-static {v11, v11, v0}, Lq4/k;->f([I[I[I)I

    move-result v2

    invoke-static {v2, v0}, Ln2/b;->V0(I[I)V

    new-instance v2, Ln2/l;

    invoke-direct {v2, v12}, Ln2/l;-><init>([I)V

    invoke-static {v10, v12}, Ln2/b;->j1([I[I)V

    invoke-static {v12, v0, v12}, Ln2/b;->J1([I[I[I)V

    new-instance v3, Ln2/l;

    invoke-direct {v3, v0}, Ln2/l;-><init>([I)V

    invoke-static {v11, v12, v0}, Ln2/b;->J1([I[I[I)V

    invoke-static {v0, v10, v9}, Lq4/k;->A0([I[I[I)I

    move-result v10

    if-nez v10, :cond_24c

    aget v10, v9, v21

    if-ne v10, v7, :cond_257

    sget-object v7, Ln2/b;->n:[I

    invoke-static {v14, v9, v7}, Ls2/b;->D(I[I[I)Z

    move-result v7

    if-eqz v7, :cond_257

    :cond_24c
    sget-object v7, Ln2/b;->o:[I

    invoke-static {v8, v7, v9}, Ls2/b;->e(I[I[I)I

    move-result v7

    if-eqz v7, :cond_257

    invoke-static {v14, v8, v9}, Ls2/b;->H(II[I)I

    :cond_257
    invoke-static {v9, v0}, Ln2/b;->F0([I[I)V

    new-instance v0, Ln2/l;

    invoke-direct {v0, v4}, Ln2/l;-><init>([I)V

    if-nez v16, :cond_264

    invoke-static {v4, v6, v4}, Ln2/b;->k0([I[I[I)V

    :cond_264
    if-nez v17, :cond_269

    invoke-static {v4, v1, v4}, Ln2/b;->k0([I[I[I)V

    :cond_269
    move/from16 v1, v27

    new-array v1, v1, [Lk2/b0;

    aput-object v0, v1, v26

    new-instance v28, Lk2/o;

    const/16 v33, 0x8

    move-object/from16 v32, v1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v29, v5

    invoke-direct/range {v28 .. v33}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object/from16 v0, v28

    :goto_280
    return-object v0

    :pswitch_281
    move/from16 v26, v10

    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_28c

    move-object v0, v1

    goto/16 :goto_3ae

    :cond_28c
    invoke-virtual {v1}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_294

    goto/16 :goto_3ae

    :cond_294
    if-ne v0, v1, :cond_29c

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    goto/16 :goto_3ae

    :cond_29c
    check-cast v3, Ln2/j;

    check-cast v15, Ln2/j;

    iget-object v2, v1, Lk2/p;->b:Lk2/b0;

    check-cast v2, Ln2/j;

    invoke-virtual {v1}, Lk2/p;->i()Lk2/b0;

    move-result-object v4

    check-cast v4, Ln2/j;

    aget-object v5, v12, v26

    check-cast v5, Ln2/j;

    invoke-virtual {v1}, Lk2/p;->j()Lk2/b0;

    move-result-object v1

    check-cast v1, Ln2/j;

    new-array v6, v14, [I

    new-array v8, v13, [I

    new-array v10, v13, [I

    new-array v11, v13, [I

    iget-object v5, v5, Ln2/j;->l:[I

    invoke-static {v5}, Lq4/k;->o0([I)Z

    move-result v12

    if-eqz v12, :cond_2c9

    iget-object v2, v2, Ln2/j;->l:[I

    iget-object v4, v4, Ln2/j;->l:[I

    goto :goto_2db

    :cond_2c9
    invoke-static {v5, v10}, Ln2/b;->h1([I[I)V

    iget-object v2, v2, Ln2/j;->l:[I

    invoke-static {v10, v2, v8}, Ln2/b;->h0([I[I[I)V

    invoke-static {v10, v5, v10}, Ln2/b;->h0([I[I[I)V

    iget-object v2, v4, Ln2/j;->l:[I

    invoke-static {v10, v2, v10}, Ln2/b;->h0([I[I[I)V

    move-object v2, v8

    move-object v4, v10

    :goto_2db
    iget-object v1, v1, Ln2/j;->l:[I

    invoke-static {v1}, Lq4/k;->o0([I)Z

    move-result v16

    if-eqz v16, :cond_2e8

    iget-object v3, v3, Ln2/j;->l:[I

    iget-object v15, v15, Ln2/j;->l:[I

    goto :goto_2fa

    :cond_2e8
    invoke-static {v1, v11}, Ln2/b;->h1([I[I)V

    iget-object v3, v3, Ln2/j;->l:[I

    invoke-static {v11, v3, v6}, Ln2/b;->h0([I[I[I)V

    invoke-static {v11, v1, v11}, Ln2/b;->h0([I[I[I)V

    iget-object v3, v15, Ln2/j;->l:[I

    invoke-static {v11, v3, v11}, Ln2/b;->h0([I[I[I)V

    move-object v3, v6

    move-object v15, v11

    :goto_2fa
    new-array v9, v13, [I

    invoke-static {v3, v2, v9}, Ln2/b;->I1([I[I[I)V

    invoke-static {v15, v4, v8}, Ln2/b;->I1([I[I[I)V

    invoke-static {v9}, Lq4/k;->s0([I)Z

    move-result v2

    iget-object v4, v0, Lk2/p;->a:Lk2/h;

    if-eqz v2, :cond_31c

    invoke-static {v8}, Lq4/k;->s0([I)Z

    move-result v1

    if-eqz v1, :cond_316

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    goto/16 :goto_3ae

    :cond_316
    invoke-virtual {v4}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto/16 :goto_3ae

    :cond_31c
    invoke-static {v9, v10}, Ln2/b;->h1([I[I)V

    new-array v0, v13, [I

    invoke-static {v10, v9, v0}, Ln2/b;->h0([I[I[I)V

    invoke-static {v10, v3, v10}, Ln2/b;->h0([I[I[I)V

    sget-object v2, Ln2/b;->j:[I

    move/from16 v3, v26

    move/from16 v17, v3

    :goto_32d
    if-ge v3, v13, :cond_336

    aget v18, v0, v3

    or-int v17, v17, v18

    add-int/lit8 v3, v3, 0x1

    goto :goto_32d

    :cond_336
    ushr-int/lit8 v3, v17, 0x1

    const/16 v27, 0x1

    and-int/lit8 v13, v17, 0x1

    or-int/2addr v3, v13

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v3, v3, 0x1f

    if-eqz v3, :cond_347

    invoke-static {v2, v2, v0}, Lq4/k;->P0([I[I[I)I

    goto :goto_34a

    :cond_347
    invoke-static {v2, v0, v0}, Lq4/k;->P0([I[I[I)I

    :goto_34a
    invoke-static {v15, v0, v6}, Lq4/k;->x0([I[I[I)V

    invoke-static {v10, v10, v0}, Lq4/k;->f([I[I[I)I

    move-result v2

    invoke-static {v2, v0}, Ln2/b;->U0(I[I)V

    new-instance v2, Ln2/j;

    invoke-direct {v2, v11}, Ln2/j;-><init>([I)V

    invoke-static {v8, v11}, Ln2/b;->h1([I[I)V

    invoke-static {v11, v0, v11}, Ln2/b;->I1([I[I[I)V

    new-instance v3, Ln2/j;

    invoke-direct {v3, v0}, Ln2/j;-><init>([I)V

    invoke-static {v10, v11, v0}, Ln2/b;->I1([I[I[I)V

    invoke-static {v0, v8, v6}, Lq4/k;->A0([I[I[I)I

    move-result v8

    if-nez v8, :cond_379

    aget v8, v6, v21

    if-ne v8, v7, :cond_386

    sget-object v7, Ln2/b;->k:[I

    invoke-static {v14, v6, v7}, Ls2/b;->D(I[I[I)Z

    move-result v7

    if-eqz v7, :cond_386

    :cond_379
    sget-object v7, Ln2/b;->l:[I

    const/16 v8, 0x8

    invoke-static {v8, v7, v6}, Ls2/b;->e(I[I[I)I

    move-result v7

    if-eqz v7, :cond_386

    invoke-static {v14, v8, v6}, Ls2/b;->H(II[I)I

    :cond_386
    invoke-static {v6, v0}, Ln2/b;->D0([I[I)V

    new-instance v0, Ln2/j;

    invoke-direct {v0, v9}, Ln2/j;-><init>([I)V

    if-nez v12, :cond_393

    invoke-static {v9, v5, v9}, Ln2/b;->h0([I[I[I)V

    :cond_393
    if-nez v16, :cond_398

    invoke-static {v9, v1, v9}, Ln2/b;->h0([I[I[I)V

    :cond_398
    const/4 v1, 0x1

    new-array v1, v1, [Lk2/b0;

    aput-object v0, v1, v26

    new-instance v29, Lk2/o;

    const/16 v34, 0x7

    move-object/from16 v33, v1

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v30, v4

    invoke-direct/range {v29 .. v34}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object/from16 v0, v29

    :goto_3ae
    return-object v0

    :pswitch_3af
    move/from16 v26, v10

    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_3ba

    move-object v0, v1

    goto/16 :goto_4be

    :cond_3ba
    invoke-virtual {v1}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_3c2

    goto/16 :goto_4be

    :cond_3c2
    if-ne v0, v1, :cond_3ca

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    goto/16 :goto_4be

    :cond_3ca
    check-cast v3, Ln2/h;

    check-cast v15, Ln2/h;

    iget-object v2, v1, Lk2/p;->b:Lk2/b0;

    check-cast v2, Ln2/h;

    invoke-virtual {v1}, Lk2/p;->i()Lk2/b0;

    move-result-object v4

    check-cast v4, Ln2/h;

    aget-object v7, v12, v26

    check-cast v7, Ln2/h;

    invoke-virtual {v1}, Lk2/p;->j()Lk2/b0;

    move-result-object v1

    check-cast v1, Ln2/h;

    new-array v5, v5, [I

    new-array v8, v6, [I

    new-array v9, v6, [I

    new-array v10, v6, [I

    iget-object v7, v7, Ln2/h;->l:[I

    invoke-static {v7}, Lt4/d;->j0([I)Z

    move-result v11

    if-eqz v11, :cond_3f7

    iget-object v2, v2, Ln2/h;->l:[I

    iget-object v4, v4, Ln2/h;->l:[I

    goto :goto_409

    :cond_3f7
    invoke-static {v7, v9}, Ln2/b;->f1([I[I)V

    iget-object v2, v2, Ln2/h;->l:[I

    invoke-static {v9, v2, v8}, Ln2/b;->e0([I[I[I)V

    invoke-static {v9, v7, v9}, Ln2/b;->e0([I[I[I)V

    iget-object v2, v4, Ln2/h;->l:[I

    invoke-static {v9, v2, v9}, Ln2/b;->e0([I[I[I)V

    move-object v2, v8

    move-object v4, v9

    :goto_409
    iget-object v1, v1, Ln2/h;->l:[I

    invoke-static {v1}, Lt4/d;->j0([I)Z

    move-result v12

    if-eqz v12, :cond_416

    iget-object v3, v3, Ln2/h;->l:[I

    iget-object v13, v15, Ln2/h;->l:[I

    goto :goto_428

    :cond_416
    invoke-static {v1, v10}, Ln2/b;->f1([I[I)V

    iget-object v3, v3, Ln2/h;->l:[I

    invoke-static {v10, v3, v5}, Ln2/b;->e0([I[I[I)V

    invoke-static {v10, v1, v10}, Ln2/b;->e0([I[I[I)V

    iget-object v3, v15, Ln2/h;->l:[I

    invoke-static {v10, v3, v10}, Ln2/b;->e0([I[I[I)V

    move-object v3, v5

    move-object v13, v10

    :goto_428
    new-array v14, v6, [I

    invoke-static {v3, v2, v14}, Ln2/b;->H1([I[I[I)V

    invoke-static {v13, v4, v8}, Ln2/b;->H1([I[I[I)V

    invoke-static {v14}, Lt4/d;->l0([I)Z

    move-result v2

    iget-object v4, v0, Lk2/p;->a:Lk2/h;

    if-eqz v2, :cond_44a

    invoke-static {v8}, Lt4/d;->l0([I)Z

    move-result v1

    if-eqz v1, :cond_444

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    goto/16 :goto_4be

    :cond_444
    invoke-virtual {v4}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto/16 :goto_4be

    :cond_44a
    invoke-static {v14, v9}, Ln2/b;->f1([I[I)V

    new-array v0, v6, [I

    invoke-static {v9, v14, v0}, Ln2/b;->e0([I[I[I)V

    invoke-static {v9, v3, v9}, Ln2/b;->e0([I[I[I)V

    sget-object v2, Ln2/b;->g:[I

    move/from16 v3, v26

    move v15, v3

    :goto_45a
    if-ge v3, v6, :cond_463

    aget v16, v0, v3

    or-int v15, v15, v16

    add-int/lit8 v3, v3, 0x1

    goto :goto_45a

    :cond_463
    ushr-int/lit8 v3, v15, 0x1

    const/16 v27, 0x1

    and-int/lit8 v6, v15, 0x1

    or-int/2addr v3, v6

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v3, v3, 0x1f

    if-eqz v3, :cond_474

    invoke-static {v2, v2, v0}, Lt4/d;->I0([I[I[I)I

    goto :goto_477

    :cond_474
    invoke-static {v2, v0, v0}, Lt4/d;->I0([I[I[I)I

    :goto_477
    invoke-static {v13, v0, v5}, Lt4/d;->u0([I[I[I)V

    invoke-static {v9, v9, v0}, Lt4/d;->k([I[I[I)I

    move-result v2

    invoke-static {v2, v0}, Ln2/b;->T0(I[I)V

    new-instance v2, Ln2/h;

    invoke-direct {v2, v10}, Ln2/h;-><init>([I)V

    invoke-static {v8, v10}, Ln2/b;->f1([I[I)V

    invoke-static {v10, v0, v10}, Ln2/b;->H1([I[I[I)V

    new-instance v3, Ln2/h;

    invoke-direct {v3, v0}, Ln2/h;-><init>([I)V

    invoke-static {v9, v10, v0}, Ln2/b;->H1([I[I[I)V

    invoke-static {v0, v8, v5}, Ln2/b;->s0([I[I[I)V

    invoke-static {v5, v0}, Ln2/b;->B0([I[I)V

    new-instance v0, Ln2/h;

    invoke-direct {v0, v14}, Ln2/h;-><init>([I)V

    if-nez v11, :cond_4a4

    invoke-static {v14, v7, v14}, Ln2/b;->e0([I[I[I)V

    :cond_4a4
    if-nez v12, :cond_4a9

    invoke-static {v14, v1, v14}, Ln2/b;->e0([I[I[I)V

    :cond_4a9
    const/4 v1, 0x1

    new-array v1, v1, [Lk2/b0;

    aput-object v0, v1, v26

    new-instance v15, Lk2/o;

    const/16 v20, 0x6

    move-object/from16 v19, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    invoke-direct/range {v15 .. v20}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object v0, v15

    :goto_4be
    return-object v0

    :pswitch_4bf
    move/from16 v26, v10

    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_4ca

    move-object v0, v1

    goto/16 :goto_5ed

    :cond_4ca
    invoke-virtual {v1}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_4d2

    goto/16 :goto_5ed

    :cond_4d2
    if-ne v0, v1, :cond_4da

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    goto/16 :goto_5ed

    :cond_4da
    check-cast v3, Ln2/f;

    check-cast v15, Ln2/f;

    iget-object v2, v1, Lk2/p;->b:Lk2/b0;

    check-cast v2, Ln2/f;

    invoke-virtual {v1}, Lk2/p;->i()Lk2/b0;

    move-result-object v4

    check-cast v4, Ln2/f;

    aget-object v9, v12, v26

    check-cast v9, Ln2/f;

    invoke-virtual {v1}, Lk2/p;->j()Lk2/b0;

    move-result-object v1

    check-cast v1, Ln2/f;

    new-array v10, v5, [I

    new-array v12, v6, [I

    new-array v13, v6, [I

    new-array v14, v6, [I

    iget-object v9, v9, Ln2/f;->l:[I

    invoke-static {v9}, Lt4/d;->j0([I)Z

    move-result v16

    if-eqz v16, :cond_507

    iget-object v2, v2, Ln2/f;->l:[I

    iget-object v4, v4, Ln2/f;->l:[I

    goto :goto_519

    :cond_507
    invoke-static {v9, v13}, Ln2/b;->d1([I[I)V

    iget-object v2, v2, Ln2/f;->l:[I

    invoke-static {v13, v2, v12}, Ln2/b;->b0([I[I[I)V

    invoke-static {v13, v9, v13}, Ln2/b;->b0([I[I[I)V

    iget-object v2, v4, Ln2/f;->l:[I

    invoke-static {v13, v2, v13}, Ln2/b;->b0([I[I[I)V

    move-object v2, v12

    move-object v4, v13

    :goto_519
    iget-object v1, v1, Ln2/f;->l:[I

    invoke-static {v1}, Lt4/d;->j0([I)Z

    move-result v17

    if-eqz v17, :cond_528

    iget-object v3, v3, Ln2/f;->l:[I

    iget-object v15, v15, Ln2/f;->l:[I

    :goto_525
    move/from16 v21, v8

    goto :goto_53b

    :cond_528
    invoke-static {v1, v14}, Ln2/b;->d1([I[I)V

    iget-object v3, v3, Ln2/f;->l:[I

    invoke-static {v14, v3, v10}, Ln2/b;->b0([I[I[I)V

    invoke-static {v14, v1, v14}, Ln2/b;->b0([I[I[I)V

    iget-object v3, v15, Ln2/f;->l:[I

    invoke-static {v14, v3, v14}, Ln2/b;->b0([I[I[I)V

    move-object v3, v10

    move-object v15, v14

    goto :goto_525

    :goto_53b
    new-array v8, v6, [I

    invoke-static {v3, v2, v8}, Ln2/b;->F1([I[I[I)V

    invoke-static {v15, v4, v12}, Ln2/b;->F1([I[I[I)V

    invoke-static {v8}, Lt4/d;->l0([I)Z

    move-result v2

    iget-object v4, v0, Lk2/p;->a:Lk2/h;

    if-eqz v2, :cond_55d

    invoke-static {v12}, Lt4/d;->l0([I)Z

    move-result v1

    if-eqz v1, :cond_557

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    goto/16 :goto_5ed

    :cond_557
    invoke-virtual {v4}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto/16 :goto_5ed

    :cond_55d
    invoke-static {v8, v13}, Ln2/b;->d1([I[I)V

    new-array v0, v6, [I

    invoke-static {v13, v8, v0}, Ln2/b;->b0([I[I[I)V

    invoke-static {v13, v3, v13}, Ln2/b;->b0([I[I[I)V

    sget-object v2, Ln2/b;->d:[I

    move/from16 v3, v26

    move/from16 v18, v3

    :goto_56e
    if-ge v3, v6, :cond_577

    aget v19, v0, v3

    or-int v18, v18, v19

    add-int/lit8 v3, v3, 0x1

    goto :goto_56e

    :cond_577
    ushr-int/lit8 v3, v18, 0x1

    const/16 v27, 0x1

    and-int/lit8 v6, v18, 0x1

    or-int/2addr v3, v6

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v3, v3, 0x1f

    if-eqz v3, :cond_588

    invoke-static {v2, v2, v0}, Lt4/d;->I0([I[I[I)I

    goto :goto_58b

    :cond_588
    invoke-static {v2, v0, v0}, Lt4/d;->I0([I[I[I)I

    :goto_58b
    invoke-static {v15, v0, v10}, Lt4/d;->u0([I[I[I)V

    invoke-static {v13, v13, v0}, Lt4/d;->k([I[I[I)I

    move-result v2

    invoke-static {v2, v0}, Ln2/b;->S0(I[I)V

    new-instance v2, Ln2/f;

    invoke-direct {v2, v14}, Ln2/f;-><init>([I)V

    invoke-static {v12, v14}, Ln2/b;->d1([I[I)V

    invoke-static {v14, v0, v14}, Ln2/b;->F1([I[I[I)V

    new-instance v3, Ln2/f;

    invoke-direct {v3, v0}, Ln2/f;-><init>([I)V

    invoke-static {v13, v14, v0}, Ln2/b;->F1([I[I[I)V

    invoke-static {v0, v12, v10}, Lt4/d;->w0([I[I[I)I

    move-result v6

    if-nez v6, :cond_5ba

    aget v6, v10, v21

    if-ne v6, v7, :cond_5c5

    sget-object v6, Ln2/b;->e:[I

    invoke-static {v5, v10, v6}, Ls2/b;->D(I[I[I)Z

    move-result v6

    if-eqz v6, :cond_5c5

    :cond_5ba
    sget-object v6, Ln2/b;->f:[I

    invoke-static {v11, v6, v10}, Ls2/b;->e(I[I[I)I

    move-result v6

    if-eqz v6, :cond_5c5

    invoke-static {v5, v11, v10}, Ls2/b;->H(II[I)I

    :cond_5c5
    invoke-static {v10, v0}, Ln2/b;->y0([I[I)V

    new-instance v0, Ln2/f;

    invoke-direct {v0, v8}, Ln2/f;-><init>([I)V

    if-nez v16, :cond_5d2

    invoke-static {v8, v9, v8}, Ln2/b;->b0([I[I[I)V

    :cond_5d2
    if-nez v17, :cond_5d7

    invoke-static {v8, v1, v8}, Ln2/b;->b0([I[I[I)V

    :cond_5d7
    const/4 v1, 0x1

    new-array v1, v1, [Lk2/b0;

    aput-object v0, v1, v26

    new-instance v28, Lk2/o;

    const/16 v33, 0x5

    move-object/from16 v32, v1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v29, v4

    invoke-direct/range {v28 .. v33}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object/from16 v0, v28

    :goto_5ed
    return-object v0

    :pswitch_5ee
    move/from16 v26, v10

    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_5f9

    move-object v0, v1

    goto/16 :goto_6fd

    :cond_5f9
    invoke-virtual {v1}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_601

    goto/16 :goto_6fd

    :cond_601
    if-ne v0, v1, :cond_609

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    goto/16 :goto_6fd

    :cond_609
    check-cast v3, Ln2/h;

    check-cast v15, Ln2/h;

    iget-object v2, v1, Lk2/p;->b:Lk2/b0;

    check-cast v2, Ln2/h;

    invoke-virtual {v1}, Lk2/p;->i()Lk2/b0;

    move-result-object v4

    check-cast v4, Ln2/h;

    aget-object v7, v12, v26

    check-cast v7, Ln2/h;

    invoke-virtual {v1}, Lk2/p;->j()Lk2/b0;

    move-result-object v1

    check-cast v1, Ln2/h;

    new-array v5, v5, [I

    new-array v8, v6, [I

    new-array v9, v6, [I

    new-array v10, v6, [I

    iget-object v7, v7, Ln2/h;->l:[I

    invoke-static {v7}, Lt4/d;->j0([I)Z

    move-result v11

    if-eqz v11, :cond_636

    iget-object v2, v2, Ln2/h;->l:[I

    iget-object v4, v4, Ln2/h;->l:[I

    goto :goto_648

    :cond_636
    invoke-static {v7, v9}, Ln2/b;->f1([I[I)V

    iget-object v2, v2, Ln2/h;->l:[I

    invoke-static {v9, v2, v8}, Ln2/b;->e0([I[I[I)V

    invoke-static {v9, v7, v9}, Ln2/b;->e0([I[I[I)V

    iget-object v2, v4, Ln2/h;->l:[I

    invoke-static {v9, v2, v9}, Ln2/b;->e0([I[I[I)V

    move-object v2, v8

    move-object v4, v9

    :goto_648
    iget-object v1, v1, Ln2/h;->l:[I

    invoke-static {v1}, Lt4/d;->j0([I)Z

    move-result v12

    if-eqz v12, :cond_655

    iget-object v3, v3, Ln2/h;->l:[I

    iget-object v13, v15, Ln2/h;->l:[I

    goto :goto_667

    :cond_655
    invoke-static {v1, v10}, Ln2/b;->f1([I[I)V

    iget-object v3, v3, Ln2/h;->l:[I

    invoke-static {v10, v3, v5}, Ln2/b;->e0([I[I[I)V

    invoke-static {v10, v1, v10}, Ln2/b;->e0([I[I[I)V

    iget-object v3, v15, Ln2/h;->l:[I

    invoke-static {v10, v3, v10}, Ln2/b;->e0([I[I[I)V

    move-object v3, v5

    move-object v13, v10

    :goto_667
    new-array v14, v6, [I

    invoke-static {v3, v2, v14}, Ln2/b;->H1([I[I[I)V

    invoke-static {v13, v4, v8}, Ln2/b;->H1([I[I[I)V

    invoke-static {v14}, Lt4/d;->l0([I)Z

    move-result v2

    iget-object v4, v0, Lk2/p;->a:Lk2/h;

    if-eqz v2, :cond_689

    invoke-static {v8}, Lt4/d;->l0([I)Z

    move-result v1

    if-eqz v1, :cond_683

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    goto/16 :goto_6fd

    :cond_683
    invoke-virtual {v4}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto/16 :goto_6fd

    :cond_689
    invoke-static {v14, v9}, Ln2/b;->f1([I[I)V

    new-array v0, v6, [I

    invoke-static {v9, v14, v0}, Ln2/b;->e0([I[I[I)V

    invoke-static {v9, v3, v9}, Ln2/b;->e0([I[I[I)V

    sget-object v2, Ln2/b;->g:[I

    move/from16 v3, v26

    move v15, v3

    :goto_699
    if-ge v3, v6, :cond_6a2

    aget v16, v0, v3

    or-int v15, v15, v16

    add-int/lit8 v3, v3, 0x1

    goto :goto_699

    :cond_6a2
    ushr-int/lit8 v3, v15, 0x1

    const/16 v27, 0x1

    and-int/lit8 v6, v15, 0x1

    or-int/2addr v3, v6

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v3, v3, 0x1f

    if-eqz v3, :cond_6b3

    invoke-static {v2, v2, v0}, Lt4/d;->I0([I[I[I)I

    goto :goto_6b6

    :cond_6b3
    invoke-static {v2, v0, v0}, Lt4/d;->I0([I[I[I)I

    :goto_6b6
    invoke-static {v13, v0, v5}, Lt4/d;->u0([I[I[I)V

    invoke-static {v9, v9, v0}, Lt4/d;->k([I[I[I)I

    move-result v2

    invoke-static {v2, v0}, Ln2/b;->T0(I[I)V

    new-instance v2, Ln2/h;

    invoke-direct {v2, v10}, Ln2/h;-><init>([I)V

    invoke-static {v8, v10}, Ln2/b;->f1([I[I)V

    invoke-static {v10, v0, v10}, Ln2/b;->H1([I[I[I)V

    new-instance v3, Ln2/h;

    invoke-direct {v3, v0}, Ln2/h;-><init>([I)V

    invoke-static {v9, v10, v0}, Ln2/b;->H1([I[I[I)V

    invoke-static {v0, v8, v5}, Ln2/b;->s0([I[I[I)V

    invoke-static {v5, v0}, Ln2/b;->B0([I[I)V

    new-instance v0, Ln2/h;

    invoke-direct {v0, v14}, Ln2/h;-><init>([I)V

    if-nez v11, :cond_6e3

    invoke-static {v14, v7, v14}, Ln2/b;->e0([I[I[I)V

    :cond_6e3
    if-nez v12, :cond_6e8

    invoke-static {v14, v1, v14}, Ln2/b;->e0([I[I[I)V

    :cond_6e8
    const/4 v1, 0x1

    new-array v1, v1, [Lk2/b0;

    aput-object v0, v1, v26

    new-instance v15, Lk2/o;

    const/16 v20, 0x4

    move-object/from16 v19, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    invoke-direct/range {v15 .. v20}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object v0, v15

    :goto_6fd
    return-object v0

    :pswitch_6fe
    move/from16 v26, v10

    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_709

    move-object v0, v1

    goto/16 :goto_8cb

    :cond_709
    invoke-virtual {v1}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_711

    goto/16 :goto_8cb

    :cond_711
    if-ne v0, v1, :cond_719

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    goto/16 :goto_8cb

    :cond_719
    check-cast v3, Ln2/c;

    check-cast v15, Ln2/c;

    iget-object v2, v1, Lk2/p;->b:Lk2/b0;

    check-cast v2, Ln2/c;

    invoke-virtual {v1}, Lk2/p;->i()Lk2/b0;

    move-result-object v4

    check-cast v4, Ln2/c;

    aget-object v5, v12, v26

    check-cast v5, Ln2/c;

    invoke-virtual {v1}, Lk2/p;->j()Lk2/b0;

    move-result-object v1

    check-cast v1, Ln2/c;

    const/16 v8, 0x8

    new-array v6, v8, [I

    const/4 v7, 0x4

    new-array v8, v7, [I

    new-array v9, v7, [I

    new-array v10, v7, [I

    iget-object v5, v5, Ln2/c;->l:[I

    invoke-static {v5}, Lq4/k;->n0([I)Z

    move-result v7

    if-eqz v7, :cond_749

    iget-object v2, v2, Ln2/c;->l:[I

    iget-object v4, v4, Ln2/c;->l:[I

    goto :goto_75b

    :cond_749
    invoke-static {v5, v9}, Ln2/b;->b1([I[I)V

    iget-object v2, v2, Ln2/c;->l:[I

    invoke-static {v9, v2, v8}, Ln2/b;->Y([I[I[I)V

    invoke-static {v9, v5, v9}, Ln2/b;->Y([I[I[I)V

    iget-object v2, v4, Ln2/c;->l:[I

    invoke-static {v9, v2, v9}, Ln2/b;->Y([I[I[I)V

    move-object v2, v8

    move-object v4, v9

    :goto_75b
    iget-object v1, v1, Ln2/c;->l:[I

    invoke-static {v1}, Lq4/k;->n0([I)Z

    move-result v12

    if-eqz v12, :cond_769

    iget-object v3, v3, Ln2/c;->l:[I

    iget-object v13, v15, Ln2/c;->l:[I

    :goto_767
    const/4 v14, 0x4

    goto :goto_77c

    :cond_769
    invoke-static {v1, v10}, Ln2/b;->b1([I[I)V

    iget-object v3, v3, Ln2/c;->l:[I

    invoke-static {v10, v3, v6}, Ln2/b;->Y([I[I[I)V

    invoke-static {v10, v1, v10}, Ln2/b;->Y([I[I[I)V

    iget-object v3, v15, Ln2/c;->l:[I

    invoke-static {v10, v3, v10}, Ln2/b;->Y([I[I[I)V

    move-object v3, v6

    move-object v13, v10

    goto :goto_767

    :goto_77c
    new-array v15, v14, [I

    invoke-static {v3, v2, v15}, Ln2/b;->E1([I[I[I)V

    invoke-static {v13, v4, v8}, Ln2/b;->E1([I[I[I)V

    invoke-static {v15}, Lq4/k;->r0([I)Z

    move-result v2

    iget-object v4, v0, Lk2/p;->a:Lk2/h;

    if-eqz v2, :cond_79e

    invoke-static {v8}, Lq4/k;->r0([I)Z

    move-result v1

    if-eqz v1, :cond_798

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    goto/16 :goto_8cb

    :cond_798
    invoke-virtual {v4}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto/16 :goto_8cb

    :cond_79e
    invoke-static {v15, v9}, Ln2/b;->b1([I[I)V

    const/4 v14, 0x4

    new-array v0, v14, [I

    invoke-static {v9, v15, v0}, Ln2/b;->Y([I[I[I)V

    invoke-static {v9, v3, v9}, Ln2/b;->Y([I[I[I)V

    sget-object v2, Ln2/b;->a:[I

    move/from16 v3, v26

    move/from16 v21, v3

    :goto_7b0
    if-ge v3, v14, :cond_7ba

    aget v14, v0, v3

    or-int v21, v21, v14

    add-int/lit8 v3, v3, 0x1

    const/4 v14, 0x4

    goto :goto_7b0

    :cond_7ba
    ushr-int/lit8 v3, v21, 0x1

    const/16 v27, 0x1

    and-int/lit8 v14, v21, 0x1

    or-int/2addr v3, v14

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v3, v3, 0x1f

    if-eqz v3, :cond_7cb

    invoke-static {v2, v2, v0}, Lq4/k;->N0([I[I[I)I

    goto :goto_7ce

    :cond_7cb
    invoke-static {v2, v0, v0}, Lq4/k;->N0([I[I[I)I

    :goto_7ce
    invoke-static {v13, v0, v6}, Lq4/k;->w0([I[I[I)V

    invoke-static {v9, v9, v0}, Lq4/k;->e([I[I[I)I

    move-result v2

    invoke-static {v2, v0}, Ln2/b;->R0(I[I)V

    new-instance v2, Ln2/c;

    invoke-direct {v2, v10}, Ln2/c;-><init>([I)V

    invoke-static {v8, v10}, Ln2/b;->b1([I[I)V

    invoke-static {v10, v0, v10}, Ln2/b;->E1([I[I[I)V

    new-instance v3, Ln2/c;

    invoke-direct {v3, v0}, Ln2/c;-><init>([I)V

    invoke-static {v9, v10, v0}, Ln2/b;->E1([I[I[I)V

    aget v9, v8, v26

    int-to-long v9, v9

    and-long v9, v9, v18

    const/16 v27, 0x1

    aget v13, v8, v27

    int-to-long v13, v13

    and-long v13, v13, v18

    move/from16 v29, v11

    aget v11, v8, v22

    move/from16 p1, v7

    move-object/from16 v21, v8

    int-to-long v7, v11

    and-long v7, v7, v18

    const/4 v11, 0x3

    aget v11, v21, v11

    move-wide/from16 v21, v7

    int-to-long v7, v11

    and-long v7, v7, v18

    move-object/from16 v30, v0

    move-wide/from16 v23, v7

    move-wide/from16 v7, v16

    move/from16 v11, v26

    :goto_812
    const/4 v0, 0x4

    if-ge v11, v0, :cond_884

    aget v0, v30, v11

    move-wide/from16 v31, v9

    int-to-long v9, v0

    and-long v9, v9, v18

    mul-long v16, v9, v31

    aget v0, v6, v11

    move-wide/from16 v33, v9

    int-to-long v9, v0

    and-long v9, v9, v18

    add-long v9, v16, v9

    long-to-int v0, v9

    aput v0, v6, v11

    ushr-long v9, v9, v20

    mul-long v16, v33, v13

    add-int/lit8 v0, v11, 0x1

    move/from16 p0, v0

    aget v0, v6, p0

    move-wide/from16 v35, v9

    int-to-long v9, v0

    and-long v9, v9, v18

    add-long v16, v16, v9

    add-long v9, v16, v35

    long-to-int v0, v9

    aput v0, v6, p0

    ushr-long v9, v9, v20

    mul-long v16, v33, v21

    add-int/lit8 v0, v11, 0x2

    move/from16 v35, v0

    aget v0, v6, v35

    move-wide/from16 v36, v9

    int-to-long v9, v0

    and-long v9, v9, v18

    add-long v16, v16, v9

    add-long v9, v16, v36

    long-to-int v0, v9

    aput v0, v6, v35

    ushr-long v9, v9, v20

    mul-long v16, v33, v23

    add-int/lit8 v0, v11, 0x3

    move/from16 v33, v0

    aget v0, v6, v33

    move-wide/from16 v34, v9

    int-to-long v9, v0

    and-long v9, v9, v18

    add-long v16, v16, v9

    add-long v9, v16, v34

    long-to-int v0, v9

    aput v0, v6, v33

    ushr-long v9, v9, v20

    add-int/lit8 v11, v11, 0x4

    aget v0, v6, v11

    move-wide/from16 v16, v9

    int-to-long v9, v0

    and-long v9, v9, v18

    add-long v9, v16, v9

    add-long/2addr v9, v7

    long-to-int v0, v9

    aput v0, v6, v11

    ushr-long v7, v9, v20

    move/from16 v11, p0

    move-wide/from16 v9, v31

    goto :goto_812

    :cond_884
    long-to-int v0, v7

    if-nez v0, :cond_89a

    aget v0, v6, v29

    const/16 v27, 0x1

    ushr-int/lit8 v0, v0, 0x1

    const v7, 0x7ffffffe

    if-lt v0, v7, :cond_8a1

    sget-object v0, Ln2/b;->b:[I

    invoke-static {v6, v0}, Lq4/k;->m0([I[I)Z

    move-result v0

    if-eqz v0, :cond_8a1

    :cond_89a
    sget-object v0, Ln2/b;->c:[I

    const/16 v8, 0x8

    invoke-static {v8, v0, v6}, Ls2/b;->e(I[I[I)I

    :cond_8a1
    iget-object v0, v3, Ln2/c;->l:[I

    invoke-static {v6, v0}, Ln2/b;->w0([I[I)V

    new-instance v0, Ln2/c;

    invoke-direct {v0, v15}, Ln2/c;-><init>([I)V

    if-nez p1, :cond_8b0

    invoke-static {v15, v5, v15}, Ln2/b;->Y([I[I[I)V

    :cond_8b0
    if-nez v12, :cond_8b5

    invoke-static {v15, v1, v15}, Ln2/b;->Y([I[I[I)V

    :cond_8b5
    const/4 v1, 0x1

    new-array v1, v1, [Lk2/b0;

    aput-object v0, v1, v26

    new-instance v29, Lk2/o;

    const/16 v34, 0x3

    move-object/from16 v33, v1

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v30, v4

    invoke-direct/range {v29 .. v34}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object/from16 v0, v29

    :goto_8cb
    return-object v0

    :pswitch_8cc
    move/from16 v26, v10

    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_8d7

    move-object v0, v1

    goto/16 :goto_a03

    :cond_8d7
    invoke-virtual {v1}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_8df

    goto/16 :goto_a03

    :cond_8df
    if-ne v0, v1, :cond_8e7

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    goto/16 :goto_a03

    :cond_8e7
    check-cast v3, Lm2/c;

    check-cast v15, Lm2/c;

    iget-object v2, v1, Lk2/p;->b:Lk2/b0;

    check-cast v2, Lm2/c;

    invoke-virtual {v1}, Lk2/p;->i()Lk2/b0;

    move-result-object v4

    check-cast v4, Lm2/c;

    aget-object v5, v12, v26

    check-cast v5, Lm2/c;

    invoke-virtual {v1}, Lk2/p;->j()Lk2/b0;

    move-result-object v1

    check-cast v1, Lm2/c;

    const/16 v6, 0x10

    new-array v7, v6, [I

    const/16 v8, 0x8

    new-array v6, v8, [I

    new-array v9, v8, [I

    new-array v10, v8, [I

    iget-object v5, v5, Lm2/c;->l:[I

    invoke-static {v5}, Lq4/k;->p0([I)Z

    move-result v8

    if-eqz v8, :cond_918

    iget-object v2, v2, Lm2/c;->l:[I

    iget-object v4, v4, Lm2/c;->l:[I

    goto :goto_92a

    :cond_918
    invoke-static {v5, v9}, Lm2/b;->f([I[I)V

    iget-object v2, v2, Lm2/c;->l:[I

    invoke-static {v9, v2, v6}, Lm2/b;->c([I[I[I)V

    invoke-static {v9, v5, v9}, Lm2/b;->c([I[I[I)V

    iget-object v2, v4, Lm2/c;->l:[I

    invoke-static {v9, v2, v9}, Lm2/b;->c([I[I[I)V

    move-object v2, v6

    move-object v4, v9

    :goto_92a
    iget-object v1, v1, Lm2/c;->l:[I

    invoke-static {v1}, Lq4/k;->p0([I)Z

    move-result v11

    if-eqz v11, :cond_939

    iget-object v3, v3, Lm2/c;->l:[I

    iget-object v12, v15, Lm2/c;->l:[I

    :goto_936
    const/16 v13, 0x8

    goto :goto_94c

    :cond_939
    invoke-static {v1, v10}, Lm2/b;->f([I[I)V

    iget-object v3, v3, Lm2/c;->l:[I

    invoke-static {v10, v3, v7}, Lm2/b;->c([I[I[I)V

    invoke-static {v10, v1, v10}, Lm2/b;->c([I[I[I)V

    iget-object v3, v15, Lm2/c;->l:[I

    invoke-static {v10, v3, v10}, Lm2/b;->c([I[I[I)V

    move-object v3, v7

    move-object v12, v10

    goto :goto_936

    :goto_94c
    new-array v14, v13, [I

    invoke-static {v3, v2, v14}, Lm2/b;->h([I[I[I)V

    invoke-static {v12, v4, v6}, Lm2/b;->h([I[I[I)V

    invoke-static {v14}, Lq4/k;->t0([I)Z

    move-result v2

    iget-object v4, v0, Lk2/p;->a:Lk2/h;

    if-eqz v2, :cond_96e

    invoke-static {v6}, Lq4/k;->t0([I)Z

    move-result v1

    if-eqz v1, :cond_968

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    goto/16 :goto_a03

    :cond_968
    invoke-virtual {v4}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto/16 :goto_a03

    :cond_96e
    invoke-static {v14, v9}, Lm2/b;->f([I[I)V

    const/16 v13, 0x8

    new-array v0, v13, [I

    invoke-static {v9, v14, v0}, Lm2/b;->c([I[I[I)V

    invoke-static {v9, v3, v9}, Lm2/b;->c([I[I[I)V

    move/from16 v2, v26

    move v3, v2

    :goto_97e
    if-ge v2, v13, :cond_988

    aget v13, v0, v2

    or-int/2addr v3, v13

    add-int/lit8 v2, v2, 0x1

    const/16 v13, 0x8

    goto :goto_97e

    :cond_988
    ushr-int/lit8 v2, v3, 0x1

    const/16 v27, 0x1

    and-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v2, v2, 0x1f

    sget-object v3, Lm2/b;->a:[I

    if-eqz v2, :cond_99b

    invoke-static {v3, v3, v0}, Lq4/k;->R0([I[I[I)I

    goto :goto_99e

    :cond_99b
    invoke-static {v3, v0, v0}, Lq4/k;->R0([I[I[I)I

    :goto_99e
    invoke-static {v12, v0, v7}, Lq4/k;->y0([I[I[I)V

    invoke-static {v9, v9, v0}, Lq4/k;->g([I[I[I)I

    move-result v2

    invoke-static {v2, v0}, Lm2/b;->e(I[I)V

    new-instance v2, Lm2/c;

    invoke-direct {v2, v10}, Lm2/c;-><init>([I)V

    invoke-static {v6, v10}, Lm2/b;->f([I[I)V

    invoke-static {v10, v0, v10}, Lm2/b;->h([I[I[I)V

    new-instance v3, Lm2/c;

    invoke-direct {v3, v0}, Lm2/c;-><init>([I)V

    invoke-static {v9, v10, v0}, Lm2/b;->h([I[I[I)V

    invoke-static {v0, v6, v7}, Lq4/k;->B0([I[I[I)I

    move-result v6

    sget-object v9, Lm2/b;->b:[I

    if-nez v6, :cond_9d7

    aget v6, v7, v23

    const/16 v27, 0x1

    ushr-int/lit8 v6, v6, 0x1

    const v10, 0x7fffffff

    if-lt v6, v10, :cond_9dc

    const/16 v6, 0x10

    invoke-static {v6, v7, v9}, Ls2/b;->D(I[I[I)Z

    move-result v10

    if-eqz v10, :cond_9dc

    goto :goto_9d9

    :cond_9d7
    const/16 v6, 0x10

    :goto_9d9
    invoke-static {v6, v9, v7}, Ls2/b;->U(I[I[I)V

    :cond_9dc
    invoke-static {v7, v0}, Lm2/b;->d([I[I)V

    new-instance v0, Lm2/c;

    invoke-direct {v0, v14}, Lm2/c;-><init>([I)V

    if-nez v8, :cond_9e9

    invoke-static {v14, v5, v14}, Lm2/b;->c([I[I[I)V

    :cond_9e9
    if-nez v11, :cond_9ee

    invoke-static {v14, v1, v14}, Lm2/b;->c([I[I[I)V

    :cond_9ee
    const/4 v1, 0x1

    new-array v1, v1, [Lk2/b0;

    aput-object v0, v1, v26

    new-instance v15, Lk2/o;

    const/16 v20, 0x2

    move-object/from16 v19, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    invoke-direct/range {v15 .. v20}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object v0, v15

    :goto_a03
    return-object v0

    :pswitch_a04
    move/from16 v21, v8

    move/from16 v26, v10

    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_a11

    move-object v0, v1

    goto/16 :goto_b9c

    :cond_a11
    invoke-virtual {v1}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_a19

    goto/16 :goto_b9c

    :cond_a19
    if-ne v0, v1, :cond_a21

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    goto/16 :goto_b9c

    :cond_a21
    check-cast v3, Ll2/d;

    check-cast v15, Ll2/d;

    aget-object v2, v12, v26

    check-cast v2, Ll2/d;

    iget-object v4, v1, Lk2/p;->b:Lk2/b0;

    check-cast v4, Ll2/d;

    invoke-virtual {v1}, Lk2/p;->i()Lk2/b0;

    move-result-object v5

    check-cast v5, Ll2/d;

    invoke-virtual {v1}, Lk2/p;->j()Lk2/b0;

    move-result-object v1

    check-cast v1, Ll2/d;

    const/16 v6, 0x10

    new-array v7, v6, [I

    const/16 v8, 0x8

    new-array v6, v8, [I

    new-array v9, v8, [I

    new-array v10, v8, [I

    iget-object v2, v2, Ll2/d;->l:[I

    invoke-static {v2}, Lq4/k;->p0([I)Z

    move-result v8

    if-eqz v8, :cond_a52

    iget-object v4, v4, Ll2/d;->l:[I

    iget-object v5, v5, Ll2/d;->l:[I

    goto :goto_a64

    :cond_a52
    invoke-static {v2, v9}, Ll2/c;->d([I[I)V

    iget-object v4, v4, Ll2/d;->l:[I

    invoke-static {v9, v4, v6}, Ll2/c;->a([I[I[I)V

    invoke-static {v9, v2, v9}, Ll2/c;->a([I[I[I)V

    iget-object v4, v5, Ll2/d;->l:[I

    invoke-static {v9, v4, v9}, Ll2/c;->a([I[I[I)V

    move-object v4, v6

    move-object v5, v9

    :goto_a64
    iget-object v1, v1, Ll2/d;->l:[I

    invoke-static {v1}, Lq4/k;->p0([I)Z

    move-result v11

    if-eqz v11, :cond_a73

    iget-object v3, v3, Ll2/d;->l:[I

    iget-object v12, v15, Ll2/d;->l:[I

    :goto_a70
    const/16 v13, 0x8

    goto :goto_a86

    :cond_a73
    invoke-static {v1, v10}, Ll2/c;->d([I[I)V

    iget-object v3, v3, Ll2/d;->l:[I

    invoke-static {v10, v3, v7}, Ll2/c;->a([I[I[I)V

    invoke-static {v10, v1, v10}, Ll2/c;->a([I[I[I)V

    iget-object v3, v15, Ll2/d;->l:[I

    invoke-static {v10, v3, v10}, Ll2/c;->a([I[I[I)V

    move-object v3, v7

    move-object v12, v10

    goto :goto_a70

    :goto_a86
    new-array v14, v13, [I

    invoke-static {v3, v4, v14}, Ll2/c;->g([I[I[I)V

    invoke-static {v12, v5, v6}, Ll2/c;->g([I[I[I)V

    invoke-static {v14}, Lq4/k;->t0([I)Z

    move-result v4

    iget-object v5, v0, Lk2/p;->a:Lk2/h;

    if-eqz v4, :cond_aa8

    invoke-static {v6}, Lq4/k;->t0([I)Z

    move-result v1

    if-eqz v1, :cond_aa2

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    goto/16 :goto_b9c

    :cond_aa2
    invoke-virtual {v5}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto/16 :goto_b9c

    :cond_aa8
    const/16 v13, 0x8

    new-array v4, v13, [I

    invoke-static {v14, v4}, Ll2/c;->d([I[I)V

    new-array v15, v13, [I

    invoke-static {v4, v14, v15}, Ll2/c;->a([I[I[I)V

    invoke-static {v4, v3, v9}, Ll2/c;->a([I[I[I)V

    move/from16 v3, v26

    move/from16 v25, v3

    :goto_abb
    if-ge v3, v13, :cond_ac6

    aget v13, v15, v3

    or-int v25, v25, v13

    add-int/lit8 v3, v3, 0x1

    const/16 v13, 0x8

    goto :goto_abb

    :cond_ac6
    ushr-int/lit8 v3, v25, 0x1

    const/16 v27, 0x1

    and-int/lit8 v13, v25, 0x1

    or-int/2addr v3, v13

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v3, v3, 0x1f

    sget-object v13, Ll2/c;->a:[I

    if-eqz v3, :cond_ad9

    invoke-static {v13, v13, v15}, Lq4/k;->R0([I[I[I)I

    goto :goto_adc

    :cond_ad9
    invoke-static {v13, v15, v15}, Lq4/k;->R0([I[I[I)I

    :goto_adc
    invoke-static {v12, v15, v7}, Lq4/k;->y0([I[I[I)V

    invoke-static {v9, v9, v15}, Lq4/k;->g([I[I[I)I

    move-result v3

    invoke-static {v3, v15}, Ll2/c;->c(I[I)V

    new-instance v3, Ll2/d;

    invoke-direct {v3, v10}, Ll2/d;-><init>([I)V

    invoke-static {v6, v10}, Ll2/c;->d([I[I)V

    invoke-static {v10, v15, v10}, Ll2/c;->g([I[I[I)V

    new-instance v12, Ll2/d;

    invoke-direct {v12, v15}, Ll2/d;-><init>([I)V

    invoke-static {v9, v10, v15}, Ll2/c;->g([I[I[I)V

    invoke-static {v15, v6, v7}, Lq4/k;->B0([I[I[I)I

    sget-object v6, Ll2/c;->b:[I

    const/16 v9, 0x10

    invoke-static {v9, v7, v6}, Ls2/b;->D(I[I[I)Z

    move-result v9

    if-eqz v9, :cond_b61

    aget v9, v7, v26

    int-to-long v9, v9

    and-long v9, v9, v18

    aget v13, v6, v26

    move-object/from16 v31, v3

    move-object/from16 v24, v4

    int-to-long v3, v13

    and-long v3, v3, v18

    sub-long/2addr v9, v3

    long-to-int v3, v9

    aput v3, v7, v26

    shr-long v3, v9, v20

    cmp-long v9, v3, v16

    if-eqz v9, :cond_b27

    const/4 v9, 0x1

    const/16 v13, 0x8

    invoke-static {v13, v9, v7}, Ls2/b;->q(II[I)I

    move-result v3

    int-to-long v3, v3

    goto :goto_b29

    :cond_b27
    const/16 v13, 0x8

    :goto_b29
    aget v9, v7, v13

    int-to-long v9, v9

    and-long v9, v9, v18

    const-wide/16 v28, 0x13

    add-long v9, v9, v28

    add-long/2addr v9, v3

    long-to-int v3, v9

    aput v3, v7, v13

    shr-long v3, v9, v20

    cmp-long v9, v3, v16

    if-eqz v9, :cond_b46

    move/from16 v10, v21

    move/from16 v9, v23

    invoke-static {v9, v10, v7}, Ls2/b;->H(II[I)I

    move-result v3

    int-to-long v3, v3

    goto :goto_b48

    :cond_b46
    move/from16 v9, v23

    :goto_b48
    aget v10, v7, v9

    move/from16 v23, v9

    int-to-long v9, v10

    and-long v9, v9, v18

    aget v6, v6, v23

    const/16 v27, 0x1

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v16, v3

    int-to-long v3, v6

    and-long v3, v3, v18

    sub-long/2addr v9, v3

    add-long v9, v9, v16

    long-to-int v3, v9

    aput v3, v7, v23

    goto :goto_b65

    :cond_b61
    move-object/from16 v31, v3

    move-object/from16 v24, v4

    :goto_b65
    invoke-static {v7, v15}, Ll2/c;->b([I[I)V

    new-instance v3, Ll2/d;

    invoke-direct {v3, v14}, Ll2/d;-><init>([I)V

    if-nez v8, :cond_b72

    invoke-static {v14, v2, v14}, Ll2/c;->a([I[I[I)V

    :cond_b72
    if-nez v11, :cond_b77

    invoke-static {v14, v1, v14}, Ll2/c;->a([I[I[I)V

    :cond_b77
    if-eqz v8, :cond_b7e

    if-eqz v11, :cond_b7e

    move-object/from16 v4, v24

    goto :goto_b7f

    :cond_b7e
    const/4 v4, 0x0

    :goto_b7f
    invoke-virtual {v0, v3, v4}, Lk2/o;->G(Ll2/d;[I)Ll2/d;

    move-result-object v0

    move/from16 v1, v22

    new-array v1, v1, [Lk2/b0;

    aput-object v3, v1, v26

    const/16 v27, 0x1

    aput-object v0, v1, v27

    new-instance v29, Lk2/o;

    const/16 v34, 0x1

    move-object/from16 v33, v1

    move-object/from16 v30, v5

    move-object/from16 v32, v12

    invoke-direct/range {v29 .. v34}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object/from16 v0, v29

    :goto_b9c
    return-object v0

    :pswitch_b9d
    move/from16 v26, v10

    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_ba8

    :goto_ba5
    move-object v0, v1

    goto/16 :goto_d93

    :cond_ba8
    invoke-virtual {v1}, Lk2/p;->l()Z

    move-result v2

    iget-object v4, v1, Lk2/p;->d:[Lk2/b0;

    if-eqz v2, :cond_bb2

    goto/16 :goto_d93

    :cond_bb2
    if-ne v0, v1, :cond_bba

    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    goto/16 :goto_d93

    :cond_bba
    iget-object v2, v0, Lk2/p;->a:Lk2/h;

    iget v5, v2, Lk2/h;->f:I

    iget-object v6, v1, Lk2/p;->b:Lk2/b0;

    iget-object v1, v1, Lk2/p;->c:Lk2/b0;

    if-eqz v5, :cond_d59

    const/4 v9, 0x1

    if-eq v5, v9, :cond_cd1

    const/4 v7, 0x2

    if-eq v5, v7, :cond_bd6

    const/4 v14, 0x4

    if-ne v5, v14, :cond_bce

    goto :goto_bd6

    :cond_bce
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bd6
    :goto_bd6
    aget-object v7, v12, v26

    aget-object v4, v4, v26

    invoke-virtual {v7}, Lk2/b0;->s()Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_c3b

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c3b

    invoke-virtual {v3, v6}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v4

    invoke-virtual {v15, v1}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v1

    invoke-virtual {v4}, Lk2/b0;->t()Z

    move-result v8

    if-eqz v8, :cond_c07

    invoke-virtual {v1}, Lk2/b0;->t()Z

    move-result v1

    if-eqz v1, :cond_c01

    :goto_bfb
    invoke-virtual {v0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    goto/16 :goto_d93

    :cond_c01
    invoke-virtual {v2}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto/16 :goto_d93

    :cond_c07
    invoke-virtual {v4}, Lk2/b0;->F()Lk2/b0;

    move-result-object v8

    invoke-virtual {v3, v8}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v3

    invoke-virtual {v6, v8}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v6

    invoke-virtual {v3, v6}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v8

    invoke-virtual {v8, v15}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v8

    invoke-virtual {v1}, Lk2/b0;->F()Lk2/b0;

    move-result-object v10

    invoke-virtual {v10, v3}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v10

    invoke-virtual {v10, v6}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v6

    invoke-virtual {v3, v6}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v3

    invoke-virtual {v3, v1}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v1

    invoke-virtual {v1, v8}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v1

    invoke-virtual {v4, v7}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v3

    move-object v4, v1

    :goto_c38
    const/4 v14, 0x4

    goto/16 :goto_cb2

    :cond_c3b
    if-eqz v8, :cond_c3e

    goto :goto_c4e

    :cond_c3e
    invoke-virtual {v7}, Lk2/b0;->F()Lk2/b0;

    move-result-object v10

    invoke-virtual {v10, v6}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v6

    invoke-virtual {v10, v7}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v10

    invoke-virtual {v10, v1}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v1

    :goto_c4e
    invoke-virtual {v4}, Lk2/b0;->s()Z

    move-result v10

    if-eqz v10, :cond_c55

    goto :goto_c65

    :cond_c55
    invoke-virtual {v4}, Lk2/b0;->F()Lk2/b0;

    move-result-object v11

    invoke-virtual {v11, v3}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v3

    invoke-virtual {v11, v4}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v11

    invoke-virtual {v11, v15}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v15

    :goto_c65
    invoke-virtual {v3, v6}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v6

    invoke-virtual {v15, v1}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v1

    invoke-virtual {v6}, Lk2/b0;->t()Z

    move-result v11

    if-eqz v11, :cond_c7a

    invoke-virtual {v1}, Lk2/b0;->t()Z

    move-result v1

    if-eqz v1, :cond_c01

    goto :goto_bfb

    :cond_c7a
    invoke-virtual {v6}, Lk2/b0;->F()Lk2/b0;

    move-result-object v11

    invoke-virtual {v11, v6}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v12

    invoke-virtual {v11, v3}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v3

    invoke-virtual {v1}, Lk2/b0;->F()Lk2/b0;

    move-result-object v13

    invoke-virtual {v13, v12}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v13

    invoke-virtual {v3, v3}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v14

    invoke-virtual {v13, v14}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v13

    invoke-virtual {v3, v13}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v3

    invoke-virtual {v3, v1, v12, v15}, Lk2/b0;->y(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;

    move-result-object v1

    if-nez v8, :cond_ca5

    invoke-virtual {v6, v7}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v3

    goto :goto_ca6

    :cond_ca5
    move-object v3, v6

    :goto_ca6
    if-nez v10, :cond_cac

    invoke-virtual {v3, v4}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v3

    :cond_cac
    move-object v4, v1

    if-ne v3, v6, :cond_cb0

    move-object v9, v11

    :cond_cb0
    move-object v6, v13

    goto :goto_c38

    :goto_cb2
    if-ne v5, v14, :cond_cc2

    invoke-virtual {v0, v3, v9}, Lk2/o;->F(Lk2/b0;Lk2/b0;)Lk2/b0;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lk2/b0;

    aput-object v3, v1, v26

    const/4 v9, 0x1

    aput-object v0, v1, v9

    :goto_cc0
    move-object v5, v1

    goto :goto_cc8

    :cond_cc2
    const/4 v9, 0x1

    new-array v1, v9, [Lk2/b0;

    aput-object v3, v1, v26

    goto :goto_cc0

    :goto_cc8
    new-instance v1, Lk2/o;

    move-object v3, v6

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    goto/16 :goto_ba5

    :cond_cd1
    aget-object v5, v12, v26

    aget-object v4, v4, v26

    invoke-virtual {v5}, Lk2/b0;->s()Z

    move-result v7

    invoke-virtual {v4}, Lk2/b0;->s()Z

    move-result v8

    if-eqz v7, :cond_ce0

    goto :goto_ce4

    :cond_ce0
    invoke-virtual {v1, v5}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v1

    :goto_ce4
    if-eqz v8, :cond_ce7

    goto :goto_ceb

    :cond_ce7
    invoke-virtual {v15, v4}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v15

    :goto_ceb
    invoke-virtual {v1, v15}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v1

    if-eqz v7, :cond_cf2

    goto :goto_cf6

    :cond_cf2
    invoke-virtual {v6, v5}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v6

    :goto_cf6
    if-eqz v8, :cond_cf9

    goto :goto_cfd

    :cond_cf9
    invoke-virtual {v3, v4}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v3

    :goto_cfd
    invoke-virtual {v6, v3}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v6

    invoke-virtual {v6}, Lk2/b0;->t()Z

    move-result v9

    if-eqz v9, :cond_d0f

    invoke-virtual {v1}, Lk2/b0;->t()Z

    move-result v1

    if-eqz v1, :cond_c01

    goto/16 :goto_bfb

    :cond_d0f
    if-eqz v7, :cond_d13

    move-object v5, v4

    goto :goto_d1a

    :cond_d13
    if-eqz v8, :cond_d16

    goto :goto_d1a

    :cond_d16
    invoke-virtual {v5, v4}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v5

    :goto_d1a
    invoke-virtual {v6}, Lk2/b0;->F()Lk2/b0;

    move-result-object v0

    invoke-virtual {v0, v6}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v4

    invoke-virtual {v0, v3}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v0

    invoke-virtual {v1}, Lk2/b0;->F()Lk2/b0;

    move-result-object v3

    invoke-virtual {v3, v5}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v3

    invoke-virtual {v3, v4}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v3

    invoke-virtual {v0, v0}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v7

    invoke-virtual {v3, v7}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v3

    invoke-virtual {v6, v3}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v6

    invoke-virtual {v0, v3}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v0

    invoke-virtual {v0, v1, v15, v4}, Lk2/b0;->y(Lk2/b0;Lk2/b0;Lk2/b0;)Lk2/b0;

    move-result-object v0

    invoke-virtual {v4, v5}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v1

    move-object v3, v1

    new-instance v1, Lk2/o;

    filled-new-array {v3}, [Lk2/b0;

    move-result-object v5

    move-object v3, v6

    const/4 v6, 0x0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    goto/16 :goto_ba5

    :cond_d59
    invoke-virtual {v6, v3}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v4

    invoke-virtual {v1, v15}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v1

    invoke-virtual {v4}, Lk2/b0;->t()Z

    move-result v5

    if-eqz v5, :cond_d6f

    invoke-virtual {v1}, Lk2/b0;->t()Z

    move-result v1

    if-eqz v1, :cond_c01

    goto/16 :goto_bfb

    :cond_d6f
    invoke-virtual {v1, v4}, Lk2/b0;->f(Lk2/b0;)Lk2/b0;

    move-result-object v0

    invoke-virtual {v0}, Lk2/b0;->F()Lk2/b0;

    move-result-object v1

    invoke-virtual {v1, v3}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v1

    invoke-virtual {v1, v6}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v1

    invoke-virtual {v3, v1}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v3

    invoke-virtual {v0, v3}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v0

    invoke-virtual {v0, v15}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v0

    new-instance v3, Lk2/o;

    move/from16 v4, v26

    invoke-direct {v3, v2, v1, v0, v4}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    move-object v0, v3

    :goto_d93
    return-object v0

    :pswitch_data_d94
    .packed-switch 0x0
        :pswitch_b9d
        :pswitch_a04
        :pswitch_8cc
        :pswitch_6fe
        :pswitch_5ee
        :pswitch_4bf
        :pswitch_3af
        :pswitch_281
        :pswitch_153
        :pswitch_14e
        :pswitch_149
        :pswitch_144
        :pswitch_13f
        :pswitch_13a
    .end packed-switch
.end method

.method public final c()Lk2/p;
    .registers 5

    iget v0, p0, Lk2/o;->g:I

    packed-switch v0, :pswitch_data_10c

    new-instance v0, Lk2/o;

    invoke-virtual {p0}, Lk2/p;->b()V

    invoke-virtual {p0}, Lk2/p;->e()Lk2/b0;

    move-result-object v1

    const/16 v2, 0xe

    const/4 v3, 0x0

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct {v0, v3, p0, v1, v2}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    return-object v0

    :pswitch_17
    new-instance v0, Lk2/o;

    invoke-virtual {p0}, Lk2/p;->b()V

    invoke-virtual {p0}, Lk2/p;->e()Lk2/b0;

    move-result-object v1

    const/16 v2, 0xd

    const/4 v3, 0x0

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct {v0, v3, p0, v1, v2}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    return-object v0

    :pswitch_29
    new-instance v0, Lk2/o;

    invoke-virtual {p0}, Lk2/p;->b()V

    invoke-virtual {p0}, Lk2/p;->e()Lk2/b0;

    move-result-object v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct {v0, v3, p0, v1, v2}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    return-object v0

    :pswitch_3b
    new-instance v0, Lk2/o;

    invoke-virtual {p0}, Lk2/p;->b()V

    invoke-virtual {p0}, Lk2/p;->e()Lk2/b0;

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x0

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct {v0, v3, p0, v1, v2}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    return-object v0

    :pswitch_4d
    new-instance v0, Lk2/o;

    invoke-virtual {p0}, Lk2/p;->b()V

    invoke-virtual {p0}, Lk2/p;->e()Lk2/b0;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct {v0, v3, p0, v1, v2}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    return-object v0

    :pswitch_5f
    new-instance v0, Lk2/o;

    invoke-virtual {p0}, Lk2/p;->b()V

    invoke-virtual {p0}, Lk2/p;->e()Lk2/b0;

    move-result-object v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct {v0, v3, p0, v1, v2}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    return-object v0

    :pswitch_71
    new-instance v0, Lk2/o;

    invoke-virtual {p0}, Lk2/p;->b()V

    invoke-virtual {p0}, Lk2/p;->e()Lk2/b0;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct {v0, v3, p0, v1, v2}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    return-object v0

    :pswitch_83
    new-instance v0, Lk2/o;

    invoke-virtual {p0}, Lk2/p;->b()V

    invoke-virtual {p0}, Lk2/p;->e()Lk2/b0;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct {v0, v3, p0, v1, v2}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    return-object v0

    :pswitch_94
    new-instance v0, Lk2/o;

    invoke-virtual {p0}, Lk2/p;->b()V

    invoke-virtual {p0}, Lk2/p;->e()Lk2/b0;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct {v0, v3, p0, v1, v2}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    return-object v0

    :pswitch_a5
    new-instance v0, Lk2/o;

    invoke-virtual {p0}, Lk2/p;->b()V

    invoke-virtual {p0}, Lk2/p;->e()Lk2/b0;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct {v0, v3, p0, v1, v2}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    return-object v0

    :pswitch_b6
    new-instance v0, Lk2/o;

    invoke-virtual {p0}, Lk2/p;->b()V

    invoke-virtual {p0}, Lk2/p;->e()Lk2/b0;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct {v0, v3, p0, v1, v2}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    return-object v0

    :pswitch_c7
    new-instance v0, Lk2/o;

    invoke-virtual {p0}, Lk2/p;->b()V

    invoke-virtual {p0}, Lk2/p;->e()Lk2/b0;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct {v0, v3, p0, v1, v2}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    return-object v0

    :pswitch_d8
    new-instance v0, Lk2/o;

    invoke-virtual {p0}, Lk2/p;->b()V

    invoke-virtual {p0}, Lk2/p;->e()Lk2/b0;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct {v0, v3, p0, v1, v2}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    return-object v0

    :pswitch_e9
    new-instance v0, Lk2/o;

    invoke-virtual {p0}, Lk2/p;->b()V

    invoke-virtual {p0}, Lk2/p;->e()Lk2/b0;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct {v0, v3, p0, v1, v2}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    return-object v0

    :pswitch_fa
    new-instance v0, Lk2/o;

    invoke-virtual {p0}, Lk2/p;->b()V

    invoke-virtual {p0}, Lk2/p;->e()Lk2/b0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct {v0, v3, p0, v1, v2}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    return-object v0

    nop

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_fa
        :pswitch_e9
        :pswitch_d8
        :pswitch_c7
        :pswitch_b6
        :pswitch_a5
        :pswitch_94
        :pswitch_83
        :pswitch_71
        :pswitch_5f
        :pswitch_4d
        :pswitch_3b
        :pswitch_29
        :pswitch_17
    .end packed-switch
.end method

.method public final f()Z
    .registers 1

    invoke-virtual {p0}, Lk2/p;->e()Lk2/b0;

    move-result-object p0

    invoke-virtual {p0}, Lk2/b0;->K()Z

    move-result p0

    return p0
.end method

.method public final o()Lk2/p;
    .registers 8

    iget v0, p0, Lk2/o;->g:I

    packed-switch v0, :pswitch_data_1b2

    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_20

    :cond_c
    new-instance v1, Lk2/o;

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->B()Lk2/b0;

    move-result-object v4

    iget-object v5, p0, Lk2/p;->d:[Lk2/b0;

    const/16 v6, 0xe

    iget-object v2, p0, Lk2/p;->a:Lk2/h;

    iget-object v3, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct/range {v1 .. v6}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object p0, v1

    :goto_20
    return-object p0

    :pswitch_21
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_3c

    :cond_28
    new-instance v1, Lk2/o;

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->B()Lk2/b0;

    move-result-object v4

    iget-object v5, p0, Lk2/p;->d:[Lk2/b0;

    const/16 v6, 0xd

    iget-object v2, p0, Lk2/p;->a:Lk2/h;

    iget-object v3, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct/range {v1 .. v6}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object p0, v1

    :goto_3c
    return-object p0

    :pswitch_3d
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_58

    :cond_44
    new-instance v1, Lk2/o;

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->B()Lk2/b0;

    move-result-object v4

    iget-object v5, p0, Lk2/p;->d:[Lk2/b0;

    const/16 v6, 0xc

    iget-object v2, p0, Lk2/p;->a:Lk2/h;

    iget-object v3, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct/range {v1 .. v6}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object p0, v1

    :goto_58
    return-object p0

    :pswitch_59
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_74

    :cond_60
    new-instance v1, Lk2/o;

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->B()Lk2/b0;

    move-result-object v4

    iget-object v5, p0, Lk2/p;->d:[Lk2/b0;

    const/16 v6, 0xb

    iget-object v2, p0, Lk2/p;->a:Lk2/h;

    iget-object v3, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct/range {v1 .. v6}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object p0, v1

    :goto_74
    return-object p0

    :pswitch_75
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_7c

    goto :goto_90

    :cond_7c
    new-instance v1, Lk2/o;

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->B()Lk2/b0;

    move-result-object v4

    iget-object v5, p0, Lk2/p;->d:[Lk2/b0;

    const/16 v6, 0xa

    iget-object v2, p0, Lk2/p;->a:Lk2/h;

    iget-object v3, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct/range {v1 .. v6}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object p0, v1

    :goto_90
    return-object p0

    :pswitch_91
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_98

    goto :goto_ac

    :cond_98
    new-instance v1, Lk2/o;

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->B()Lk2/b0;

    move-result-object v4

    iget-object v5, p0, Lk2/p;->d:[Lk2/b0;

    const/16 v6, 0x9

    iget-object v2, p0, Lk2/p;->a:Lk2/h;

    iget-object v3, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct/range {v1 .. v6}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object p0, v1

    :goto_ac
    return-object p0

    :pswitch_ad
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_b4

    goto :goto_c8

    :cond_b4
    new-instance v1, Lk2/o;

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->B()Lk2/b0;

    move-result-object v4

    iget-object v5, p0, Lk2/p;->d:[Lk2/b0;

    const/16 v6, 0x8

    iget-object v2, p0, Lk2/p;->a:Lk2/h;

    iget-object v3, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct/range {v1 .. v6}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object p0, v1

    :goto_c8
    return-object p0

    :pswitch_c9
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_d0

    goto :goto_e3

    :cond_d0
    new-instance v1, Lk2/o;

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->B()Lk2/b0;

    move-result-object v4

    iget-object v5, p0, Lk2/p;->d:[Lk2/b0;

    const/4 v6, 0x7

    iget-object v2, p0, Lk2/p;->a:Lk2/h;

    iget-object v3, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct/range {v1 .. v6}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object p0, v1

    :goto_e3
    return-object p0

    :pswitch_e4
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_eb

    goto :goto_fe

    :cond_eb
    new-instance v1, Lk2/o;

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->B()Lk2/b0;

    move-result-object v4

    iget-object v5, p0, Lk2/p;->d:[Lk2/b0;

    const/4 v6, 0x6

    iget-object v2, p0, Lk2/p;->a:Lk2/h;

    iget-object v3, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct/range {v1 .. v6}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object p0, v1

    :goto_fe
    return-object p0

    :pswitch_ff
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_106

    goto :goto_119

    :cond_106
    new-instance v1, Lk2/o;

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->B()Lk2/b0;

    move-result-object v4

    iget-object v5, p0, Lk2/p;->d:[Lk2/b0;

    const/4 v6, 0x5

    iget-object v2, p0, Lk2/p;->a:Lk2/h;

    iget-object v3, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct/range {v1 .. v6}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object p0, v1

    :goto_119
    return-object p0

    :pswitch_11a
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_121

    goto :goto_134

    :cond_121
    new-instance v1, Lk2/o;

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->B()Lk2/b0;

    move-result-object v4

    iget-object v5, p0, Lk2/p;->d:[Lk2/b0;

    const/4 v6, 0x4

    iget-object v2, p0, Lk2/p;->a:Lk2/h;

    iget-object v3, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct/range {v1 .. v6}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object p0, v1

    :goto_134
    return-object p0

    :pswitch_135
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_13c

    goto :goto_14f

    :cond_13c
    new-instance v1, Lk2/o;

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->B()Lk2/b0;

    move-result-object v4

    iget-object v5, p0, Lk2/p;->d:[Lk2/b0;

    const/4 v6, 0x3

    iget-object v2, p0, Lk2/p;->a:Lk2/h;

    iget-object v3, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct/range {v1 .. v6}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object p0, v1

    :goto_14f
    return-object p0

    :pswitch_150
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_157

    goto :goto_16a

    :cond_157
    new-instance v1, Lk2/o;

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->B()Lk2/b0;

    move-result-object v4

    iget-object v5, p0, Lk2/p;->d:[Lk2/b0;

    const/4 v6, 0x2

    iget-object v2, p0, Lk2/p;->a:Lk2/h;

    iget-object v3, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct/range {v1 .. v6}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object p0, v1

    :goto_16a
    return-object p0

    :pswitch_16b
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_172

    goto :goto_185

    :cond_172
    new-instance v1, Lk2/o;

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->B()Lk2/b0;

    move-result-object v4

    iget-object v5, p0, Lk2/p;->d:[Lk2/b0;

    const/4 v6, 0x1

    iget-object v2, p0, Lk2/p;->a:Lk2/h;

    iget-object v3, p0, Lk2/p;->b:Lk2/b0;

    invoke-direct/range {v1 .. v6}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object p0, v1

    :goto_185
    return-object p0

    :pswitch_186
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_18d

    goto :goto_1b1

    :cond_18d
    iget-object v2, p0, Lk2/p;->a:Lk2/h;

    iget v0, v2, Lk2/h;->f:I

    iget-object v1, p0, Lk2/p;->c:Lk2/b0;

    iget-object v3, p0, Lk2/p;->b:Lk2/b0;

    if-eqz v0, :cond_1a6

    move-object v0, v1

    new-instance v1, Lk2/o;

    invoke-virtual {v0}, Lk2/b0;->B()Lk2/b0;

    move-result-object v4

    iget-object v5, p0, Lk2/p;->d:[Lk2/b0;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object p0, v1

    goto :goto_1b1

    :cond_1a6
    move-object v0, v1

    new-instance p0, Lk2/o;

    invoke-virtual {v0}, Lk2/b0;->B()Lk2/b0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    :goto_1b1
    return-object p0

    :pswitch_data_1b2
    .packed-switch 0x0
        :pswitch_186
        :pswitch_16b
        :pswitch_150
        :pswitch_135
        :pswitch_11a
        :pswitch_ff
        :pswitch_e4
        :pswitch_c9
        :pswitch_ad
        :pswitch_91
        :pswitch_75
        :pswitch_59
        :pswitch_3d
        :pswitch_21
    .end packed-switch
.end method

.method public final r()Z
    .registers 8

    iget-object v0, p0, Lk2/p;->a:Lk2/h;

    iget-object v1, v0, Lk2/h;->b:Lk2/b0;

    iget-object v0, v0, Lk2/h;->c:Lk2/b0;

    iget-object v2, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v2}, Lk2/b0;->F()Lk2/b0;

    move-result-object v2

    invoke-virtual {p0}, Lk2/p;->g()I

    move-result v3

    if-eqz v3, :cond_63

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lk2/p;->d:[Lk2/b0;

    if-eq v3, v4, :cond_47

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2a

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2a

    const/4 v4, 0x4

    if-ne v3, v4, :cond_22

    goto :goto_2a

    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unsupported coordinate system"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    :goto_2a
    aget-object v3, v6, v5

    invoke-virtual {v3}, Lk2/b0;->s()Z

    move-result v4

    if-nez v4, :cond_63

    invoke-virtual {v3}, Lk2/b0;->F()Lk2/b0;

    move-result-object v3

    invoke-virtual {v3}, Lk2/b0;->F()Lk2/b0;

    move-result-object v4

    invoke-virtual {v3, v4}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v3

    invoke-virtual {v1, v4}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v1

    invoke-virtual {v0, v3}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v0

    goto :goto_63

    :cond_47
    aget-object v3, v6, v5

    invoke-virtual {v3}, Lk2/b0;->s()Z

    move-result v4

    if-nez v4, :cond_63

    invoke-virtual {v3}, Lk2/b0;->F()Lk2/b0;

    move-result-object v4

    invoke-virtual {v3, v4}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v5

    invoke-virtual {v2, v3}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v2

    invoke-virtual {v1, v4}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v1

    invoke-virtual {v0, v5}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v0

    :cond_63
    :goto_63
    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-virtual {p0}, Lk2/b0;->F()Lk2/b0;

    move-result-object v3

    invoke-virtual {v3, v1}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v1

    invoke-virtual {v1, p0}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    invoke-virtual {p0, v0}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final v(Lk2/p;)Lk2/p;
    .registers 3

    invoke-virtual {p1}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p1}, Lk2/p;->o()Lk2/p;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p0

    return-object p0
.end method

.method public final w()Lk2/p;
    .registers 8

    iget v0, p0, Lk2/o;->g:I

    packed-switch v0, :pswitch_data_202

    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_1c

    :cond_14
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p0

    :cond_1c
    :goto_1c
    return-object p0

    :pswitch_1d
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_34

    :cond_2c
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p0

    :cond_34
    :goto_34
    return-object p0

    :pswitch_35
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_4c

    :cond_44
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p0

    :cond_4c
    :goto_4c
    return-object p0

    :pswitch_4d
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_5c

    goto :goto_64

    :cond_5c
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p0

    :cond_64
    :goto_64
    return-object p0

    :pswitch_65
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-nez v0, :cond_7c

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_74

    goto :goto_7c

    :cond_74
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p0

    :cond_7c
    :goto_7c
    return-object p0

    :pswitch_7d
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-nez v0, :cond_94

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_8c

    goto :goto_94

    :cond_8c
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p0

    :cond_94
    :goto_94
    return-object p0

    :pswitch_95
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-nez v0, :cond_ac

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_a4

    goto :goto_ac

    :cond_a4
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p0

    :cond_ac
    :goto_ac
    return-object p0

    :pswitch_ad
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-nez v0, :cond_c4

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_bc

    goto :goto_c4

    :cond_bc
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p0

    :cond_c4
    :goto_c4
    return-object p0

    :pswitch_c5
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-nez v0, :cond_dc

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_d4

    goto :goto_dc

    :cond_d4
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p0

    :cond_dc
    :goto_dc
    return-object p0

    :pswitch_dd
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-nez v0, :cond_f4

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_ec

    goto :goto_f4

    :cond_ec
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p0

    :cond_f4
    :goto_f4
    return-object p0

    :pswitch_f5
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-nez v0, :cond_10c

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_104

    goto :goto_10c

    :cond_104
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p0

    :cond_10c
    :goto_10c
    return-object p0

    :pswitch_10d
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-nez v0, :cond_124

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_11c

    goto :goto_124

    :cond_11c
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p0

    :cond_124
    :goto_124
    return-object p0

    :pswitch_125
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-nez v0, :cond_13c

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_134

    goto :goto_13c

    :cond_134
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p0

    :cond_13c
    :goto_13c
    return-object p0

    :pswitch_13d
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_144

    goto :goto_156

    :cond_144
    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_14d

    goto :goto_156

    :cond_14d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lk2/o;->J(Z)Lk2/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk2/o;->a(Lk2/p;)Lk2/p;

    move-result-object p0

    :goto_156
    return-object p0

    :pswitch_157
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_15f

    goto/16 :goto_201

    :cond_15f
    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v1

    if-eqz v1, :cond_169

    goto/16 :goto_201

    :cond_169
    iget-object v1, p0, Lk2/p;->a:Lk2/h;

    iget v2, v1, Lk2/h;->f:I

    if-eqz v2, :cond_187

    const/4 v0, 0x4

    if-eq v2, v0, :cond_17c

    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p0

    goto/16 :goto_201

    :cond_17c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lk2/o;->I(Z)Lk2/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk2/o;->a(Lk2/p;)Lk2/p;

    move-result-object p0

    goto/16 :goto_201

    :cond_187
    invoke-virtual {v0, v0}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v2

    invoke-virtual {v2}, Lk2/b0;->F()Lk2/b0;

    move-result-object v3

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-virtual {p0}, Lk2/b0;->F()Lk2/b0;

    move-result-object v4

    invoke-virtual {v4, v4}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v5

    invoke-virtual {v5, v4}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v4

    iget-object v5, v1, Lk2/h;->b:Lk2/b0;

    invoke-virtual {v4, v5}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v4

    invoke-virtual {v4}, Lk2/b0;->F()Lk2/b0;

    move-result-object v5

    invoke-virtual {p0, p0}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v6

    invoke-virtual {v6, p0}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v6

    invoke-virtual {v6, v3}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v6

    invoke-virtual {v6, v5}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v5

    invoke-virtual {v5}, Lk2/b0;->t()Z

    move-result v6

    if-eqz v6, :cond_1c2

    invoke-virtual {v1}, Lk2/h;->m()Lk2/p;

    move-result-object p0

    goto :goto_201

    :cond_1c2
    invoke-virtual {v5, v2}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v2

    invoke-virtual {v2}, Lk2/b0;->q()Lk2/b0;

    move-result-object v2

    invoke-virtual {v5, v2}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v5

    invoke-virtual {v5, v4}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v4

    invoke-virtual {v3}, Lk2/b0;->F()Lk2/b0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v2

    invoke-virtual {v2, v4}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v2

    invoke-virtual {v2, v4}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v3

    invoke-virtual {v4, v2}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v4

    invoke-virtual {v3, v4}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v3

    invoke-virtual {v3, p0}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v3

    invoke-virtual {p0, v3}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object p0

    invoke-virtual {p0, v2}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    invoke-virtual {p0, v0}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object p0

    new-instance v0, Lk2/o;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, p0, v2}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    move-object p0, v0

    :goto_201
    return-object p0

    :pswitch_data_202
    .packed-switch 0x0
        :pswitch_157
        :pswitch_13d
        :pswitch_125
        :pswitch_10d
        :pswitch_f5
        :pswitch_dd
        :pswitch_c5
        :pswitch_ad
        :pswitch_95
        :pswitch_7d
        :pswitch_65
        :pswitch_4d
        :pswitch_35
        :pswitch_1d
    .end packed-switch
.end method

.method public x(I)Lk2/p;
    .registers 16

    iget v0, p0, Lk2/o;->g:I

    packed-switch v0, :pswitch_data_146

    invoke-super {p0, p1}, Lk2/p;->x(I)Lk2/p;

    move-result-object p0

    return-object p0

    :pswitch_a
    if-ltz p1, :cond_13d

    if-eqz p1, :cond_13c

    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_13c

    :cond_16
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1f

    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p0

    goto/16 :goto_13c

    :cond_1f
    iget-object v1, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v1}, Lk2/b0;->t()Z

    move-result v2

    iget-object v4, p0, Lk2/p;->a:Lk2/h;

    if-eqz v2, :cond_2f

    :goto_29
    invoke-virtual {v4}, Lk2/h;->m()Lk2/p;

    move-result-object p0

    goto/16 :goto_13c

    :cond_2f
    iget v2, v4, Lk2/h;->f:I

    iget-object v3, v4, Lk2/h;->b:Lk2/b0;

    iget-object v5, p0, Lk2/p;->d:[Lk2/b0;

    array-length v6, v5

    const/4 v7, 0x0

    if-ge v6, v0, :cond_40

    sget-object v5, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object v5

    goto :goto_42

    :cond_40
    aget-object v5, v5, v7

    :goto_42
    invoke-virtual {v5}, Lk2/b0;->s()Z

    move-result v6

    const-string v8, "unsupported coordinate system"

    const/4 v9, 0x4

    const/4 v10, 0x2

    iget-object v11, p0, Lk2/p;->b:Lk2/b0;

    if-nez v6, :cond_74

    if-eqz v2, :cond_74

    if-eq v2, v0, :cond_67

    if-eq v2, v10, :cond_61

    if-ne v2, v9, :cond_5b

    invoke-virtual {p0}, Lk2/o;->H()Lk2/b0;

    move-result-object v3

    goto :goto_74

    :cond_5b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_61
    const/4 v3, 0x0

    :goto_62
    invoke-virtual {p0, v5, v3}, Lk2/o;->F(Lk2/b0;Lk2/b0;)Lk2/b0;

    move-result-object v3

    goto :goto_74

    :cond_67
    invoke-virtual {v5}, Lk2/b0;->F()Lk2/b0;

    move-result-object v3

    invoke-virtual {v11, v5}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v11

    invoke-virtual {v1, v3}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v1

    goto :goto_62

    :cond_74
    :goto_74
    move-object v6, v1

    :goto_75
    if-ge v7, p1, :cond_dd

    invoke-virtual {v6}, Lk2/b0;->t()Z

    move-result p0

    if-eqz p0, :cond_7e

    goto :goto_29

    :cond_7e
    invoke-virtual {v11}, Lk2/b0;->F()Lk2/b0;

    move-result-object p0

    invoke-virtual {p0, p0}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v1

    invoke-virtual {v1, p0}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object p0

    invoke-virtual {v6, v6}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v1

    invoke-virtual {v1, v6}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v6

    invoke-virtual {v11, v6}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v11

    invoke-virtual {v11, v11}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v11

    invoke-virtual {v6}, Lk2/b0;->F()Lk2/b0;

    move-result-object v6

    invoke-virtual {v6, v6}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v6

    invoke-virtual {v3}, Lk2/b0;->t()Z

    move-result v12

    if-nez v12, :cond_b4

    invoke-virtual {p0, v3}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object p0

    invoke-virtual {v6, v3}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v3

    invoke-virtual {v3, v3}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v3

    :cond_b4
    invoke-virtual {p0}, Lk2/b0;->F()Lk2/b0;

    move-result-object v12

    invoke-virtual {v11, v11}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v13

    invoke-virtual {v12, v13}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v12

    invoke-virtual {v11, v12}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v11

    invoke-virtual {p0, v11}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    invoke-virtual {p0, v6}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v6

    invoke-virtual {v5}, Lk2/b0;->s()Z

    move-result p0

    if-eqz p0, :cond_d4

    move-object v5, v1

    goto :goto_d9

    :cond_d4
    invoke-virtual {v1, v5}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    move-object v5, p0

    :goto_d9
    add-int/lit8 v7, v7, 0x1

    move-object v11, v12

    goto :goto_75

    :cond_dd
    if-eqz v2, :cond_11f

    if-eq v2, v0, :cond_106

    if-eq v2, v10, :cond_f8

    if-ne v2, v9, :cond_f2

    new-instance p0, Lk2/o;

    filled-new-array {v5, v3}, [Lk2/b0;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, v11

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    goto :goto_13c

    :cond_f2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f8
    move-object p0, v5

    move-object v5, v11

    new-instance v3, Lk2/o;

    filled-new-array {p0}, [Lk2/b0;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    :goto_104
    move-object p0, v3

    goto :goto_13c

    :cond_106
    move-object p0, v5

    move-object v5, v11

    invoke-virtual {v5, p0}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v5

    invoke-virtual {p0}, Lk2/b0;->F()Lk2/b0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    new-instance v3, Lk2/o;

    filled-new-array {p0}, [Lk2/b0;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    goto :goto_104

    :cond_11f
    move-object p0, v5

    move-object v5, v11

    invoke-virtual {p0}, Lk2/b0;->q()Lk2/b0;

    move-result-object p0

    invoke-virtual {p0}, Lk2/b0;->F()Lk2/b0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    new-instance v0, Lk2/o;

    invoke-virtual {v5, p1}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p1

    invoke-virtual {v6, p0}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v4, p1, p0, v1}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    move-object p0, v0

    :cond_13c
    :goto_13c
    return-object p0

    :cond_13d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'e\' cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method

.method public final y()Lk2/p;
    .registers 24

    move-object/from16 v0, p0

    iget v1, v0, Lk2/o;->g:I

    const/4 v2, 0x6

    const/16 v3, 0x8

    const/16 v4, 0x10

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v8, -0x1

    iget-object v9, v0, Lk2/p;->d:[Lk2/b0;

    iget-object v10, v0, Lk2/p;->b:Lk2/b0;

    iget-object v11, v0, Lk2/p;->c:Lk2/b0;

    const/4 v12, 0x1

    const/4 v13, 0x0

    packed-switch v1, :pswitch_data_b32

    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto/16 :goto_d4

    :cond_1f
    check-cast v11, Ln2/x;

    invoke-virtual {v11}, Ln2/x;->t()Z

    move-result v1

    iget-object v2, v11, Ln2/x;->l:[I

    iget-object v15, v0, Lk2/p;->a:Lk2/h;

    if-eqz v1, :cond_31

    invoke-virtual {v15}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto/16 :goto_d4

    :cond_31
    check-cast v10, Ln2/x;

    aget-object v0, v9, v13

    check-cast v0, Ln2/x;

    const/16 v1, 0x21

    new-array v1, v1, [I

    const/16 v3, 0x11

    new-array v5, v3, [I

    new-array v6, v3, [I

    new-array v7, v3, [I

    invoke-static {v2, v1}, Ln2/b;->S([I[I)V

    invoke-static {v1, v7}, Ln2/b;->A0([I[I)V

    new-array v8, v3, [I

    invoke-static {v7, v1}, Ln2/b;->S([I[I)V

    invoke-static {v1, v8}, Ln2/b;->A0([I[I)V

    invoke-virtual {v0}, Ln2/x;->s()Z

    move-result v9

    iget-object v0, v0, Ln2/x;->l:[I

    if-nez v9, :cond_61

    invoke-static {v0, v1}, Ln2/b;->S([I[I)V

    invoke-static {v1, v6}, Ln2/b;->A0([I[I)V

    move-object v11, v6

    goto :goto_62

    :cond_61
    move-object v11, v0

    :goto_62
    iget-object v10, v10, Ln2/x;->l:[I

    invoke-static {v10, v11, v5}, Ln2/b;->G1([I[I[I)V

    invoke-static {v10, v11, v6}, Ln2/b;->d([I[I[I)V

    invoke-static {v6, v5, v1}, Ln2/b;->y([I[I[I)V

    invoke-static {v1, v6}, Ln2/b;->A0([I[I)V

    invoke-static {v3, v6, v6, v6}, Ls2/b;->c(I[I[I[I)I

    invoke-static {v6}, Ln2/b;->Q0([I)V

    invoke-static {v7, v10, v1}, Ln2/b;->y([I[I[I)V

    invoke-static {v1, v7}, Ln2/b;->A0([I[I)V

    invoke-static {v3, v7}, Ls2/b;->P(I[I)I

    invoke-static {v7}, Ln2/b;->Q0([I)V

    invoke-static {v3, v8, v5}, Ls2/b;->Q(I[I[I)I

    invoke-static {v5}, Ln2/b;->Q0([I)V

    new-instance v3, Ln2/x;

    invoke-direct {v3, v8}, Ln2/x;-><init>([I)V

    invoke-static {v6, v1}, Ln2/b;->S([I[I)V

    invoke-static {v1, v8}, Ln2/b;->A0([I[I)V

    invoke-static {v8, v7, v8}, Ln2/b;->G1([I[I[I)V

    invoke-static {v8, v7, v8}, Ln2/b;->G1([I[I[I)V

    new-instance v10, Ln2/x;

    invoke-direct {v10, v7}, Ln2/x;-><init>([I)V

    invoke-static {v7, v8, v7}, Ln2/b;->G1([I[I[I)V

    invoke-static {v7, v6, v1}, Ln2/b;->y([I[I[I)V

    invoke-static {v1, v7}, Ln2/b;->A0([I[I)V

    invoke-static {v7, v5, v7}, Ln2/b;->G1([I[I[I)V

    new-instance v5, Ln2/x;

    invoke-direct {v5, v6}, Ln2/x;-><init>([I)V

    aget v7, v2, v4

    shl-int/lit8 v8, v7, 0x17

    invoke-static {v4, v8, v2, v6}, Ls2/b;->O(II[I[I)I

    move-result v2

    shl-int/2addr v7, v12

    or-int/2addr v2, v7

    and-int/lit16 v2, v2, 0x1ff

    aput v2, v6, v4

    if-nez v9, :cond_c2

    invoke-static {v6, v0, v6, v1}, Ln2/b;->i0([I[I[I[I)V

    :cond_c2
    new-instance v14, Lk2/o;

    new-array v0, v12, [Lk2/b0;

    aput-object v5, v0, v13

    const/16 v19, 0xe

    move-object/from16 v18, v0

    move-object/from16 v16, v3

    move-object/from16 v17, v10

    invoke-direct/range {v14 .. v19}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object v0, v14

    :goto_d4
    return-object v0

    :pswitch_d5
    sget-object v1, Ln2/b;->A:[I

    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_df

    goto/16 :goto_1ab

    :cond_df
    check-cast v11, Ln2/v;

    invoke-virtual {v11}, Ln2/v;->t()Z

    move-result v2

    iget-object v3, v11, Ln2/v;->l:[I

    iget-object v15, v0, Lk2/p;->a:Lk2/h;

    if-eqz v2, :cond_f1

    invoke-virtual {v15}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto/16 :goto_1ab

    :cond_f1
    check-cast v10, Ln2/v;

    aget-object v0, v9, v13

    check-cast v0, Ln2/v;

    const/16 v2, 0x18

    new-array v2, v2, [I

    const/16 v4, 0xc

    new-array v5, v4, [I

    new-array v6, v4, [I

    new-array v7, v4, [I

    invoke-static {v3, v2}, Lq4/k;->M0([I[I)V

    invoke-static {v2, v7}, Ln2/b;->P0([I[I)V

    new-array v9, v4, [I

    invoke-static {v7, v2}, Lq4/k;->M0([I[I)V

    invoke-static {v2, v9}, Ln2/b;->P0([I[I)V

    invoke-virtual {v0}, Ln2/v;->s()Z

    move-result v11

    iget-object v0, v0, Ln2/v;->l:[I

    if-nez v11, :cond_121

    invoke-static {v0, v2}, Lq4/k;->M0([I[I)V

    invoke-static {v2, v6}, Ln2/b;->P0([I[I)V

    move-object v14, v6

    goto :goto_122

    :cond_121
    move-object v14, v0

    :goto_122
    iget-object v10, v10, Ln2/v;->l:[I

    invoke-static {v10, v14, v5}, Ln2/b;->O1([I[I[I)V

    invoke-static {v4, v10, v14, v6}, Ls2/b;->a(I[I[I[I)I

    move-result v14

    const/16 v16, 0xb

    if-nez v14, :cond_139

    aget v14, v6, v16

    if-ne v14, v8, :cond_13c

    invoke-static {v4, v6, v1}, Ls2/b;->D(I[I[I)Z

    move-result v14

    if-eqz v14, :cond_13c

    :cond_139
    invoke-static {v6}, Ln2/b;->s([I)V

    :cond_13c
    invoke-static {v6, v5, v2}, Lq4/k;->z0([I[I[I)V

    invoke-static {v2, v6}, Ln2/b;->P0([I[I)V

    invoke-static {v4, v6, v6, v6}, Ls2/b;->c(I[I[I[I)I

    move-result v14

    invoke-static {v14, v6}, Ln2/b;->a1(I[I)V

    invoke-static {v7, v10, v7, v2}, Ln2/b;->f0([I[I[I[I)V

    invoke-static {v4, v7}, Ls2/b;->P(I[I)I

    move-result v10

    invoke-static {v10, v7}, Ln2/b;->a1(I[I)V

    invoke-static {v4, v9, v5}, Ls2/b;->Q(I[I[I)I

    move-result v10

    invoke-static {v10, v5}, Ln2/b;->a1(I[I)V

    new-instance v10, Ln2/v;

    invoke-direct {v10, v9}, Ln2/v;-><init>([I)V

    invoke-static {v6, v2}, Lq4/k;->M0([I[I)V

    invoke-static {v2, v9}, Ln2/b;->P0([I[I)V

    invoke-static {v9, v7, v9}, Ln2/b;->O1([I[I[I)V

    invoke-static {v9, v7, v9}, Ln2/b;->O1([I[I[I)V

    new-instance v14, Ln2/v;

    invoke-direct {v14, v7}, Ln2/v;-><init>([I)V

    invoke-static {v7, v9, v7}, Ln2/b;->O1([I[I[I)V

    invoke-static {v7, v6, v2}, Lq4/k;->z0([I[I[I)V

    invoke-static {v2, v7}, Ln2/b;->P0([I[I)V

    invoke-static {v7, v5, v7}, Ln2/b;->O1([I[I[I)V

    new-instance v5, Ln2/v;

    invoke-direct {v5, v6}, Ln2/v;-><init>([I)V

    invoke-static {v4, v13, v3, v6}, Ls2/b;->O(II[I[I)I

    move-result v3

    if-nez v3, :cond_191

    aget v3, v6, v16

    if-ne v3, v8, :cond_194

    invoke-static {v4, v6, v1}, Ls2/b;->D(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_194

    :cond_191
    invoke-static {v6}, Ln2/b;->s([I)V

    :cond_194
    if-nez v11, :cond_199

    invoke-static {v6, v0, v6, v2}, Ln2/b;->f0([I[I[I[I)V

    :cond_199
    move-object/from16 v17, v14

    new-instance v14, Lk2/o;

    new-array v0, v12, [Lk2/b0;

    aput-object v5, v0, v13

    const/16 v19, 0xd

    move-object/from16 v18, v0

    move-object/from16 v16, v10

    invoke-direct/range {v14 .. v19}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object v0, v14

    :goto_1ab
    return-object v0

    :pswitch_1ac
    sget-object v1, Ln2/b;->y:[I

    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_1b6

    goto/16 :goto_282

    :cond_1b6
    check-cast v11, Ln2/t;

    iget-object v2, v11, Ln2/t;->l:[I

    invoke-static {v2}, Lq4/k;->t0([I)Z

    move-result v5

    iget-object v15, v0, Lk2/p;->a:Lk2/h;

    if-eqz v5, :cond_1c8

    invoke-virtual {v15}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto/16 :goto_282

    :cond_1c8
    check-cast v10, Ln2/t;

    aget-object v0, v9, v13

    check-cast v0, Ln2/t;

    new-array v4, v4, [I

    new-array v5, v3, [I

    new-array v6, v3, [I

    new-array v9, v3, [I

    invoke-static {v2, v4}, Lq4/k;->L0([I[I)V

    invoke-static {v4, v9}, Ln2/b;->N0([I[I)V

    new-array v11, v3, [I

    invoke-static {v9, v4}, Lq4/k;->L0([I[I)V

    invoke-static {v4, v11}, Ln2/b;->N0([I[I)V

    iget-object v0, v0, Ln2/t;->l:[I

    invoke-static {v0}, Lq4/k;->p0([I)Z

    move-result v14

    if-nez v14, :cond_1f6

    invoke-static {v0, v4}, Lq4/k;->L0([I[I)V

    invoke-static {v4, v6}, Ln2/b;->N0([I[I)V

    move-object v7, v6

    :goto_1f3
    const/16 v16, 0x7

    goto :goto_1f8

    :cond_1f6
    move-object v7, v0

    goto :goto_1f3

    :goto_1f8
    iget-object v10, v10, Ln2/t;->l:[I

    invoke-static {v10, v7, v5}, Ln2/b;->N1([I[I[I)V

    invoke-static {v10, v7, v6}, Lq4/k;->d([I[I[I)I

    move-result v7

    if-nez v7, :cond_20d

    aget v7, v6, v16

    if-ne v7, v8, :cond_210

    invoke-static {v6, v1}, Lq4/k;->m0([I[I)Z

    move-result v7

    if-eqz v7, :cond_210

    :cond_20d
    invoke-static {v6}, Ln2/b;->r([I)V

    :cond_210
    invoke-static {v6, v5, v4}, Lq4/k;->y0([I[I[I)V

    invoke-static {v4, v6}, Ln2/b;->N0([I[I)V

    invoke-static {v6, v6, v6}, Lq4/k;->g([I[I[I)I

    move-result v7

    invoke-static {v7, v6}, Ln2/b;->Z0(I[I)V

    invoke-static {v9, v10, v4}, Lq4/k;->y0([I[I[I)V

    invoke-static {v4, v9}, Ln2/b;->N0([I[I)V

    invoke-static {v3, v9}, Ls2/b;->P(I[I)I

    move-result v7

    invoke-static {v7, v9}, Ln2/b;->Z0(I[I)V

    invoke-static {v3, v11, v5}, Ls2/b;->Q(I[I[I)I

    move-result v7

    invoke-static {v7, v5}, Ln2/b;->Z0(I[I)V

    new-instance v7, Ln2/t;

    invoke-direct {v7, v11}, Ln2/t;-><init>([I)V

    invoke-static {v6, v4}, Lq4/k;->L0([I[I)V

    invoke-static {v4, v11}, Ln2/b;->N0([I[I)V

    invoke-static {v11, v9, v11}, Ln2/b;->N1([I[I[I)V

    invoke-static {v11, v9, v11}, Ln2/b;->N1([I[I[I)V

    new-instance v10, Ln2/t;

    invoke-direct {v10, v9}, Ln2/t;-><init>([I)V

    invoke-static {v9, v11, v9}, Ln2/b;->N1([I[I[I)V

    invoke-static {v9, v6, v4}, Lq4/k;->y0([I[I[I)V

    invoke-static {v4, v9}, Ln2/b;->N0([I[I)V

    invoke-static {v9, v5, v9}, Ln2/b;->N1([I[I[I)V

    new-instance v5, Ln2/t;

    invoke-direct {v5, v6}, Ln2/t;-><init>([I)V

    invoke-static {v3, v13, v2, v6}, Ls2/b;->O(II[I[I)I

    move-result v2

    if-nez v2, :cond_268

    aget v2, v6, v16

    if-ne v2, v8, :cond_26b

    invoke-static {v6, v1}, Lq4/k;->m0([I[I)Z

    move-result v1

    if-eqz v1, :cond_26b

    :cond_268
    invoke-static {v6}, Ln2/b;->r([I)V

    :cond_26b
    if-nez v14, :cond_270

    invoke-static {v6, v0, v6, v4}, Ln2/b;->c0([I[I[I[I)V

    :cond_270
    new-instance v14, Lk2/o;

    new-array v0, v12, [Lk2/b0;

    aput-object v5, v0, v13

    const/16 v19, 0xc

    move-object/from16 v18, v0

    move-object/from16 v16, v7

    move-object/from16 v17, v10

    invoke-direct/range {v14 .. v19}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object v0, v14

    :goto_282
    return-object v0

    :pswitch_283
    const/16 v16, 0x7

    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v1

    if-eqz v1, :cond_28d

    goto/16 :goto_33d

    :cond_28d
    check-cast v11, Ln2/r;

    iget-object v1, v11, Ln2/r;->l:[I

    invoke-static {v1}, Lq4/k;->t0([I)Z

    move-result v2

    iget-object v0, v0, Lk2/p;->a:Lk2/h;

    if-eqz v2, :cond_29f

    invoke-virtual {v0}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto/16 :goto_33d

    :cond_29f
    check-cast v10, Ln2/r;

    aget-object v2, v9, v13

    check-cast v2, Ln2/r;

    new-array v4, v4, [I

    new-array v5, v3, [I

    invoke-static {v1, v4}, Lq4/k;->L0([I[I)V

    invoke-static {v4, v5}, Ln2/b;->L0([I[I)V

    new-array v6, v3, [I

    invoke-static {v5, v4}, Lq4/k;->L0([I[I)V

    invoke-static {v4, v6}, Ln2/b;->L0([I[I)V

    new-array v7, v3, [I

    iget-object v9, v10, Ln2/r;->l:[I

    invoke-static {v9, v4}, Lq4/k;->L0([I[I)V

    invoke-static {v4, v7}, Ln2/b;->L0([I[I)V

    invoke-static {v7, v7, v7}, Lq4/k;->g([I[I[I)I

    move-result v9

    invoke-static {v9, v7}, Ln2/b;->Y0(I[I)V

    iget-object v9, v10, Ln2/r;->l:[I

    invoke-static {v5, v9, v5, v4}, Ln2/b;->Z([I[I[I[I)V

    invoke-static {v3, v5}, Ls2/b;->P(I[I)I

    move-result v9

    invoke-static {v9, v5}, Ln2/b;->Y0(I[I)V

    new-array v9, v3, [I

    invoke-static {v3, v6, v9}, Ls2/b;->Q(I[I[I)I

    move-result v10

    invoke-static {v10, v9}, Ln2/b;->Y0(I[I)V

    new-instance v10, Ln2/r;

    invoke-direct {v10, v6}, Ln2/r;-><init>([I)V

    invoke-static {v7, v4}, Lq4/k;->L0([I[I)V

    invoke-static {v4, v6}, Ln2/b;->L0([I[I)V

    invoke-static {v6, v5, v6}, Ln2/b;->M1([I[I[I)V

    invoke-static {v6, v5, v6}, Ln2/b;->M1([I[I[I)V

    new-instance v11, Ln2/r;

    invoke-direct {v11, v5}, Ln2/r;-><init>([I)V

    invoke-static {v5, v6, v5}, Ln2/b;->M1([I[I[I)V

    invoke-static {v5, v7, v4}, Lq4/k;->y0([I[I[I)V

    invoke-static {v4, v5}, Ln2/b;->L0([I[I)V

    invoke-static {v5, v9, v5}, Ln2/b;->M1([I[I[I)V

    new-instance v5, Ln2/r;

    invoke-direct {v5, v7}, Ln2/r;-><init>([I)V

    invoke-static {v3, v13, v1, v7}, Ls2/b;->O(II[I[I)I

    move-result v1

    if-nez v1, :cond_316

    aget v1, v7, v16

    if-ne v1, v8, :cond_31b

    sget-object v1, Ln2/b;->v:[I

    invoke-static {v7, v1}, Lq4/k;->m0([I[I)Z

    move-result v1

    if-eqz v1, :cond_31b

    :cond_316
    const/16 v1, 0x3d1

    invoke-static {v3, v1, v7}, Ls2/b;->b(II[I)V

    :cond_31b
    iget-object v1, v2, Ln2/r;->l:[I

    invoke-static {v1}, Lq4/k;->p0([I)Z

    move-result v1

    if-nez v1, :cond_328

    iget-object v1, v2, Ln2/r;->l:[I

    invoke-static {v7, v1, v7, v4}, Ln2/b;->Z([I[I[I[I)V

    :cond_328
    new-instance v17, Lk2/o;

    new-array v1, v12, [Lk2/b0;

    aput-object v5, v1, v13

    const/16 v22, 0xb

    move-object/from16 v18, v0

    move-object/from16 v21, v1

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    invoke-direct/range {v17 .. v22}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object/from16 v0, v17

    :goto_33d
    return-object v0

    :pswitch_33e
    const/16 v16, 0x7

    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v1

    if-eqz v1, :cond_348

    goto/16 :goto_3da

    :cond_348
    check-cast v11, Ln2/p;

    iget-object v1, v11, Ln2/p;->l:[I

    invoke-static {v1}, Lt4/d;->m0([I)Z

    move-result v2

    iget-object v4, v0, Lk2/p;->a:Lk2/h;

    if-eqz v2, :cond_35a

    invoke-virtual {v4}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto/16 :goto_3da

    :cond_35a
    check-cast v10, Ln2/p;

    aget-object v0, v9, v13

    check-cast v0, Ln2/p;

    move/from16 v2, v16

    new-array v3, v2, [I

    new-array v5, v2, [I

    new-array v6, v2, [I

    invoke-static {v1, v6}, Ln2/b;->l1([I[I)V

    new-array v7, v2, [I

    invoke-static {v6, v7}, Ln2/b;->l1([I[I)V

    iget-object v0, v0, Ln2/p;->l:[I

    invoke-static {v0}, Lt4/d;->k0([I)Z

    move-result v2

    if-nez v2, :cond_37d

    invoke-static {v0, v5}, Ln2/b;->l1([I[I)V

    move-object v8, v5

    goto :goto_37e

    :cond_37d
    move-object v8, v0

    :goto_37e
    iget-object v9, v10, Ln2/p;->l:[I

    invoke-static {v9, v8, v3}, Ln2/b;->L1([I[I[I)V

    invoke-static {v9, v8, v5}, Ln2/b;->c([I[I[I)V

    invoke-static {v5, v3, v5}, Ln2/b;->o0([I[I[I)V

    invoke-static {v5, v5, v5}, Lt4/d;->l([I[I[I)I

    move-result v8

    invoke-static {v8, v5}, Ln2/b;->X0(I[I)V

    invoke-static {v6, v9, v6}, Ln2/b;->o0([I[I[I)V

    const/4 v8, 0x7

    invoke-static {v8, v6}, Ls2/b;->P(I[I)I

    move-result v9

    invoke-static {v9, v6}, Ln2/b;->X0(I[I)V

    invoke-static {v8, v7, v3}, Ls2/b;->Q(I[I[I)I

    move-result v8

    invoke-static {v8, v3}, Ln2/b;->X0(I[I)V

    new-instance v8, Ln2/p;

    invoke-direct {v8, v7}, Ln2/p;-><init>([I)V

    invoke-static {v5, v7}, Ln2/b;->l1([I[I)V

    invoke-static {v7, v6, v7}, Ln2/b;->L1([I[I[I)V

    invoke-static {v7, v6, v7}, Ln2/b;->L1([I[I[I)V

    new-instance v9, Ln2/p;

    invoke-direct {v9, v6}, Ln2/p;-><init>([I)V

    invoke-static {v6, v7, v6}, Ln2/b;->L1([I[I[I)V

    invoke-static {v6, v5, v6}, Ln2/b;->o0([I[I[I)V

    invoke-static {v6, v3, v6}, Ln2/b;->L1([I[I[I)V

    new-instance v3, Ln2/p;

    invoke-direct {v3, v5}, Ln2/p;-><init>([I)V

    invoke-static {v1, v5}, Ln2/b;->Q1([I[I)V

    if-nez v2, :cond_3cb

    invoke-static {v5, v0, v5}, Ln2/b;->o0([I[I[I)V

    :cond_3cb
    move-object v0, v3

    new-instance v3, Lk2/o;

    new-array v7, v12, [Lk2/b0;

    aput-object v0, v7, v13

    move-object v5, v8

    const/16 v8, 0xa

    move-object v6, v9

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object v0, v3

    :goto_3da
    return-object v0

    :pswitch_3db
    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v1

    if-eqz v1, :cond_3e3

    goto/16 :goto_485

    :cond_3e3
    check-cast v11, Ln2/n;

    iget-object v1, v11, Ln2/n;->l:[I

    invoke-static {v1}, Lt4/d;->m0([I)Z

    move-result v3

    iget-object v0, v0, Lk2/p;->a:Lk2/h;

    if-eqz v3, :cond_3f5

    invoke-virtual {v0}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto/16 :goto_485

    :cond_3f5
    check-cast v10, Ln2/n;

    aget-object v3, v9, v13

    check-cast v3, Ln2/n;

    const/4 v4, 0x7

    new-array v5, v4, [I

    invoke-static {v1, v5}, Ln2/b;->k1([I[I)V

    new-array v6, v4, [I

    invoke-static {v5, v6}, Ln2/b;->k1([I[I)V

    new-array v7, v4, [I

    iget-object v9, v10, Ln2/n;->l:[I

    invoke-static {v9, v7}, Ln2/b;->k1([I[I)V

    invoke-static {v7, v7, v7}, Lt4/d;->l([I[I[I)I

    move-result v9

    invoke-static {v9, v7}, Ln2/b;->W0(I[I)V

    iget-object v9, v10, Ln2/n;->l:[I

    invoke-static {v5, v9, v5}, Ln2/b;->m0([I[I[I)V

    invoke-static {v4, v5}, Ls2/b;->P(I[I)I

    move-result v9

    invoke-static {v9, v5}, Ln2/b;->W0(I[I)V

    new-array v9, v4, [I

    invoke-static {v4, v6, v9}, Ls2/b;->Q(I[I[I)I

    move-result v10

    invoke-static {v10, v9}, Ln2/b;->W0(I[I)V

    new-instance v4, Ln2/n;

    invoke-direct {v4, v6}, Ln2/n;-><init>([I)V

    invoke-static {v7, v6}, Ln2/b;->k1([I[I)V

    invoke-static {v6, v5, v6}, Ln2/b;->K1([I[I[I)V

    invoke-static {v6, v5, v6}, Ln2/b;->K1([I[I[I)V

    new-instance v10, Ln2/n;

    invoke-direct {v10, v5}, Ln2/n;-><init>([I)V

    invoke-static {v5, v6, v5}, Ln2/b;->K1([I[I[I)V

    invoke-static {v5, v7, v5}, Ln2/b;->m0([I[I[I)V

    invoke-static {v5, v9, v5}, Ln2/b;->K1([I[I[I)V

    new-instance v5, Ln2/n;

    invoke-direct {v5, v7}, Ln2/n;-><init>([I)V

    const/4 v6, 0x7

    invoke-static {v6, v13, v1, v7}, Ls2/b;->O(II[I[I)I

    move-result v1

    if-nez v1, :cond_45d

    aget v1, v7, v2

    if-ne v1, v8, :cond_463

    sget-object v1, Ln2/b;->p:[I

    invoke-static {v7, v1}, Lt4/d;->g0([I[I)Z

    move-result v1

    if-eqz v1, :cond_463

    :cond_45d
    const/16 v1, 0x1a93

    const/4 v2, 0x7

    invoke-static {v2, v1, v7}, Ls2/b;->b(II[I)V

    :cond_463
    iget-object v1, v3, Ln2/n;->l:[I

    invoke-static {v1}, Lt4/d;->k0([I)Z

    move-result v1

    if-nez v1, :cond_470

    iget-object v1, v3, Ln2/n;->l:[I

    invoke-static {v7, v1, v7}, Ln2/b;->m0([I[I[I)V

    :cond_470
    new-instance v17, Lk2/o;

    new-array v1, v12, [Lk2/b0;

    aput-object v5, v1, v13

    const/16 v22, 0x9

    move-object/from16 v18, v0

    move-object/from16 v21, v1

    move-object/from16 v19, v4

    move-object/from16 v20, v10

    invoke-direct/range {v17 .. v22}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object/from16 v0, v17

    :goto_485
    return-object v0

    :pswitch_486
    sget-object v1, Ln2/b;->m:[I

    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v3

    if-eqz v3, :cond_490

    goto/16 :goto_542

    :cond_490
    check-cast v11, Ln2/l;

    iget-object v3, v11, Ln2/l;->l:[I

    invoke-static {v3}, Lq4/k;->s0([I)Z

    move-result v4

    iget-object v15, v0, Lk2/p;->a:Lk2/h;

    if-eqz v4, :cond_4a2

    invoke-virtual {v15}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto/16 :goto_542

    :cond_4a2
    check-cast v10, Ln2/l;

    aget-object v0, v9, v13

    check-cast v0, Ln2/l;

    new-array v4, v2, [I

    new-array v5, v2, [I

    new-array v7, v2, [I

    invoke-static {v3, v7}, Ln2/b;->j1([I[I)V

    new-array v9, v2, [I

    invoke-static {v7, v9}, Ln2/b;->j1([I[I)V

    iget-object v0, v0, Ln2/l;->l:[I

    invoke-static {v0}, Lq4/k;->o0([I)Z

    move-result v11

    if-nez v11, :cond_4c3

    invoke-static {v0, v5}, Ln2/b;->j1([I[I)V

    move-object v14, v5

    goto :goto_4c4

    :cond_4c3
    move-object v14, v0

    :goto_4c4
    iget-object v10, v10, Ln2/l;->l:[I

    invoke-static {v10, v14, v4}, Ln2/b;->J1([I[I[I)V

    invoke-static {v10, v14, v5}, Lq4/k;->b([I[I[I)I

    move-result v14

    if-nez v14, :cond_4d9

    aget v14, v5, v6

    if-ne v14, v8, :cond_4dc

    invoke-static {v5, v1}, Lq4/k;->l0([I[I)Z

    move-result v14

    if-eqz v14, :cond_4dc

    :cond_4d9
    invoke-static {v5}, Ln2/b;->p([I)V

    :cond_4dc
    invoke-static {v5, v4, v5}, Ln2/b;->k0([I[I[I)V

    invoke-static {v5, v5, v5}, Lq4/k;->f([I[I[I)I

    move-result v14

    invoke-static {v14, v5}, Ln2/b;->V0(I[I)V

    invoke-static {v7, v10, v7}, Ln2/b;->k0([I[I[I)V

    invoke-static {v2, v7}, Ls2/b;->P(I[I)I

    move-result v10

    invoke-static {v10, v7}, Ln2/b;->V0(I[I)V

    invoke-static {v2, v9, v4}, Ls2/b;->Q(I[I[I)I

    move-result v10

    invoke-static {v10, v4}, Ln2/b;->V0(I[I)V

    new-instance v10, Ln2/l;

    invoke-direct {v10, v9}, Ln2/l;-><init>([I)V

    invoke-static {v5, v9}, Ln2/b;->j1([I[I)V

    invoke-static {v9, v7, v9}, Ln2/b;->J1([I[I[I)V

    invoke-static {v9, v7, v9}, Ln2/b;->J1([I[I[I)V

    new-instance v14, Ln2/l;

    invoke-direct {v14, v7}, Ln2/l;-><init>([I)V

    invoke-static {v7, v9, v7}, Ln2/b;->J1([I[I[I)V

    invoke-static {v7, v5, v7}, Ln2/b;->k0([I[I[I)V

    invoke-static {v7, v4, v7}, Ln2/b;->J1([I[I[I)V

    new-instance v4, Ln2/l;

    invoke-direct {v4, v5}, Ln2/l;-><init>([I)V

    invoke-static {v2, v13, v3, v5}, Ls2/b;->O(II[I[I)I

    move-result v2

    if-nez v2, :cond_528

    aget v2, v5, v6

    if-ne v2, v8, :cond_52b

    invoke-static {v5, v1}, Lq4/k;->l0([I[I)Z

    move-result v1

    if-eqz v1, :cond_52b

    :cond_528
    invoke-static {v5}, Ln2/b;->p([I)V

    :cond_52b
    if-nez v11, :cond_530

    invoke-static {v5, v0, v5}, Ln2/b;->k0([I[I[I)V

    :cond_530
    move-object/from16 v17, v14

    new-instance v14, Lk2/o;

    new-array v0, v12, [Lk2/b0;

    aput-object v4, v0, v13

    const/16 v19, 0x8

    move-object/from16 v18, v0

    move-object/from16 v16, v10

    invoke-direct/range {v14 .. v19}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object v0, v14

    :goto_542
    return-object v0

    :pswitch_543
    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v1

    if-eqz v1, :cond_54b

    goto/16 :goto_5e7

    :cond_54b
    check-cast v11, Ln2/j;

    iget-object v1, v11, Ln2/j;->l:[I

    invoke-static {v1}, Lq4/k;->s0([I)Z

    move-result v3

    iget-object v15, v0, Lk2/p;->a:Lk2/h;

    if-eqz v3, :cond_55d

    invoke-virtual {v15}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto/16 :goto_5e7

    :cond_55d
    check-cast v10, Ln2/j;

    aget-object v0, v9, v13

    check-cast v0, Ln2/j;

    new-array v3, v2, [I

    invoke-static {v1, v3}, Ln2/b;->h1([I[I)V

    new-array v4, v2, [I

    invoke-static {v3, v4}, Ln2/b;->h1([I[I)V

    new-array v5, v2, [I

    iget-object v7, v10, Ln2/j;->l:[I

    invoke-static {v7, v5}, Ln2/b;->h1([I[I)V

    invoke-static {v5, v5, v5}, Lq4/k;->f([I[I[I)I

    move-result v7

    invoke-static {v7, v5}, Ln2/b;->U0(I[I)V

    iget-object v7, v10, Ln2/j;->l:[I

    invoke-static {v3, v7, v3}, Ln2/b;->h0([I[I[I)V

    invoke-static {v2, v3}, Ls2/b;->P(I[I)I

    move-result v7

    invoke-static {v7, v3}, Ln2/b;->U0(I[I)V

    new-array v7, v2, [I

    invoke-static {v2, v4, v7}, Ls2/b;->Q(I[I[I)I

    move-result v9

    invoke-static {v9, v7}, Ln2/b;->U0(I[I)V

    new-instance v9, Ln2/j;

    invoke-direct {v9, v4}, Ln2/j;-><init>([I)V

    invoke-static {v5, v4}, Ln2/b;->h1([I[I)V

    invoke-static {v4, v3, v4}, Ln2/b;->I1([I[I[I)V

    invoke-static {v4, v3, v4}, Ln2/b;->I1([I[I[I)V

    new-instance v10, Ln2/j;

    invoke-direct {v10, v3}, Ln2/j;-><init>([I)V

    invoke-static {v3, v4, v3}, Ln2/b;->I1([I[I[I)V

    invoke-static {v3, v5, v3}, Ln2/b;->h0([I[I[I)V

    invoke-static {v3, v7, v3}, Ln2/b;->I1([I[I[I)V

    new-instance v3, Ln2/j;

    invoke-direct {v3, v5}, Ln2/j;-><init>([I)V

    invoke-static {v2, v13, v1, v5}, Ls2/b;->O(II[I[I)I

    move-result v1

    if-nez v1, :cond_5c3

    aget v1, v5, v6

    if-ne v1, v8, :cond_5c8

    sget-object v1, Ln2/b;->j:[I

    invoke-static {v5, v1}, Lq4/k;->l0([I[I)Z

    move-result v1

    if-eqz v1, :cond_5c8

    :cond_5c3
    const/16 v1, 0x11c9

    invoke-static {v2, v1, v5}, Ls2/b;->b(II[I)V

    :cond_5c8
    iget-object v1, v0, Ln2/j;->l:[I

    invoke-static {v1}, Lq4/k;->o0([I)Z

    move-result v1

    if-nez v1, :cond_5d5

    iget-object v0, v0, Ln2/j;->l:[I

    invoke-static {v5, v0, v5}, Ln2/b;->h0([I[I[I)V

    :cond_5d5
    new-instance v14, Lk2/o;

    new-array v0, v12, [Lk2/b0;

    aput-object v3, v0, v13

    const/16 v19, 0x7

    move-object/from16 v18, v0

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v14 .. v19}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object v0, v14

    :goto_5e7
    return-object v0

    :pswitch_5e8
    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v1

    if-eqz v1, :cond_5f0

    goto/16 :goto_696

    :cond_5f0
    check-cast v11, Ln2/h;

    iget-object v1, v11, Ln2/h;->l:[I

    invoke-static {v1}, Lt4/d;->l0([I)Z

    move-result v2

    iget-object v15, v0, Lk2/p;->a:Lk2/h;

    if-eqz v2, :cond_602

    invoke-virtual {v15}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto/16 :goto_696

    :cond_602
    check-cast v10, Ln2/h;

    aget-object v0, v9, v13

    check-cast v0, Ln2/h;

    new-array v2, v6, [I

    new-array v3, v6, [I

    new-array v4, v6, [I

    invoke-static {v1, v4}, Ln2/b;->f1([I[I)V

    new-array v7, v6, [I

    invoke-static {v4, v7}, Ln2/b;->f1([I[I)V

    iget-object v0, v0, Ln2/h;->l:[I

    invoke-static {v0}, Lt4/d;->j0([I)Z

    move-result v9

    if-nez v9, :cond_623

    invoke-static {v0, v3}, Ln2/b;->f1([I[I)V

    move-object v11, v3

    goto :goto_624

    :cond_623
    move-object v11, v0

    :goto_624
    iget-object v10, v10, Ln2/h;->l:[I

    invoke-static {v10, v11, v2}, Ln2/b;->H1([I[I[I)V

    invoke-static {v10, v11, v3}, Lt4/d;->g([I[I[I)I

    move-result v11

    if-nez v11, :cond_63b

    aget v5, v3, v5

    if-ne v5, v8, :cond_640

    sget-object v5, Ln2/b;->g:[I

    invoke-static {v3, v5}, Lt4/d;->f0([I[I)Z

    move-result v5

    if-eqz v5, :cond_640

    :cond_63b
    const/16 v5, 0x538d

    invoke-static {v6, v5, v3}, Ls2/b;->b(II[I)V

    :cond_640
    invoke-static {v3, v2, v3}, Ln2/b;->e0([I[I[I)V

    invoke-static {v3, v3, v3}, Lt4/d;->k([I[I[I)I

    move-result v5

    invoke-static {v5, v3}, Ln2/b;->T0(I[I)V

    invoke-static {v4, v10, v4}, Ln2/b;->e0([I[I[I)V

    invoke-static {v6, v4}, Ls2/b;->P(I[I)I

    move-result v5

    invoke-static {v5, v4}, Ln2/b;->T0(I[I)V

    invoke-static {v6, v7, v2}, Ls2/b;->Q(I[I[I)I

    move-result v5

    invoke-static {v5, v2}, Ln2/b;->T0(I[I)V

    new-instance v5, Ln2/h;

    invoke-direct {v5, v7}, Ln2/h;-><init>([I)V

    invoke-static {v3, v7}, Ln2/b;->f1([I[I)V

    invoke-static {v7, v4, v7}, Ln2/b;->H1([I[I[I)V

    invoke-static {v7, v4, v7}, Ln2/b;->H1([I[I[I)V

    new-instance v6, Ln2/h;

    invoke-direct {v6, v4}, Ln2/h;-><init>([I)V

    invoke-static {v4, v7, v4}, Ln2/b;->H1([I[I[I)V

    invoke-static {v4, v3, v4}, Ln2/b;->e0([I[I[I)V

    invoke-static {v4, v2, v4}, Ln2/b;->H1([I[I[I)V

    new-instance v2, Ln2/h;

    invoke-direct {v2, v3}, Ln2/h;-><init>([I)V

    invoke-static {v1, v3}, Ln2/b;->P1([I[I)V

    if-nez v9, :cond_684

    invoke-static {v3, v0, v3}, Ln2/b;->e0([I[I[I)V

    :cond_684
    new-instance v14, Lk2/o;

    new-array v0, v12, [Lk2/b0;

    aput-object v2, v0, v13

    const/16 v19, 0x6

    move-object/from16 v18, v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-direct/range {v14 .. v19}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object v0, v14

    :goto_696
    return-object v0

    :pswitch_697
    sget-object v1, Ln2/b;->d:[I

    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v2

    if-eqz v2, :cond_6a1

    goto/16 :goto_758

    :cond_6a1
    check-cast v11, Ln2/f;

    iget-object v2, v11, Ln2/f;->l:[I

    invoke-static {v2}, Lt4/d;->l0([I)Z

    move-result v3

    iget-object v15, v0, Lk2/p;->a:Lk2/h;

    if-eqz v3, :cond_6b3

    invoke-virtual {v15}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto/16 :goto_758

    :cond_6b3
    check-cast v10, Ln2/f;

    aget-object v0, v9, v13

    check-cast v0, Ln2/f;

    new-array v3, v6, [I

    new-array v4, v6, [I

    new-array v7, v6, [I

    invoke-static {v2, v7}, Ln2/b;->d1([I[I)V

    new-array v9, v6, [I

    invoke-static {v7, v9}, Ln2/b;->d1([I[I)V

    iget-object v0, v0, Ln2/f;->l:[I

    invoke-static {v0}, Lt4/d;->j0([I)Z

    move-result v11

    if-nez v11, :cond_6d4

    invoke-static {v0, v4}, Ln2/b;->d1([I[I)V

    move-object v14, v4

    goto :goto_6d5

    :cond_6d4
    move-object v14, v0

    :goto_6d5
    iget-object v10, v10, Ln2/f;->l:[I

    invoke-static {v10, v14, v3}, Ln2/b;->F1([I[I[I)V

    invoke-static {v10, v14, v4}, Lt4/d;->g([I[I[I)I

    move-result v14

    move/from16 v16, v5

    const v5, -0x7fffffff

    if-nez v14, :cond_6ef

    aget v14, v4, v16

    if-ne v14, v8, :cond_6f2

    invoke-static {v4, v1}, Lt4/d;->f0([I[I)Z

    move-result v14

    if-eqz v14, :cond_6f2

    :cond_6ef
    invoke-static {v6, v5, v4}, Ls2/b;->g(II[I)I

    :cond_6f2
    invoke-static {v4, v3, v4}, Ln2/b;->b0([I[I[I)V

    invoke-static {v4, v4, v4}, Lt4/d;->k([I[I[I)I

    move-result v14

    invoke-static {v14, v4}, Ln2/b;->S0(I[I)V

    invoke-static {v7, v10, v7}, Ln2/b;->b0([I[I[I)V

    invoke-static {v6, v7}, Ls2/b;->P(I[I)I

    move-result v10

    invoke-static {v10, v7}, Ln2/b;->S0(I[I)V

    invoke-static {v6, v9, v3}, Ls2/b;->Q(I[I[I)I

    move-result v10

    invoke-static {v10, v3}, Ln2/b;->S0(I[I)V

    new-instance v10, Ln2/f;

    invoke-direct {v10, v9}, Ln2/f;-><init>([I)V

    invoke-static {v4, v9}, Ln2/b;->d1([I[I)V

    invoke-static {v9, v7, v9}, Ln2/b;->F1([I[I[I)V

    invoke-static {v9, v7, v9}, Ln2/b;->F1([I[I[I)V

    new-instance v14, Ln2/f;

    invoke-direct {v14, v7}, Ln2/f;-><init>([I)V

    invoke-static {v7, v9, v7}, Ln2/b;->F1([I[I[I)V

    invoke-static {v7, v4, v7}, Ln2/b;->b0([I[I[I)V

    invoke-static {v7, v3, v7}, Ln2/b;->F1([I[I[I)V

    new-instance v3, Ln2/f;

    invoke-direct {v3, v4}, Ln2/f;-><init>([I)V

    invoke-static {v6, v13, v2, v4}, Ls2/b;->O(II[I[I)I

    move-result v2

    if-nez v2, :cond_73e

    aget v2, v4, v16

    if-ne v2, v8, :cond_741

    invoke-static {v4, v1}, Lt4/d;->f0([I[I)Z

    move-result v1

    if-eqz v1, :cond_741

    :cond_73e
    invoke-static {v6, v5, v4}, Ls2/b;->g(II[I)I

    :cond_741
    if-nez v11, :cond_746

    invoke-static {v4, v0, v4}, Ln2/b;->b0([I[I[I)V

    :cond_746
    move-object/from16 v17, v14

    new-instance v14, Lk2/o;

    new-array v0, v12, [Lk2/b0;

    aput-object v3, v0, v13

    const/16 v19, 0x5

    move-object/from16 v18, v0

    move-object/from16 v16, v10

    invoke-direct/range {v14 .. v19}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object v0, v14

    :goto_758
    return-object v0

    :pswitch_759
    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v1

    if-eqz v1, :cond_761

    goto/16 :goto_7e8

    :cond_761
    check-cast v11, Ln2/h;

    iget-object v1, v11, Ln2/h;->l:[I

    invoke-static {v1}, Lt4/d;->l0([I)Z

    move-result v2

    iget-object v15, v0, Lk2/p;->a:Lk2/h;

    if-eqz v2, :cond_772

    invoke-virtual {v15}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto :goto_7e8

    :cond_772
    check-cast v10, Ln2/h;

    aget-object v0, v9, v13

    check-cast v0, Ln2/h;

    new-array v2, v6, [I

    invoke-static {v1, v2}, Ln2/b;->f1([I[I)V

    new-array v3, v6, [I

    invoke-static {v2, v3}, Ln2/b;->f1([I[I)V

    new-array v4, v6, [I

    iget-object v5, v10, Ln2/h;->l:[I

    invoke-static {v5, v4}, Ln2/b;->f1([I[I)V

    invoke-static {v4, v4, v4}, Lt4/d;->k([I[I[I)I

    move-result v5

    invoke-static {v5, v4}, Ln2/b;->T0(I[I)V

    iget-object v5, v10, Ln2/h;->l:[I

    invoke-static {v2, v5, v2}, Ln2/b;->e0([I[I[I)V

    invoke-static {v6, v2}, Ls2/b;->P(I[I)I

    move-result v5

    invoke-static {v5, v2}, Ln2/b;->T0(I[I)V

    new-array v5, v6, [I

    invoke-static {v6, v3, v5}, Ls2/b;->Q(I[I[I)I

    move-result v6

    invoke-static {v6, v5}, Ln2/b;->T0(I[I)V

    new-instance v6, Ln2/h;

    invoke-direct {v6, v3}, Ln2/h;-><init>([I)V

    invoke-static {v4, v3}, Ln2/b;->f1([I[I)V

    invoke-static {v3, v2, v3}, Ln2/b;->H1([I[I[I)V

    invoke-static {v3, v2, v3}, Ln2/b;->H1([I[I[I)V

    new-instance v7, Ln2/h;

    invoke-direct {v7, v2}, Ln2/h;-><init>([I)V

    invoke-static {v2, v3, v2}, Ln2/b;->H1([I[I[I)V

    invoke-static {v2, v4, v2}, Ln2/b;->e0([I[I[I)V

    invoke-static {v2, v5, v2}, Ln2/b;->H1([I[I[I)V

    new-instance v2, Ln2/h;

    invoke-direct {v2, v4}, Ln2/h;-><init>([I)V

    invoke-static {v1, v4}, Ln2/b;->P1([I[I)V

    iget-object v1, v0, Ln2/h;->l:[I

    invoke-static {v1}, Lt4/d;->j0([I)Z

    move-result v1

    if-nez v1, :cond_7d6

    iget-object v0, v0, Ln2/h;->l:[I

    invoke-static {v4, v0, v4}, Ln2/b;->e0([I[I[I)V

    :cond_7d6
    new-instance v14, Lk2/o;

    new-array v0, v12, [Lk2/b0;

    aput-object v2, v0, v13

    const/16 v19, 0x4

    move-object/from16 v18, v0

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    invoke-direct/range {v14 .. v19}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object v0, v14

    :goto_7e8
    return-object v0

    :pswitch_7e9
    move/from16 v16, v5

    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v1

    if-eqz v1, :cond_7f3

    goto/16 :goto_89c

    :cond_7f3
    check-cast v11, Ln2/c;

    iget-object v1, v11, Ln2/c;->l:[I

    invoke-static {v1}, Lq4/k;->r0([I)Z

    move-result v2

    iget-object v4, v0, Lk2/p;->a:Lk2/h;

    if-eqz v2, :cond_805

    invoke-virtual {v4}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto/16 :goto_89c

    :cond_805
    check-cast v10, Ln2/c;

    aget-object v0, v9, v13

    check-cast v0, Ln2/c;

    move/from16 v2, v16

    new-array v3, v2, [I

    new-array v5, v2, [I

    new-array v6, v2, [I

    invoke-static {v1, v6}, Ln2/b;->b1([I[I)V

    new-array v7, v2, [I

    invoke-static {v6, v7}, Ln2/b;->b1([I[I)V

    iget-object v0, v0, Ln2/c;->l:[I

    invoke-static {v0}, Lq4/k;->n0([I)Z

    move-result v2

    if-nez v2, :cond_828

    invoke-static {v0, v5}, Ln2/b;->b1([I[I)V

    move-object v8, v5

    goto :goto_829

    :cond_828
    move-object v8, v0

    :goto_829
    iget-object v9, v10, Ln2/c;->l:[I

    invoke-static {v9, v8, v3}, Ln2/b;->E1([I[I[I)V

    invoke-static {v9, v8, v5}, Ln2/b;->a([I[I[I)V

    invoke-static {v5, v3, v5}, Ln2/b;->Y([I[I[I)V

    invoke-static {v5, v5, v5}, Lq4/k;->e([I[I[I)I

    move-result v8

    invoke-static {v8, v5}, Ln2/b;->R0(I[I)V

    invoke-static {v6, v9, v6}, Ln2/b;->Y([I[I[I)V

    const/4 v8, 0x4

    invoke-static {v8, v6}, Ls2/b;->P(I[I)I

    move-result v9

    invoke-static {v9, v6}, Ln2/b;->R0(I[I)V

    invoke-static {v8, v7, v3}, Ls2/b;->Q(I[I[I)I

    move-result v9

    invoke-static {v9, v3}, Ln2/b;->R0(I[I)V

    new-instance v8, Ln2/c;

    invoke-direct {v8, v7}, Ln2/c;-><init>([I)V

    invoke-static {v5, v7}, Ln2/b;->b1([I[I)V

    invoke-static {v7, v6, v7}, Ln2/b;->E1([I[I[I)V

    invoke-static {v7, v6, v7}, Ln2/b;->E1([I[I[I)V

    new-instance v9, Ln2/c;

    invoke-direct {v9, v6}, Ln2/c;-><init>([I)V

    invoke-static {v6, v7, v6}, Ln2/b;->E1([I[I[I)V

    invoke-static {v6, v5, v6}, Ln2/b;->Y([I[I[I)V

    invoke-static {v6, v3, v6}, Ln2/b;->E1([I[I[I)V

    new-instance v3, Ln2/c;

    invoke-direct {v3, v5}, Ln2/c;-><init>([I)V

    const/4 v6, 0x4

    invoke-static {v6, v13, v1, v5}, Ls2/b;->O(II[I[I)I

    move-result v1

    if-nez v1, :cond_886

    const/4 v1, 0x3

    aget v1, v5, v1

    ushr-int/2addr v1, v12

    const v6, 0x7ffffffe

    if-lt v1, v6, :cond_889

    sget-object v1, Ln2/b;->a:[I

    invoke-static {v5, v1}, Lq4/k;->k0([I[I)Z

    move-result v1

    if-eqz v1, :cond_889

    :cond_886
    invoke-static {v5}, Ln2/b;->o([I)V

    :cond_889
    if-nez v2, :cond_88e

    invoke-static {v5, v0, v5}, Ln2/b;->Y([I[I[I)V

    :cond_88e
    move-object v0, v3

    new-instance v3, Lk2/o;

    new-array v7, v12, [Lk2/b0;

    aput-object v0, v7, v13

    move-object v5, v8

    const/4 v8, 0x3

    move-object v6, v9

    invoke-direct/range {v3 .. v8}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object v0, v3

    :goto_89c
    return-object v0

    :pswitch_89d
    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v1

    if-eqz v1, :cond_8a5

    goto/16 :goto_952

    :cond_8a5
    check-cast v11, Lm2/c;

    iget-object v1, v11, Lm2/c;->l:[I

    invoke-static {v1}, Lq4/k;->t0([I)Z

    move-result v2

    iget-object v0, v0, Lk2/p;->a:Lk2/h;

    if-eqz v2, :cond_8b7

    invoke-virtual {v0}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto/16 :goto_952

    :cond_8b7
    check-cast v10, Lm2/c;

    aget-object v2, v9, v13

    check-cast v2, Lm2/c;

    new-array v4, v3, [I

    new-array v5, v3, [I

    new-array v6, v3, [I

    invoke-static {v1, v6}, Lm2/b;->f([I[I)V

    new-array v7, v3, [I

    invoke-static {v6, v7}, Lm2/b;->f([I[I)V

    iget-object v2, v2, Lm2/c;->l:[I

    invoke-static {v2}, Lq4/k;->p0([I)Z

    move-result v8

    if-nez v8, :cond_8d8

    invoke-static {v2, v5}, Lm2/b;->f([I[I)V

    move-object v9, v5

    goto :goto_8d9

    :cond_8d8
    move-object v9, v2

    :goto_8d9
    iget-object v10, v10, Lm2/c;->l:[I

    invoke-static {v10, v9, v4}, Lm2/b;->h([I[I[I)V

    invoke-static {v10, v9, v5}, Lm2/b;->a([I[I[I)V

    invoke-static {v5, v4, v5}, Lm2/b;->c([I[I[I)V

    invoke-static {v5, v5, v5}, Lq4/k;->g([I[I[I)I

    move-result v9

    invoke-static {v9, v5}, Lm2/b;->e(I[I)V

    invoke-static {v6, v10, v6}, Lm2/b;->c([I[I[I)V

    invoke-static {v3, v6}, Ls2/b;->P(I[I)I

    move-result v9

    invoke-static {v9, v6}, Lm2/b;->e(I[I)V

    invoke-static {v3, v7, v4}, Ls2/b;->Q(I[I[I)I

    move-result v9

    invoke-static {v9, v4}, Lm2/b;->e(I[I)V

    new-instance v9, Lm2/c;

    invoke-direct {v9, v7}, Lm2/c;-><init>([I)V

    invoke-static {v5, v7}, Lm2/b;->f([I[I)V

    invoke-static {v7, v6, v7}, Lm2/b;->h([I[I[I)V

    invoke-static {v7, v6, v7}, Lm2/b;->h([I[I[I)V

    new-instance v10, Lm2/c;

    invoke-direct {v10, v6}, Lm2/c;-><init>([I)V

    invoke-static {v6, v7, v6}, Lm2/b;->h([I[I[I)V

    invoke-static {v6, v5, v6}, Lm2/b;->c([I[I[I)V

    invoke-static {v6, v4, v6}, Lm2/b;->h([I[I[I)V

    new-instance v4, Lm2/c;

    invoke-direct {v4, v5}, Lm2/c;-><init>([I)V

    invoke-static {v3, v13, v1, v5}, Ls2/b;->O(II[I[I)I

    move-result v1

    if-nez v1, :cond_935

    const/16 v16, 0x7

    aget v1, v5, v16

    ushr-int/2addr v1, v12

    const v3, 0x7fffffff

    if-lt v1, v3, :cond_938

    sget-object v1, Lm2/b;->a:[I

    invoke-static {v5, v1}, Lq4/k;->m0([I[I)Z

    move-result v1

    if-eqz v1, :cond_938

    :cond_935
    invoke-static {v5}, Lm2/b;->b([I)V

    :cond_938
    if-nez v8, :cond_93d

    invoke-static {v5, v2, v5}, Lm2/b;->c([I[I[I)V

    :cond_93d
    new-instance v17, Lk2/o;

    new-array v1, v12, [Lk2/b0;

    aput-object v4, v1, v13

    const/16 v22, 0x2

    move-object/from16 v18, v0

    move-object/from16 v21, v1

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    invoke-direct/range {v17 .. v22}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    move-object/from16 v0, v17

    :goto_952
    return-object v0

    :pswitch_953
    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v1

    if-eqz v1, :cond_95a

    goto :goto_96b

    :cond_95a
    invoke-virtual {v11}, Lk2/b0;->t()Z

    move-result v1

    if-eqz v1, :cond_967

    iget-object v0, v0, Lk2/p;->a:Lk2/h;

    invoke-virtual {v0}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto :goto_96b

    :cond_967
    invoke-virtual {v0, v12}, Lk2/o;->J(Z)Lk2/o;

    move-result-object v0

    :goto_96b
    return-object v0

    :pswitch_96c
    invoke-virtual {v0}, Lk2/p;->l()Z

    move-result v1

    if-eqz v1, :cond_974

    goto/16 :goto_b30

    :cond_974
    invoke-virtual {v11}, Lk2/b0;->t()Z

    move-result v1

    iget-object v3, v0, Lk2/p;->a:Lk2/h;

    if-eqz v1, :cond_982

    invoke-virtual {v3}, Lk2/h;->m()Lk2/p;

    move-result-object v0

    goto/16 :goto_b30

    :cond_982
    iget v1, v3, Lk2/h;->f:I

    if-eqz v1, :cond_af8

    if-eq v1, v12, :cond_a65

    const/4 v2, 0x2

    if-eq v1, v2, :cond_99c

    const/4 v2, 0x4

    if-ne v1, v2, :cond_994

    invoke-virtual {v0, v12}, Lk2/o;->I(Z)Lk2/o;

    move-result-object v0

    goto/16 :goto_b30

    :cond_994
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_99c
    aget-object v0, v9, v13

    invoke-virtual {v0}, Lk2/b0;->s()Z

    move-result v1

    invoke-virtual {v11}, Lk2/b0;->F()Lk2/b0;

    move-result-object v2

    invoke-virtual {v2}, Lk2/b0;->F()Lk2/b0;

    move-result-object v4

    iget-object v5, v3, Lk2/h;->b:Lk2/b0;

    invoke-virtual {v5}, Lk2/b0;->B()Lk2/b0;

    move-result-object v6

    invoke-virtual {v6}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v7

    const-wide/16 v8, 0x3

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9e9

    if-eqz v1, :cond_9c4

    move-object v5, v0

    goto :goto_9c8

    :cond_9c4
    invoke-virtual {v0}, Lk2/b0;->F()Lk2/b0;

    move-result-object v5

    :goto_9c8
    invoke-virtual {v10, v5}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v6

    invoke-virtual {v10, v5}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v5

    invoke-virtual {v6, v5}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v5

    invoke-virtual {v5, v5}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v6

    invoke-virtual {v6, v5}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v5

    invoke-virtual {v2, v10}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v2

    :goto_9e0
    invoke-virtual {v2, v2}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v2

    invoke-virtual {v2, v2}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v2

    goto :goto_a28

    :cond_9e9
    invoke-virtual {v10}, Lk2/b0;->F()Lk2/b0;

    move-result-object v7

    invoke-virtual {v7, v7}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v8

    invoke-virtual {v8, v7}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v7

    if-eqz v1, :cond_9fc

    :goto_9f7
    invoke-virtual {v7, v5}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v5

    goto :goto_a23

    :cond_9fc
    invoke-virtual {v5}, Lk2/b0;->t()Z

    move-result v8

    if-nez v8, :cond_a22

    invoke-virtual {v0}, Lk2/b0;->F()Lk2/b0;

    move-result-object v8

    invoke-virtual {v8}, Lk2/b0;->F()Lk2/b0;

    move-result-object v8

    invoke-virtual {v6}, Lk2/b0;->c()I

    move-result v9

    invoke-virtual {v5}, Lk2/b0;->c()I

    move-result v12

    if-ge v9, v12, :cond_a1d

    invoke-virtual {v8, v6}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v5

    invoke-virtual {v7, v5}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v5

    goto :goto_a23

    :cond_a1d
    invoke-virtual {v8, v5}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v5

    goto :goto_9f7

    :cond_a22
    move-object v5, v7

    :goto_a23
    invoke-virtual {v10, v2}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v2

    goto :goto_9e0

    :goto_a28
    invoke-virtual {v5}, Lk2/b0;->F()Lk2/b0;

    move-result-object v6

    invoke-virtual {v2, v2}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v7

    invoke-virtual {v6, v7}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v6

    invoke-virtual {v2, v6}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v2

    invoke-virtual {v2, v5}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v2

    invoke-virtual {v4, v4}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v4

    invoke-virtual {v4, v4}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v4

    invoke-virtual {v4, v4}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v4

    invoke-virtual {v2, v4}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v5

    invoke-virtual {v11, v11}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v2

    if-nez v1, :cond_a56

    invoke-virtual {v2, v0}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v2

    :cond_a56
    new-instance v0, Lk2/o;

    filled-new-array {v2}, [Lk2/b0;

    move-result-object v1

    const/4 v7, 0x0

    move-object v2, v0

    move-object v4, v6

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    goto/16 :goto_b30

    :cond_a65
    aget-object v0, v9, v13

    invoke-virtual {v0}, Lk2/b0;->s()Z

    move-result v1

    iget-object v2, v3, Lk2/h;->b:Lk2/b0;

    invoke-virtual {v2}, Lk2/b0;->t()Z

    move-result v4

    if-nez v4, :cond_a7d

    if-nez v1, :cond_a7d

    invoke-virtual {v0}, Lk2/b0;->F()Lk2/b0;

    move-result-object v4

    invoke-virtual {v2, v4}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v2

    :cond_a7d
    invoke-virtual {v10}, Lk2/b0;->F()Lk2/b0;

    move-result-object v4

    invoke-virtual {v4, v4}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v5

    invoke-virtual {v5, v4}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v4

    invoke-virtual {v2, v4}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v2

    if-eqz v1, :cond_a91

    move-object v0, v11

    goto :goto_a95

    :cond_a91
    invoke-virtual {v11, v0}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v0

    :goto_a95
    if-eqz v1, :cond_a9c

    invoke-virtual {v11}, Lk2/b0;->F()Lk2/b0;

    move-result-object v4

    goto :goto_aa0

    :cond_a9c
    invoke-virtual {v0, v11}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v4

    :goto_aa0
    invoke-virtual {v10, v4}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v5

    invoke-virtual {v5, v5}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v5

    invoke-virtual {v5, v5}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v5

    invoke-virtual {v2}, Lk2/b0;->F()Lk2/b0;

    move-result-object v6

    invoke-virtual {v5, v5}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v7

    invoke-virtual {v6, v7}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v6

    invoke-virtual {v0, v0}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v7

    invoke-virtual {v6, v7}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v8

    invoke-virtual {v4, v4}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v4

    invoke-virtual {v5, v6}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v5

    invoke-virtual {v5, v2}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v2

    invoke-virtual {v4}, Lk2/b0;->F()Lk2/b0;

    move-result-object v5

    invoke-virtual {v5, v5}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v5

    invoke-virtual {v2, v5}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v5

    if-eqz v1, :cond_adf

    invoke-virtual {v4, v4}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v1

    goto :goto_ae3

    :cond_adf
    invoke-virtual {v7}, Lk2/b0;->F()Lk2/b0;

    move-result-object v1

    :goto_ae3
    invoke-virtual {v1, v1}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v0

    new-instance v2, Lk2/o;

    filled-new-array {v0}, [Lk2/b0;

    move-result-object v6

    const/4 v7, 0x0

    move-object v4, v8

    invoke-direct/range {v2 .. v7}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    :goto_af6
    move-object v0, v2

    goto :goto_b30

    :cond_af8
    invoke-virtual {v10}, Lk2/b0;->F()Lk2/b0;

    move-result-object v0

    invoke-virtual {v0, v0}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v0

    iget-object v1, v3, Lk2/h;->b:Lk2/b0;

    invoke-virtual {v0, v1}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v0

    invoke-virtual {v11, v11}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk2/b0;->f(Lk2/b0;)Lk2/b0;

    move-result-object v0

    invoke-virtual {v0}, Lk2/b0;->F()Lk2/b0;

    move-result-object v1

    invoke-virtual {v10, v10}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v1

    invoke-virtual {v10, v1}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v2

    invoke-virtual {v0, v2}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v0

    invoke-virtual {v0, v11}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v0

    new-instance v2, Lk2/o;

    invoke-direct {v2, v3, v1, v0, v13}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    goto :goto_af6

    :goto_b30
    return-object v0

    nop

    :pswitch_data_b32
    .packed-switch 0x0
        :pswitch_96c
        :pswitch_953
        :pswitch_89d
        :pswitch_7e9
        :pswitch_759
        :pswitch_697
        :pswitch_5e8
        :pswitch_543
        :pswitch_486
        :pswitch_3db
        :pswitch_33e
        :pswitch_283
        :pswitch_1ac
        :pswitch_d5
    .end packed-switch
.end method

.method public final z(Lk2/p;)Lk2/p;
    .registers 9

    iget v0, p0, Lk2/o;->g:I

    packed-switch v0, :pswitch_data_32e

    if-ne p0, p1, :cond_c

    invoke-virtual {p0}, Lk2/o;->w()Lk2/p;

    move-result-object p1

    goto :goto_2f

    :cond_c
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_2f

    :cond_13
    invoke-virtual {p1}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p1

    goto :goto_2f

    :cond_1e
    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_2f

    :cond_27
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p1

    :goto_2f
    return-object p1

    :pswitch_30
    if-ne p0, p1, :cond_37

    invoke-virtual {p0}, Lk2/o;->w()Lk2/p;

    move-result-object p1

    goto :goto_5a

    :cond_37
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_5a

    :cond_3e
    invoke-virtual {p1}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p1

    goto :goto_5a

    :cond_49
    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_5a

    :cond_52
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p1

    :goto_5a
    return-object p1

    :pswitch_5b
    if-ne p0, p1, :cond_62

    invoke-virtual {p0}, Lk2/o;->w()Lk2/p;

    move-result-object p1

    goto :goto_85

    :cond_62
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_69

    goto :goto_85

    :cond_69
    invoke-virtual {p1}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p1

    goto :goto_85

    :cond_74
    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_7d

    goto :goto_85

    :cond_7d
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p1

    :goto_85
    return-object p1

    :pswitch_86
    if-ne p0, p1, :cond_8d

    invoke-virtual {p0}, Lk2/o;->w()Lk2/p;

    move-result-object p1

    goto :goto_b0

    :cond_8d
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_94

    goto :goto_b0

    :cond_94
    invoke-virtual {p1}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p1

    goto :goto_b0

    :cond_9f
    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_a8

    goto :goto_b0

    :cond_a8
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p1

    :goto_b0
    return-object p1

    :pswitch_b1
    if-ne p0, p1, :cond_b8

    invoke-virtual {p0}, Lk2/o;->w()Lk2/p;

    move-result-object p1

    goto :goto_db

    :cond_b8
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_bf

    goto :goto_db

    :cond_bf
    invoke-virtual {p1}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_ca

    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p1

    goto :goto_db

    :cond_ca
    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_d3

    goto :goto_db

    :cond_d3
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p1

    :goto_db
    return-object p1

    :pswitch_dc
    if-ne p0, p1, :cond_e3

    invoke-virtual {p0}, Lk2/o;->w()Lk2/p;

    move-result-object p1

    goto :goto_106

    :cond_e3
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_ea

    goto :goto_106

    :cond_ea
    invoke-virtual {p1}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_f5

    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p1

    goto :goto_106

    :cond_f5
    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_fe

    goto :goto_106

    :cond_fe
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p1

    :goto_106
    return-object p1

    :pswitch_107
    if-ne p0, p1, :cond_10e

    invoke-virtual {p0}, Lk2/o;->w()Lk2/p;

    move-result-object p1

    goto :goto_131

    :cond_10e
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_115

    goto :goto_131

    :cond_115
    invoke-virtual {p1}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_120

    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p1

    goto :goto_131

    :cond_120
    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_129

    goto :goto_131

    :cond_129
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p1

    :goto_131
    return-object p1

    :pswitch_132
    if-ne p0, p1, :cond_139

    invoke-virtual {p0}, Lk2/o;->w()Lk2/p;

    move-result-object p1

    goto :goto_15c

    :cond_139
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_140

    goto :goto_15c

    :cond_140
    invoke-virtual {p1}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_14b

    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p1

    goto :goto_15c

    :cond_14b
    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_154

    goto :goto_15c

    :cond_154
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p1

    :goto_15c
    return-object p1

    :pswitch_15d
    if-ne p0, p1, :cond_164

    invoke-virtual {p0}, Lk2/o;->w()Lk2/p;

    move-result-object p1

    goto :goto_187

    :cond_164
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_16b

    goto :goto_187

    :cond_16b
    invoke-virtual {p1}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_176

    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p1

    goto :goto_187

    :cond_176
    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_17f

    goto :goto_187

    :cond_17f
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p1

    :goto_187
    return-object p1

    :pswitch_188
    if-ne p0, p1, :cond_18f

    invoke-virtual {p0}, Lk2/o;->w()Lk2/p;

    move-result-object p1

    goto :goto_1b2

    :cond_18f
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_196

    goto :goto_1b2

    :cond_196
    invoke-virtual {p1}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_1a1

    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p1

    goto :goto_1b2

    :cond_1a1
    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_1aa

    goto :goto_1b2

    :cond_1aa
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p1

    :goto_1b2
    return-object p1

    :pswitch_1b3
    if-ne p0, p1, :cond_1ba

    invoke-virtual {p0}, Lk2/o;->w()Lk2/p;

    move-result-object p1

    goto :goto_1dd

    :cond_1ba
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_1c1

    goto :goto_1dd

    :cond_1c1
    invoke-virtual {p1}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_1cc

    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p1

    goto :goto_1dd

    :cond_1cc
    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_1d5

    goto :goto_1dd

    :cond_1d5
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p1

    :goto_1dd
    return-object p1

    :pswitch_1de
    if-ne p0, p1, :cond_1e5

    invoke-virtual {p0}, Lk2/o;->w()Lk2/p;

    move-result-object p1

    goto :goto_208

    :cond_1e5
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_1ec

    goto :goto_208

    :cond_1ec
    invoke-virtual {p1}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_1f7

    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p1

    goto :goto_208

    :cond_1f7
    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_200

    goto :goto_208

    :cond_200
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p1

    :goto_208
    return-object p1

    :pswitch_209
    if-ne p0, p1, :cond_210

    invoke-virtual {p0}, Lk2/o;->w()Lk2/p;

    move-result-object p1

    goto :goto_233

    :cond_210
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_217

    goto :goto_233

    :cond_217
    invoke-virtual {p1}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_222

    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p1

    goto :goto_233

    :cond_222
    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_22b

    goto :goto_233

    :cond_22b
    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p1

    :goto_233
    return-object p1

    :pswitch_234
    if-ne p0, p1, :cond_23b

    invoke-virtual {p0}, Lk2/o;->w()Lk2/p;

    move-result-object p1

    goto :goto_25f

    :cond_23b
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_242

    goto :goto_25f

    :cond_242
    invoke-virtual {p1}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_24d

    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p1

    goto :goto_25f

    :cond_24d
    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v0

    if-eqz v0, :cond_256

    goto :goto_25f

    :cond_256
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lk2/o;->J(Z)Lk2/o;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk2/o;->a(Lk2/p;)Lk2/p;

    move-result-object p1

    :goto_25f
    return-object p1

    :pswitch_260
    if-ne p0, p1, :cond_268

    invoke-virtual {p0}, Lk2/o;->w()Lk2/p;

    move-result-object p0

    goto/16 :goto_32d

    :cond_268
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_271

    :goto_26e
    move-object p0, p1

    goto/16 :goto_32d

    :cond_271
    invoke-virtual {p1}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_27d

    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p0

    goto/16 :goto_32d

    :cond_27d
    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->t()Z

    move-result v1

    if-eqz v1, :cond_286

    goto :goto_26e

    :cond_286
    iget-object v1, p0, Lk2/p;->a:Lk2/h;

    iget v2, v1, Lk2/h;->f:I

    if-eqz v2, :cond_2a4

    const/4 v0, 0x4

    if-eq v2, v0, :cond_299

    invoke-virtual {p0}, Lk2/o;->y()Lk2/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object p0

    goto/16 :goto_32d

    :cond_299
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lk2/o;->I(Z)Lk2/o;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk2/o;->a(Lk2/p;)Lk2/p;

    move-result-object p0

    goto/16 :goto_32d

    :cond_2a4
    iget-object v2, p1, Lk2/p;->b:Lk2/b0;

    iget-object p1, p1, Lk2/p;->c:Lk2/b0;

    iget-object v3, p0, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v2, v3}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v4

    invoke-virtual {p1, v0}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object p1

    invoke-virtual {v4}, Lk2/b0;->t()Z

    move-result v5

    if-eqz v5, :cond_2c3

    invoke-virtual {p1}, Lk2/b0;->t()Z

    move-result p1

    if-eqz p1, :cond_32d

    invoke-virtual {p0}, Lk2/o;->w()Lk2/p;

    move-result-object p0

    goto :goto_32d

    :cond_2c3
    invoke-virtual {v4}, Lk2/b0;->F()Lk2/b0;

    move-result-object p0

    invoke-virtual {p1}, Lk2/b0;->F()Lk2/b0;

    move-result-object v5

    invoke-virtual {v3, v3}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v6

    invoke-virtual {v6, v2}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v6

    invoke-virtual {p0, v6}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v6

    invoke-virtual {v6, v5}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v5

    invoke-virtual {v5}, Lk2/b0;->t()Z

    move-result v6

    if-eqz v6, :cond_2e6

    invoke-virtual {v1}, Lk2/h;->m()Lk2/p;

    move-result-object p0

    goto :goto_32d

    :cond_2e6
    invoke-virtual {v5, v4}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v6

    invoke-virtual {v6}, Lk2/b0;->q()Lk2/b0;

    move-result-object v6

    invoke-virtual {v5, v6}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v5

    invoke-virtual {v5, p1}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p1

    invoke-virtual {v0, v0}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v5

    invoke-virtual {v5, p0}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    invoke-virtual {p0, v4}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    invoke-virtual {p0, v6}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v4

    invoke-virtual {p1, p0}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object p1

    invoke-virtual {v4, p1}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p1

    invoke-virtual {p1, v2}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object p1

    invoke-virtual {v3, p1}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object v2

    invoke-virtual {v2, p0}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    invoke-virtual {p0, v0}, Lk2/b0;->I(Lk2/b0;)Lk2/b0;

    move-result-object p0

    new-instance v0, Lk2/o;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p0, v2}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    move-object p0, v0

    :cond_32d
    :goto_32d
    return-object p0

    :pswitch_data_32e
    .packed-switch 0x0
        :pswitch_260
        :pswitch_234
        :pswitch_209
        :pswitch_1de
        :pswitch_1b3
        :pswitch_188
        :pswitch_15d
        :pswitch_132
        :pswitch_107
        :pswitch_dc
        :pswitch_b1
        :pswitch_86
        :pswitch_5b
        :pswitch_30
    .end packed-switch
.end method
