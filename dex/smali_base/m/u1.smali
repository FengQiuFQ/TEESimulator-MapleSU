.class public final Lm/u1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field public a:Lm/k;

.field public b:Lm/u;


# virtual methods
.method public final a()Lm/u;
    .registers 4

    :try_start_0
    iget-object p0, p0, Lm/u1;->a:Lm/k;

    invoke-virtual {p0}, Lm/k;->f()Lm/u;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    new-instance v0, Lm/t;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "malformed ASN.1: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lm/t;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0
.end method

.method public final hasMoreElements()Z
    .registers 1

    iget-object p0, p0, Lm/u1;->b:Lm/u;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final nextElement()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lm/u1;->b:Lm/u;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lm/u1;->a()Lm/u;

    move-result-object v1

    iput-object v1, p0, Lm/u1;->b:Lm/u;

    return-object v0

    :cond_b
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
