.class public final Ls0/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/w;


# static fields
.field public static final v:[I

.field public static final w:[[B


# instance fields
.field public final g:I

.field public h:I

.field public i:[B

.field public j:[B

.field public k:[B

.field public final l:I

.field public final m:I

.field public n:[B

.field public o:I

.field public final p:[I

.field public q:[I

.field public r:I

.field public s:I

.field public t:I

.field public u:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_44

    sput-object v0, Ls0/b;->v:[I

    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_58

    new-array v2, v0, [B

    fill-array-data v2, :array_64

    new-array v3, v0, [B

    fill-array-data v3, :array_70

    new-array v4, v0, [B

    fill-array-data v4, :array_7c

    new-array v5, v0, [B

    fill-array-data v5, :array_88

    new-array v6, v0, [B

    fill-array-data v6, :array_94

    new-array v7, v0, [B

    fill-array-data v7, :array_a0

    new-array v8, v0, [B

    fill-array-data v8, :array_ac

    new-array v9, v0, [B

    fill-array-data v9, :array_b8

    new-array v10, v0, [B

    fill-array-data v10, :array_c4

    filled-new-array/range {v1 .. v10}, [[B

    move-result-object v0

    sput-object v0, Ls0/b;->w:[[B

    return-void

    :array_44
    .array-data 4
        0x6a09e667
        -0x4498517b
        0x3c6ef372
        -0x5ab00ac6
        0x510e527f
        -0x64fa9774
        0x1f83d9ab
        0x5be0cd19
    .end array-data

    :array_58
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

    :array_64
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

    :array_70
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

    :array_7c
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

    :array_88
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

    :array_94
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

    :array_a0
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

    :array_ac
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

    :array_b8
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

    :array_c4
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
.end method

.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    iput v0, p0, Ls0/b;->g:I

    const/4 v0, 0x0

    iput v0, p0, Ls0/b;->h:I

    const/4 v1, 0x0

    iput-object v1, p0, Ls0/b;->i:[B

    iput-object v1, p0, Ls0/b;->j:[B

    iput-object v1, p0, Ls0/b;->k:[B

    const/4 v2, 0x1

    iput v2, p0, Ls0/b;->l:I

    iput v2, p0, Ls0/b;->m:I

    iput-object v1, p0, Ls0/b;->n:[B

    iput v0, p0, Ls0/b;->o:I

    const/16 v2, 0x10

    new-array v2, v2, [I

    iput-object v2, p0, Ls0/b;->p:[I

    iput-object v1, p0, Ls0/b;->q:[I

    iput v0, p0, Ls0/b;->r:I

    iput v0, p0, Ls0/b;->s:I

    iput v0, p0, Ls0/b;->t:I

    iput v0, p0, Ls0/b;->u:I

    const/16 v0, 0x8

    if-lt p1, v0, :cond_43

    const/16 v2, 0x100

    if-gt p1, v2, :cond_43

    rem-int/lit8 v2, p1, 0x8

    if-nez v2, :cond_43

    div-int/2addr p1, v0

    iput p1, p0, Ls0/b;->g:I

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-virtual {p0, v1, v1, v1}, Ls0/b;->d([B[B[B)V

    return-void

    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "BLAKE2s digest bit length must be a multiple of 8 and not greater than 256"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ls0/b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    iput v0, p0, Ls0/b;->g:I

    const/4 v0, 0x0

    iput v0, p0, Ls0/b;->h:I

    const/4 v1, 0x0

    iput-object v1, p0, Ls0/b;->i:[B

    iput-object v1, p0, Ls0/b;->j:[B

    iput-object v1, p0, Ls0/b;->k:[B

    const/4 v2, 0x1

    iput v2, p0, Ls0/b;->l:I

    iput v2, p0, Ls0/b;->m:I

    iput-object v1, p0, Ls0/b;->n:[B

    iput v0, p0, Ls0/b;->o:I

    const/16 v2, 0x10

    new-array v2, v2, [I

    iput-object v2, p0, Ls0/b;->p:[I

    iput-object v1, p0, Ls0/b;->q:[I

    iput v0, p0, Ls0/b;->r:I

    iput v0, p0, Ls0/b;->s:I

    iput v0, p0, Ls0/b;->t:I

    iput v0, p0, Ls0/b;->u:I

    iget v0, p1, Ls0/b;->o:I

    iput v0, p0, Ls0/b;->o:I

    iget-object v0, p1, Ls0/b;->n:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iput-object v0, p0, Ls0/b;->n:[B

    iget v0, p1, Ls0/b;->h:I

    iput v0, p0, Ls0/b;->h:I

    iget-object v0, p1, Ls0/b;->k:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iput-object v0, p0, Ls0/b;->k:[B

    iget v0, p1, Ls0/b;->g:I

    iput v0, p0, Ls0/b;->g:I

    iget-object v0, p1, Ls0/b;->p:[I

    invoke-static {v0}, Lm4/d;->f([I)[I

    move-result-object v0

    iput-object v0, p0, Ls0/b;->p:[I

    iget-object v0, p1, Ls0/b;->q:[I

    invoke-static {v0}, Lm4/d;->f([I)[I

    move-result-object v0

    iput-object v0, p0, Ls0/b;->q:[I

    iget v0, p1, Ls0/b;->r:I

    iput v0, p0, Ls0/b;->r:I

    iget v0, p1, Ls0/b;->s:I

    iput v0, p0, Ls0/b;->s:I

    iget v0, p1, Ls0/b;->t:I

    iput v0, p0, Ls0/b;->t:I

    iget-object v0, p1, Ls0/b;->i:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iput-object v0, p0, Ls0/b;->i:[B

    iget-object v0, p1, Ls0/b;->j:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iput-object v0, p0, Ls0/b;->j:[B

    iget v0, p1, Ls0/b;->l:I

    iput v0, p0, Ls0/b;->l:I

    iget p1, p1, Ls0/b;->m:I

    iput p1, p0, Ls0/b;->m:I

    return-void
.end method


# virtual methods
.method public final a(IIIIII)V
    .registers 9

    iget-object p0, p0, Ls0/b;->p:[I

    aget v0, p0, p3

    aget v1, p0, p4

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    aput v0, p0, p3

    aget p1, p0, p6

    xor-int/2addr p1, v0

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p1

    aput p1, p0, p6

    aget v0, p0, p5

    add-int/2addr v0, p1

    aput v0, p0, p5

    aget p1, p0, p4

    xor-int/2addr p1, v0

    const/16 v0, 0xc

    invoke-static {p1, v0}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p1

    aput p1, p0, p4

    aget v0, p0, p3

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    aput v0, p0, p3

    aget p1, p0, p6

    xor-int/2addr p1, v0

    const/16 p2, 0x8

    invoke-static {p1, p2}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p1

    aput p1, p0, p6

    aget p2, p0, p5

    add-int/2addr p2, p1

    aput p2, p0, p5

    aget p1, p0, p4

    xor-int/2addr p1, p2

    const/4 p2, 0x7

    invoke-static {p1, p2}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p1

    aput p1, p0, p4

    return-void
.end method

.method public final c(I[B)V
    .registers 24

    move-object/from16 v0, p0

    iget-object v1, v0, Ls0/b;->q:[I

    array-length v2, v1

    const/4 v7, 0x0

    iget-object v8, v0, Ls0/b;->p:[I

    invoke-static {v1, v7, v8, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Ls0/b;->q:[I

    array-length v1, v1

    sget-object v2, Ls0/b;->v:[I

    const/4 v9, 0x4

    invoke-static {v2, v7, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, Ls0/b;->r:I

    aget v3, v2, v9

    xor-int/2addr v1, v3

    const/16 v10, 0xc

    aput v1, v8, v10

    iget v1, v0, Ls0/b;->s:I

    const/4 v11, 0x5

    aget v3, v2, v11

    xor-int/2addr v1, v3

    const/16 v12, 0xd

    aput v1, v8, v12

    iget v1, v0, Ls0/b;->t:I

    const/4 v13, 0x6

    aget v3, v2, v13

    xor-int/2addr v1, v3

    const/16 v14, 0xe

    aput v1, v8, v14

    iget v1, v0, Ls0/b;->u:I

    const/4 v15, 0x7

    aget v2, v2, v15

    xor-int/2addr v1, v2

    const/16 v16, 0xf

    aput v1, v8, v16

    const/16 v1, 0x10

    new-array v1, v1, [I

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {v2, v3, v1}, Lm4/d;->A(I[B[I)V

    move v2, v7

    :goto_47
    const/16 v3, 0xa

    if-ge v2, v3, :cond_109

    sget-object v17, Ls0/b;->w:[[B

    aget-object v4, v17, v2

    aget-byte v5, v4, v7

    aget v5, v1, v5

    const/4 v6, 0x1

    aget-byte v4, v4, v6

    aget v4, v1, v4

    move-object v6, v1

    move v1, v5

    const/16 v5, 0x8

    move-object/from16 v18, v6

    const/16 v6, 0xc

    move/from16 v19, v3

    const/4 v3, 0x0

    move/from16 v20, v2

    move v2, v4

    const/4 v4, 0x4

    invoke-virtual/range {v0 .. v6}, Ls0/b;->a(IIIIII)V

    aget-object v0, v17, v20

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    aget v1, v18, v1

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    aget v2, v18, v0

    const/16 v5, 0x9

    const/16 v6, 0xd

    const/4 v3, 0x1

    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Ls0/b;->a(IIIIII)V

    aget-object v0, v17, v20

    aget-byte v1, v0, v9

    aget v1, v18, v1

    aget-byte v0, v0, v11

    aget v2, v18, v0

    const/16 v5, 0xa

    const/16 v6, 0xe

    const/4 v3, 0x2

    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Ls0/b;->a(IIIIII)V

    aget-object v0, v17, v20

    aget-byte v1, v0, v13

    aget v1, v18, v1

    aget-byte v0, v0, v15

    aget v2, v18, v0

    const/16 v5, 0xb

    const/16 v6, 0xf

    const/4 v3, 0x3

    const/4 v4, 0x7

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Ls0/b;->a(IIIIII)V

    aget-object v0, v17, v20

    const/16 v1, 0x8

    aget-byte v1, v0, v1

    aget v1, v18, v1

    const/16 v2, 0x9

    aget-byte v0, v0, v2

    aget v2, v18, v0

    const/16 v5, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Ls0/b;->a(IIIIII)V

    aget-object v0, v17, v20

    aget-byte v1, v0, v19

    aget v1, v18, v1

    const/16 v2, 0xb

    aget-byte v0, v0, v2

    aget v2, v18, v0

    const/16 v5, 0xb

    const/16 v6, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Ls0/b;->a(IIIIII)V

    aget-object v0, v17, v20

    aget-byte v1, v0, v10

    aget v1, v18, v1

    aget-byte v0, v0, v12

    aget v2, v18, v0

    const/16 v5, 0x8

    const/16 v6, 0xd

    const/4 v3, 0x2

    const/4 v4, 0x7

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Ls0/b;->a(IIIIII)V

    aget-object v0, v17, v20

    aget-byte v1, v0, v14

    aget v1, v18, v1

    aget-byte v0, v0, v16

    aget v2, v18, v0

    const/16 v5, 0x9

    const/16 v6, 0xe

    const/4 v3, 0x3

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Ls0/b;->a(IIIIII)V

    add-int/lit8 v2, v20, 0x1

    move-object/from16 v1, v18

    goto/16 :goto_47

    :cond_109
    :goto_109
    iget-object v1, v0, Ls0/b;->q:[I

    array-length v2, v1

    if-ge v7, v2, :cond_11d

    aget v2, v1, v7

    aget v3, v8, v7

    xor-int/2addr v2, v3

    add-int/lit8 v3, v7, 0x8

    aget v3, v8, v3

    xor-int/2addr v2, v3

    aput v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_109

    :cond_11d
    return-void
.end method

.method public final d([B[B[B)V
    .registers 11

    const/16 v0, 0x40

    new-array v1, v0, [B

    iput-object v1, p0, Ls0/b;->n:[B

    const/4 v1, 0x0

    if-eqz p3, :cond_2c

    array-length v2, p3

    if-lez v2, :cond_2c

    array-length v2, p3

    iput v2, p0, Ls0/b;->h:I

    const/16 v3, 0x20

    if-gt v2, v3, :cond_24

    new-array v3, v2, [B

    iput-object v3, p0, Ls0/b;->k:[B

    invoke-static {p3, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Ls0/b;->n:[B

    iget v3, p0, Ls0/b;->h:I

    invoke-static {p3, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Ls0/b;->o:I

    goto :goto_2c

    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Keys > 32 bytes are not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    :goto_2c
    iget-object p3, p0, Ls0/b;->q:[I

    if-nez p3, :cond_d0

    const/16 p3, 0x8

    new-array v0, p3, [I

    iput-object v0, p0, Ls0/b;->q:[I

    sget-object v2, Ls0/b;->v:[I

    aget v3, v2, v1

    iget v4, p0, Ls0/b;->h:I

    shl-int/2addr v4, p3

    iget v5, p0, Ls0/b;->g:I

    or-int/2addr v4, v5

    iget v5, p0, Ls0/b;->l:I

    shl-int/lit8 v5, v5, 0x10

    iget v6, p0, Ls0/b;->m:I

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    or-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v1

    const/4 v3, 0x1

    aget v4, v2, v3

    aput v4, v0, v3

    const-wide/16 v3, 0x0

    long-to-int v5, v3

    long-to-int v3, v3

    const/4 v4, 0x2

    aget v6, v2, v4

    xor-int/2addr v3, v6

    aput v3, v0, v4

    const/4 v3, 0x3

    aget v4, v2, v3

    xor-int/2addr v4, v5

    aput v4, v0, v3

    const/4 v3, 0x4

    aget v4, v2, v3

    aput v4, v0, v3

    const/4 v4, 0x5

    aget v5, v2, v4

    aput v5, v0, v4

    if-eqz p1, :cond_98

    array-length v0, p1

    if-ne v0, p3, :cond_90

    new-array v0, p3, [B

    iput-object v0, p0, Ls0/b;->i:[B

    array-length v5, p1

    invoke-static {p1, v1, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ls0/b;->q:[I

    aget v5, v0, v3

    invoke-static {v1, p1}, Lm4/d;->z(I[B)I

    move-result v6

    xor-int/2addr v5, v6

    aput v5, v0, v3

    iget-object v0, p0, Ls0/b;->q:[I

    aget v5, v0, v4

    invoke-static {v3, p1}, Lm4/d;->z(I[B)I

    move-result p1

    xor-int/2addr p1, v5

    aput p1, v0, v4

    goto :goto_98

    :cond_90
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Salt length must be exactly 8 bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_98
    :goto_98
    iget-object p1, p0, Ls0/b;->q:[I

    const/4 v0, 0x6

    aget v4, v2, v0

    aput v4, p1, v0

    const/4 v4, 0x7

    aget v2, v2, v4

    aput v2, p1, v4

    if-eqz p2, :cond_d0

    array-length p1, p2

    if-ne p1, p3, :cond_c8

    new-array p1, p3, [B

    iput-object p1, p0, Ls0/b;->j:[B

    array-length p3, p2

    invoke-static {p2, v1, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Ls0/b;->q:[I

    aget p3, p1, v0

    invoke-static {v1, p2}, Lm4/d;->z(I[B)I

    move-result v1

    xor-int/2addr p3, v1

    aput p3, p1, v0

    iget-object p0, p0, Ls0/b;->q:[I

    aget p1, p0, v4

    invoke-static {v3, p2}, Lm4/d;->z(I[B)I

    move-result p2

    xor-int/2addr p1, p2

    aput p1, p0, v4

    return-void

    :cond_c8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Personalization length must be exactly 8 bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d0
    return-void
.end method

.method public final doFinal([BI)I
    .registers 12

    array-length v0, p1

    iget v1, p0, Ls0/b;->g:I

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_58

    const/4 v0, -0x1

    iput v0, p0, Ls0/b;->t:I

    iget v0, p0, Ls0/b;->r:I

    iget v2, p0, Ls0/b;->o:I

    add-int/2addr v0, v2

    iput v0, p0, Ls0/b;->r:I

    if-gez v0, :cond_1b

    neg-int v0, v0

    if-le v2, v0, :cond_1b

    iget v0, p0, Ls0/b;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ls0/b;->s:I

    :cond_1b
    iget-object v0, p0, Ls0/b;->n:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ls0/b;->c(I[B)V

    iget-object v0, p0, Ls0/b;->n:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Ls0/b;->p:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    ushr-int/lit8 v0, v1, 0x2

    and-int/lit8 v3, v1, 0x3

    iget-object v4, p0, Ls0/b;->q:[I

    move v6, p2

    move v5, v2

    :goto_33
    const/4 v7, 0x4

    if-ge v5, v0, :cond_3f

    aget v8, v4, v5

    invoke-static {p1, v8, v6}, Lm4/d;->x([BII)V

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    :cond_3f
    if-lez v3, :cond_4f

    new-array v4, v7, [B

    iget-object v5, p0, Ls0/b;->q:[I

    aget v0, v5, v0

    invoke-static {v4, v0, v2}, Lm4/d;->x([BII)V

    add-int/2addr p2, v1

    sub-int/2addr p2, v3

    invoke-static {v4, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4f
    iget-object p1, p0, Ls0/b;->q:[I

    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([II)V

    invoke-virtual {p0}, Ls0/b;->reset()V

    return v1

    :cond_58
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "BLAKE2s"

    return-object p0
.end method

.method public final getByteLength()I
    .registers 1

    const/16 p0, 0x40

    return p0
.end method

.method public final getDigestSize()I
    .registers 1

    iget p0, p0, Ls0/b;->g:I

    return p0
.end method

.method public final reset()V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Ls0/b;->o:I

    iput v0, p0, Ls0/b;->t:I

    iput v0, p0, Ls0/b;->u:I

    iput v0, p0, Ls0/b;->r:I

    iput v0, p0, Ls0/b;->s:I

    const/4 v1, 0x0

    iput-object v1, p0, Ls0/b;->q:[I

    iget-object v1, p0, Ls0/b;->n:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    iget-object v1, p0, Ls0/b;->k:[B

    if-eqz v1, :cond_21

    iget-object v2, p0, Ls0/b;->n:[B

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x40

    iput v0, p0, Ls0/b;->o:I

    :cond_21
    iget-object v0, p0, Ls0/b;->i:[B

    iget-object v1, p0, Ls0/b;->j:[B

    iget-object v2, p0, Ls0/b;->k:[B

    invoke-virtual {p0, v0, v1, v2}, Ls0/b;->d([B[B[B)V

    return-void
.end method

.method public final update(B)V
    .registers 5

    iget v0, p0, Ls0/b;->o:I

    rsub-int/lit8 v1, v0, 0x40

    const/4 v2, 0x1

    if-nez v1, :cond_26

    iget v0, p0, Ls0/b;->r:I

    add-int/lit8 v0, v0, 0x40

    iput v0, p0, Ls0/b;->r:I

    if-nez v0, :cond_14

    iget v0, p0, Ls0/b;->s:I

    add-int/2addr v0, v2

    iput v0, p0, Ls0/b;->s:I

    :cond_14
    iget-object v0, p0, Ls0/b;->n:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ls0/b;->c(I[B)V

    iget-object v0, p0, Ls0/b;->n:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Ls0/b;->n:[B

    aput-byte p1, v0, v1

    iput v2, p0, Ls0/b;->o:I

    return-void

    :cond_26
    iget-object v1, p0, Ls0/b;->n:[B

    aput-byte p1, v1, v0

    add-int/2addr v0, v2

    iput v0, p0, Ls0/b;->o:I

    return-void
.end method

.method public final update([BII)V
    .registers 8

    if-eqz p1, :cond_5b

    if-nez p3, :cond_5

    goto :goto_5b

    :cond_5
    iget v0, p0, Ls0/b;->o:I

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    rsub-int/lit8 v2, v0, 0x40

    if-ge v2, p3, :cond_2e

    iget-object v3, p0, Ls0/b;->n:[B

    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ls0/b;->r:I

    add-int/lit8 v0, v0, 0x40

    iput v0, p0, Ls0/b;->r:I

    if-nez v0, :cond_21

    iget v0, p0, Ls0/b;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ls0/b;->s:I

    :cond_21
    iget-object v0, p0, Ls0/b;->n:[B

    invoke-virtual {p0, v1, v0}, Ls0/b;->c(I[B)V

    iput v1, p0, Ls0/b;->o:I

    iget-object v0, p0, Ls0/b;->n:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_3a

    :cond_2e
    iget-object v1, p0, Ls0/b;->n:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_33
    iget p1, p0, Ls0/b;->o:I

    add-int/2addr p1, p3

    iput p1, p0, Ls0/b;->o:I

    return-void

    :cond_39
    move v2, v1

    :goto_3a
    add-int/2addr p3, p2

    add-int/lit8 v0, p3, -0x40

    add-int/2addr p2, v2

    :goto_3e
    if-ge p2, v0, :cond_54

    iget v2, p0, Ls0/b;->r:I

    add-int/lit8 v2, v2, 0x40

    iput v2, p0, Ls0/b;->r:I

    if-nez v2, :cond_4e

    iget v2, p0, Ls0/b;->s:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ls0/b;->s:I

    :cond_4e
    invoke-virtual {p0, p2, p1}, Ls0/b;->c(I[B)V

    add-int/lit8 p2, p2, 0x40

    goto :goto_3e

    :cond_54
    iget-object v0, p0, Ls0/b;->n:[B

    sub-int/2addr p3, p2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_33

    :cond_5b
    :goto_5b
    return-void
.end method
