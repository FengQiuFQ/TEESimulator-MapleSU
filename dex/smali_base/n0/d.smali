.class public final Ln0/d;
.super Ljava/lang/Object;

# interfaces
.implements Lm4/c;
.implements Ljava/io/Serializable;


# instance fields
.field public final transient c:Ll0/n;


# direct methods
.method public constructor <init>([B)V
    .registers 5

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p1, "malformed data: "

    :try_start_7
    new-instance v1, Lm/k;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lm/k;-><init>(Ljava/io/InputStream;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lm/k;->f()Lm/u;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-static {v0}, Ll0/n;->h(Lm/f;)Ll0/n;

    move-result-object p1
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_17} :catch_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_17} :catch_3a

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln0/d;->c:Ll0/n;

    iget-object p0, p1, Ll0/n;->c:Ll0/t0;

    iget-object p0, p0, Ll0/t0;->A1:Ll0/w;

    if-nez p0, :cond_23

    goto :goto_35

    :cond_23
    sget-object v0, Ll0/v;->F1:Lm/q;

    invoke-virtual {p0, v0}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object p0

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Ll0/v;->h()Lm/u;

    move-result-object p0

    invoke-static {p0}, Ll0/d0;->i(Ljava/lang/Object;)Ll0/d0;

    move-result-object p0

    iget-boolean p0, p0, Ll0/d0;->y:Z

    :cond_35
    :goto_35
    iget-object p0, p1, Ll0/n;->c:Ll0/t0;

    iget-object p0, p0, Ll0/t0;->q:Lj0/c;

    return-void

    :catch_3a
    move-exception p0

    goto :goto_46

    :catch_3c
    move-exception p0

    goto :goto_5d

    :cond_3e
    :try_start_3e
    new-instance p0, Ljava/io/IOException;

    const-string v0, "no content found"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_46
    .catch Ljava/lang/ClassCastException; {:try_start_3e .. :try_end_46} :catch_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3e .. :try_end_46} :catch_3a

    :goto_46
    new-instance v0, Ln0/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Ln0/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    :goto_5d
    new-instance v0, Ln0/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Ln0/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Ln0/d;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Ln0/d;

    iget-object p0, p0, Ln0/d;->c:Ll0/n;

    iget-object p1, p1, Ln0/d;->c:Ll0/n;

    invoke-virtual {p0, p1}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getEncoded()[B
    .registers 1

    iget-object p0, p0, Ln0/d;->c:Ll0/n;

    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Ln0/d;->c:Ll0/n;

    invoke-virtual {p0}, Ll0/n;->hashCode()I

    move-result p0

    return p0
.end method
