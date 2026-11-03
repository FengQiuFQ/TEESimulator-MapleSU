.class public final Ln0/e;
.super Ljava/lang/Object;

# interfaces
.implements Lm4/c;
.implements Ljava/io/Serializable;


# instance fields
.field public final transient c:Ll0/m;

.field public final transient d:Ll0/w;


# direct methods
.method public constructor <init>(Ll0/m;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln0/e;->c:Ll0/m;

    iget-object p1, p1, Ll0/m;->d:Ll0/u0;

    iget-object p1, p1, Ll0/u0;->E1:Ll0/w;

    iput-object p1, p0, Ln0/e;->d:Ll0/w;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 5

    const-string v0, "malformed data: "

    const/4 v1, 0x0

    :try_start_3
    sget v2, Ln0/b;->a:I

    invoke-static {p1}, Lm/u;->o([B)Lm/u;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-static {p1}, Ll0/m;->i(Ljava/lang/Object;)Ll0/m;

    move-result-object p1
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_f} :catch_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_f} :catch_13

    invoke-direct {p0, p1}, Ln0/e;-><init>(Ll0/m;)V

    return-void

    :catch_13
    move-exception p0

    goto :goto_1f

    :catch_15
    move-exception p0

    goto :goto_35

    :cond_17
    :try_start_17
    new-instance p0, Ljava/io/IOException;

    const-string p1, "no content found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1f
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_1f} :catch_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1f} :catch_13

    :goto_1f
    new-instance p1, Ln0/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0, v1}, Ln0/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :goto_35
    new-instance p1, Ln0/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0, v1}, Ln0/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Ln0/e;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Ln0/e;

    iget-object p0, p0, Ln0/e;->c:Ll0/m;

    iget-object p1, p1, Ln0/e;->c:Ll0/m;

    invoke-virtual {p0, p1}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getEncoded()[B
    .registers 1

    iget-object p0, p0, Ln0/e;->c:Ll0/m;

    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Ln0/e;->c:Ll0/m;

    invoke-virtual {p0}, Lm/n;->hashCode()I

    move-result p0

    return p0
.end method
