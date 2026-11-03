.class public final Le1/y;
.super Le1/b;


# instance fields
.field public final d:[B

.field public q:Le1/z;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Le1/b;-><init>(Z)V

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Le1/y;->d:[B

    array-length p0, v1

    if-ne p0, v0, :cond_11

    invoke-virtual {p1, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "k"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([B)V
    .registers 4

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le1/y;-><init>([BI)V

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'buf\' must have length 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([BI)V
    .registers 4

    const/4 p2, 0x1

    invoke-direct {p0, p2}, Le1/b;-><init>(Z)V

    const/16 p2, 0x20

    new-array v0, p2, [B

    iput-object v0, p0, Le1/y;->d:[B

    const/4 p0, 0x0

    invoke-static {p1, p0, v0, p0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public final a()Le1/z;
    .registers 4

    iget-object v0, p0, Le1/y;->d:[B

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Le1/y;->q:Le1/z;

    if-nez v1, :cond_17

    new-instance v1, Le1/z;

    iget-object v2, p0, Le1/y;->d:[B

    invoke-static {v2}, Lq2/f;->p([B)Lq2/e;

    move-result-object v2

    invoke-direct {v1, v2}, Le1/z;-><init>(Lq2/e;)V

    iput-object v1, p0, Le1/y;->q:Le1/z;

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_1b

    :cond_17
    :goto_17
    iget-object p0, p0, Le1/y;->q:Le1/z;

    monitor-exit v0

    return-object p0

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_15

    throw p0
.end method
