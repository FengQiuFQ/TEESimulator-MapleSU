.class public final Lm/n0;
.super Ljava/io/InputStream;


# instance fields
.field public final c:La2/r;

.field public d:Z

.field public q:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(La2/r;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/n0;->d:Z

    iput-object p1, p0, Lm/n0;->c:La2/r;

    return-void
.end method


# virtual methods
.method public final a()Lm/s;
    .registers 4

    iget-object p0, p0, Lm/n0;->c:La2/r;

    iget-object v0, p0, La2/r;->h:Ljava/lang/Object;

    check-cast v0, Lm/w1;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_f

    move-object p0, v1

    goto :goto_13

    :cond_f
    invoke-virtual {p0, v0}, La2/r;->d(I)Lm/f;

    move-result-object p0

    :goto_13
    if-nez p0, :cond_16

    return-object v1

    :cond_16
    instance-of v0, p0, Lm/s;

    if-eqz v0, :cond_1d

    check-cast p0, Lm/s;

    return-object p0

    :cond_1d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown object encountered: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final read()I
    .registers 4

    iget-object v0, p0, Lm/n0;->q:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lm/n0;->d:Z

    if-nez v0, :cond_a

    goto :goto_10

    :cond_a
    invoke-virtual {p0}, Lm/n0;->a()Lm/s;

    move-result-object v0

    if-nez v0, :cond_11

    :goto_10
    return v1

    :cond_11
    const/4 v2, 0x0

    iput-boolean v2, p0, Lm/n0;->d:Z

    :cond_14
    invoke-interface {v0}, Lm/s;->c()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lm/n0;->q:Ljava/io/InputStream;

    :cond_1a
    iget-object v0, p0, Lm/n0;->q:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_23

    return v0

    :cond_23
    invoke-virtual {p0}, Lm/n0;->a()Lm/s;

    move-result-object v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    iput-object v0, p0, Lm/n0;->q:Ljava/io/InputStream;

    return v1
.end method

.method public final read([BII)I
    .registers 8

    iget-object v0, p0, Lm/n0;->q:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lm/n0;->d:Z

    if-nez v0, :cond_a

    goto :goto_35

    :cond_a
    invoke-virtual {p0}, Lm/n0;->a()Lm/s;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_35

    :cond_11
    iput-boolean v1, p0, Lm/n0;->d:Z

    :cond_13
    invoke-interface {v0}, Lm/s;->c()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lm/n0;->q:Ljava/io/InputStream;

    :cond_19
    iget-object v0, p0, Lm/n0;->q:Ljava/io/InputStream;

    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {v0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_29

    add-int/2addr v1, v0

    if-ne v1, p3, :cond_19

    return v1

    :cond_29
    invoke-virtual {p0}, Lm/n0;->a()Lm/s;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 p1, 0x0

    iput-object p1, p0, Lm/n0;->q:Ljava/io/InputStream;

    const/4 p0, 0x1

    if-ge v1, p0, :cond_37

    :goto_35
    const/4 p0, -0x1

    return p0

    :cond_37
    return v1
.end method
