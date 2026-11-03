.class public final La1/d;
.super Ljava/io/ByteArrayOutputStream;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(BI)V
    .registers 3

    iput p2, p0, La1/d;->c:I

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, La1/d;->c:I

    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object p0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method public declared-synchronized b(Le1/y;)[B
    .registers 9

    monitor-enter p0

    const/16 v0, 0x40

    :try_start_3
    new-array v6, v0, [B

    iget-object v4, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-virtual {p1}, Le1/y;->a()Le1/z;

    move-result-object v0

    const/16 v1, 0x20

    new-array v2, v1, [B

    iget-object v0, v0, Le1/z;->d:Lq2/e;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lq2/f;->n(Lq2/e;[BI)V

    iget-object v1, p1, Le1/y;->d:[B

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lq2/f;->u([B[BB[BI[B)V

    invoke-virtual {p0}, La1/d;->reset()V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v6

    :catchall_22
    move-exception v0

    move-object p1, v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_22

    throw p1
.end method

.method public declared-synchronized c(Le1/a0;[B)[B
    .registers 6

    monitor-enter p0

    const/16 v0, 0x72

    :try_start_3
    new-array v0, v0, [B

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-virtual {p1, v2, p2, v1, v0}, Le1/a0;->b(I[B[B[B)V

    invoke-virtual {p0}, La1/d;->reset()V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public d()[B
    .registers 2

    iget v0, p0, La1/d;->c:I

    packed-switch v0, :pswitch_data_1a

    iget-object p0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const-string v0, "buf"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :pswitch_d
    iget-object p0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    return-object p0

    :pswitch_10
    iget-object p0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    return-object p0

    :pswitch_13
    iget-object p0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    return-object p0

    :pswitch_16
    iget-object p0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    return-object p0

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public declared-synchronized e(Le1/z;[B)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    array-length v0, p2

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-eq v2, v0, :cond_e

    invoke-virtual {p0}, La1/d;->reset()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v1

    :catchall_c
    move-exception p1

    goto :goto_1d

    :cond_e
    :try_start_e
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    iget-object p1, p1, Le1/z;->d:Lq2/e;

    invoke-static {p2, p1, v1, v0, v2}, Lq2/f;->v([BLq2/e;B[BI)Z

    move-result p1

    invoke-virtual {p0}, La1/d;->reset()V
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_c

    monitor-exit p0

    return p1

    :goto_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_c

    throw p1
.end method

.method public declared-synchronized f(Le1/b0;[B[B)Z
    .registers 10

    monitor-enter p0

    :try_start_1
    array-length v0, p3

    const/16 v1, 0x72

    if-eq v1, v0, :cond_f

    invoke-virtual {p0}, La1/d;->reset()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_c
    move-exception v0

    move-object p1, v0

    goto :goto_3b

    :cond_f
    :try_start_f
    iget-object v4, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ctx"

    const-string v1, "\'ctx\' cannot be null"

    if-eqz p2, :cond_35

    array-length v1, p2

    const/16 v2, 0xff

    if-gt v1, v2, :cond_2f

    iget-object v1, p1, Le1/b0;->d:Lq2/e;

    const/4 v3, 0x0

    move-object v2, p2

    move-object v0, p3

    invoke-static/range {v0 .. v5}, Lq2/f;->w([BLq2/e;[BB[BI)Z

    move-result p1

    invoke-virtual {p0}, La1/d;->reset()V
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_c

    monitor-exit p0

    return p1

    :cond_2f
    :try_start_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_c

    throw p1
.end method

.method public declared-synchronized reset()V
    .registers 4

    iget v0, p0, La1/d;->c:I

    packed-switch v0, :pswitch_data_2a

    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void

    :pswitch_9
    monitor-enter p0

    :try_start_a
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0

    :pswitch_19
    monitor-enter p0

    :try_start_1a
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_26

    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0

    nop

    :pswitch_data_2a
    .packed-switch 0x5
        :pswitch_19
        :pswitch_9
    .end packed-switch
.end method
