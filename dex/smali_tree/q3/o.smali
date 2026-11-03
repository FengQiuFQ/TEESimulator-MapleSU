.class public final Lq3/o;
.super Ljava/lang/Object;


# static fields
.field public static final e:[B


# instance fields
.field public a:[B

.field public b:Lq3/n;

.field public c:Lq3/m;

.field public d:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lq3/o;->e:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public final a([B)[B
    .registers 14

    iget-object v0, p0, Lq3/o;->c:Lq3/m;

    iget-object v0, v0, La3/a;->d:Ljava/lang/Object;

    check-cast v0, Lq3/l;

    iget-object v0, v0, Lq3/l;->b:Lq3/k;

    invoke-virtual {v0}, Lq3/k;->a()Lq3/h;

    move-result-object v0

    iget-object v1, p0, Lq3/o;->c:Lq3/m;

    iget-object v1, v1, Lq3/m;->x:Ln4/b;

    iget-object v1, v1, Ln4/b;->b:[B

    invoke-virtual {v0, v1}, Lq3/h;->g([B)V

    iget v0, v0, Lq3/h;->a:I

    new-array v1, v0, [B

    iget-object v2, p0, Lq3/o;->d:Ljava/security/SecureRandom;

    const/4 v3, 0x0

    if-eqz v2, :cond_22

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_2b

    :cond_22
    iget-object v2, p0, Lq3/o;->c:Lq3/m;

    iget-object v2, v2, Lq3/m;->x:Ln4/b;

    iget-object v2, v2, Ln4/b;->b:[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2b
    iget-object v0, p0, Lq3/o;->c:Lq3/m;

    iget-object v8, p0, Lq3/o;->a:[B

    iget-object p0, v0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, Lq3/l;

    iget-object v2, v0, Lq3/m;->q:Ln4/b;

    iget-object v0, v0, Lq3/m;->x:Ln4/b;

    iget-object p0, p0, Lq3/l;->b:Lq3/k;

    invoke-virtual {p0}, Lq3/k;->a()Lq3/h;

    move-result-object v4

    iget-object p0, v0, Ln4/b;->b:[B

    invoke-virtual {v4, p0}, Lq3/h;->g([B)V

    new-instance v10, Lq3/a;

    invoke-direct {v10, v4}, Lq3/a;-><init>(Lq3/h;)V

    iget-object v5, v2, Ln4/b;->c:[B

    invoke-virtual {v4, v5, v1, v8, p1}, Lq3/h;->e([B[B[B[B)[B

    move-result-object v5

    iget-object v6, v0, Ln4/b;->b:[B

    iget-object v7, v0, Ln4/b;->c:[B

    move-object v9, p1

    invoke-virtual/range {v4 .. v9}, Lq3/h;->c([B[B[B[B[B)Lq3/c;

    move-result-object p1

    iget-object v1, p1, Lq3/c;->c:[B

    iget-wide v6, p1, Lq3/c;->a:J

    iget p1, p1, Lq3/c;->b:I

    new-instance v8, Lb1/a;

    invoke-direct {v8}, Lb1/a;-><init>()V

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lb1/a;->A(I)V

    invoke-virtual {v8, v6, v7}, Lb1/a;->x(J)V

    invoke-virtual {v8, p1}, Lb1/a;->v(I)V

    iget-object v11, v2, Ln4/b;->b:[B

    invoke-virtual {v10, v8, v1, v11, p0}, Lq3/a;->e(Lb1/a;[B[B[B)[Lq3/e;

    move-result-object v8

    new-instance v11, Lb1/a;

    invoke-direct {v11}, Lb1/a;-><init>()V

    invoke-virtual {v11, v9}, Lb1/a;->A(I)V

    invoke-virtual {v11, v6, v7}, Lb1/a;->x(J)V

    invoke-virtual {v11, p1}, Lb1/a;->v(I)V

    invoke-virtual {v10, v8, v1, p0, v11}, Lq3/a;->d([Lq3/e;[B[BLb1/a;)[B

    move-result-object p0

    const/16 v1, 0x20

    new-array v9, v1, [B

    const/4 v10, 0x2

    const/16 v11, 0x10

    invoke-static {v9, v10, v11}, Lm4/d;->w([BII)V

    const/16 v10, 0x14

    invoke-static {v9, v10, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    new-instance v1, Lq2/a;

    iget-object v2, v2, Ln4/b;->b:[B

    invoke-static {v2}, Lm4/d;->e([B)[B

    move-result-object v2

    iget-object v0, v0, Ln4/b;->b:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    invoke-direct {v1, v4, v2, v0}, Lq2/a;-><init>(Lq3/h;[B[B)V

    invoke-virtual {v1, p1, v6, v7, p0}, Lq2/a;->a(IJ[B)[B

    move-result-object p0

    array-length p1, v8

    add-int/lit8 v0, p1, 0x2

    new-array v0, v0, [[B

    aput-object v5, v0, v3

    :goto_ae
    array-length v1, v8

    if-eq v3, v1, :cond_c5

    add-int/lit8 v1, v3, 0x1

    aget-object v2, v8, v3

    iget-object v3, v2, Lq3/e;->a:[B

    iget-object v2, v2, Lq3/e;->b:[[B

    invoke-static {v2}, Lm4/d;->m([[B)[B

    move-result-object v2

    invoke-static {v3, v2}, Lm4/d;->j([B[B)[B

    move-result-object v2

    aput-object v2, v0, v1

    move v3, v1

    goto :goto_ae

    :cond_c5
    add-int/lit8 p1, p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, Lm4/d;->m([[B)[B

    move-result-object p0

    return-object p0
.end method

.method public final b([B[B)Z
    .registers 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lq3/o;->b:Lq3/n;

    iget-object v6, v0, Lq3/o;->a:[B

    iget-object v0, v1, La3/a;->d:Ljava/lang/Object;

    check-cast v0, Lq3/l;

    iget-object v8, v1, Lq3/n;->q:Ln4/b;

    iget-object v0, v0, Lq3/l;->b:Lq3/k;

    invoke-virtual {v0}, Lq3/k;->a()Lq3/h;

    move-result-object v2

    invoke-virtual {v1}, Lq3/n;->d()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lq3/h;->g([B)V

    new-instance v0, Lb1/a;

    invoke-direct {v0}, Lb1/a;-><init>()V

    iget v11, v2, Lq3/h;->h:I

    iget v12, v2, Lq3/h;->g:I

    add-int/lit8 v3, v12, 0x1

    mul-int/2addr v3, v11

    add-int/lit8 v3, v3, 0x1

    iget v4, v2, Lq3/h;->i:I

    add-int/2addr v3, v4

    iget v13, v2, Lq3/h;->f:I

    iget v15, v2, Lq3/h;->c:I

    mul-int v4, v13, v15

    add-int/2addr v4, v3

    iget v10, v2, Lq3/h;->a:I

    mul-int/2addr v4, v10

    move-object/from16 v3, p2

    array-length v5, v3

    const/4 v7, 0x0

    if-eq v4, v5, :cond_3b

    return v7

    :cond_3b
    new-instance v9, Lg1/d;

    iget v14, v2, Lq3/h;->j:I

    move-object/from16 v16, v3

    invoke-direct/range {v9 .. v16}, Lg1/d;-><init>(IIIIII[B)V

    iget-object v3, v9, Lg1/d;->h:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, v9, Lg1/d;->j:Ljava/lang/Object;

    move-object v10, v4

    check-cast v10, [Lq3/e;

    iget-object v4, v9, Lg1/d;->i:Ljava/lang/Object;

    move-object v13, v4

    check-cast v13, [Lq3/e;

    invoke-virtual {v1}, Lq3/n;->d()[B

    move-result-object v4

    iget-object v5, v8, Ln4/b;->c:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    move v9, v7

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Lq3/h;->c([B[B[B[B[B)Lq3/c;

    move-result-object v3

    iget-object v4, v3, Lq3/c;->c:[B

    iget-wide v5, v3, Lq3/c;->a:J

    iget v3, v3, Lq3/c;->b:I

    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Lb1/a;->A(I)V

    invoke-virtual {v0, v9}, Lb1/a;->w(I)V

    invoke-virtual {v0, v5, v6}, Lb1/a;->x(J)V

    invoke-virtual {v0, v3}, Lb1/a;->v(I)V

    new-instance v7, Lq3/a;

    invoke-direct {v7, v2}, Lq3/a;-><init>(Lq3/h;)V

    invoke-virtual {v1}, Lq3/n;->d()[B

    move-result-object v11

    invoke-virtual {v7, v10, v4, v11, v0}, Lq3/a;->d([Lq3/e;[B[BLb1/a;)[B

    move-result-object v12

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lb1/a;->A(I)V

    invoke-virtual {v0, v9}, Lb1/a;->w(I)V

    invoke-virtual {v0, v5, v6}, Lb1/a;->x(J)V

    invoke-virtual {v0, v3}, Lb1/a;->v(I)V

    new-instance v11, Lq2/a;

    const/4 v0, 0x0

    invoke-virtual {v1}, Lq3/n;->d()[B

    move-result-object v4

    invoke-direct {v11, v2, v0, v4}, Lq2/a;-><init>(Lq3/h;[B[B)V

    invoke-virtual {v1}, Lq3/n;->d()[B

    move-result-object v14

    iget-object v0, v8, Ln4/b;->c:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v18

    move/from16 v17, v3

    move-wide v15, v5

    invoke-virtual/range {v11 .. v18}, Lq2/a;->c([B[Lq3/e;[BJI[B)Z

    move-result v0

    return v0
.end method
