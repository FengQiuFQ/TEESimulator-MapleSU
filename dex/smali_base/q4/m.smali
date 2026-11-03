.class public final Lq4/m;
.super Ljava/lang/Object;

# interfaces
.implements Lq4/f;


# instance fields
.field public final c:Ll0/f;

.field public final d:Ljava/util/Date;

.field public final q:Ljava/util/Date;


# direct methods
.method public constructor <init>([B)V
    .registers 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_5
    new-instance p1, Lm/k;

    invoke-direct {p1, v0}, Lm/k;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lm/k;->f()Lm/u;

    move-result-object p1

    invoke-static {p1}, Ll0/f;->h(Lm/u;)Ll0/f;

    move-result-object p1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_38

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq4/m;->c:Ll0/f;

    :try_start_17
    iget-object v0, p1, Ll0/f;->c:Ll0/g;

    iget-object v0, v0, Ll0/g;->z1:Ll0/d;

    iget-object v0, v0, Ll0/d;->d:Lm/j;

    invoke-virtual {v0}, Lm/j;->t()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lq4/m;->q:Ljava/util/Date;

    iget-object p1, p1, Ll0/f;->c:Ll0/g;

    iget-object p1, p1, Ll0/g;->z1:Ll0/d;

    iget-object p1, p1, Ll0/d;->c:Lm/j;

    invoke-virtual {p1}, Lm/j;->t()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lq4/m;->d:Ljava/util/Date;
    :try_end_2f
    .catch Ljava/text/ParseException; {:try_start_17 .. :try_end_2f} :catch_30

    return-void

    :catch_30
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid data structure in certificate!"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_38
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception decoding certificate structure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_4a
    move-exception p0

    throw p0
.end method


# virtual methods
.method public final a(Ljava/util/Date;)V
    .registers 4

    iget-object v0, p0, Lq4/m;->q:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_25

    iget-object p0, p0, Lq4/m;->d:Ljava/util/Date;

    invoke-virtual {p1, p0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-nez p1, :cond_11

    return-void

    :cond_11
    new-instance p1, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "certificate not valid till "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    new-instance p0, Ljava/security/cert/CertificateExpiredException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "certificate expired on "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Ljava/lang/String;)[Lq4/d;
    .registers 10

    iget-object p0, p0, Lq4/m;->c:Ll0/f;

    iget-object p0, p0, Ll0/f;->c:Ll0/g;

    iget-object p0, p0, Ll0/g;->A1:Lm/x;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    invoke-virtual {p0}, Lm/x;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_7e

    new-instance v3, Lq4/d;

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v5

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    instance-of v6, v5, Ll0/e;

    if-eqz v6, :cond_25

    move-object v4, v5

    check-cast v4, Ll0/e;

    goto :goto_5e

    :cond_25
    if-eqz v5, :cond_5e

    new-instance v4, Ll0/e;

    invoke-static {v5}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v5

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5}, Lm/x;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4d

    invoke-virtual {v5, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v6

    invoke-static {v6}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v6

    iput-object v6, v4, Ll0/e;->c:Lm/q;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v5

    invoke-static {v5}, Lm/y;->s(Ljava/lang/Object;)Lm/y;

    move-result-object v5

    iput-object v5, v4, Ll0/e;->d:Lm/y;

    goto :goto_5e

    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Bad sequence size: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->d(Lm/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5e
    :goto_5e
    iput-object v4, v3, Lq4/d;->c:Ll0/e;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lm/q;

    iget-object v4, v4, Ll0/e;->c:Lm/q;

    invoke-virtual {v4}, Lm/q;->u()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lm/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lm/q;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_7e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_85

    return-object v4

    :cond_85
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lq4/d;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lq4/d;

    return-object p0
.end method

.method public final c(Z)Ljava/util/HashSet;
    .registers 6

    iget-object p0, p0, Lq4/m;->c:Ll0/f;

    iget-object p0, p0, Ll0/f;->c:Ll0/g;

    iget-object p0, p0, Ll0/g;->C1:Ll0/w;

    if-eqz p0, :cond_30

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Ll0/w;->d:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/q;

    invoke-virtual {p0, v2}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object v3

    iget-boolean v3, v3, Ll0/v;->d:Z

    if-ne v3, p1, :cond_13

    invoke-virtual {v2}, Lm/q;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2f
    return-object v0

    :cond_30
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()Lq4/a;
    .registers 2

    new-instance v0, Lq4/a;

    iget-object p0, p0, Lq4/m;->c:Ll0/f;

    iget-object p0, p0, Ll0/f;->c:Ll0/g;

    iget-object p0, p0, Ll0/g;->d:Ll0/b0;

    invoke-virtual {p0}, Ll0/b0;->d()Lm/u;

    move-result-object p0

    check-cast p0, Lm/x;

    invoke-direct {v0, p0}, Lq4/a;-><init>(Lm/x;)V

    return-object v0
.end method

.method public final e()Lq4/b;
    .registers 2

    new-instance v0, Lq4/b;

    iget-object p0, p0, Lq4/m;->c:Ll0/f;

    iget-object p0, p0, Ll0/f;->c:Ll0/g;

    iget-object p0, p0, Ll0/g;->q:Ll0/c;

    invoke-direct {v0, p0}, Lq4/b;-><init>(Ll0/c;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lq4/f;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    check-cast p1, Lq4/f;

    :try_start_c
    iget-object p0, p0, Lq4/m;->c:Ll0/f;

    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0

    check-cast p1, Lq4/m;

    iget-object p1, p1, Lq4/m;->c:Ll0/f;

    invoke-virtual {p1}, Lm/n;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1e} :catch_1f

    return p0

    :catch_1f
    return v1
.end method

.method public final getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lq4/m;->c(Z)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public final getExtensionValue(Ljava/lang/String;)[B
    .registers 4

    iget-object p0, p0, Lq4/m;->c:Ll0/f;

    iget-object p0, p0, Ll0/f;->c:Ll0/g;

    iget-object p0, p0, Ll0/g;->C1:Ll0/w;

    if-eqz p0, :cond_2c

    new-instance v0, Lm/q;

    invoke-direct {v0, p1}, Lm/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object p0

    if-eqz p0, :cond_2c

    :try_start_13
    iget-object p0, p0, Ll0/v;->q:Lm/r;

    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error encoding "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lq4/m;->c(Z)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public final hasUnsupportedCriticalExtension()Z
    .registers 1

    iget-object p0, p0, Lq4/m;->c:Ll0/f;

    iget-object p0, p0, Ll0/f;->c:Ll0/g;

    iget-object p0, p0, Ll0/g;->C1:Ll0/w;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ll0/w;->k()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    :try_start_0
    iget-object p0, p0, Lq4/m;->c:Ll0/f;

    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lm4/d;->u([B)I

    move-result p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    const/4 p0, 0x0

    return p0
.end method
