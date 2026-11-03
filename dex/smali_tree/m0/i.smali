.class public abstract Lm0/i;
.super Ljava/lang/Object;


# instance fields
.field public a:Lk2/h;

.field public b:Lm0/h;


# virtual methods
.method public abstract a()Lk2/h;
.end method

.method public abstract b()Lm0/h;
.end method

.method public final declared-synchronized c()Lk2/h;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lm0/i;->a:Lk2/h;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lm0/i;->a()Lk2/h;

    move-result-object v0

    iput-object v0, p0, Lm0/i;->a:Lk2/h;

    goto :goto_e

    :catchall_c
    move-exception v0

    goto :goto_12

    :cond_e
    :goto_e
    iget-object v0, p0, Lm0/i;->a:Lk2/h;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_c

    monitor-exit p0

    return-object v0

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_c

    throw v0
.end method

.method public final declared-synchronized d()Lm0/h;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lm0/i;->b:Lm0/h;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lm0/i;->b()Lm0/h;

    move-result-object v0

    iput-object v0, p0, Lm0/i;->b:Lm0/h;

    goto :goto_e

    :catchall_c
    move-exception v0

    goto :goto_12

    :cond_e
    :goto_e
    iget-object v0, p0, Lm0/i;->b:Lm0/h;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_c

    monitor-exit p0

    return-object v0

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_c

    throw v0
.end method
