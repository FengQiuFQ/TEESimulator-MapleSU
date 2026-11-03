.class public final Lq0/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/t;


# instance fields
.field public final g:Ls0/z;

.field public h:Lm/q;

.field public i:I

.field public j:[B

.field public k:[B


# direct methods
.method public constructor <init>(Ls0/z;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/c;->g:Ls0/z;

    return-void
.end method


# virtual methods
.method public final generateBytes([BII)I
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    array-length v3, v1

    sub-int/2addr v3, v2

    if-ltz v3, :cond_cb

    int-to-long v3, v2

    const-wide v5, 0x1ffffffffL

    cmp-long v5, v3, v5

    if-gtz v5, :cond_c3

    const/16 v5, 0x14

    int-to-long v6, v5

    add-long v8, v3, v6

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    div-long/2addr v8, v6

    long-to-int v6, v8

    new-array v7, v5, [B

    const/4 v8, 0x0

    move v10, v8

    move v12, v10

    const/4 v11, 0x1

    :goto_24
    iget-object v13, v0, Lq0/c;->g:Ls0/z;

    if-ge v10, v6, :cond_be

    iget-object v14, v0, Lq0/c;->j:[B

    array-length v15, v14

    invoke-virtual {v13, v14, v8, v15}, Ls0/j;->update([BII)V

    new-instance v14, Lm/g;

    invoke-direct {v14}, Lm/g;-><init>()V

    new-instance v15, Lm/g;

    invoke-direct {v15}, Lm/g;-><init>()V

    iget-object v5, v0, Lq0/c;->h:Lm/q;

    invoke-virtual {v15, v5}, Lm/g;->a(Lm/f;)V

    new-instance v5, Lm/x0;

    const/4 v9, 0x4

    move/from16 v16, v6

    new-array v6, v9, [B

    invoke-static {v6, v11, v8}, Lm4/d;->w([BII)V

    invoke-direct {v5, v6}, Lm/r;-><init>([B)V

    invoke-virtual {v15, v5}, Lm/g;->a(Lm/f;)V

    new-instance v5, Lm/a1;

    invoke-direct {v5, v15}, Lm/x;-><init>(Lm/g;)V

    const/4 v6, -0x1

    iput v6, v5, Lm/a1;->q:I

    invoke-virtual {v14, v5}, Lm/g;->a(Lm/f;)V

    iget-object v5, v0, Lq0/c;->k:[B

    if-eqz v5, :cond_6b

    new-instance v15, Lm/d1;

    new-instance v6, Lm/x0;

    invoke-direct {v6, v5}, Lm/r;-><init>([B)V

    const/4 v5, 0x1

    invoke-direct {v15, v5, v8, v6}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v14, v15}, Lm/g;->a(Lm/f;)V

    goto :goto_6c

    :cond_6b
    const/4 v5, 0x1

    :goto_6c
    new-instance v6, Lm/d1;

    new-instance v15, Lm/x0;

    iget v5, v0, Lq0/c;->i:I

    new-array v9, v9, [B

    invoke-static {v9, v5, v8}, Lm4/d;->w([BII)V

    invoke-direct {v15, v9}, Lm/r;-><init>([B)V

    const/4 v5, 0x2

    const/4 v9, 0x1

    invoke-direct {v6, v9, v5, v15}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v14, v6}, Lm/g;->a(Lm/f;)V

    :try_start_82
    new-instance v5, Lm/a1;

    invoke-direct {v5, v14}, Lm/x;-><init>(Lm/g;)V

    const/4 v6, -0x1

    iput v6, v5, Lm/a1;->q:I

    invoke-virtual {v5}, Lm/n;->g()[B

    move-result-object v5

    array-length v6, v5

    invoke-virtual {v13, v5, v8, v6}, Ls0/j;->update([BII)V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_92} :catch_ac

    invoke-virtual {v13, v7, v8}, Ls0/z;->doFinal([BI)I

    const/16 v5, 0x14

    if-le v2, v5, :cond_a1

    invoke-static {v7, v8, v1, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v12, v12, 0x14

    add-int/lit8 v2, v2, -0x14

    goto :goto_a4

    :cond_a1
    invoke-static {v7, v8, v1, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_a4
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v16

    goto/16 :goto_24

    :catch_ac
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to encode parameter info: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_be
    invoke-virtual {v13}, Ls0/z;->reset()V

    long-to-int v0, v3

    return v0

    :cond_c3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output length too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_cb
    new-instance v0, Lorg/bouncycastle/crypto/d0;

    const-string v1, "output buffer too small"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final init(Lorg/bouncycastle/crypto/u;)V
    .registers 3

    check-cast p1, Lq0/b;

    iget-object v0, p1, Lq0/b;->a:Lm/q;

    iput-object v0, p0, Lq0/c;->h:Lm/q;

    iget v0, p1, Lq0/b;->b:I

    iput v0, p0, Lq0/c;->i:I

    iget-object v0, p1, Lq0/b;->c:[B

    iput-object v0, p0, Lq0/c;->j:[B

    iget-object p1, p1, Lq0/b;->d:[B

    iput-object p1, p0, Lq0/c;->k:[B

    return-void
.end method
