.class public final Ls0/l;
.super Ls0/m;


# instance fields
.field public final i:[B

.field public j:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Ls0/l;->i:[B

    return-void
.end method

.method public constructor <init>(Ls0/l;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Ls0/l;->i:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iput-object v0, p0, Ls0/l;->i:[B

    iget p1, p1, Ls0/l;->j:I

    iput p1, p0, Ls0/l;->j:I

    return-void
.end method

.method public static e([[B[[B)V
    .registers 11

    const/4 v0, 0x0

    aget-object v1, p0, v0

    aget-object v2, p1, v0

    const/16 v3, 0xc

    const/4 v4, 0x4

    invoke-static {v1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x2

    aget-object v2, p0, v1

    aget-object v5, p1, v0

    invoke-static {v2, v3, v5, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    aget-object v5, p0, v2

    aget-object v6, p1, v0

    const/16 v7, 0x8

    invoke-static {v5, v3, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x3

    aget-object v6, p0, v5

    aget-object v8, p1, v0

    invoke-static {v6, v3, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p0, v1

    aget-object v8, p1, v2

    invoke-static {v6, v0, v8, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p0, v0

    aget-object v8, p1, v2

    invoke-static {v6, v0, v8, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p0, v5

    aget-object v8, p1, v2

    invoke-static {v6, v0, v8, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p0, v2

    aget-object v8, p1, v2

    invoke-static {v6, v0, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p0, v1

    aget-object v8, p1, v1

    invoke-static {v6, v4, v8, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p0, v0

    aget-object v8, p1, v1

    invoke-static {v6, v4, v8, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p0, v5

    aget-object v8, p1, v1

    invoke-static {v6, v4, v8, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p0, v2

    aget-object v8, p1, v1

    invoke-static {v6, v4, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p0, v0

    aget-object v8, p1, v5

    invoke-static {v6, v7, v8, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p0, v1

    aget-object v1, p1, v5

    invoke-static {v0, v7, v1, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p0, v2

    aget-object v1, p1, v5

    invoke-static {v0, v7, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object p0, p0, v5

    aget-object p1, p1, v5

    invoke-static {p0, v7, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public final doFinal([BI)I
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Ls0/l;->j:I

    const/16 v4, 0x40

    if-ne v3, v4, :cond_270

    array-length v3, v1

    sub-int/2addr v3, v2

    const/16 v4, 0x20

    if-lt v3, v4, :cond_268

    const/4 v3, 0x2

    new-array v5, v3, [I

    const/4 v6, 0x1

    const/16 v7, 0x10

    aput v7, v5, v6

    const/4 v8, 0x0

    const/4 v9, 0x4

    aput v9, v5, v8

    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[B

    new-array v11, v3, [I

    aput v7, v11, v6

    aput v9, v11, v8

    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[B

    aget-object v11, v5, v8

    iget-object v12, v0, Ls0/l;->i:[B

    invoke-static {v12, v8, v11, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v11, v5, v6

    invoke-static {v12, v7, v11, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v11, v5, v3

    invoke-static {v12, v4, v11, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x3

    aget-object v13, v5, v11

    const/16 v14, 0x30

    invoke-static {v12, v14, v13, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v13, v5, v8

    sget-object v15, Ls0/m;->g:[[B

    move/from16 v16, v3

    aget-object v3, v15, v8

    invoke-static {v13, v3}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v8

    aget-object v3, v5, v6

    aget-object v13, v15, v6

    invoke-static {v3, v13}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v6

    aget-object v3, v5, v16

    aget-object v13, v15, v16

    invoke-static {v3, v13}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v16

    aget-object v3, v5, v11

    aget-object v13, v15, v11

    invoke-static {v3, v13}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v11

    aget-object v3, v5, v8

    aget-object v9, v15, v9

    invoke-static {v3, v9}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v8

    aget-object v3, v5, v6

    const/4 v9, 0x5

    aget-object v9, v15, v9

    invoke-static {v3, v9}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v6

    aget-object v3, v5, v16

    const/4 v9, 0x6

    aget-object v9, v15, v9

    invoke-static {v3, v9}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v16

    aget-object v3, v5, v11

    const/4 v9, 0x7

    aget-object v9, v15, v9

    invoke-static {v3, v9}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v11

    invoke-static {v5, v10}, Ls0/l;->e([[B[[B)V

    aget-object v3, v10, v8

    const/16 v9, 0x8

    aget-object v13, v15, v9

    invoke-static {v3, v13}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v8

    aget-object v3, v10, v6

    const/16 v13, 0x9

    aget-object v13, v15, v13

    invoke-static {v3, v13}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v6

    aget-object v3, v10, v16

    const/16 v13, 0xa

    aget-object v13, v15, v13

    invoke-static {v3, v13}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v16

    aget-object v3, v10, v11

    const/16 v13, 0xb

    aget-object v13, v15, v13

    invoke-static {v3, v13}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v11

    aget-object v3, v5, v8

    const/16 v13, 0xc

    aget-object v13, v15, v13

    invoke-static {v3, v13}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v8

    aget-object v3, v5, v6

    const/16 v13, 0xd

    aget-object v13, v15, v13

    invoke-static {v3, v13}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v6

    aget-object v3, v5, v16

    const/16 v13, 0xe

    aget-object v13, v15, v13

    invoke-static {v3, v13}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v16

    aget-object v3, v5, v11

    const/16 v13, 0xf

    aget-object v13, v15, v13

    invoke-static {v3, v13}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v11

    invoke-static {v5, v10}, Ls0/l;->e([[B[[B)V

    aget-object v3, v10, v8

    aget-object v13, v15, v7

    invoke-static {v3, v13}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v8

    aget-object v3, v10, v6

    const/16 v13, 0x11

    aget-object v13, v15, v13

    invoke-static {v3, v13}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v6

    aget-object v3, v10, v16

    const/16 v13, 0x12

    aget-object v13, v15, v13

    invoke-static {v3, v13}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v16

    aget-object v3, v10, v11

    const/16 v13, 0x13

    aget-object v13, v15, v13

    invoke-static {v3, v13}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v11

    aget-object v3, v5, v8

    const/16 v13, 0x14

    aget-object v13, v15, v13

    invoke-static {v3, v13}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v8

    aget-object v3, v5, v6

    const/16 v13, 0x15

    aget-object v13, v15, v13

    invoke-static {v3, v13}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v6

    aget-object v3, v5, v16

    const/16 v13, 0x16

    aget-object v13, v15, v13

    invoke-static {v3, v13}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v16

    aget-object v3, v5, v11

    const/16 v13, 0x17

    aget-object v13, v15, v13

    invoke-static {v3, v13}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v11

    invoke-static {v5, v10}, Ls0/l;->e([[B[[B)V

    aget-object v3, v10, v8

    const/16 v13, 0x18

    move/from16 v17, v6

    aget-object v6, v15, v13

    invoke-static {v3, v6}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v8

    aget-object v3, v10, v17

    const/16 v6, 0x19

    aget-object v6, v15, v6

    invoke-static {v3, v6}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v17

    aget-object v3, v10, v16

    const/16 v6, 0x1a

    aget-object v6, v15, v6

    invoke-static {v3, v6}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v16

    aget-object v3, v10, v11

    const/16 v6, 0x1b

    aget-object v6, v15, v6

    invoke-static {v3, v6}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v11

    aget-object v3, v5, v8

    const/16 v6, 0x1c

    aget-object v6, v15, v6

    invoke-static {v3, v6}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v8

    aget-object v3, v5, v17

    const/16 v6, 0x1d

    aget-object v6, v15, v6

    invoke-static {v3, v6}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v17

    aget-object v3, v5, v16

    const/16 v6, 0x1e

    aget-object v6, v15, v6

    invoke-static {v3, v6}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v16

    aget-object v3, v5, v11

    const/16 v6, 0x1f

    aget-object v6, v15, v6

    invoke-static {v3, v6}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v11

    invoke-static {v5, v10}, Ls0/l;->e([[B[[B)V

    aget-object v3, v10, v8

    aget-object v6, v15, v4

    invoke-static {v3, v6}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v8

    aget-object v3, v10, v17

    const/16 v6, 0x21

    aget-object v6, v15, v6

    invoke-static {v3, v6}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v17

    aget-object v3, v10, v16

    const/16 v6, 0x22

    aget-object v6, v15, v6

    invoke-static {v3, v6}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v16

    aget-object v3, v10, v11

    const/16 v6, 0x23

    aget-object v6, v15, v6

    invoke-static {v3, v6}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v11

    aget-object v3, v5, v8

    const/16 v6, 0x24

    aget-object v6, v15, v6

    invoke-static {v3, v6}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v8

    aget-object v3, v5, v17

    const/16 v6, 0x25

    aget-object v6, v15, v6

    invoke-static {v3, v6}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v17

    aget-object v3, v5, v16

    const/16 v6, 0x26

    aget-object v6, v15, v6

    invoke-static {v3, v6}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v16

    aget-object v3, v5, v11

    const/16 v6, 0x27

    aget-object v6, v15, v6

    invoke-static {v3, v6}, Ls0/m;->a([B[B)[B

    move-result-object v3

    aput-object v3, v5, v11

    invoke-static {v5, v10}, Ls0/l;->e([[B[[B)V

    aget-object v3, v10, v8

    aget-object v6, v5, v8

    invoke-static {v3, v12, v8, v6, v8}, Lm4/d;->K([B[BI[BI)V

    aget-object v3, v10, v17

    aget-object v6, v5, v17

    invoke-static {v3, v12, v7, v6, v8}, Lm4/d;->K([B[BI[BI)V

    aget-object v3, v10, v16

    aget-object v6, v5, v16

    invoke-static {v3, v12, v4, v6, v8}, Lm4/d;->K([B[BI[BI)V

    aget-object v3, v10, v11

    aget-object v6, v5, v11

    invoke-static {v3, v12, v14, v6, v8}, Lm4/d;->K([B[BI[BI)V

    aget-object v3, v5, v8

    invoke-static {v3, v9, v1, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v3, v5, v17

    add-int/lit8 v6, v2, 0x8

    invoke-static {v3, v9, v1, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v3, v5, v16

    add-int/lit8 v6, v2, 0x10

    invoke-static {v3, v8, v1, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v3, v5, v11

    add-int/2addr v2, v13

    invoke-static {v3, v8, v1, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0}, Ls0/l;->reset()V

    return v4

    :cond_268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output too short to receive digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_270
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "input must be exactly 64 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "Haraka-512"

    return-object p0
.end method

.method public final reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Ls0/l;->j:I

    iget-object p0, p0, Ls0/l;->i:[B

    invoke-static {p0}, Lm4/d;->d([B)V

    return-void
.end method

.method public final update(B)V
    .registers 4

    iget v0, p0, Ls0/l;->j:I

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_f

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ls0/l;->j:I

    iget-object p0, p0, Ls0/l;->i:[B

    aput-byte p1, p0, v0

    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "total input cannot be more than 64 bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final update([BII)V
    .registers 6

    iget v0, p0, Ls0/l;->j:I

    rsub-int/lit8 v1, p3, 0x40

    if-gt v0, v1, :cond_11

    iget-object v1, p0, Ls0/l;->i:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Ls0/l;->j:I

    add-int/2addr p1, p3

    iput p1, p0, Ls0/l;->j:I

    return-void

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "total input cannot be more than 64 bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
