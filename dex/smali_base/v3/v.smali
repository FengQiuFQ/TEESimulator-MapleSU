.class public final Lv3/v;
.super Ls3/a;

# interfaces
.implements Lm4/c;


# instance fields
.field public final A1:[B

.field public volatile B1:Lv3/a;

.field public final q:Lv3/t;

.field public final x:[B

.field public final y:[B

.field public final z1:[B


# direct methods
.method public constructor <init>(Lv3/u;)V
    .registers 12

    iget-object v0, p1, Lv3/u;->k:Ljava/lang/Object;

    check-cast v0, Lv3/t;

    iget-object v1, v0, Lv3/t;->e:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Ls3/a;-><init>(ZLjava/lang/String;)V

    iput-object v0, p0, Lv3/v;->q:Lv3/t;

    iget v1, v0, Lv3/t;->f:I

    iget-object v3, p1, Lv3/u;->g:[B

    if-eqz v3, :cond_20

    array-length v4, v3

    if-ne v4, v1, :cond_18

    iput-object v3, p0, Lv3/v;->x:[B

    goto :goto_24

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of secretKeySeed needs to be equal size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    new-array v4, v1, [B

    iput-object v4, p0, Lv3/v;->x:[B

    :goto_24
    iget-object v4, p1, Lv3/u;->h:[B

    if-eqz v4, :cond_36

    array-length v5, v4

    if-ne v5, v1, :cond_2e

    iput-object v4, p0, Lv3/v;->y:[B

    goto :goto_3a

    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of secretKeyPRF needs to be equal size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    new-array v4, v1, [B

    iput-object v4, p0, Lv3/v;->y:[B

    :goto_3a
    iget-object v4, p1, Lv3/u;->l:Ljava/lang/Object;

    check-cast v4, [B

    if-eqz v4, :cond_4e

    array-length v5, v4

    if-ne v5, v1, :cond_46

    iput-object v4, p0, Lv3/v;->z1:[B

    goto :goto_52

    :cond_46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of publicSeed needs to be equal size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    new-array v5, v1, [B

    iput-object v5, p0, Lv3/v;->z1:[B

    :goto_52
    iget-object v5, p1, Lv3/u;->m:Ljava/lang/Object;

    check-cast v5, [B

    if-eqz v5, :cond_66

    array-length v6, v5

    if-ne v6, v1, :cond_5e

    iput-object v5, p0, Lv3/v;->A1:[B

    goto :goto_6a

    :cond_5e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of root needs to be equal size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_66
    new-array v1, v1, [B

    iput-object v1, p0, Lv3/v;->A1:[B

    :goto_6a
    iget-object v1, p1, Lv3/u;->n:Ljava/lang/Object;

    check-cast v1, Lv3/a;

    if-eqz v1, :cond_73

    iput-object v1, p0, Lv3/v;->B1:Lv3/a;

    goto :goto_c9

    :cond_73
    iget v1, p1, Lv3/u;->i:I

    iget v5, v0, Lv3/t;->b:I

    shl-int v5, v2, v5

    add-int/lit8 v6, v5, -0x2

    if-ge v1, v6, :cond_b0

    if-eqz v4, :cond_b0

    if-eqz v3, :cond_b0

    new-instance v5, Lv3/a;

    new-instance v6, Lv3/i;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lv3/i;-><init>(I)V

    new-instance v7, Lv3/k;

    invoke-direct {v7, v6}, Lv3/k;-><init>(Lv3/i;)V

    new-instance v6, Li1/g;

    iget-object v8, v0, Lv3/t;->g:Lv3/m;

    invoke-direct {v6, v8}, Li1/g;-><init>(Lv3/m;)V

    iget v8, v0, Lv3/t;->b:I

    iget v0, v0, Lv3/t;->c:I

    shl-int v9, v2, v8

    sub-int/2addr v9, v2

    invoke-direct {v5, v6, v8, v0, v9}, Lv3/a;-><init>(Li1/g;III)V

    invoke-virtual {v5, v4, v3, v7}, Lv3/a;->a([B[BLv3/k;)V

    :goto_a2
    iget v0, v5, Lv3/a;->C1:I

    if-ge v0, v1, :cond_ad

    invoke-virtual {v5, v4, v3, v7}, Lv3/a;->b([B[BLv3/k;)V

    const/4 v0, 0x0

    iput-boolean v0, v5, Lv3/a;->D1:Z

    goto :goto_a2

    :cond_ad
    iput-object v5, p0, Lv3/v;->B1:Lv3/a;

    goto :goto_c9

    :cond_b0
    new-instance v3, Lv3/a;

    sub-int/2addr v5, v2

    new-instance v4, Li1/g;

    iget-object v6, v0, Lv3/t;->g:Lv3/m;

    invoke-direct {v4, v6}, Li1/g;-><init>(Lv3/m;)V

    iget v6, v0, Lv3/t;->b:I

    iget v0, v0, Lv3/t;->c:I

    invoke-direct {v3, v4, v6, v0, v1}, Lv3/a;-><init>(Li1/g;III)V

    iput v5, v3, Lv3/a;->E1:I

    iput v1, v3, Lv3/a;->C1:I

    iput-boolean v2, v3, Lv3/a;->D1:Z

    iput-object v3, p0, Lv3/v;->B1:Lv3/a;

    :goto_c9
    iget p1, p1, Lv3/u;->j:I

    if-ltz p1, :cond_dc

    iget-object p0, p0, Lv3/v;->B1:Lv3/a;

    iget p0, p0, Lv3/a;->E1:I

    if-ne p1, p0, :cond_d4

    goto :goto_dc

    :cond_d4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxIndex set but not reflected in state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_dc
    :goto_dc
    return-void
.end method


# virtual methods
.method public final a()[B
    .registers 8

    const-string v0, "error serializing bds state: "

    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Lv3/v;->q:Lv3/t;

    iget v1, v1, Lv3/t;->f:I

    add-int/lit8 v2, v1, 0x4

    add-int v3, v2, v1

    add-int v4, v3, v1

    add-int/2addr v1, v4

    new-array v1, v1, [B

    iget-object v5, p0, Lv3/v;->B1:Lv3/a;

    iget v5, v5, Lv3/a;->C1:I

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Lm4/d;->w([BII)V

    iget-object v5, p0, Lv3/v;->x:[B

    const/4 v6, 0x4

    invoke-static {v1, v6, v5}, Ls2/b;->n([BI[B)V

    iget-object v5, p0, Lv3/v;->y:[B

    invoke-static {v1, v2, v5}, Ls2/b;->n([BI[B)V

    iget-object v2, p0, Lv3/v;->z1:[B

    invoke-static {v1, v3, v2}, Ls2/b;->n([BI[B)V

    iget-object v2, p0, Lv3/v;->A1:[B

    invoke-static {v1, v4, v2}, Ls2/b;->n([BI[B)V
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_49

    :try_start_2d
    iget-object v2, p0, Lv3/v;->B1:Lv3/a;

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_43} :catch_4b
    .catchall {:try_start_2d .. :try_end_43} :catchall_49

    :try_start_43
    invoke-static {v1, v0}, Lm4/d;->j([B[B)[B

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_49
    move-exception v0

    goto :goto_62

    :catch_4b
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_43 .. :try_end_63} :catchall_49

    throw v0
.end method

.method public final getEncoded()[B
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lv3/v;->a()[B

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method
