.class public abstract Lj1/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lj1/i;->a:Ljava/util/HashSet;

    sget-object v1, Lr/a;->s:Lm/q;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lr/a;->t:Lm/q;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lr/a;->u:Lm/q;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lr/a;->v:Lm/q;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lr/a;->w:Lm/q;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Le1/b;)Ll0/p0;
    .registers 12

    instance-of v0, p0, Le1/z0;

    if-eqz v0, :cond_1e

    check-cast p0, Le1/z0;

    new-instance v0, Ll0/p0;

    new-instance v1, Ll0/b;

    sget-object v2, Ld0/r;->a:Lm/q;

    sget-object v3, Lm/v0;->d:Lm/v0;

    invoke-direct {v1, v2, v3}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v2, Ld0/x;

    iget-object v3, p0, Le1/z0;->d:Ljava/math/BigInteger;

    iget-object p0, p0, Le1/z0;->q:Ljava/math/BigInteger;

    invoke-direct {v2, v3, p0}, Ld0/x;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V

    return-object v0

    :cond_1e
    instance-of v0, p0, Le1/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    check-cast p0, Le1/o;

    iget-object v0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast v0, Le1/m;

    if-eqz v0, :cond_36

    new-instance v1, Ll0/p;

    iget-object v2, v0, Le1/m;->q:Ljava/math/BigInteger;

    iget-object v3, v0, Le1/m;->d:Ljava/math/BigInteger;

    iget-object v0, v0, Le1/m;->c:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3, v0}, Ll0/p;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :cond_36
    new-instance v0, Ll0/p0;

    new-instance v2, Ll0/b;

    sget-object v3, Lm0/m;->r1:Lm/q;

    invoke-direct {v2, v3, v1}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v1, Lm/l;

    iget-object p0, p0, Le1/o;->q:Ljava/math/BigInteger;

    invoke-direct {v1, p0}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, v1}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V

    return-object v0

    :cond_4a
    instance-of v0, p0, Le1/x;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_f7

    check-cast p0, Le1/x;

    iget-object v0, p0, Le1/x;->q:Lk2/p;

    iget-object p0, p0, Le1/u;->d:Le1/r;

    if-nez p0, :cond_5f

    new-instance p0, Lm0/f;

    invoke-direct {p0}, Lm0/f;-><init>()V

    goto/16 :goto_e6

    :cond_5f
    instance-of v4, p0, Le1/s;

    if-eqz v4, :cond_ba

    check-cast p0, Le1/s;

    invoke-virtual {v0}, Lk2/p;->b()V

    iget-object v4, v0, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v4}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lk2/p;->e()Lk2/b0;

    move-result-object v0

    invoke-virtual {v0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v0

    new-instance v5, Lr/f;

    iget-object v6, p0, Le1/s;->n:Lm/q;

    iget-object p0, p0, Le1/s;->o:Lm/q;

    invoke-direct {v5, v6, p0}, Lr/f;-><init>(Lm/q;Lm/q;)V

    sget-object p0, Lj1/i;->a:Ljava/util/HashSet;

    invoke-virtual {p0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/16 v6, 0x20

    const/16 v7, 0x40

    if-eqz p0, :cond_8e

    sget-object p0, Lr/a;->l:Lm/q;

    goto :goto_a0

    :cond_8e
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/16 v8, 0x100

    if-le p0, v8, :cond_9e

    sget-object p0, Lz1/a;->f:Lm/q;

    const/16 v6, 0x80

    move v10, v7

    move v7, v6

    move v6, v10

    goto :goto_a0

    :cond_9e
    sget-object p0, Lz1/a;->e:Lm/q;

    :goto_a0
    new-array v8, v7, [B

    div-int/2addr v7, v2

    invoke-static {v8, v7, v3, v4}, Lj1/i;->b([BIILjava/math/BigInteger;)V

    invoke-static {v8, v7, v6, v0}, Lj1/i;->b([BIILjava/math/BigInteger;)V

    :try_start_a9
    new-instance v0, Ll0/p0;

    new-instance v2, Ll0/b;

    invoke-direct {v2, p0, v5}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance p0, Lm/x0;

    invoke-direct {p0, v8}, Lm/r;-><init>([B)V

    invoke-direct {v0, v2, p0}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_b8} :catch_b9

    return-object v0

    :catch_b9
    return-object v1

    :cond_ba
    instance-of v1, p0, Le1/v;

    if-eqz v1, :cond_c9

    new-instance v1, Lm0/f;

    check-cast p0, Le1/v;

    iget-object p0, p0, Le1/v;->m:Lm/q;

    invoke-direct {v1, p0}, Lm0/f;-><init>(Lm/q;)V

    move-object p0, v1

    goto :goto_e6

    :cond_c9
    new-instance v4, Lm0/h;

    iget-object v5, p0, Le1/r;->g:Lk2/h;

    new-instance v6, Lm0/j;

    iget-object v1, p0, Le1/r;->i:Lk2/p;

    invoke-direct {v6, v1, v3}, Lm0/j;-><init>(Lk2/p;Z)V

    iget-object v7, p0, Le1/r;->j:Ljava/math/BigInteger;

    iget-object v8, p0, Le1/r;->k:Ljava/math/BigInteger;

    iget-object p0, p0, Le1/r;->h:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lm0/h;-><init>(Lk2/h;Lm0/j;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance p0, Lm0/f;

    invoke-direct {p0, v4}, Lm0/f;-><init>(Lm0/h;)V

    :goto_e6
    invoke-virtual {v0, v3}, Lk2/p;->h(Z)[B

    move-result-object v0

    new-instance v1, Ll0/p0;

    new-instance v2, Ll0/b;

    sget-object v3, Lm0/m;->M0:Lm/q;

    invoke-direct {v2, v3, p0}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    invoke-direct {v1, v2, v0}, Ll0/p0;-><init>(Ll0/b;[B)V

    return-object v1

    :cond_f7
    instance-of v0, p0, Le1/f1;

    if-eqz v0, :cond_110

    check-cast p0, Le1/f1;

    new-instance v0, Ll0/p0;

    new-instance v1, Ll0/b;

    sget-object v2, Lo1/a;->b:Lm/q;

    invoke-direct {v1, v2}, Ll0/b;-><init>(Lm/q;)V

    iget-object p0, p0, Le1/f1;->d:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ll0/p0;-><init>(Ll0/b;[B)V

    return-object v0

    :cond_110
    instance-of v0, p0, Le1/d1;

    if-eqz v0, :cond_129

    check-cast p0, Le1/d1;

    new-instance v0, Ll0/p0;

    new-instance v1, Ll0/b;

    sget-object v2, Lo1/a;->a:Lm/q;

    invoke-direct {v1, v2}, Ll0/b;-><init>(Lm/q;)V

    iget-object p0, p0, Le1/d1;->d:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ll0/p0;-><init>(Ll0/b;[B)V

    return-object v0

    :cond_129
    instance-of v0, p0, Le1/b0;

    if-eqz v0, :cond_145

    check-cast p0, Le1/b0;

    new-instance v0, Ll0/p0;

    new-instance v1, Ll0/b;

    sget-object v2, Lo1/a;->d:Lm/q;

    invoke-direct {v1, v2}, Ll0/b;-><init>(Lm/q;)V

    const/16 v2, 0x39

    new-array v2, v2, [B

    iget-object p0, p0, Le1/b0;->d:Lq2/e;

    invoke-static {p0, v2, v3}, Lq2/f;->o(Lq2/e;[BI)V

    invoke-direct {v0, v1, v2}, Ll0/p0;-><init>(Ll0/b;[B)V

    return-object v0

    :cond_145
    instance-of v0, p0, Le1/z;

    if-eqz v0, :cond_15c

    check-cast p0, Le1/z;

    new-instance v0, Ll0/p0;

    new-instance v1, Ll0/b;

    sget-object v2, Lo1/a;->c:Lm/q;

    invoke-direct {v1, v2}, Ll0/b;-><init>(Lm/q;)V

    invoke-virtual {p0}, Le1/z;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ll0/p0;-><init>(Ll0/b;[B)V

    return-object v0

    :cond_15c
    instance-of v0, p0, Lg3/d;

    const/4 v1, 0x1

    const/4 v4, 0x4

    if-eqz v0, :cond_1b3

    check-cast p0, Lg3/d;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget v5, p0, Lg3/d;->d:I

    ushr-int/lit8 v6, v5, 0x18

    int-to-byte v6, v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v6, v5, 0x10

    int-to-byte v6, v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v6, v5, 0x8

    int-to-byte v6, v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object p0, p0, Lg3/d;->q:Lg3/k;

    :try_start_183
    invoke-virtual {p0}, Lg3/k;->b()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_18a} :catch_1a7

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    new-instance v0, Ll0/b;

    sget-object v5, Ld0/r;->f0:Lm/q;

    invoke-direct {v0, v5}, Ll0/b;-><init>(Lm/q;)V

    new-instance v5, Ll0/p0;

    array-length v6, p0

    int-to-byte v6, v6

    new-array v2, v2, [B

    aput-byte v4, v2, v3

    aput-byte v6, v2, v1

    invoke-static {v2, p0}, Lm4/d;->j([B[B)[B

    move-result-object p0

    invoke-direct {v5, v0, p0}, Ll0/p0;-><init>(Ll0/b;[B)V

    return-object v5

    :catch_1a7
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1b3
    instance-of v0, p0, Lg3/k;

    if-eqz v0, :cond_1fe

    check-cast p0, Lg3/k;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    int-to-byte v5, v3

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v5, v3

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v5, v3

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v5, v1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :try_start_1ce
    invoke-virtual {p0}, Lg3/k;->b()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1d5
    .catch Ljava/lang/Exception; {:try_start_1ce .. :try_end_1d5} :catch_1f2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    new-instance v0, Ll0/b;

    sget-object v5, Ld0/r;->f0:Lm/q;

    invoke-direct {v0, v5}, Ll0/b;-><init>(Lm/q;)V

    new-instance v5, Ll0/p0;

    array-length v6, p0

    int-to-byte v6, v6

    new-array v2, v2, [B

    aput-byte v4, v2, v3

    aput-byte v6, v2, v1

    invoke-static {v2, p0}, Lm4/d;->j([B[B)[B

    move-result-object p0

    invoke-direct {v5, v0, p0}, Ll0/p0;-><init>(Ll0/b;[B)V

    return-object v5

    :catch_1f2
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1fe
    new-instance p0, Ljava/io/IOException;

    const-string v0, "key parameters not recognized"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b([BIILjava/math/BigInteger;)V
    .registers 8

    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    if-ge v0, p1, :cond_12

    new-array v0, p1, [B

    array-length v2, p3

    sub-int v2, p1, v2

    array-length v3, p3

    invoke-static {p3, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v0

    :cond_12
    :goto_12
    if-eq v1, p1, :cond_21

    add-int v0, p2, v1

    array-length v2, p3

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    aget-byte v2, p3, v2

    aput-byte v2, p0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_21
    return-void
.end method
