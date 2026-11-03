.class public final Lm0/j;
.super Lm/n;


# instance fields
.field public final c:Lm/x0;

.field public final d:Lk2/h;

.field public q:Lk2/p;


# direct methods
.method public constructor <init>(Lk2/h;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/j;->d:Lk2/h;

    new-instance p1, Lm/x0;

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lm/r;-><init>([B)V

    iput-object p1, p0, Lm0/j;->c:Lm/x0;

    return-void
.end method

.method public constructor <init>(Lk2/p;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lk2/p;->p()Lk2/p;

    move-result-object v0

    iput-object v0, p0, Lm0/j;->q:Lk2/p;

    new-instance v0, Lm/x0;

    invoke-virtual {p1, p2}, Lk2/p;->h(Z)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lm/r;-><init>([B)V

    iput-object v0, p0, Lm0/j;->c:Lm/x0;

    return-void
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 1

    iget-object p0, p0, Lm0/j;->c:Lm/x0;

    return-object p0
.end method

.method public final declared-synchronized h()Lk2/p;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lm0/j;->q:Lk2/p;

    if-nez v0, :cond_18

    iget-object v0, p0, Lm0/j;->d:Lk2/h;

    iget-object v1, p0, Lm0/j;->c:Lm/x0;

    iget-object v1, v1, Lm/r;->c:[B

    invoke-virtual {v0, v1}, Lk2/h;->g([B)Lk2/p;

    move-result-object v0

    invoke-virtual {v0}, Lk2/p;->p()Lk2/p;

    move-result-object v0

    iput-object v0, p0, Lm0/j;->q:Lk2/p;

    goto :goto_18

    :catchall_16
    move-exception v0

    goto :goto_1c

    :cond_18
    :goto_18
    iget-object v0, p0, Lm0/j;->q:Lk2/p;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_16

    monitor-exit p0

    return-object v0

    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_16

    throw v0
.end method
