.class public final La2/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivateKey;


# instance fields
.field public final c:Ljava/util/List;

.field public final d:Ll0/b;


# direct methods
.method public varargs constructor <init>(Lm/q;[Ljava/security/PrivateKey;)V
    .registers 7

    new-instance v0, Ll0/b;

    invoke-direct {v0, p1}, Ll0/b;-><init>(Lm/q;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La2/c;->d:Ll0/b;

    array-length p1, p2

    if-eqz p1, :cond_32

    new-instance p1, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_14
    array-length v1, p2

    if-ge v0, v1, :cond_2b

    aget-object v1, p2, v0

    instance-of v2, v1, Lb2/d;

    if-eqz v2, :cond_25

    :try_start_1d
    move-object v2, v1

    check-cast v2, Lb2/d;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lb2/d;->getPrivateKey(Z)Lb2/d;

    move-result-object v1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_25

    :catch_25
    :cond_25
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_2b
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, La2/c;->c:Ljava/util/List;

    return-void

    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "at least one private key must be provided for the composite private key"

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
    instance-of v1, p1, La2/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    check-cast p1, La2/c;

    iget-object v1, p1, La2/c;->d:Ll0/b;

    iget-object v3, p0, La2/c;->d:Ll0/b;

    invoke-virtual {v1, v3}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object p0, p0, La2/c;->c:Ljava/util/List;

    iget-object p1, p1, La2/c;->c:Ljava/util/List;

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

    iget-object p0, p0, La2/c;->d:Ll0/b;

    iget-object p0, p0, Ll0/b;->c:Lm/q;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->getAlgorithmName(Lm/q;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 12

    iget-object v0, p0, La2/c;->d:Ll0/b;

    iget-object v1, v0, Ll0/b;->c:Lm/q;

    sget-object v2, Lq1/a;->e:Lm/q;

    invoke-virtual {v1, v2}, Lm/q;->y(Lm/q;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object p0, p0, La2/c;->c:Ljava/util/List;

    if-eqz v1, :cond_e2

    :try_start_11
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb2/d;

    invoke-interface {v1}, Lb2/d;->getSeed()[B

    move-result-object v1

    const/4 v5, 0x1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/PrivateKey;

    invoke-interface {v6}, Ljava/security/Key;->getEncoded()[B

    move-result-object v6

    invoke-static {v6}, Lq4/k;->H([B)Le1/b;

    move-result-object v6

    invoke-static {v6, v3}, Lj1/d;->a(Le1/b;Lm/y;)Ld0/t;

    move-result-object v6

    invoke-virtual {v6}, Ld0/t;->i()Lm/x0;

    move-result-object v6

    iget-object v6, v6, Lm/r;->c:[B

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/PrivateKey;

    invoke-interface {v7}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Ed"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-static {v6}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p0

    iget-object v6, p0, Lm/r;->c:[B

    goto :goto_c2

    :cond_4d
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/PrivateKey;

    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    const-string v7, "EC"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c2

    invoke-static {v6}, Lf0/a;->h(Ljava/lang/Object;)Lf0/a;

    move-result-object p0

    invoke-virtual {p0, v4, v2}, Lf0/a;->j(II)Lm/u;

    move-result-object v6

    invoke-static {v6}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v6

    invoke-static {v6}, Lq4/k;->Y(Lm/q;)Lm0/h;

    move-result-object v6

    iget-object v6, v6, Lm0/h;->d:Lm0/g;

    iget-object v6, v6, Lm0/g;->c:Lk2/h;

    invoke-virtual {v6}, Lk2/h;->l()I

    move-result v6

    invoke-virtual {p0}, Lf0/a;->i()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0, v4, v2}, Lf0/a;->j(II)Lm/u;

    move-result-object p0

    add-int/lit8 v6, v6, 0x7

    div-int/lit8 v6, v6, 0x8

    invoke-static {v6, v7}, Lm4/a;->a(ILjava/math/BigInteger;)[B

    move-result-object v6

    new-instance v7, Lm/g;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Lm/g;-><init>(I)V

    new-instance v8, Lm/l;

    const-wide/16 v9, 0x1

    invoke-direct {v8, v9, v10}, Lm/l;-><init>(J)V

    invoke-virtual {v7, v8}, Lm/g;->a(Lm/f;)V

    new-instance v8, Lm/x0;

    invoke-direct {v8, v6}, Lm/r;-><init>([B)V

    invoke-virtual {v7, v8}, Lm/g;->a(Lm/f;)V

    if-eqz p0, :cond_a9

    new-instance v6, Lm/d1;

    invoke-direct {v6, v5, v4, p0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v7, v6}, Lm/g;->a(Lm/f;)V

    :cond_a9
    new-instance p0, Lm/a1;

    invoke-direct {p0, v7}, Lm/x;-><init>(Lm/g;)V

    iput v2, p0, Lm/a1;->q:I

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Lb1/a;

    const/4 v6, 0x6

    invoke-direct {v4, v6, v2}, Lb1/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v4, v5}, Lm/a1;->i(Lb1/a;Z)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    :cond_c2
    :goto_c2
    new-instance p0, Ld0/t;

    invoke-static {v1, v6}, Lm4/d;->j([B[B)[B

    move-result-object v1

    invoke-direct {p0, v0, v1, v3, v3}, Ld0/t;-><init>(Ll0/b;[BLm/y;[B)V

    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_cf} :catch_d0

    return-object p0

    :catch_d0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to encode composite public key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e2
    new-instance v1, Lm/g;

    invoke-direct {v1}, Lm/g;-><init>()V

    iget-object v5, v0, Ll0/b;->c:Lm/q;

    sget-object v6, Lv1/c;->v:Lm/q;

    invoke-virtual {v5, v6}, Lm/u;->n(Lm/u;)Z

    move-result v5

    const-string v6, "unable to encode composite private key: "

    if-eqz v5, :cond_12e

    :goto_f3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_10d

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/PrivateKey;

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Ld0/t;->h(Ljava/lang/Object;)Ld0/t;

    move-result-object v5

    invoke-virtual {v1, v5}, Lm/g;->a(Lm/f;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_f3

    :cond_10d
    :try_start_10d
    new-instance p0, Ld0/t;

    new-instance v4, Lm/a1;

    invoke-direct {v4, v1}, Lm/x;-><init>(Lm/g;)V

    iput v2, v4, Lm/a1;->q:I

    invoke-direct {p0, v0, v4, v3, v3}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_11d} :catch_11e

    return-object p0

    :catch_11e
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12e
    move-object v1, v3

    :goto_12f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_150

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PrivateKey;

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Ld0/t;->h(Ljava/lang/Object;)Ld0/t;

    move-result-object v2

    invoke-virtual {v2}, Ld0/t;->i()Lm/x0;

    move-result-object v2

    iget-object v2, v2, Lm/r;->c:[B

    invoke-static {v1, v2}, Lm4/d;->j([B[B)[B

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_12f

    :cond_150
    :try_start_150
    new-instance p0, Ld0/t;

    invoke-direct {p0, v0, v1, v3, v3}, Ld0/t;-><init>(Ll0/b;[BLm/y;[B)V

    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_159} :catch_15a

    return-object p0

    :catch_15a
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, La2/c;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    return p0
.end method
