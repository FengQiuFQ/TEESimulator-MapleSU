.class public final Lm/m0;
.super Ljava/io/InputStream;


# instance fields
.field public final c:La2/r;

.field public d:Z

.field public q:I

.field public x:Lm/c;

.field public y:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(La2/r;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/m0;->d:Z

    const/4 v0, 0x0

    iput v0, p0, Lm/m0;->q:I

    iput-object p1, p0, Lm/m0;->c:La2/r;

    return-void
.end method


# virtual methods
.method public final a()Lm/c;
    .registers 4

    iget-object v0, p0, Lm/m0;->c:La2/r;

    iget-object v1, v0, La2/r;->h:Ljava/lang/Object;

    check-cast v1, Lm/w1;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_f

    move-object v0, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v0, v1}, La2/r;->d(I)Lm/f;

    move-result-object v0

    :goto_13
    if-nez v0, :cond_16

    return-object v2

    :cond_16
    instance-of v1, v0, Lm/c;

    if-eqz v1, :cond_29

    iget p0, p0, Lm/m0;->q:I

    if-nez p0, :cond_21

    check-cast v0, Lm/c;

    return-object v0

    :cond_21
    new-instance p0, Ljava/io/IOException;

    const-string v0, "only the last nested bitstring can have padding"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown object encountered: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final read()I
    .registers 4

    iget-object v0, p0, Lm/m0;->y:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lm/m0;->d:Z

    if-nez v0, :cond_a

    goto :goto_12

    :cond_a
    invoke-virtual {p0}, Lm/m0;->a()Lm/c;

    move-result-object v0

    iput-object v0, p0, Lm/m0;->x:Lm/c;

    if-nez v0, :cond_13

    :goto_12
    return v1

    :cond_13
    const/4 v2, 0x0

    iput-boolean v2, p0, Lm/m0;->d:Z

    :cond_16
    invoke-interface {v0}, Lm/c;->b()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lm/m0;->y:Ljava/io/InputStream;

    :cond_1c
    iget-object v0, p0, Lm/m0;->y:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_25

    return v0

    :cond_25
    iget-object v0, p0, Lm/m0;->x:Lm/c;

    invoke-interface {v0}, Lm/c;->f()I

    move-result v0

    iput v0, p0, Lm/m0;->q:I

    invoke-virtual {p0}, Lm/m0;->a()Lm/c;

    move-result-object v0

    iput-object v0, p0, Lm/m0;->x:Lm/c;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    iput-object v0, p0, Lm/m0;->y:Ljava/io/InputStream;

    return v1
.end method

.method public final read([BII)I
    .registers 8

    iget-object v0, p0, Lm/m0;->y:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lm/m0;->d:Z

    if-nez v0, :cond_a

    goto :goto_41

    :cond_a
    invoke-virtual {p0}, Lm/m0;->a()Lm/c;

    move-result-object v0

    iput-object v0, p0, Lm/m0;->x:Lm/c;

    if-nez v0, :cond_13

    goto :goto_41

    :cond_13
    iput-boolean v1, p0, Lm/m0;->d:Z

    :cond_15
    invoke-interface {v0}, Lm/c;->b()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lm/m0;->y:Ljava/io/InputStream;

    :cond_1b
    iget-object v0, p0, Lm/m0;->y:Ljava/io/InputStream;

    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {v0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_2b

    add-int/2addr v1, v0

    if-ne v1, p3, :cond_1b

    return v1

    :cond_2b
    iget-object v0, p0, Lm/m0;->x:Lm/c;

    invoke-interface {v0}, Lm/c;->f()I

    move-result v0

    iput v0, p0, Lm/m0;->q:I

    invoke-virtual {p0}, Lm/m0;->a()Lm/c;

    move-result-object v0

    iput-object v0, p0, Lm/m0;->x:Lm/c;

    if-nez v0, :cond_15

    const/4 p1, 0x0

    iput-object p1, p0, Lm/m0;->y:Ljava/io/InputStream;

    const/4 p0, 0x1

    if-ge v1, p0, :cond_43

    :goto_41
    const/4 p0, -0x1

    return p0

    :cond_43
    return v1
.end method
