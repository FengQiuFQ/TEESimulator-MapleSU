.class public final Lv3/q;
.super Ls3/a;

# interfaces
.implements Lm4/c;


# instance fields
.field public final A1:[B

.field public volatile B1:J

.field public volatile C1:Lv3/b;

.field public final q:Lv3/o;

.field public final x:[B

.field public final y:[B

.field public final z1:[B


# direct methods
.method public constructor <init>(Lv3/p;)V
    .registers 8

    iget-object v1, p1, Lv3/p;->a:Lv3/o;

    iget-object v0, v1, Lv3/o;->b:Lv3/t;

    iget-object v2, v0, Lv3/t;->e:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {p0, v3, v2}, Ls3/a;-><init>(ZLjava/lang/String;)V

    iput-object v1, p0, Lv3/q;->q:Lv3/o;

    iget v0, v0, Lv3/t;->f:I

    iget-wide v2, p1, Lv3/p;->b:J

    iput-wide v2, p0, Lv3/q;->B1:J

    iget-object v5, p1, Lv3/p;->d:[B

    if-eqz v5, :cond_24

    array-length v2, v5

    if-ne v2, v0, :cond_1c

    iput-object v5, p0, Lv3/q;->x:[B

    goto :goto_28

    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of secretKeySeed needs to be equal size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    new-array v2, v0, [B

    iput-object v2, p0, Lv3/q;->x:[B

    :goto_28
    iget-object v2, p1, Lv3/p;->e:[B

    if-eqz v2, :cond_3a

    array-length v3, v2

    if-ne v3, v0, :cond_32

    iput-object v2, p0, Lv3/q;->y:[B

    goto :goto_3e

    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of secretKeyPRF needs to be equal size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    new-array v2, v0, [B

    iput-object v2, p0, Lv3/q;->y:[B

    :goto_3e
    iget-object v4, p1, Lv3/p;->f:[B

    if-eqz v4, :cond_50

    array-length v2, v4

    if-ne v2, v0, :cond_48

    iput-object v4, p0, Lv3/q;->z1:[B

    goto :goto_54

    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of publicSeed needs to be equal size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_50
    new-array v2, v0, [B

    iput-object v2, p0, Lv3/q;->z1:[B

    :goto_54
    iget-object v2, p1, Lv3/p;->g:[B

    if-eqz v2, :cond_66

    array-length v3, v2

    if-ne v3, v0, :cond_5e

    iput-object v2, p0, Lv3/q;->A1:[B

    goto :goto_6a

    :cond_5e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of root needs to be equal size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_66
    new-array v0, v0, [B

    iput-object v0, p0, Lv3/q;->A1:[B

    :goto_6a
    iget-object v0, p1, Lv3/p;->h:Lv3/b;

    if-eqz v0, :cond_71

    :goto_6e
    iput-object v0, p0, Lv3/q;->C1:Lv3/b;

    goto :goto_92

    :cond_71
    iget-wide v2, p1, Lv3/p;->b:J

    iget v0, v1, Lv3/o;->c:I

    invoke-static {v0, v2, v3}, Ls2/b;->J(IJ)Z

    move-result v0

    if-eqz v0, :cond_87

    if-eqz v4, :cond_87

    if-eqz v5, :cond_87

    new-instance v0, Lv3/b;

    iget-wide v2, p1, Lv3/p;->b:J

    invoke-direct/range {v0 .. v5}, Lv3/b;-><init>(Lv3/o;J[B[B)V

    goto :goto_6e

    :cond_87
    new-instance v0, Lv3/b;

    iget-wide v1, p1, Lv3/p;->c:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lv3/b;-><init>(J)V

    goto :goto_6e

    :goto_92
    iget-wide v0, p1, Lv3/p;->c:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_ab

    iget-object p0, p0, Lv3/q;->C1:Lv3/b;

    iget-wide p0, p0, Lv3/b;->d:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_a3

    goto :goto_ab

    :cond_a3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxIndex set but not reflected in state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ab
    :goto_ab
    return-void
.end method


# virtual methods
.method public final a()[B
    .registers 9

    const-string v0, "error serializing bds state: "

    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Lv3/q;->q:Lv3/o;

    iget-object v2, v1, Lv3/o;->b:Lv3/t;

    iget v2, v2, Lv3/t;->f:I

    iget v1, v1, Lv3/o;->c:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int v3, v1, v2

    add-int v4, v3, v2

    add-int v5, v4, v2

    add-int/2addr v2, v5

    new-array v2, v2, [B

    iget-wide v6, p0, Lv3/q;->B1:J

    invoke-static {v1, v6, v7}, Ls2/b;->W(IJ)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v2, v7, v6}, Ls2/b;->n([BI[B)V

    iget-object v6, p0, Lv3/q;->x:[B

    invoke-static {v2, v1, v6}, Ls2/b;->n([BI[B)V

    iget-object v1, p0, Lv3/q;->y:[B

    invoke-static {v2, v3, v1}, Ls2/b;->n([BI[B)V

    iget-object v1, p0, Lv3/q;->z1:[B

    invoke-static {v2, v4, v1}, Ls2/b;->n([BI[B)V

    iget-object v1, p0, Lv3/q;->A1:[B

    invoke-static {v2, v5, v1}, Ls2/b;->n([BI[B)V
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_52

    :try_start_36
    iget-object v1, p0, Lv3/q;->C1:Lv3/b;

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v2, v1}, Lm4/d;->j([B[B)[B

    move-result-object v0
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_50} :catch_54
    .catchall {:try_start_36 .. :try_end_50} :catchall_52

    :try_start_50
    monitor-exit p0

    return-object v0

    :catchall_52
    move-exception v0

    goto :goto_6b

    :catch_54
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_50 .. :try_end_6c} :catchall_52

    throw v0
.end method

.method public final getEncoded()[B
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lv3/q;->a()[B

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
