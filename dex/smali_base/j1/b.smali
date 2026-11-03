.class public abstract Lj1/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "openssh-key-v1\u0000"

    invoke-static {v0}, Lm4/m;->c(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lj1/b;->a:[B

    return-void
.end method

.method public static a(Le1/b;)[B
    .registers 8

    instance-of v0, p0, Le1/a1;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-static {p0, v1}, Lj1/d;->a(Le1/b;Lm/y;)Ld0/t;

    move-result-object p0

    invoke-virtual {p0}, Ld0/t;->j()Lm/u;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0

    return-object p0

    :cond_15
    instance-of v0, p0, Le1/w;

    if-eqz v0, :cond_29

    invoke-static {p0, v1}, Lj1/d;->a(Le1/b;Lm/y;)Ld0/t;

    move-result-object p0

    invoke-virtual {p0}, Ld0/t;->j()Lm/u;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0

    return-object p0

    :cond_29
    instance-of v0, p0, Le1/n;

    if-eqz v0, :cond_97

    check-cast p0, Le1/n;

    iget-object v0, p0, Le1/n;->q:Ljava/math/BigInteger;

    iget-object p0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, Le1/m;

    new-instance v1, Lm/g;

    invoke-direct {v1}, Lm/g;-><init>()V

    new-instance v2, Lm/l;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Lm/l;-><init>(J)V

    invoke-virtual {v1, v2}, Lm/g;->a(Lm/f;)V

    new-instance v2, Lm/l;

    iget-object v3, p0, Le1/m;->q:Ljava/math/BigInteger;

    iget-object v4, p0, Le1/m;->c:Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Lm/g;->a(Lm/f;)V

    new-instance v2, Lm/l;

    iget-object v3, p0, Le1/m;->d:Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Lm/g;->a(Lm/f;)V

    new-instance v2, Lm/l;

    invoke-direct {v2, v4}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Le1/m;->q:Ljava/math/BigInteger;

    invoke-virtual {v4, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    new-instance v2, Lm/l;

    invoke-direct {v2, p0}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/l;

    invoke-direct {p0, v0}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, p0}, Lm/g;->a(Lm/f;)V

    :try_start_78
    new-instance p0, Lm/a1;

    invoke-direct {p0, v1}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_84} :catch_85

    return-object p0

    :catch_85
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to encode DSAPrivateKeyParameters "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_97
    instance-of v0, p0, Le1/y;

    if-eqz v0, :cond_135

    check-cast p0, Le1/y;

    invoke-virtual {p0}, Le1/y;->a()Le1/z;

    move-result-object v0

    new-instance v1, Lg3/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lg3/a;-><init>(I)V

    iget-object v2, v1, Lg3/a;->a:Ljava/io/ByteArrayOutputStream;

    sget-object v3, Lj1/b;->a:[B

    :try_start_ab
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_12a

    const-string v3, "none"

    invoke-static {v3}, Lm4/m;->c(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lg3/a;->f([B)V

    invoke-static {v3}, Lm4/m;->c(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lg3/a;->f([B)V

    const-string v3, ""

    invoke-static {v3}, Lm4/m;->c(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lg3/a;->f([B)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lg3/a;->c(I)V

    invoke-static {v0}, Lt4/d;->J(Le1/b;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Lg3/a;->f([B)V

    new-instance v5, Lg3/a;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lg3/a;-><init>(I)V

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lg3/a;->c(I)V

    invoke-virtual {v5, v6}, Lg3/a;->c(I)V

    const-string v6, "ssh-ed25519"

    invoke-static {v6}, Lm4/m;->c(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lg3/a;->f([B)V

    invoke-virtual {v0}, Le1/z;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lg3/a;->f([B)V

    iget-object p0, p0, Le1/y;->d:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    invoke-static {p0, v0}, Lm4/d;->j([B[B)[B

    move-result-object p0

    invoke-virtual {v5, p0}, Lg3/a;->f([B)V

    invoke-static {v3}, Lm4/m;->c(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v5, p0}, Lg3/a;->f([B)V

    iget-object p0, v5, Lg3/a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_11e

    rsub-int/lit8 v0, v0, 0x8

    :goto_116
    if-gt v4, v0, :cond_11e

    invoke-virtual {p0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_116

    :cond_11e
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Lg3/a;->f([B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_12a
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to convert "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to openssh private key"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b([B)Le1/b;
    .registers 16

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/16 v2, 0x30

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_11c

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ne v1, v2, :cond_71

    move v1, v0

    :goto_17
    invoke-virtual {p0}, Lm/x;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    instance-of v2, v2, Lm/l;

    if-nez v2, :cond_27

    goto/16 :goto_272

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2a
    invoke-virtual {p0, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    check-cast v0, Lm/l;

    invoke-virtual {v0}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lm4/a;->a:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_272

    new-instance v4, Le1/n;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    check-cast v0, Lm/l;

    invoke-virtual {v0}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Le1/m;

    invoke-virtual {p0, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    check-cast v2, Lm/l;

    invoke-virtual {v2}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    check-cast v3, Lm/l;

    invoke-virtual {v3}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v5}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    check-cast p0, Lm/l;

    invoke-virtual {p0}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v1, v2, v3, p0}, Le1/m;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v4, v0, v1}, Le1/n;-><init>(Ljava/math/BigInteger;Le1/m;)V

    goto/16 :goto_272

    :cond_71
    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_bc

    move v1, v0

    :goto_7a
    invoke-virtual {p0}, Lm/x;->size()I

    move-result v2

    if-ge v1, v2, :cond_8d

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    instance-of v2, v2, Lm/l;

    if-nez v2, :cond_8a

    goto/16 :goto_272

    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    :cond_8d
    invoke-virtual {p0, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    check-cast v0, Lm/l;

    invoke-virtual {v0}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lm4/a;->a:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_272

    invoke-static {p0}, Ld0/w;->h(Ljava/lang/Object;)Ld0/w;

    move-result-object p0

    new-instance v0, Le1/a1;

    iget-object v1, p0, Ld0/w;->d:Ljava/math/BigInteger;

    iget-object v2, p0, Ld0/w;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Ld0/w;->x:Ljava/math/BigInteger;

    iget-object v4, p0, Ld0/w;->y:Ljava/math/BigInteger;

    iget-object v5, p0, Ld0/w;->z1:Ljava/math/BigInteger;

    iget-object v6, p0, Ld0/w;->A1:Ljava/math/BigInteger;

    iget-object v7, p0, Ld0/w;->B1:Ljava/math/BigInteger;

    iget-object v8, p0, Ld0/w;->C1:Ljava/math/BigInteger;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Le1/a1;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    move-object v4, v0

    goto/16 :goto_272

    :cond_bc
    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_272

    invoke-virtual {p0, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    instance-of v1, v1, Lm/a0;

    if-eqz v1, :cond_272

    invoke-virtual {p0, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    instance-of v1, v1, Lm/a0;

    if-eqz v1, :cond_272

    invoke-static {p0}, Lf0/a;->h(Ljava/lang/Object;)Lf0/a;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lf0/a;->j(II)Lm/u;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lm0/f;->h(Ljava/lang/Object;)Lm0/f;

    move-result-object v0

    iget-object v0, v0, Lm0/f;->c:Lm/u;

    instance-of v1, v0, Lm/q;

    if-eqz v1, :cond_108

    invoke-static {v0}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v0

    sget-object v1, Lt0/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm0/i;

    if-nez v1, :cond_f8

    goto :goto_fc

    :cond_f8
    invoke-virtual {v1}, Lm0/i;->d()Lm0/h;

    move-result-object v4

    :goto_fc
    if-nez v4, :cond_102

    invoke-static {v0}, Lq4/k;->Y(Lm/q;)Lm0/h;

    move-result-object v4

    :cond_102
    new-instance v1, Le1/v;

    invoke-direct {v1, v0, v4}, Le1/v;-><init>(Lm/q;Lm0/h;)V

    goto :goto_111

    :cond_108
    invoke-static {v0}, Lm0/h;->h(Ljava/lang/Object;)Lm0/h;

    move-result-object v0

    new-instance v1, Le1/r;

    invoke-direct {v1, v0}, Le1/r;-><init>(Lm0/h;)V

    :goto_111
    invoke-virtual {p0}, Lf0/a;->i()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v4, Le1/w;

    invoke-direct {v4, p0, v1}, Le1/w;-><init>(Ljava/math/BigInteger;Le1/r;)V

    goto/16 :goto_272

    :cond_11c
    new-instance v1, Lj1/g;

    sget-object v2, Lj1/b;->a:[B

    invoke-direct {v1, v2, p0}, Lj1/g;-><init>([B[B)V

    invoke-virtual {v1}, Lj1/g;->d()Ljava/lang/String;

    move-result-object v2

    const-string v5, "none"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ad

    invoke-virtual {v1}, Lj1/g;->g()V

    invoke-virtual {v1}, Lj1/g;->g()V

    invoke-virtual {v1}, Lj1/g;->e()I

    move-result v2

    if-ne v2, v3, :cond_2a5

    invoke-virtual {v1}, Lj1/g;->c()[B

    move-result-object v2

    invoke-static {v2}, Lt4/d;->A0([B)Le1/b;

    invoke-virtual {v1}, Lj1/g;->e()I

    move-result v2

    if-nez v2, :cond_14b

    new-array p0, v0, [B

    goto :goto_183

    :cond_14b
    iget v5, v1, Lj1/g;->a:I

    array-length v6, p0

    sub-int/2addr v6, v2

    if-gt v5, v6, :cond_29d

    rem-int/lit8 v6, v2, 0x8

    if-nez v6, :cond_295

    add-int v6, v5, v2

    iput v6, v1, Lj1/g;->a:I

    if-lez v2, :cond_17f

    add-int/lit8 v2, v6, -0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-lez v2, :cond_17f

    const/16 v7, 0x8

    if-ge v2, v7, :cond_17f

    sub-int/2addr v6, v2

    move v7, v3

    move v8, v6

    :goto_16a
    if-gt v7, v2, :cond_17f

    aget-byte v9, p0, v8

    and-int/lit16 v9, v9, 0xff

    if-ne v7, v9, :cond_177

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_16a

    :cond_177
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect padding"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17f
    invoke-static {p0, v5, v6}, Lm4/d;->q([BII)[B

    move-result-object p0

    :goto_183
    iget v2, v1, Lj1/g;->a:I

    iget-object v1, v1, Lj1/g;->b:[B

    array-length v1, v1

    if-lt v2, v1, :cond_28d

    new-instance v1, Lj1/g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lj1/g;-><init>([BI)V

    invoke-virtual {v1}, Lj1/g;->e()I

    move-result v2

    invoke-virtual {v1}, Lj1/g;->e()I

    move-result v5

    if-ne v2, v5, :cond_285

    invoke-virtual {v1}, Lj1/g;->d()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ssh-ed25519"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c1

    invoke-virtual {v1}, Lj1/g;->c()[B

    invoke-virtual {v1}, Lj1/g;->c()[B

    move-result-object v2

    array-length v3, v2

    const/16 v4, 0x40

    if-ne v3, v4, :cond_1b9

    new-instance v4, Le1/y;

    invoke-direct {v4, v2, v0}, Le1/y;-><init>([BI)V

    goto/16 :goto_26a

    :cond_1b9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "private key value of wrong length"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c1
    const-string v0, "ecdsa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_213

    invoke-virtual {v1}, Lj1/g;->c()[B

    move-result-object v0

    invoke-static {v0}, Lm4/m;->a([B)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lj1/h;->b:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/q;

    if-eqz v0, :cond_207

    invoke-static {v0}, Lz/a;->b(Lm/q;)Lm0/h;

    move-result-object v2

    if-eqz v2, :cond_1fb

    invoke-virtual {v1}, Lj1/g;->c()[B

    invoke-virtual {v1}, Lj1/g;->c()[B

    move-result-object v4

    new-instance v5, Le1/w;

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v3, Le1/v;

    invoke-direct {v3, v2}, Le1/r;-><init>(Lm0/h;)V

    iput-object v0, v3, Le1/v;->m:Lm/q;

    invoke-direct {v5, v6, v3}, Le1/w;-><init>(Ljava/math/BigInteger;Le1/r;)V

    :goto_1f9
    move-object v4, v5

    goto :goto_26a

    :cond_1fb
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Curve not found for: "

    invoke-static {v1, v0}, Lb/b;->j(Ljava/lang/String;Lm/q;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_207
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "OID not found for: "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_213
    const-string v0, "ssh-rsa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26a

    new-instance v6, Ljava/math/BigInteger;

    invoke-virtual {v1}, Lj1/g;->c()[B

    move-result-object v0

    invoke-direct {v6, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v7, Ljava/math/BigInteger;

    invoke-virtual {v1}, Lj1/g;->c()[B

    move-result-object v0

    invoke-direct {v7, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v8, Ljava/math/BigInteger;

    invoke-virtual {v1}, Lj1/g;->c()[B

    move-result-object v0

    invoke-direct {v8, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v13, Ljava/math/BigInteger;

    invoke-virtual {v1}, Lj1/g;->c()[B

    move-result-object v0

    invoke-direct {v13, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v9, Ljava/math/BigInteger;

    invoke-virtual {v1}, Lj1/g;->c()[B

    move-result-object v0

    invoke-direct {v9, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v10, Ljava/math/BigInteger;

    invoke-virtual {v1}, Lj1/g;->c()[B

    move-result-object v0

    invoke-direct {v10, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v0, Lm4/a;->b:Ljava/math/BigInteger;

    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    new-instance v5, Le1/a1;

    const/4 v14, 0x0

    invoke-direct/range {v5 .. v14}, Le1/a1;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    goto :goto_1f9

    :cond_26a
    :goto_26a
    invoke-virtual {v1}, Lj1/g;->g()V

    iget v0, v1, Lj1/g;->a:I

    array-length p0, p0

    if-lt v0, p0, :cond_27d

    :cond_272
    :goto_272
    if-eqz v4, :cond_275

    return-object v4

    :cond_275
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unable to parse key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "private key block has trailing data"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_285
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "private key check values are not the same"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "decoded key has trailing data"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_295
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "missing padding"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "not enough data for block"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "multiple keys not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2ad
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "encrypted keys not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
