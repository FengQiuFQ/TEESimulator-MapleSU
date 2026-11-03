.class public abstract Lj1/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lj1/d;->a:Ljava/util/HashSet;

    sget-object v1, Lr/a;->s:Lm/q;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lr/a;->t:Lm/q;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lr/a;->u:Lm/q;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lr/a;->v:Lm/q;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lr/a;->w:Lm/q;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Le1/b;Lm/y;)Ld0/t;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v0, Le1/z0;

    const/4 v3, 0x0

    if-eqz v2, :cond_2f

    check-cast v0, Le1/a1;

    new-instance v2, Ld0/t;

    new-instance v4, Ll0/b;

    sget-object v5, Ld0/r;->a:Lm/q;

    sget-object v6, Lm/v0;->d:Lm/v0;

    invoke-direct {v4, v5, v6}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v7, Ld0/w;

    iget-object v8, v0, Le1/z0;->d:Ljava/math/BigInteger;

    iget-object v9, v0, Le1/a1;->z1:Ljava/math/BigInteger;

    iget-object v10, v0, Le1/z0;->q:Ljava/math/BigInteger;

    iget-object v11, v0, Le1/a1;->A1:Ljava/math/BigInteger;

    iget-object v12, v0, Le1/a1;->B1:Ljava/math/BigInteger;

    iget-object v13, v0, Le1/a1;->C1:Ljava/math/BigInteger;

    iget-object v14, v0, Le1/a1;->D1:Ljava/math/BigInteger;

    iget-object v15, v0, Le1/a1;->E1:Ljava/math/BigInteger;

    invoke-direct/range {v7 .. v15}, Ld0/w;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, v4, v7, v1, v3}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v2

    :cond_2f
    instance-of v2, v0, Le1/n;

    if-eqz v2, :cond_58

    check-cast v0, Le1/n;

    iget-object v2, v0, La3/a;->d:Ljava/lang/Object;

    check-cast v2, Le1/m;

    new-instance v4, Ld0/t;

    new-instance v5, Ll0/b;

    sget-object v6, Lm0/m;->r1:Lm/q;

    new-instance v7, Ll0/p;

    iget-object v8, v2, Le1/m;->q:Ljava/math/BigInteger;

    iget-object v9, v2, Le1/m;->d:Ljava/math/BigInteger;

    iget-object v2, v2, Le1/m;->c:Ljava/math/BigInteger;

    invoke-direct {v7, v8, v9, v2}, Ll0/p;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v5, v6, v7}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v2, Lm/l;

    iget-object v0, v0, Le1/n;->q:Ljava/math/BigInteger;

    invoke-direct {v2, v0}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v4, v5, v2, v1, v3}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v4

    :cond_58
    instance-of v2, v0, Le1/w;

    const/4 v4, 0x0

    if-eqz v2, :cond_134

    check-cast v0, Le1/w;

    iget-object v2, v0, Le1/w;->q:Ljava/math/BigInteger;

    iget-object v0, v0, Le1/u;->d:Le1/r;

    if-nez v0, :cond_70

    new-instance v5, Lm0/f;

    invoke-direct {v5}, Lm0/f;-><init>()V

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    goto/16 :goto_10d

    :cond_70
    iget-object v5, v0, Le1/r;->j:Ljava/math/BigInteger;

    instance-of v6, v0, Le1/s;

    if-eqz v6, :cond_d7

    new-instance v1, Lr/f;

    check-cast v0, Le1/s;

    iget-object v5, v0, Le1/s;->n:Lm/q;

    iget-object v6, v0, Le1/s;->o:Lm/q;

    iget-object v0, v0, Le1/s;->p:Lm/q;

    invoke-direct {v1, v5, v6, v0}, Lr/f;-><init>(Lm/q;Lm/q;Lm/q;)V

    sget-object v0, Lj1/d;->a:Ljava/util/HashSet;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    const/16 v6, 0x20

    if-eqz v0, :cond_91

    sget-object v0, Lr/a;->l:Lm/q;

    goto :goto_a8

    :cond_91
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v7, 0x100

    if-le v0, v7, :cond_9b

    move v0, v5

    goto :goto_9c

    :cond_9b
    move v0, v4

    :goto_9c
    if-eqz v0, :cond_a1

    sget-object v7, Lz1/a;->f:Lm/q;

    goto :goto_a3

    :cond_a1
    sget-object v7, Lz1/a;->e:Lm/q;

    :goto_a3
    if-eqz v0, :cond_a7

    const/16 v6, 0x40

    :cond_a7
    move-object v0, v7

    :goto_a8
    new-array v7, v6, [B

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    array-length v8, v2

    if-ge v8, v6, :cond_bb

    new-array v8, v6, [B

    array-length v9, v2

    sub-int v9, v6, v9

    array-length v10, v2

    invoke-static {v2, v4, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v8

    :cond_bb
    :goto_bb
    if-eq v4, v6, :cond_c7

    array-length v8, v2

    sub-int/2addr v8, v5

    sub-int/2addr v8, v4

    aget-byte v8, v2, v8

    aput-byte v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_bb

    :cond_c7
    new-instance v2, Ld0/t;

    new-instance v4, Ll0/b;

    invoke-direct {v4, v0, v1}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v0, Lm/x0;

    invoke-direct {v0, v7}, Lm/r;-><init>([B)V

    invoke-direct {v2, v4, v0, v3, v3}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v2

    :cond_d7
    instance-of v6, v0, Le1/v;

    if-eqz v6, :cond_ef

    new-instance v6, Lm0/f;

    move-object v7, v0

    check-cast v7, Le1/v;

    iget-object v7, v7, Le1/v;->m:Lm/q;

    invoke-direct {v6, v7}, Lm0/f;-><init>(Lm/q;)V

    :goto_e5
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    move-object/from16 v16, v6

    move v6, v5

    move-object/from16 v5, v16

    goto :goto_10d

    :cond_ef
    new-instance v7, Lm0/h;

    iget-object v8, v0, Le1/r;->g:Lk2/h;

    new-instance v9, Lm0/j;

    iget-object v6, v0, Le1/r;->i:Lk2/p;

    invoke-direct {v9, v6, v4}, Lm0/j;-><init>(Lk2/p;Z)V

    iget-object v10, v0, Le1/r;->j:Ljava/math/BigInteger;

    iget-object v11, v0, Le1/r;->k:Ljava/math/BigInteger;

    iget-object v6, v0, Le1/r;->h:[B

    invoke-static {v6}, Lm4/d;->e([B)[B

    move-result-object v12

    invoke-direct/range {v7 .. v12}, Lm0/h;-><init>(Lk2/h;Lm0/j;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v6, Lm0/f;

    invoke-direct {v6, v7}, Lm0/f;-><init>(Lm0/h;)V

    goto :goto_e5

    :goto_10d
    new-instance v7, Lk2/q;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lk2/q;-><init>(I)V

    iget-object v0, v0, Le1/r;->i:Lk2/p;

    invoke-virtual {v7, v0, v2}, Lk2/b0;->w(Lk2/p;Ljava/math/BigInteger;)Lk2/p;

    move-result-object v0

    new-instance v7, Lm/p0;

    invoke-virtual {v0, v4}, Lk2/p;->h(Z)[B

    move-result-object v0

    invoke-direct {v7, v0, v4}, Lm/b;-><init>([BI)V

    new-instance v0, Ld0/t;

    new-instance v4, Ll0/b;

    sget-object v8, Lm0/m;->M0:Lm/q;

    invoke-direct {v4, v8, v5}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v8, Lf0/a;

    invoke-direct {v8, v6, v2, v7, v5}, Lf0/a;-><init>(ILjava/math/BigInteger;Lm/b;Lm0/f;)V

    invoke-direct {v0, v4, v8, v1, v3}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v0

    :cond_134
    instance-of v2, v0, Le1/e1;

    if-eqz v2, :cond_15c

    check-cast v0, Le1/e1;

    new-instance v2, Ld0/t;

    new-instance v3, Ll0/b;

    sget-object v4, Lo1/a;->b:Lm/q;

    invoke-direct {v3, v4}, Ll0/b;-><init>(Lm/q;)V

    new-instance v4, Lm/x0;

    iget-object v5, v0, Le1/e1;->d:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lm/r;-><init>([B)V

    invoke-virtual {v0}, Le1/e1;->a()Le1/f1;

    move-result-object v0

    iget-object v0, v0, Le1/f1;->d:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    invoke-direct {v2, v3, v4, v1, v0}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v2

    :cond_15c
    instance-of v2, v0, Le1/c1;

    if-eqz v2, :cond_184

    check-cast v0, Le1/c1;

    new-instance v2, Ld0/t;

    new-instance v3, Ll0/b;

    sget-object v4, Lo1/a;->a:Lm/q;

    invoke-direct {v3, v4}, Ll0/b;-><init>(Lm/q;)V

    new-instance v4, Lm/x0;

    iget-object v5, v0, Le1/c1;->d:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lm/r;-><init>([B)V

    invoke-virtual {v0}, Le1/c1;->a()Le1/d1;

    move-result-object v0

    iget-object v0, v0, Le1/d1;->d:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    invoke-direct {v2, v3, v4, v1, v0}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v2

    :cond_184
    instance-of v2, v0, Le1/a0;

    if-eqz v2, :cond_1af

    check-cast v0, Le1/a0;

    new-instance v2, Ld0/t;

    new-instance v3, Ll0/b;

    sget-object v5, Lo1/a;->d:Lm/q;

    invoke-direct {v3, v5}, Ll0/b;-><init>(Lm/q;)V

    new-instance v5, Lm/x0;

    iget-object v6, v0, Le1/a0;->d:[B

    invoke-static {v6}, Lm4/d;->e([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lm/r;-><init>([B)V

    invoke-virtual {v0}, Le1/a0;->a()Le1/b0;

    move-result-object v0

    const/16 v6, 0x39

    new-array v6, v6, [B

    iget-object v0, v0, Le1/b0;->d:Lq2/e;

    invoke-static {v0, v6, v4}, Lq2/f;->o(Lq2/e;[BI)V

    invoke-direct {v2, v3, v5, v1, v6}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v2

    :cond_1af
    instance-of v2, v0, Le1/y;

    if-eqz v2, :cond_1d5

    check-cast v0, Le1/y;

    new-instance v2, Ld0/t;

    new-instance v3, Ll0/b;

    sget-object v4, Lo1/a;->c:Lm/q;

    invoke-direct {v3, v4}, Ll0/b;-><init>(Lm/q;)V

    new-instance v4, Lm/x0;

    iget-object v5, v0, Le1/y;->d:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lm/r;-><init>([B)V

    invoke-virtual {v0}, Le1/y;->a()Le1/z;

    move-result-object v0

    invoke-virtual {v0}, Le1/z;->getEncoded()[B

    move-result-object v0

    invoke-direct {v2, v3, v4, v1, v0}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-object v2

    :cond_1d5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "key parameters not recognized"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
