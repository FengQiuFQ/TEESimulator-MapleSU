.class public final Lm/v1;
.super Lm/x;


# instance fields
.field public q:[B


# virtual methods
.method public final A()Lm/y;
    .registers 1

    invoke-virtual {p0}, Lm/v1;->q()Lm/u;

    move-result-object p0

    check-cast p0, Lm/x;

    invoke-virtual {p0}, Lm/x;->A()Lm/y;

    move-result-object p0

    return-object p0
.end method

.method public final B()[Lm/f;
    .registers 1

    invoke-virtual {p0}, Lm/v1;->C()V

    iget-object p0, p0, Lm/x;->c:[Lm/f;

    invoke-static {p0}, Lm/g;->b([Lm/f;)[Lm/f;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized C()V
    .registers 5

    const-string v0, "malformed ASN.1: "

    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Lm/v1;->q:[B

    if-eqz v1, :cond_4d

    new-instance v1, Lm/k;

    iget-object v2, p0, Lm/v1;->q:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lm/k;-><init>([BI)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_37

    :try_start_f
    invoke-virtual {v1}, Lm/k;->f()Lm/u;

    move-result-object v2

    if-nez v2, :cond_1b

    new-instance v2, Lm/g;

    invoke-direct {v2, v3}, Lm/g;-><init>(I)V

    goto :goto_2a

    :cond_1b
    new-instance v3, Lm/g;

    invoke-direct {v3}, Lm/g;-><init>()V

    :cond_20
    invoke-virtual {v3, v2}, Lm/g;->a(Lm/f;)V

    invoke-virtual {v1}, Lm/k;->f()Lm/u;

    move-result-object v2

    if-nez v2, :cond_20

    move-object v2, v3

    :goto_2a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Lm/g;->d()[Lm/f;

    move-result-object v1

    iput-object v1, p0, Lm/x;->c:[Lm/f;

    const/4 v1, 0x0

    iput-object v1, p0, Lm/v1;->q:[B
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_36} :catch_39
    .catchall {:try_start_f .. :try_end_36} :catchall_37

    goto :goto_4d

    :catchall_37
    move-exception v0

    goto :goto_4f

    :catch_39
    move-exception v1

    :try_start_3a
    new-instance v2, Lm/t;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lm/t;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v2
    :try_end_4d
    .catchall {:try_start_3a .. :try_end_4d} :catchall_37

    :cond_4d
    :goto_4d
    monitor-exit p0

    return-void

    :goto_4f
    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_37

    throw v0
.end method

.method public final hashCode()I
    .registers 1

    invoke-virtual {p0}, Lm/v1;->C()V

    invoke-super {p0}, Lm/x;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i(Lb1/a;Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lm/v1;->q:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    monitor-exit p0

    if-eqz v0, :cond_c

    const/16 p0, 0x30

    invoke-virtual {p1, p0, p2, v0}, Lb1/a;->F(IZ[B)V

    return-void

    :cond_c
    invoke-super {p0}, Lm/x;->q()Lm/u;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lm/u;->i(Lb1/a;Z)V

    return-void

    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 1

    invoke-virtual {p0}, Lm/v1;->C()V

    invoke-super {p0}, Lm/x;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final l(Z)I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lm/v1;->q:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    monitor-exit p0

    if-eqz v0, :cond_c

    array-length p0, v0

    invoke-static {p0, p1}, Lb1/a;->s(IZ)I

    move-result p0

    return p0

    :cond_c
    invoke-super {p0}, Lm/x;->q()Lm/u;

    move-result-object p0

    invoke-virtual {p0, p1}, Lm/u;->l(Z)I

    move-result p0

    return p0

    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public final p()Lm/u;
    .registers 1

    invoke-virtual {p0}, Lm/v1;->C()V

    invoke-super {p0}, Lm/x;->p()Lm/u;

    move-result-object p0

    return-object p0
.end method

.method public final q()Lm/u;
    .registers 1

    invoke-virtual {p0}, Lm/v1;->C()V

    invoke-super {p0}, Lm/x;->q()Lm/u;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .registers 1

    invoke-virtual {p0}, Lm/v1;->C()V

    iget-object p0, p0, Lm/x;->c:[Lm/f;

    array-length p0, p0

    return p0
.end method

.method public final v(I)Lm/f;
    .registers 2

    invoke-virtual {p0}, Lm/v1;->C()V

    iget-object p0, p0, Lm/x;->c:[Lm/f;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final w()Ljava/util/Enumeration;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lm/v1;->q:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_20

    monitor-exit p0

    if-eqz v0, :cond_1a

    new-instance p0, Lm/u1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lm/k;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lm/k;-><init>([BI)V

    iput-object v1, p0, Lm/u1;->a:Lm/k;

    invoke-virtual {p0}, Lm/u1;->a()Lm/u;

    move-result-object v0

    iput-object v0, p0, Lm/u1;->b:Lm/u;

    return-object p0

    :cond_1a
    new-instance v0, Lm/w;

    invoke-direct {v0, p0}, Lm/w;-><init>(Lm/x;)V

    return-object v0

    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public final x()Lm/b;
    .registers 1

    invoke-virtual {p0}, Lm/v1;->q()Lm/u;

    move-result-object p0

    check-cast p0, Lm/x;

    invoke-virtual {p0}, Lm/x;->x()Lm/b;

    move-result-object p0

    return-object p0
.end method

.method public final y()Lm/q0;
    .registers 1

    invoke-virtual {p0}, Lm/v1;->q()Lm/u;

    move-result-object p0

    check-cast p0, Lm/x;

    invoke-virtual {p0}, Lm/x;->y()Lm/q0;

    move-result-object p0

    return-object p0
.end method

.method public final z()Lm/r;
    .registers 1

    invoke-virtual {p0}, Lm/v1;->q()Lm/u;

    move-result-object p0

    check-cast p0, Lm/x;

    invoke-virtual {p0}, Lm/x;->z()Lm/r;

    move-result-object p0

    return-object p0
.end method
