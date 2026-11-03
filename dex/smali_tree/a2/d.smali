.class public final La2/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field public final c:Ljava/util/List;

.field public final d:Ll0/b;


# direct methods
.method public varargs constructor <init>(Lm/q;[Ljava/security/PublicKey;)V
    .registers 5

    new-instance v0, Ll0/b;

    invoke-direct {v0, p1}, Ll0/b;-><init>(Lm/q;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La2/d;->d:Ll0/b;

    array-length p1, p2

    if-eqz p1, :cond_26

    new-instance p1, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_14
    array-length v1, p2

    if-ge v0, v1, :cond_1f

    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_1f
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, La2/d;->c:Ljava/util/List;

    return-void

    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "at least one public key must be provided for the composite public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, La2/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    check-cast p1, La2/d;

    iget-object v1, p1, La2/d;->d:Ll0/b;

    iget-object v3, p0, La2/d;->d:Ll0/b;

    invoke-virtual {v1, v3}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object p0, p0, La2/d;->c:Ljava/util/List;

    iget-object p1, p1, La2/d;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_21

    :cond_20
    return v0

    :cond_21
    :goto_21
    return v2
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, La2/d;->d:Ll0/b;

    iget-object p0, p0, Ll0/b;->c:Lm/q;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->getAlgorithmName(Lm/q;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 10

    const-string v0, "DER"

    iget-object v1, p0, La2/d;->d:Ll0/b;

    iget-object v2, v1, Ll0/b;->c:Lm/q;

    sget-object v3, Lq1/a;->e:Lm/q;

    invoke-virtual {v2, v3}, Lm/q;->y(Lm/q;)Z

    move-result v3

    const/4 v4, -0x1

    const-string v5, "unable to encode composite public key: "

    const/4 v6, 0x0

    iget-object p0, p0, La2/d;->c:Ljava/util/List;

    if-eqz v3, :cond_98

    :try_start_14
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    sget-object v2, Lu3/b;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_81

    array-length v2, v0

    if-eqz v2, :cond_79

    invoke-static {v0}, Lm/u;->o([B)Lm/u;

    move-result-object v0

    invoke-static {v0}, Ll0/p0;->h(Ljava/lang/Object;)Ll0/p0;

    move-result-object v0

    invoke-static {v0}, Lu3/b;->a(Ll0/p0;)Le1/b;

    move-result-object v0

    invoke-static {v0}, Ls2/b;->p(Le1/b;)Ll0/p0;

    move-result-object v0

    iget-object v0, v0, Ll0/p0;->d:Lm/b;

    invoke-virtual {v0}, Lm/b;->s()[B

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/PublicKey;

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lj1/f;->a([B)Le1/b;

    move-result-object p0

    invoke-static {p0}, Lj1/i;->a(Le1/b;)Ll0/p0;

    move-result-object p0

    iget-object p0, p0, Ll0/p0;->d:Lm/b;

    invoke-virtual {p0}, Lm/b;->s()[B

    move-result-object p0

    invoke-static {v0, p0}, Lm4/d;->j([B[B)[B

    move-result-object p0

    new-instance v0, Lm/p0;

    invoke-direct {v0, p0, v6}, Lm/b;-><init>([BI)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Lm/a1;

    invoke-direct {v3, v1, v0}, Lm/x;-><init>(Lm/f;Lm/f;)V

    iput v4, v3, Lm/a1;->q:I

    new-instance v0, Lb1/a;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lb1/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v0, v2}, Lm/a1;->i(Lb1/a;Z)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_77
    move-exception p0

    goto :goto_89

    :cond_79
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "keyInfoData array empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_81
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "keyInfoData array null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_89} :catch_77

    :goto_89
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_98
    new-instance v3, Lm/g;

    invoke-direct {v3}, Lm/g;-><init>()V

    move v7, v6

    :goto_9e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_d2

    sget-object v8, Lv1/c;->v:Lm/q;

    invoke-virtual {v2, v8}, Lm/u;->n(Lm/u;)Z

    move-result v8

    if-eqz v8, :cond_be

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/PublicKey;

    invoke-interface {v8}, Ljava/security/Key;->getEncoded()[B

    move-result-object v8

    invoke-static {v8}, Ll0/p0;->h(Ljava/lang/Object;)Ll0/p0;

    move-result-object v8

    :goto_ba
    invoke-virtual {v3, v8}, Lm/g;->a(Lm/f;)V

    goto :goto_cf

    :cond_be
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/PublicKey;

    invoke-interface {v8}, Ljava/security/Key;->getEncoded()[B

    move-result-object v8

    invoke-static {v8}, Ll0/p0;->h(Ljava/lang/Object;)Ll0/p0;

    move-result-object v8

    iget-object v8, v8, Ll0/p0;->d:Lm/b;

    goto :goto_ba

    :goto_cf
    add-int/lit8 v7, v7, 0x1

    goto :goto_9e

    :cond_d2
    :try_start_d2
    new-instance p0, Lm/a1;

    invoke-direct {p0, v3}, Lm/x;-><init>(Lm/g;)V

    iput v4, p0, Lm/a1;->q:I

    new-instance v2, Lm/p0;

    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0

    invoke-direct {v2, p0, v6}, Lm/b;-><init>([BI)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Lm/a1;

    invoke-direct {v3, v1, v2}, Lm/x;-><init>(Lm/f;Lm/f;)V

    iput v4, v3, Lm/a1;->q:I

    invoke-virtual {v3, p0, v0}, Lm/u;->k(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_f5} :catch_f6

    return-object p0

    :catch_f6
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "X.509"

    return-object p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, La2/d;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    return p0
.end method
