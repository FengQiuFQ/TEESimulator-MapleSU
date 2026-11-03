.class public abstract Lm/u;
.super Lm/n;


# direct methods
.method public static o([B)Lm/u;
    .registers 2

    new-instance v0, Lm/k;

    invoke-direct {v0, p0}, Lm/k;-><init>([B)V

    :try_start_5
    invoke-virtual {v0}, Lm/k;->f()Lm/u;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_10

    return-object p0

    :cond_10
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Extra data detected in stream"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_18} :catch_18

    :catch_18
    new-instance p0, Ljava/io/IOException;

    const-string v0, "cannot recognise object in stream"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 1

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lm/f;

    if-eqz v1, :cond_15

    check-cast p1, Lm/f;

    invoke-interface {p1}, Lm/f;->d()Lm/u;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm/u;->h(Lm/u;)Z

    move-result p0

    if-eqz p0, :cond_15

    return v0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public abstract h(Lm/u;)Z
.end method

.method public abstract hashCode()I
.end method

.method public abstract i(Lb1/a;Z)V
.end method

.method public abstract j()Z
.end method

.method public final k(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4

    const-string v0, "DER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance p2, Lm/y0;

    const/4 v0, 0x6

    invoke-direct {p2, v0, p1}, Lb1/a;-><init>(ILjava/lang/Object;)V

    goto :goto_24

    :cond_f
    const-string v0, "DL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    new-instance p2, Lm/m1;

    const/4 v0, 0x6

    invoke-direct {p2, v0, p1}, Lb1/a;-><init>(ILjava/lang/Object;)V

    goto :goto_24

    :cond_1e
    new-instance p2, Lb1/a;

    const/4 v0, 0x6

    invoke-direct {p2, v0, p1}, Lb1/a;-><init>(ILjava/lang/Object;)V

    :goto_24
    invoke-virtual {p2, p0}, Lb1/a;->J(Lm/u;)V

    return-void
.end method

.method public abstract l(Z)I
.end method

.method public final m(Lm/f;)Z
    .registers 2

    if-eq p0, p1, :cond_11

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lm/f;->d()Lm/u;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm/u;->h(Lm/u;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public final n(Lm/u;)Z
    .registers 2

    if-eq p0, p1, :cond_b

    invoke-virtual {p0, p1}, Lm/u;->h(Lm/u;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public p()Lm/u;
    .registers 1

    return-object p0
.end method

.method public q()Lm/u;
    .registers 1

    return-object p0
.end method
