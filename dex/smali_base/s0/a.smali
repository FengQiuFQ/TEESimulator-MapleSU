.class public final Ls0/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/w;


# static fields
.field public static final s:[J

.field public static final t:[[B


# instance fields
.field public final g:I

.field public final h:[B

.field public final i:[B

.field public final j:[B

.field public final k:[B

.field public l:I

.field public final m:[J

.field public n:[J

.field public o:J

.field public p:J

.field public q:J

.field public r:J


# direct methods
.method static constructor <clinit>()V
    .registers 13

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_4e

    sput-object v0, Ls0/a;->s:[J

    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_72

    new-array v2, v0, [B

    fill-array-data v2, :array_7e

    new-array v3, v0, [B

    fill-array-data v3, :array_8a

    new-array v4, v0, [B

    fill-array-data v4, :array_96

    new-array v5, v0, [B

    fill-array-data v5, :array_a2

    new-array v6, v0, [B

    fill-array-data v6, :array_ae

    new-array v7, v0, [B

    fill-array-data v7, :array_ba

    new-array v8, v0, [B

    fill-array-data v8, :array_c6

    new-array v9, v0, [B

    fill-array-data v9, :array_d2

    new-array v10, v0, [B

    fill-array-data v10, :array_de

    new-array v11, v0, [B

    fill-array-data v11, :array_ea

    new-array v12, v0, [B

    fill-array-data v12, :array_f6

    filled-new-array/range {v1 .. v12}, [[B

    move-result-object v0

    sput-object v0, Ls0/a;->t:[[B

    return-void

    :array_4e
    .array-data 8
        0x6a09e667f3bcc908L    # 6.344059688352415E202
        -0x4498517a7b3558c5L    # -1.5671250923562117E-22
        0x3c6ef372fe94f82bL    # 1.342284505169847E-17
        -0x5ab00ac5a0e2c90fL
        0x510e527fade682d1L    # 2.876275032471325E82
        -0x64fa9773d4c193e1L
        0x1f83d9abfb41bd6bL    # 7.229011495228878E-157
        0x5be0cd19137e2179L    # 3.816167663240759E134
    .end array-data

    :array_72
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data

    :array_7e
    .array-data 1
        0xet
        0xat
        0x4t
        0x8t
        0x9t
        0xft
        0xdt
        0x6t
        0x1t
        0xct
        0x0t
        0x2t
        0xbt
        0x7t
        0x5t
        0x3t
    .end array-data

    :array_8a
    .array-data 1
        0xbt
        0x8t
        0xct
        0x0t
        0x5t
        0x2t
        0xft
        0xdt
        0xat
        0xet
        0x3t
        0x6t
        0x7t
        0x1t
        0x9t
        0x4t
    .end array-data

    :array_96
    .array-data 1
        0x7t
        0x9t
        0x3t
        0x1t
        0xdt
        0xct
        0xbt
        0xet
        0x2t
        0x6t
        0x5t
        0xat
        0x4t
        0x0t
        0xft
        0x8t
    .end array-data

    :array_a2
    .array-data 1
        0x9t
        0x0t
        0x5t
        0x7t
        0x2t
        0x4t
        0xat
        0xft
        0xet
        0x1t
        0xbt
        0xct
        0x6t
        0x8t
        0x3t
        0xdt
    .end array-data

    :array_ae
    .array-data 1
        0x2t
        0xct
        0x6t
        0xat
        0x0t
        0xbt
        0x8t
        0x3t
        0x4t
        0xdt
        0x7t
        0x5t
        0xft
        0xet
        0x1t
        0x9t
    .end array-data

    :array_ba
    .array-data 1
        0xct
        0x5t
        0x1t
        0xft
        0xet
        0xdt
        0x4t
        0xat
        0x0t
        0x7t
        0x6t
        0x3t
        0x9t
        0x2t
        0x8t
        0xbt
    .end array-data

    :array_c6
    .array-data 1
        0xdt
        0xbt
        0x7t
        0xet
        0xct
        0x1t
        0x3t
        0x9t
        0x5t
        0x0t
        0xft
        0x4t
        0x8t
        0x6t
        0x2t
        0xat
    .end array-data

    :array_d2
    .array-data 1
        0x6t
        0xft
        0xet
        0x9t
        0xbt
        0x3t
        0x0t
        0x8t
        0xct
        0x2t
        0xdt
        0x7t
        0x1t
        0x4t
        0xat
        0x5t
    .end array-data

    :array_de
    .array-data 1
        0xat
        0x2t
        0x8t
        0x4t
        0x7t
        0x6t
        0x1t
        0x5t
        0xft
        0xbt
        0x9t
        0xet
        0x3t
        0xct
        0xdt
        0x0t
    .end array-data

    :array_ea
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data

    :array_f6
    .array-data 1
        0xet
        0xat
        0x4t
        0x8t
        0x9t
        0xft
        0xdt
        0x6t
        0x1t
        0xct
        0x0t
        0x2t
        0xbt
        0x7t
        0x5t
        0x3t
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, Ls0/a;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Ls0/a;->h:[B

    iput-object v0, p0, Ls0/a;->i:[B

    iput-object v0, p0, Ls0/a;->j:[B

    iput-object v0, p0, Ls0/a;->k:[B

    const/4 v1, 0x0

    iput v1, p0, Ls0/a;->l:I

    const/16 v1, 0x10

    new-array v1, v1, [J

    iput-object v1, p0, Ls0/a;->m:[J

    iput-object v0, p0, Ls0/a;->n:[J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ls0/a;->o:J

    iput-wide v0, p0, Ls0/a;->p:J

    iput-wide v0, p0, Ls0/a;->q:J

    iput-wide v0, p0, Ls0/a;->r:J

    const/16 v0, 0x8

    if-lt p1, v0, :cond_44

    const/16 v1, 0x200

    if-gt p1, v1, :cond_44

    rem-int/lit8 v1, p1, 0x8

    if-nez v1, :cond_44

    const/16 v1, 0x80

    new-array v1, v1, [B

    iput-object v1, p0, Ls0/a;->k:[B

    div-int/2addr p1, v0

    iput p1, p0, Ls0/a;->g:I

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-virtual {p0}, Ls0/a;->d()V

    return-void

    :cond_44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "BLAKE2b digest bit length must be a multiple of 8 and not greater than 512"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ls0/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, Ls0/a;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Ls0/a;->h:[B

    iput-object v0, p0, Ls0/a;->i:[B

    iput-object v0, p0, Ls0/a;->j:[B

    iput-object v0, p0, Ls0/a;->k:[B

    const/4 v1, 0x0

    iput v1, p0, Ls0/a;->l:I

    const/16 v1, 0x10

    new-array v1, v1, [J

    iput-object v1, p0, Ls0/a;->m:[J

    iput-object v0, p0, Ls0/a;->n:[J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ls0/a;->o:J

    iput-wide v0, p0, Ls0/a;->p:J

    iput-wide v0, p0, Ls0/a;->q:J

    iput-wide v0, p0, Ls0/a;->r:J

    iget v0, p1, Ls0/a;->l:I

    iput v0, p0, Ls0/a;->l:I

    iget-object v0, p1, Ls0/a;->k:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iput-object v0, p0, Ls0/a;->k:[B

    iget-object v0, p1, Ls0/a;->j:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iput-object v0, p0, Ls0/a;->j:[B

    iget v0, p1, Ls0/a;->g:I

    iput v0, p0, Ls0/a;->g:I

    iget-object v0, p1, Ls0/a;->n:[J

    invoke-static {v0}, Lm4/d;->g([J)[J

    move-result-object v0

    iput-object v0, p0, Ls0/a;->n:[J

    iget-object v0, p1, Ls0/a;->i:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iput-object v0, p0, Ls0/a;->i:[B

    iget-object v0, p1, Ls0/a;->h:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iput-object v0, p0, Ls0/a;->h:[B

    iget-wide v0, p1, Ls0/a;->o:J

    iput-wide v0, p0, Ls0/a;->o:J

    iget-wide v0, p1, Ls0/a;->p:J

    iput-wide v0, p0, Ls0/a;->p:J

    iget-wide v0, p1, Ls0/a;->q:J

    iput-wide v0, p0, Ls0/a;->q:J

    return-void
.end method


# virtual methods
.method public final a(JJIIII)V
    .registers 13

    iget-object p0, p0, Ls0/a;->m:[J

    aget-wide v0, p0, p5

    aget-wide v2, p0, p6

    add-long/2addr v0, v2

    add-long/2addr v0, p1

    aput-wide v0, p0, p5

    aget-wide p1, p0, p8

    xor-long/2addr p1, v0

    const/16 v0, 0x20

    invoke-static {p1, p2, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p1

    aput-wide p1, p0, p8

    aget-wide v0, p0, p7

    add-long/2addr v0, p1

    aput-wide v0, p0, p7

    aget-wide p1, p0, p6

    xor-long/2addr p1, v0

    const/16 v0, 0x18

    invoke-static {p1, p2, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p1

    aput-wide p1, p0, p6

    aget-wide v0, p0, p5

    add-long/2addr v0, p1

    add-long/2addr v0, p3

    aput-wide v0, p0, p5

    aget-wide p1, p0, p8

    xor-long/2addr p1, v0

    const/16 p3, 0x10

    invoke-static {p1, p2, p3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p1

    aput-wide p1, p0, p8

    aget-wide p3, p0, p7

    add-long/2addr p3, p1

    aput-wide p3, p0, p7

    aget-wide p1, p0, p6

    xor-long/2addr p1, p3

    const/16 p3, 0x3f

    invoke-static {p1, p2, p3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p1

    aput-wide p1, p0, p6

    return-void
.end method

.method public final c(I[B)V
    .registers 27

    move-object/from16 v0, p0

    iget-object v1, v0, Ls0/a;->n:[J

    array-length v2, v1

    const/4 v9, 0x0

    iget-object v10, v0, Ls0/a;->m:[J

    invoke-static {v1, v9, v10, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Ls0/a;->n:[J

    array-length v1, v1

    sget-object v2, Ls0/a;->s:[J

    const/4 v11, 0x4

    invoke-static {v2, v9, v10, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v3, v0, Ls0/a;->o:J

    aget-wide v5, v2, v11

    xor-long/2addr v3, v5

    const/16 v12, 0xc

    aput-wide v3, v10, v12

    iget-wide v3, v0, Ls0/a;->p:J

    const/4 v13, 0x5

    aget-wide v5, v2, v13

    xor-long/2addr v3, v5

    const/16 v14, 0xd

    aput-wide v3, v10, v14

    iget-wide v3, v0, Ls0/a;->q:J

    const/4 v15, 0x6

    aget-wide v5, v2, v15

    xor-long/2addr v3, v5

    const/16 v16, 0xe

    aput-wide v3, v10, v16

    iget-wide v3, v0, Ls0/a;->r:J

    const/16 v17, 0x7

    aget-wide v1, v2, v17

    xor-long/2addr v1, v3

    const/16 v18, 0xf

    aput-wide v1, v10, v18

    const/16 v1, 0x10

    new-array v1, v1, [J

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {v2, v3, v1}, Lm4/d;->D(I[B[J)V

    move v2, v9

    :goto_48
    if-ge v2, v12, :cond_10c

    sget-object v19, Ls0/a;->t:[[B

    aget-object v3, v19, v2

    aget-byte v4, v3, v9

    aget-wide v4, v1, v4

    const/4 v6, 0x1

    aget-byte v3, v3, v6

    aget-wide v6, v1, v3

    move-wide/from16 v22, v4

    move-object v5, v1

    move-wide v3, v6

    move v6, v2

    move-wide/from16 v1, v22

    const/16 v7, 0x8

    const/16 v8, 0xc

    move-object/from16 v20, v5

    const/4 v5, 0x0

    move/from16 v21, v6

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v8}, Ls0/a;->a(JJIIII)V

    aget-object v0, v19, v21

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    aget-wide v1, v20, v1

    const/4 v3, 0x3

    aget-byte v0, v0, v3

    aget-wide v3, v20, v0

    const/16 v7, 0x9

    const/16 v8, 0xd

    const/4 v5, 0x1

    const/4 v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Ls0/a;->a(JJIIII)V

    aget-object v0, v19, v21

    aget-byte v1, v0, v11

    aget-wide v1, v20, v1

    aget-byte v0, v0, v13

    aget-wide v3, v20, v0

    const/16 v7, 0xa

    const/16 v8, 0xe

    const/4 v5, 0x2

    const/4 v6, 0x6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Ls0/a;->a(JJIIII)V

    aget-object v0, v19, v21

    aget-byte v1, v0, v15

    aget-wide v1, v20, v1

    aget-byte v0, v0, v17

    aget-wide v3, v20, v0

    const/16 v7, 0xb

    const/16 v8, 0xf

    const/4 v5, 0x3

    const/4 v6, 0x7

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Ls0/a;->a(JJIIII)V

    aget-object v0, v19, v21

    const/16 v1, 0x8

    aget-byte v1, v0, v1

    aget-wide v1, v20, v1

    const/16 v3, 0x9

    aget-byte v0, v0, v3

    aget-wide v3, v20, v0

    const/16 v7, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Ls0/a;->a(JJIIII)V

    aget-object v0, v19, v21

    const/16 v1, 0xa

    aget-byte v1, v0, v1

    aget-wide v1, v20, v1

    const/16 v3, 0xb

    aget-byte v0, v0, v3

    aget-wide v3, v20, v0

    const/16 v7, 0xb

    const/16 v8, 0xc

    const/4 v5, 0x1

    const/4 v6, 0x6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Ls0/a;->a(JJIIII)V

    aget-object v0, v19, v21

    aget-byte v1, v0, v12

    aget-wide v1, v20, v1

    aget-byte v0, v0, v14

    aget-wide v3, v20, v0

    const/16 v7, 0x8

    const/16 v8, 0xd

    const/4 v5, 0x2

    const/4 v6, 0x7

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Ls0/a;->a(JJIIII)V

    aget-object v0, v19, v21

    aget-byte v1, v0, v16

    aget-wide v1, v20, v1

    aget-byte v0, v0, v18

    aget-wide v3, v20, v0

    const/16 v7, 0x9

    const/16 v8, 0xe

    const/4 v5, 0x3

    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Ls0/a;->a(JJIIII)V

    add-int/lit8 v2, v21, 0x1

    move-object/from16 v1, v20

    goto/16 :goto_48

    :cond_10c
    :goto_10c
    iget-object v1, v0, Ls0/a;->n:[J

    array-length v2, v1

    if-ge v9, v2, :cond_120

    aget-wide v2, v1, v9

    aget-wide v4, v10, v9

    xor-long/2addr v2, v4

    add-int/lit8 v4, v9, 0x8

    aget-wide v4, v10, v4

    xor-long/2addr v2, v4

    aput-wide v2, v1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_10c

    :cond_120
    return-void
.end method

.method public final d()V
    .registers 12

    iget-object v0, p0, Ls0/a;->n:[J

    if-nez v0, :cond_6b

    const/16 v0, 0x8

    new-array v1, v0, [J

    iput-object v1, p0, Ls0/a;->n:[J

    sget-object v2, Ls0/a;->s:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    iget v6, p0, Ls0/a;->g:I

    const/high16 v7, 0x1010000

    or-int/2addr v6, v7

    int-to-long v6, v6

    xor-long/2addr v4, v6

    aput-wide v4, v1, v3

    const/4 v4, 0x1

    aget-wide v5, v2, v4

    aput-wide v5, v1, v4

    const/4 v4, 0x2

    aget-wide v5, v2, v4

    int-to-long v7, v3

    xor-long/2addr v5, v7

    aput-wide v5, v1, v4

    const/4 v4, 0x3

    aget-wide v5, v2, v4

    aput-wide v5, v1, v4

    const/4 v4, 0x4

    aget-wide v5, v2, v4

    aput-wide v5, v1, v4

    const/4 v7, 0x5

    aget-wide v8, v2, v7

    aput-wide v8, v1, v7

    iget-object v8, p0, Ls0/a;->h:[B

    if-eqz v8, :cond_49

    invoke-static {v3, v8}, Lm4/d;->C(I[B)J

    move-result-wide v9

    xor-long/2addr v5, v9

    aput-wide v5, v1, v4

    iget-object v1, p0, Ls0/a;->n:[J

    aget-wide v4, v1, v7

    invoke-static {v0, v8}, Lm4/d;->C(I[B)J

    move-result-wide v8

    xor-long/2addr v4, v8

    aput-wide v4, v1, v7

    :cond_49
    iget-object v1, p0, Ls0/a;->n:[J

    const/4 v4, 0x6

    aget-wide v5, v2, v4

    aput-wide v5, v1, v4

    const/4 v7, 0x7

    aget-wide v8, v2, v7

    aput-wide v8, v1, v7

    iget-object v2, p0, Ls0/a;->i:[B

    if-eqz v2, :cond_6b

    invoke-static {v3, v2}, Lm4/d;->C(I[B)J

    move-result-wide v8

    xor-long/2addr v5, v8

    aput-wide v5, v1, v4

    iget-object p0, p0, Ls0/a;->n:[J

    aget-wide v3, p0, v7

    invoke-static {v0, v2}, Lm4/d;->C(I[B)J

    move-result-wide v0

    xor-long/2addr v0, v3

    aput-wide v0, p0, v7

    :cond_6b
    return-void
.end method

.method public final doFinal([BI)I
    .registers 15

    array-length v0, p1

    iget v1, p0, Ls0/a;->g:I

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_5d

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Ls0/a;->q:J

    iget-wide v2, p0, Ls0/a;->o:J

    iget v0, p0, Ls0/a;->l:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Ls0/a;->o:J

    const-wide/16 v4, 0x0

    if-lez v0, :cond_21

    cmp-long v0, v2, v4

    if-nez v0, :cond_21

    iget-wide v2, p0, Ls0/a;->p:J

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iput-wide v2, p0, Ls0/a;->p:J

    :cond_21
    const/4 v0, 0x0

    iget-object v2, p0, Ls0/a;->k:[B

    invoke-virtual {p0, v0, v2}, Ls0/a;->c(I[B)V

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V

    iget-object v2, p0, Ls0/a;->m:[J

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    ushr-int/lit8 v2, v1, 0x3

    and-int/lit8 v3, v1, 0x7

    iget-object v6, p0, Ls0/a;->n:[J

    move v8, p2

    move v7, v0

    :goto_37
    const/16 v9, 0x8

    if-ge v7, v2, :cond_44

    aget-wide v10, v6, v7

    invoke-static {v8, v10, v11, p1}, Lm4/d;->F(IJ[B)V

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    :cond_44
    if-lez v3, :cond_54

    new-array v6, v9, [B

    iget-object v7, p0, Ls0/a;->n:[J

    aget-wide v7, v7, v2

    invoke-static {v0, v7, v8, v6}, Lm4/d;->F(IJ[B)V

    add-int/2addr p2, v1

    sub-int/2addr p2, v3

    invoke-static {v6, v0, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_54
    iget-object p1, p0, Ls0/a;->n:[J

    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    invoke-virtual {p0}, Ls0/a;->reset()V

    return v1

    :cond_5d
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "BLAKE2b"

    return-object p0
.end method

.method public final getByteLength()I
    .registers 1

    const/16 p0, 0x80

    return p0
.end method

.method public final getDigestSize()I
    .registers 1

    iget p0, p0, Ls0/a;->g:I

    return p0
.end method

.method public final reset()V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Ls0/a;->l:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ls0/a;->q:J

    iput-wide v1, p0, Ls0/a;->r:J

    iput-wide v1, p0, Ls0/a;->o:J

    iput-wide v1, p0, Ls0/a;->p:J

    const/4 v1, 0x0

    iput-object v1, p0, Ls0/a;->n:[J

    iget-object v1, p0, Ls0/a;->k:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    iget-object v2, p0, Ls0/a;->j:[B

    if-eqz v2, :cond_21

    array-length v3, v2

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x80

    iput v0, p0, Ls0/a;->l:I

    :cond_21
    invoke-virtual {p0}, Ls0/a;->d()V

    return-void
.end method

.method public final update(B)V
    .registers 8

    iget v0, p0, Ls0/a;->l:I

    rsub-int v1, v0, 0x80

    const/4 v2, 0x1

    iget-object v3, p0, Ls0/a;->k:[B

    if-nez v1, :cond_29

    iget-wide v0, p0, Ls0/a;->o:J

    const-wide/16 v4, 0x80

    add-long/2addr v0, v4

    iput-wide v0, p0, Ls0/a;->o:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1d

    iget-wide v0, p0, Ls0/a;->p:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, p0, Ls0/a;->p:J

    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Ls0/a;->c(I[B)V

    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([BB)V

    aput-byte p1, v3, v0

    iput v2, p0, Ls0/a;->l:I

    return-void

    :cond_29
    aput-byte p1, v3, v0

    add-int/2addr v0, v2

    iput v0, p0, Ls0/a;->l:I

    return-void
.end method

.method public final update([BII)V
    .registers 16

    if-eqz p1, :cond_59

    if-nez p3, :cond_5

    goto :goto_59

    :cond_5
    iget v0, p0, Ls0/a;->l:I

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x80

    iget-object v7, p0, Ls0/a;->k:[B

    const/4 v8, 0x0

    if-eqz v0, :cond_39

    rsub-int v9, v0, 0x80

    if-ge v9, p3, :cond_30

    invoke-static {p1, p2, v7, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v10, p0, Ls0/a;->o:J

    add-long/2addr v10, v5

    iput-wide v10, p0, Ls0/a;->o:J

    cmp-long v0, v10, v3

    if-nez v0, :cond_27

    iget-wide v10, p0, Ls0/a;->p:J

    add-long/2addr v10, v1

    iput-wide v10, p0, Ls0/a;->p:J

    :cond_27
    invoke-virtual {p0, v8, v7}, Ls0/a;->c(I[B)V

    iput v8, p0, Ls0/a;->l:I

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_3a

    :cond_30
    invoke-static {p1, p2, v7, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_33
    iget p1, p0, Ls0/a;->l:I

    add-int/2addr p1, p3

    iput p1, p0, Ls0/a;->l:I

    return-void

    :cond_39
    move v9, v8

    :goto_3a
    add-int/2addr p3, p2

    add-int/lit8 v0, p3, -0x80

    add-int/2addr p2, v9

    :goto_3e
    if-ge p2, v0, :cond_54

    iget-wide v9, p0, Ls0/a;->o:J

    add-long/2addr v9, v5

    iput-wide v9, p0, Ls0/a;->o:J

    cmp-long v9, v9, v3

    if-nez v9, :cond_4e

    iget-wide v9, p0, Ls0/a;->p:J

    add-long/2addr v9, v1

    iput-wide v9, p0, Ls0/a;->p:J

    :cond_4e
    invoke-virtual {p0, p2, p1}, Ls0/a;->c(I[B)V

    add-int/lit16 p2, p2, 0x80

    goto :goto_3e

    :cond_54
    sub-int/2addr p3, p2

    invoke-static {p1, p2, v7, v8, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_33

    :cond_59
    :goto_59
    return-void
.end method
