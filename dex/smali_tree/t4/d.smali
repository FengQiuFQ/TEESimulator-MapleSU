.class public abstract Lt4/d;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Lj0/d;


# direct methods
.method public static A(I[J[J)V
    .registers 6

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    aput-wide v0, p2, p0

    add-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    aget-wide v1, p1, v1

    aput-wide v1, p2, v0

    add-int/lit8 v0, p0, 0x2

    const/4 v1, 0x2

    aget-wide v1, p1, v1

    aput-wide v1, p2, v0

    add-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    aget-wide v1, p1, v1

    aput-wide v1, p2, v0

    add-int/lit8 v0, p0, 0x4

    const/4 v1, 0x4

    aget-wide v1, p1, v1

    aput-wide v1, p2, v0

    add-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    aget-wide v1, p1, v1

    aput-wide v1, p2, v0

    const/4 v0, 0x6

    add-int/2addr p0, v0

    aget-wide v0, p1, v0

    aput-wide v0, p2, p0

    return-void
.end method

.method public static A0([B)Le1/b;
    .registers 8

    new-instance v0, Lj1/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lj1/g;-><init>([BI)V

    invoke-virtual {v0}, Lj1/g;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ssh-rsa"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_22

    invoke-virtual {v0}, Lj1/g;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lj1/g;->b()Ljava/math/BigInteger;

    move-result-object v2

    new-instance v4, Le1/z0;

    invoke-direct {v4, v3, v2, v1, v3}, Le1/z0;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Z)V

    goto/16 :goto_121

    :cond_22
    const-string v2, "ssh-dss"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {v0}, Lj1/g;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lj1/g;->b()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lj1/g;->b()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lj1/g;->b()Ljava/math/BigInteger;

    move-result-object v4

    new-instance v5, Le1/o;

    new-instance v6, Le1/m;

    invoke-direct {v6, v1, v2, v3}, Le1/m;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v5, v4, v6}, Le1/o;-><init>(Ljava/math/BigInteger;Le1/m;)V

    move-object v4, v5

    goto/16 :goto_121

    :cond_47
    const-string v2, "ecdsa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v4, " using curve name "

    const-string v5, "unable to find curve for "

    if-eqz v2, :cond_97

    invoke-virtual {v0}, Lj1/g;->d()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lj1/h;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/q;

    invoke-static {v3}, Lz/a;->b(Lm/q;)Lm0/h;

    move-result-object v6

    if-eqz v6, :cond_7f

    iget-object v1, v6, Lm0/h;->d:Lm0/g;

    iget-object v1, v1, Lm0/g;->c:Lk2/h;

    invoke-virtual {v0}, Lj1/g;->c()[B

    move-result-object v2

    new-instance v4, Le1/x;

    invoke-virtual {v1, v2}, Lk2/h;->g([B)Lk2/p;

    move-result-object v1

    new-instance v2, Le1/v;

    invoke-direct {v2, v6}, Le1/r;-><init>(Lm0/h;)V

    iput-object v3, v2, Le1/v;->m:Lm/q;

    invoke-direct {v4, v1, v2}, Le1/x;-><init>(Lk2/p;Le1/r;)V

    goto/16 :goto_121

    :cond_7f
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_97
    const-string v2, "sk-ecdsa-sha2-nistp256@openssh.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e5

    invoke-virtual {v0}, Lj1/g;->d()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lj1/h;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/q;

    invoke-static {v3}, Lz/a;->b(Lm/q;)Lm0/h;

    move-result-object v6

    if-eqz v6, :cond_cd

    iget-object v1, v6, Lm0/h;->d:Lm0/g;

    iget-object v1, v1, Lm0/g;->c:Lk2/h;

    invoke-virtual {v0}, Lj1/g;->c()[B

    move-result-object v2

    invoke-virtual {v0}, Lj1/g;->d()Ljava/lang/String;

    new-instance v4, Le1/x;

    invoke-virtual {v1, v2}, Lk2/h;->g([B)Lk2/p;

    move-result-object v1

    new-instance v2, Le1/v;

    invoke-direct {v2, v6}, Le1/r;-><init>(Lm0/h;)V

    iput-object v3, v2, Le1/v;->m:Lm/q;

    invoke-direct {v4, v1, v2}, Le1/x;-><init>(Lk2/p;Le1/r;)V

    goto :goto_121

    :cond_cd
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e5
    const-string v4, "ssh-ed25519"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "public key value of wrong length"

    const/16 v6, 0x20

    if-eqz v4, :cond_104

    invoke-virtual {v0}, Lj1/g;->c()[B

    move-result-object v1

    array-length v2, v1

    if-ne v2, v6, :cond_fe

    new-instance v4, Le1/z;

    invoke-direct {v4, v1, v3}, Le1/z;-><init>([BI)V

    goto :goto_121

    :cond_fe
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_104
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_120

    invoke-virtual {v0}, Lj1/g;->c()[B

    move-result-object v1

    array-length v2, v1

    if-ne v2, v6, :cond_11a

    invoke-virtual {v0}, Lj1/g;->d()Ljava/lang/String;

    new-instance v4, Le1/z;

    invoke-direct {v4, v1, v3}, Le1/z;-><init>([BI)V

    goto :goto_121

    :cond_11a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_120
    const/4 v4, 0x0

    :goto_121
    if-eqz v4, :cond_131

    iget v0, v0, Lj1/g;->a:I

    array-length p0, p0

    if-lt v0, p0, :cond_129

    return-object v4

    :cond_129
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "decoded key has trailing data"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_131
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unable to parse key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static B(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .registers 5

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_1b
    return-object v0
.end method

.method public static B0(Ljava/io/File;)[B
    .registers 10

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_23

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    const-string v4, "File "

    if-gtz v3, :cond_7e

    long-to-int v1, v1

    :try_start_13
    new-array v2, v1, [B

    const/4 v3, 0x0

    move v5, v1

    move v6, v3

    :goto_18
    if-lez v5, :cond_26

    invoke-virtual {v0, v2, v6, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_23

    if-ltz v7, :cond_26

    sub-int/2addr v5, v7

    add-int/2addr v6, v7

    goto :goto_18

    :catchall_23
    move-exception p0

    goto/16 :goto_9d

    :cond_26
    const-string v7, "copyOf(...)"

    if-lez v5, :cond_32

    :try_start_2a
    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-static {v7, v2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_60

    :cond_32
    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3a

    goto :goto_60

    :cond_3a
    new-instance v6, La1/d;

    const/16 v8, 0x2001

    invoke-direct {v6, v8}, La1/d;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/io/OutputStream;->write(I)V

    invoke-static {v0, v6}, Lt4/d;->C(Ljava/io/FileInputStream;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    add-int/2addr v5, v1

    if-ltz v5, :cond_64

    invoke-virtual {v6}, La1/d;->d()[B

    move-result-object p0

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-static {v7, v2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_60
    .catchall {:try_start_2a .. :try_end_60} :catchall_23

    :goto_60
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object v2

    :cond_64
    :try_start_64
    new-instance v1, Ljava/lang/OutOfMemoryError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is too big to fit in memory."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7e
    new-instance v3, Ljava/lang/OutOfMemoryError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is too big ("

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " bytes) to fit in memory."

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_9d
    .catchall {:try_start_64 .. :try_end_9d} :catchall_23

    :goto_9d
    :try_start_9d
    throw p0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9e

    :catchall_9e
    move-exception v1

    invoke-static {v0, p0}, Lq4/k;->w(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static C(Ljava/io/FileInputStream;Ljava/io/ByteArrayOutputStream;)V
    .registers 5

    const/16 v0, 0x2000

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    :goto_8
    if-ltz v1, :cond_13

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_8

    :cond_13
    return-void
.end method

.method public static C0(Ljava/io/File;)Ljava/util/ArrayList;
    .registers 6

    sget-object v0, Ll/a;->a:Ljava/nio/charset/Charset;

    const-string v1, "charset"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_1b
    new-instance p0, Lf/b;

    invoke-direct {p0, v2}, Lf/b;-><init>(Ljava/io/BufferedReader;)V

    new-instance v0, Lk/a;

    invoke-direct {v0, p0}, Lk/a;-><init>(Lf/b;)V

    invoke-interface {v0}, Lk/b;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "it"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_1b .. :try_end_3d} :catchall_3e

    goto :goto_29

    :catchall_3e
    move-exception p0

    goto :goto_44

    :cond_40
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :goto_44
    :try_start_44
    throw p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception v0

    invoke-static {v2, p0}, Lq4/k;->w(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static D(I[I[I)V
    .registers 11

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move v1, v0

    move v2, v1

    :goto_6
    if-lez p0, :cond_27

    :goto_8
    const/16 v5, 0x20

    invoke-static {v5, p0}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v0, v6, :cond_1b

    add-int/lit8 v5, v1, 0x1

    aget v1, p1, v1

    int-to-long v6, v1

    shl-long/2addr v6, v0

    or-long/2addr v3, v6

    add-int/lit8 v0, v0, 0x1e

    move v1, v5

    goto :goto_8

    :cond_1b
    add-int/lit8 v6, v2, 0x1

    long-to-int v7, v3

    aput v7, p2, v2

    ushr-long/2addr v3, v5

    add-int/lit8 v0, v0, -0x20

    add-int/lit8 p0, p0, -0x20

    move v2, v6

    goto :goto_6

    :cond_27
    return-void
.end method

.method public static D0(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    sget-object v0, Ll/a;->a:Ljava/nio/charset/Charset;

    const-string v1, "charset"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :try_start_11
    invoke-static {v1}, Lq4/k;->I0(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_19

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    return-object p0

    :catchall_19
    move-exception p0

    :try_start_1a
    throw p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception v0

    invoke-static {v1, p0}, Lq4/k;->w(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static E(Lk2/h;[B)Lk2/p;
    .registers 14

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-byte v0, p1, v0

    and-int/2addr v0, v1

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object v0

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v2}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object p1

    invoke-static {p1}, Lt4/d;->O0(Lk2/b0;)Lk2/b0;

    move-result-object v2

    iget-object v3, p0, Lk2/h;->b:Lk2/b0;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {p1}, Lk2/b0;->b()Lk2/b0;

    move-result-object p1

    :cond_28
    invoke-virtual {p1}, Lk2/b0;->t()Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v0, p0, Lk2/h;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->E()Lk2/b0;

    move-result-object v0

    goto/16 :goto_b9

    :cond_36
    invoke-virtual {p1}, Lk2/b0;->F()Lk2/b0;

    move-result-object v2

    invoke-virtual {v2}, Lk2/b0;->q()Lk2/b0;

    move-result-object v2

    iget-object v3, p0, Lk2/h;->c:Lk2/b0;

    invoke-virtual {v2, v3}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v2

    iget-object v3, p0, Lk2/h;->b:Lk2/b0;

    invoke-virtual {v2, v3}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v2

    invoke-virtual {v2, p1}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v2

    invoke-virtual {v2}, Lk2/b0;->t()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_56

    goto :goto_a3

    :cond_56
    sget-object v3, Lk2/a;->a:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object v3

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Lk2/b0;->k()I

    move-result v6

    :cond_65
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6, v5}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {p0, v7}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object v7

    move v8, v1

    move-object v9, v2

    move-object v10, v3

    :goto_71
    add-int/lit8 v11, v6, -0x1

    if-gt v8, v11, :cond_8c

    invoke-virtual {v9}, Lk2/b0;->F()Lk2/b0;

    move-result-object v9

    invoke-virtual {v10}, Lk2/b0;->F()Lk2/b0;

    move-result-object v10

    invoke-virtual {v9, v7}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v11

    invoke-virtual {v10, v11}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v10

    invoke-virtual {v9, v2}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_71

    :cond_8c
    invoke-virtual {v9}, Lk2/b0;->t()Z

    move-result v7

    if-nez v7, :cond_94

    move-object v2, v4

    goto :goto_a3

    :cond_94
    invoke-virtual {v10}, Lk2/b0;->F()Lk2/b0;

    move-result-object v7

    invoke-virtual {v7, v10}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v7

    invoke-virtual {v7}, Lk2/b0;->t()Z

    move-result v7

    if-nez v7, :cond_65

    move-object v2, v10

    :goto_a3
    if-eqz v2, :cond_b8

    invoke-static {v2}, Lt4/d;->O0(Lk2/b0;)Lk2/b0;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    invoke-virtual {v2}, Lk2/b0;->b()Lk2/b0;

    move-result-object v2

    :cond_b3
    invoke-virtual {p1, v2}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v0

    goto :goto_b9

    :cond_b8
    move-object v0, v4

    :goto_b9
    if-eqz v0, :cond_c8

    invoke-virtual {p1}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lk2/h;->t(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lk2/p;

    move-result-object p0

    return-object p0

    :cond_c8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid point compression"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static E0([I[I)V
    .registers 40

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x4

    const/16 v6, 0xa

    move v8, v0

    move v7, v5

    :goto_f
    add-int/lit8 v9, v7, -0x1

    aget v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v3

    mul-long/2addr v10, v10

    add-int/lit8 v7, v6, -0x1

    shl-int/lit8 v8, v8, 0x1f

    const/16 v12, 0x21

    ushr-long v13, v10, v12

    long-to-int v13, v13

    or-int/2addr v8, v13

    aput v8, p1, v7

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x1

    ushr-long v13, v10, v7

    long-to-int v8, v13

    aput v8, p1, v6

    long-to-int v8, v10

    if-gtz v9, :cond_141

    mul-long v9, v1, v1

    shl-int/lit8 v6, v8, 0x1f

    int-to-long v13, v6

    and-long/2addr v13, v3

    ushr-long v11, v9, v12

    or-long/2addr v11, v13

    long-to-int v6, v9

    aput v6, p1, v0

    const/16 v0, 0x20

    ushr-long v8, v9, v0

    long-to-int v6, v8

    and-int/2addr v6, v7

    aget v8, p0, v7

    int-to-long v8, v8

    and-long v15, v8, v3

    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    mul-long v13, v15, v1

    add-long/2addr v13, v11

    long-to-int v11, v13

    shl-int/lit8 v12, v11, 0x1

    or-int/2addr v6, v12

    aput v6, p1, v7

    ushr-int/lit8 v6, v11, 0x1f

    ushr-long v11, v13, v0

    add-long/2addr v9, v11

    aget v11, p0, v8

    int-to-long v11, v11

    and-long v19, v11, v3

    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    aget v14, p1, v5

    move-wide/from16 v25, v1

    move v2, v0

    int-to-long v0, v14

    and-long/2addr v0, v3

    mul-long v17, v19, v25

    add-long v9, v17, v9

    long-to-int v14, v9

    shl-int/lit8 v17, v14, 0x1

    or-int v6, v17, v6

    aput v6, p1, v8

    ushr-int/lit8 v6, v14, 0x1f

    ushr-long v17, v9, v2

    move-wide/from16 v36, v19

    move-wide/from16 v19, v12

    move-wide/from16 v13, v36

    invoke-static/range {v13 .. v20}, Lb/b;->a(JJJJ)J

    move-result-wide v8

    move-wide/from16 v21, v13

    ushr-long v12, v8, v2

    add-long/2addr v0, v12

    and-long/2addr v8, v3

    aget v10, p0, v11

    int-to-long v12, v10

    and-long v17, v12, v3

    const/4 v10, 0x5

    aget v12, p1, v10

    int-to-long v12, v12

    and-long/2addr v12, v3

    ushr-long v19, v0, v2

    add-long v12, v12, v19

    and-long v19, v0, v3

    const/4 v0, 0x6

    aget v1, p1, v0

    move/from16 v35, v0

    int-to-long v0, v1

    and-long/2addr v0, v3

    ushr-long v23, v12, v2

    add-long v0, v0, v23

    and-long v23, v12, v3

    mul-long v12, v17, v25

    add-long/2addr v12, v8

    long-to-int v8, v12

    shl-int/lit8 v9, v8, 0x1

    or-int/2addr v6, v9

    aput v6, p1, v11

    ushr-int/lit8 v6, v8, 0x1f

    ushr-long v8, v12, v2

    move-wide/from16 v13, v17

    move-wide/from16 v17, v8

    invoke-static/range {v13 .. v20}, Lb/b;->a(JJJJ)J

    move-result-wide v8

    move-wide/from16 v17, v13

    move-wide/from16 v19, v21

    ushr-long v21, v8, v2

    invoke-static/range {v17 .. v24}, Lb/b;->a(JJJJ)J

    move-result-wide v11

    move-wide/from16 v29, v17

    move-wide/from16 v21, v19

    and-long/2addr v8, v3

    ushr-long v13, v11, v2

    add-long/2addr v0, v13

    and-long v19, v11, v3

    aget v11, p0, v5

    int-to-long v11, v11

    and-long v17, v11, v3

    const/4 v11, 0x7

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    ushr-long v23, v0, v2

    add-long v12, v12, v23

    and-long v23, v0, v3

    const/16 v0, 0x8

    aget v1, p1, v0

    move/from16 p0, v0

    int-to-long v0, v1

    and-long/2addr v0, v3

    ushr-long v27, v12, v2

    add-long v0, v0, v27

    and-long v33, v12, v3

    mul-long v3, v17, v25

    add-long/2addr v3, v8

    long-to-int v8, v3

    shl-int/lit8 v9, v8, 0x1

    or-int/2addr v6, v9

    aput v6, p1, v5

    ushr-int/lit8 v5, v8, 0x1f

    ushr-long/2addr v3, v2

    move-wide/from16 v13, v17

    move-wide/from16 v17, v3

    invoke-static/range {v13 .. v20}, Lb/b;->a(JJJJ)J

    move-result-wide v3

    move-wide/from16 v17, v13

    move-wide/from16 v19, v21

    ushr-long v21, v3, v2

    invoke-static/range {v17 .. v24}, Lb/b;->a(JJJJ)J

    move-result-wide v8

    ushr-long v31, v8, v2

    move-wide/from16 v27, v17

    invoke-static/range {v27 .. v34}, Lb/b;->a(JJJJ)J

    move-result-wide v12

    ushr-long v14, v12, v2

    add-long/2addr v0, v14

    long-to-int v3, v3

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v4, v5

    aput v4, p1, v10

    ushr-int/lit8 v3, v3, 0x1f

    long-to-int v4, v8

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    aput v3, p1, v35

    ushr-int/lit8 v3, v4, 0x1f

    long-to-int v4, v12

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    aput v3, p1, v11

    ushr-int/lit8 v3, v4, 0x1f

    long-to-int v4, v0

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    aput v3, p1, p0

    ushr-int/lit8 v3, v4, 0x1f

    const/16 v4, 0x9

    aget v5, p1, v4

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr v5, v0

    shl-int/lit8 v0, v5, 0x1

    or-int/2addr v0, v3

    aput v0, p1, v4

    return-void

    :cond_141
    move v7, v9

    goto/16 :goto_f
.end method

.method public static F([I[I[I)Z
    .registers 10

    const/4 v0, 0x6

    :goto_1
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v0, :cond_1a

    add-int v4, v1, v0

    aget v4, p0, v4

    const/high16 v5, -0x80000000

    xor-int/2addr v4, v5

    aget v6, p1, v0

    xor-int/2addr v5, v6

    if-ge v4, v5, :cond_14

    move v3, v2

    goto :goto_1a

    :cond_14
    if-le v4, v5, :cond_17

    goto :goto_1a

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1a
    :goto_1a
    if-eqz v3, :cond_20

    invoke-static {p0, v1, p1, v2, p2}, Lt4/d;->J0([II[II[I)V

    return v3

    :cond_20
    invoke-static {p1, v2, p0, v1, p2}, Lt4/d;->J0([II[II[I)V

    return v3
.end method

.method public static F0([I[I)V
    .registers 53

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x6

    const/16 v6, 0xe

    move v8, v0

    move v7, v5

    :goto_f
    add-int/lit8 v9, v7, -0x1

    aget v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v3

    mul-long/2addr v10, v10

    add-int/lit8 v7, v6, -0x1

    shl-int/lit8 v8, v8, 0x1f

    const/16 v12, 0x21

    ushr-long v13, v10, v12

    long-to-int v13, v13

    or-int/2addr v8, v13

    aput v8, p1, v7

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x1

    ushr-long v13, v10, v7

    long-to-int v8, v13

    aput v8, p1, v6

    long-to-int v8, v10

    if-gtz v9, :cond_219

    mul-long v9, v1, v1

    shl-int/lit8 v6, v8, 0x1f

    int-to-long v13, v6

    and-long/2addr v13, v3

    ushr-long v11, v9, v12

    or-long/2addr v11, v13

    long-to-int v6, v9

    aput v6, p1, v0

    const/16 v0, 0x20

    ushr-long v8, v9, v0

    long-to-int v6, v8

    and-int/2addr v6, v7

    aget v8, p0, v7

    int-to-long v8, v8

    and-long v15, v8, v3

    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    mul-long v13, v15, v1

    add-long/2addr v13, v11

    long-to-int v11, v13

    shl-int/lit8 v12, v11, 0x1

    or-int/2addr v6, v12

    aput v6, p1, v7

    ushr-int/lit8 v6, v11, 0x1f

    ushr-long v11, v13, v0

    add-long/2addr v9, v11

    aget v11, p0, v8

    int-to-long v11, v11

    and-long v19, v11, v3

    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    const/16 v25, 0x4

    aget v14, p1, v25

    move-wide/from16 v26, v1

    move v2, v0

    int-to-long v0, v14

    and-long/2addr v0, v3

    mul-long v17, v19, v26

    add-long v9, v17, v9

    long-to-int v14, v9

    shl-int/lit8 v17, v14, 0x1

    or-int v6, v17, v6

    aput v6, p1, v8

    ushr-int/lit8 v6, v14, 0x1f

    ushr-long v17, v9, v2

    move-wide/from16 v49, v19

    move-wide/from16 v19, v12

    move-wide/from16 v13, v49

    invoke-static/range {v13 .. v20}, Lb/b;->a(JJJJ)J

    move-result-wide v8

    move-wide/from16 v21, v13

    ushr-long v12, v8, v2

    add-long/2addr v0, v12

    and-long/2addr v8, v3

    aget v10, p0, v11

    int-to-long v12, v10

    and-long v30, v12, v3

    const/4 v10, 0x5

    aget v12, p1, v10

    int-to-long v12, v12

    and-long/2addr v12, v3

    ushr-long v17, v0, v2

    add-long v12, v12, v17

    and-long v19, v0, v3

    aget v0, p1, v5

    int-to-long v0, v0

    and-long/2addr v0, v3

    ushr-long v17, v12, v2

    add-long v0, v0, v17

    and-long v23, v12, v3

    mul-long v12, v30, v26

    add-long/2addr v12, v8

    long-to-int v8, v12

    shl-int/lit8 v9, v8, 0x1

    or-int/2addr v6, v9

    aput v6, p1, v11

    ushr-int/lit8 v6, v8, 0x1f

    ushr-long v17, v12, v2

    move-wide/from16 v13, v30

    invoke-static/range {v13 .. v20}, Lb/b;->a(JJJJ)J

    move-result-wide v8

    move-wide/from16 v19, v21

    ushr-long v21, v8, v2

    move-wide/from16 v17, v30

    invoke-static/range {v17 .. v24}, Lb/b;->a(JJJJ)J

    move-result-wide v11

    move-wide/from16 v21, v19

    and-long/2addr v8, v3

    ushr-long v13, v11, v2

    add-long/2addr v0, v13

    and-long v19, v11, v3

    aget v11, p0, v25

    int-to-long v11, v11

    and-long v34, v11, v3

    const/4 v11, 0x7

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    ushr-long v17, v0, v2

    add-long v12, v12, v17

    and-long v23, v0, v3

    const/16 v0, 0x8

    aget v1, p1, v0

    move/from16 v40, v0

    int-to-long v0, v1

    and-long/2addr v0, v3

    ushr-long v17, v12, v2

    add-long v0, v0, v17

    and-long v28, v12, v3

    mul-long v12, v34, v26

    add-long/2addr v12, v8

    long-to-int v8, v12

    shl-int/lit8 v9, v8, 0x1

    or-int/2addr v6, v9

    aput v6, p1, v25

    ushr-int/lit8 v6, v8, 0x1f

    ushr-long v17, v12, v2

    move-wide/from16 v13, v34

    invoke-static/range {v13 .. v20}, Lb/b;->a(JJJJ)J

    move-result-wide v8

    move-wide/from16 v19, v21

    ushr-long v21, v8, v2

    move-wide/from16 v17, v34

    invoke-static/range {v17 .. v24}, Lb/b;->a(JJJJ)J

    move-result-wide v12

    move-wide/from16 v21, v19

    and-long/2addr v8, v3

    ushr-long v32, v12, v2

    move-wide/from16 v49, v34

    move-wide/from16 v34, v28

    move-wide/from16 v28, v49

    invoke-static/range {v28 .. v35}, Lb/b;->a(JJJJ)J

    move-result-wide v17

    move-wide/from16 v36, v28

    and-long v19, v12, v3

    ushr-long v12, v17, v2

    add-long/2addr v0, v12

    and-long v23, v17, v3

    aget v12, p0, v10

    int-to-long v12, v12

    and-long v32, v12, v3

    const/16 v12, 0x9

    aget v13, p1, v12

    int-to-long v13, v13

    and-long/2addr v13, v3

    ushr-long v17, v0, v2

    add-long v13, v13, v17

    and-long v34, v0, v3

    const/16 v0, 0xa

    aget v1, p1, v0

    move/from16 v25, v0

    int-to-long v0, v1

    and-long/2addr v0, v3

    ushr-long v17, v13, v2

    add-long v0, v0, v17

    and-long v38, v13, v3

    mul-long v13, v32, v26

    add-long/2addr v13, v8

    long-to-int v8, v13

    shl-int/lit8 v9, v8, 0x1

    or-int/2addr v6, v9

    aput v6, p1, v10

    ushr-int/lit8 v6, v8, 0x1f

    ushr-long v17, v13, v2

    move-wide/from16 v13, v32

    invoke-static/range {v13 .. v20}, Lb/b;->a(JJJJ)J

    move-result-wide v8

    move-wide/from16 v19, v21

    ushr-long v21, v8, v2

    move-wide/from16 v17, v32

    invoke-static/range {v17 .. v24}, Lb/b;->a(JJJJ)J

    move-result-wide v13

    move-wide/from16 v21, v19

    and-long/2addr v8, v3

    ushr-long v32, v13, v2

    move-wide/from16 v28, v17

    invoke-static/range {v28 .. v35}, Lb/b;->a(JJJJ)J

    move-result-wide v17

    move-wide/from16 v32, v28

    and-long v19, v13, v3

    move-wide/from16 v34, v36

    ushr-long v36, v17, v2

    invoke-static/range {v32 .. v39}, Lb/b;->a(JJJJ)J

    move-result-wide v13

    move-wide/from16 v43, v32

    move-wide/from16 v36, v34

    and-long v23, v17, v3

    ushr-long v17, v13, v2

    add-long v0, v0, v17

    and-long v34, v13, v3

    aget v10, p0, v5

    int-to-long v13, v10

    and-long v32, v13, v3

    const/16 v10, 0xb

    aget v13, p1, v10

    int-to-long v13, v13

    and-long/2addr v13, v3

    ushr-long v17, v0, v2

    add-long v13, v13, v17

    and-long v38, v0, v3

    const/16 v0, 0xc

    aget v1, p1, v0

    move/from16 p0, v0

    int-to-long v0, v1

    and-long/2addr v0, v3

    ushr-long v17, v13, v2

    add-long v0, v0, v17

    and-long v47, v13, v3

    mul-long v3, v32, v26

    add-long/2addr v3, v8

    long-to-int v8, v3

    shl-int/lit8 v9, v8, 0x1

    or-int/2addr v6, v9

    aput v6, p1, v5

    ushr-int/lit8 v5, v8, 0x1f

    ushr-long v17, v3, v2

    move-wide/from16 v13, v32

    invoke-static/range {v13 .. v20}, Lb/b;->a(JJJJ)J

    move-result-wide v3

    move-wide/from16 v19, v21

    ushr-long v21, v3, v2

    move-wide/from16 v17, v32

    invoke-static/range {v17 .. v24}, Lb/b;->a(JJJJ)J

    move-result-wide v8

    ushr-long v13, v8, v2

    move-wide/from16 v28, v32

    move-wide/from16 v32, v13

    invoke-static/range {v28 .. v35}, Lb/b;->a(JJJJ)J

    move-result-wide v13

    move-wide/from16 v32, v28

    move-wide/from16 v34, v36

    ushr-long v36, v13, v2

    move v15, v10

    move v6, v11

    invoke-static/range {v32 .. v39}, Lb/b;->a(JJJJ)J

    move-result-wide v10

    ushr-long v45, v10, v2

    move/from16 v17, v6

    move/from16 v16, v7

    move-wide/from16 v41, v32

    invoke-static/range {v41 .. v48}, Lb/b;->a(JJJJ)J

    move-result-wide v6

    ushr-long v18, v6, v2

    add-long v0, v0, v18

    long-to-int v3, v3

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v4, v5

    aput v4, p1, v17

    ushr-int/lit8 v3, v3, 0x1f

    long-to-int v4, v8

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    aput v3, p1, v40

    ushr-int/lit8 v3, v4, 0x1f

    long-to-int v4, v13

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    aput v3, p1, v12

    ushr-int/lit8 v3, v4, 0x1f

    long-to-int v4, v10

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    aput v3, p1, v25

    ushr-int/lit8 v3, v4, 0x1f

    long-to-int v4, v6

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    aput v3, p1, v15

    ushr-int/lit8 v3, v4, 0x1f

    long-to-int v4, v0

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    aput v3, p1, p0

    ushr-int/lit8 v3, v4, 0x1f

    const/16 v4, 0xd

    aget v5, p1, v4

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr v5, v0

    shl-int/lit8 v0, v5, 0x1

    or-int/2addr v0, v3

    aput v0, p1, v4

    return-void

    :cond_219
    move v7, v9

    goto/16 :goto_f
.end method

.method public static G(III[I)I
    .registers 16

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x1e

    move v3, v0

    move v6, v3

    move v4, v1

    move v5, v4

    :goto_8
    const/4 v7, -0x1

    shl-int v8, v7, v2

    or-int/2addr v8, p2

    invoke-static {v8}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v8

    shr-int/2addr p2, v8

    shl-int/2addr v3, v8

    shl-int/2addr v4, v8

    sub-int/2addr p0, v8

    sub-int/2addr v2, v8

    const/4 v8, 0x2

    if-gtz v2, :cond_22

    aput v3, p3, v1

    aput v4, p3, v0

    aput v5, p3, v8

    const/4 p1, 0x3

    aput v6, p3, p1

    return p0

    :cond_22
    if-gtz p0, :cond_44

    rsub-int/lit8 p0, p0, 0x2

    neg-int p1, p1

    neg-int v3, v3

    neg-int v4, v4

    if-le p0, v2, :cond_2d

    move v9, v2

    goto :goto_2e

    :cond_2d
    move v9, p0

    :goto_2e
    rsub-int/lit8 v9, v9, 0x20

    ushr-int/2addr v7, v9

    and-int/lit8 v7, v7, 0x3f

    mul-int v9, p2, p1

    mul-int v10, p2, p2

    sub-int/2addr v10, v8

    mul-int/2addr v10, v9

    and-int/2addr v7, v10

    move v11, p2

    move p2, p1

    move p1, v11

    move v11, v5

    move v5, v3

    move v3, v11

    move v11, v6

    move v6, v4

    move v4, v11

    goto :goto_57

    :cond_44
    if-le p0, v2, :cond_48

    move v8, v2

    goto :goto_49

    :cond_48
    move v8, p0

    :goto_49
    rsub-int/lit8 v8, v8, 0x20

    ushr-int/2addr v7, v8

    and-int/lit8 v7, v7, 0xf

    add-int/lit8 v8, p1, 0x1

    and-int/lit8 v8, v8, 0x4

    shl-int/2addr v8, v0

    add-int/2addr v8, p1

    neg-int v9, p2

    mul-int/2addr v8, v9

    and-int/2addr v7, v8

    :goto_57
    mul-int v8, p1, v7

    add-int/2addr p2, v8

    mul-int v8, v3, v7

    add-int/2addr v5, v8

    mul-int/2addr v7, v4

    add-int/2addr v6, v7

    goto :goto_8
.end method

.method public static G0(IJ[B)V
    .registers 9

    const-wide/16 v0, 0xff

    and-long v2, p1, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p3, p0

    add-int/lit8 v2, p0, 0x1

    const/16 v3, 0x8

    shr-long v3, p1, v3

    and-long/2addr v3, v0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p0, 0x2

    const/16 v3, 0x10

    shr-long v3, p1, v3

    and-long/2addr v3, v0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p0, 0x3

    const/16 v3, 0x18

    shr-long v3, p1, v3

    and-long/2addr v3, v0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p0, 0x4

    const/16 v3, 0x20

    shr-long v3, p1, v3

    and-long/2addr v3, v0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p0, 0x5

    const/16 v3, 0x28

    shr-long v3, p1, v3

    and-long/2addr v3, v0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p0, 0x6

    const/16 v3, 0x30

    shr-long v3, p1, v3

    and-long/2addr v3, v0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 p0, p0, 0x7

    const/16 v2, 0x38

    shr-long/2addr p1, v2

    and-long/2addr p1, v0

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, p3, p0

    return-void
.end method

.method public static H(Lm/f;)Ljava/lang/String;
    .registers 3

    instance-of v0, p0, Lm/u;

    if-eqz v0, :cond_7

    check-cast p0, Lm/u;

    goto :goto_d

    :cond_7
    if-eqz p0, :cond_1c

    invoke-interface {p0}, Lm/f;->d()Lm/u;

    move-result-object p0

    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-static {v1, p0, v0}, Lt4/d;->d(Ljava/lang/String;Lm/u;Ljava/lang/StringBuilder;)V

    :goto_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown object type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17
.end method

.method public static I(I[I[I)V
    .registers 14

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move v1, v0

    move v2, v1

    :goto_6
    if-lez p0, :cond_30

    const/16 v5, 0x1e

    invoke-static {v5, p0}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v0, v6, :cond_20

    add-int/lit8 v6, v1, 0x1

    aget v1, p1, v1

    int-to-long v7, v1

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    shl-long/2addr v7, v0

    or-long/2addr v3, v7

    add-int/lit8 v0, v0, 0x20

    move v1, v6

    :cond_20
    add-int/lit8 v6, v2, 0x1

    long-to-int v7, v3

    const v8, 0x3fffffff    # 1.9999999f

    and-int/2addr v7, v8

    aput v7, p2, v2

    ushr-long/2addr v3, v5

    add-int/lit8 v0, v0, -0x1e

    add-int/lit8 p0, p0, -0x1e

    move v2, v6

    goto :goto_6

    :cond_30
    return-void
.end method

.method public static I0([I[I[I)I
    .registers 13

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x4

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v6, p0

    add-long/2addr v6, v1

    long-to-int p0, v6

    aput p0, p2, v5

    shr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static J(Le1/b;)[B
    .registers 6

    if-eqz p0, :cond_10a

    instance-of v0, p0, Le1/z0;

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Le1/b;->c:Z

    if-nez v0, :cond_2c

    check-cast p0, Le1/z0;

    new-instance v0, Lg3/a;

    invoke-direct {v0, v1}, Lg3/a;-><init>(I)V

    const-string v1, "ssh-rsa"

    invoke-static {v1}, Lm4/m;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lg3/a;->f([B)V

    iget-object v1, p0, Le1/z0;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lg3/a;->e(Ljava/math/BigInteger;)V

    iget-object p0, p0, Le1/z0;->d:Ljava/math/BigInteger;

    invoke-virtual {v0, p0}, Lg3/a;->e(Ljava/math/BigInteger;)V

    :goto_25
    iget-object p0, v0, Lg3/a;->a:Ljava/io/ByteArrayOutputStream;

    :goto_27
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "RSAKeyParamaters was for encryption"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    instance-of v0, p0, Le1/x;

    if-eqz v0, :cond_9c

    new-instance v0, Lg3/a;

    invoke-direct {v0, v1}, Lg3/a;-><init>(I)V

    check-cast p0, Le1/x;

    iget-object v1, p0, Le1/u;->d:Le1/r;

    sget-object v2, Lj1/h;->a:Ljava/util/Map;

    instance-of v2, v1, Le1/v;

    if-eqz v2, :cond_55

    move-object v2, v1

    check-cast v2, Le1/v;

    iget-object v2, v2, Le1/v;->m:Lm/q;

    sget-object v3, Lj1/h;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_65

    :cond_55
    iget-object v2, v1, Le1/r;->g:Lk2/h;

    sget-object v3, Lj1/h;->c:Ljava/util/Map;

    sget-object v4, Lj1/h;->d:Lg3/e;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_65
    if-eqz v2, :cond_86

    const-string v1, "ecdsa-sha2-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lm4/m;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lg3/a;->f([B)V

    invoke-static {v2}, Lm4/m;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lg3/a;->f([B)V

    iget-object p0, p0, Le1/x;->q:Lk2/p;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lk2/p;->h(Z)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lg3/a;->f([B)V

    goto :goto_25

    :cond_86
    new-instance p0, Ljava/lang/IllegalArgumentException;

    iget-object v0, v1, Le1/r;->g:Lk2/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unable to derive ssh curve name for "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9c
    instance-of v0, p0, Le1/o;

    if-eqz v0, :cond_cc

    check-cast p0, Le1/o;

    iget-object v0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast v0, Le1/m;

    new-instance v2, Lg3/a;

    invoke-direct {v2, v1}, Lg3/a;-><init>(I)V

    const-string v1, "ssh-dss"

    invoke-static {v1}, Lm4/m;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lg3/a;->f([B)V

    iget-object v1, v0, Le1/m;->q:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Lg3/a;->e(Ljava/math/BigInteger;)V

    iget-object v1, v0, Le1/m;->d:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Lg3/a;->e(Ljava/math/BigInteger;)V

    iget-object v0, v0, Le1/m;->c:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Lg3/a;->e(Ljava/math/BigInteger;)V

    iget-object p0, p0, Le1/o;->q:Ljava/math/BigInteger;

    invoke-virtual {v2, p0}, Lg3/a;->e(Ljava/math/BigInteger;)V

    iget-object p0, v2, Lg3/a;->a:Ljava/io/ByteArrayOutputStream;

    goto/16 :goto_27

    :cond_cc
    instance-of v0, p0, Le1/z;

    if-eqz v0, :cond_e9

    new-instance v0, Lg3/a;

    invoke-direct {v0, v1}, Lg3/a;-><init>(I)V

    const-string v1, "ssh-ed25519"

    invoke-static {v1}, Lm4/m;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lg3/a;->f([B)V

    check-cast p0, Le1/z;

    invoke-virtual {p0}, Le1/z;->getEncoded()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lg3/a;->f([B)V

    goto/16 :goto_25

    :cond_e9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to convert "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to public key"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cipherParameters was null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static J0([II[II[I)V
    .registers 14

    aget v0, p0, p1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    long-to-int v4, v0

    const/4 v5, 0x0

    aput v4, p4, v5

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x1

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v5, v0

    long-to-int v0, v5

    const/4 v1, 0x1

    aput v0, p4, v1

    shr-long v0, v5, v4

    add-int/lit8 v5, p1, 0x2

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v5, v0

    long-to-int v0, v5

    const/4 v1, 0x2

    aput v0, p4, v1

    shr-long v0, v5, v4

    add-int/lit8 v5, p1, 0x3

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v5, v0

    long-to-int v0, v5

    const/4 v1, 0x3

    aput v0, p4, v1

    shr-long v0, v5, v4

    add-int/lit8 v5, p1, 0x4

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v5, v0

    long-to-int v0, v5

    const/4 v1, 0x4

    aput v0, p4, v1

    shr-long v0, v5, v4

    add-int/lit8 v5, p1, 0x5

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x5

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v5, v0

    long-to-int v0, v5

    const/4 v1, 0x5

    aput v0, p4, v1

    shr-long v0, v5, v4

    const/4 v4, 0x6

    add-int/2addr p1, v4

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/2addr p3, v4

    aget p2, p2, p3

    int-to-long p2, p2

    and-long/2addr p2, v2

    sub-long/2addr p0, p2

    add-long/2addr p0, v0

    long-to-int p0, p0

    aput p0, p4, v4

    return-void
.end method

.method public static K0([I[I[I)I
    .registers 13

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x6

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v6, p0

    add-long/2addr v6, v1

    long-to-int p0, v6

    aput p0, p2, v5

    shr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static L([I[I)Z
    .registers 5

    const/4 v0, 0x4

    :goto_1
    if-ltz v0, :cond_e

    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public static L0([I[I)V
    .registers 12

    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p0, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p1, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    shr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    shr-long v1, v6, v0

    const/4 v5, 0x3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    shr-long v0, v6, v0

    const/4 v2, 0x4

    aget v5, p1, v2

    int-to-long v5, v5

    and-long/2addr v5, v3

    aget p0, p0, v2

    int-to-long v7, p0

    and-long/2addr v3, v7

    sub-long/2addr v5, v3

    add-long/2addr v5, v0

    long-to-int p0, v5

    aput p0, p1, v2

    return-void
.end method

.method public static M([I[I)Z
    .registers 5

    const/4 v0, 0x6

    :goto_1
    if-ltz v0, :cond_e

    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public static M0([I)Ljava/math/BigInteger;
    .registers 5

    const/16 v0, 0x14

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x5

    if-ge v1, v2, :cond_16

    aget v2, p0, v1

    if-eqz v2, :cond_13

    rsub-int/lit8 v3, v1, 0x4

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v0, v2, v3}, Lm4/d;->w([BII)V

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_16
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static N(II[I)I
    .registers 6

    const/4 v0, 0x0

    aget v0, p2, v0

    xor-int/2addr p1, v0

    const/4 v0, 0x1

    move v1, v0

    :goto_6
    if-ge v1, p0, :cond_e

    aget v2, p2, v1

    or-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    ushr-int/lit8 p0, p1, 0x1

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    sub-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static N0([I)Ljava/math/BigInteger;
    .registers 5

    const/16 v0, 0x1c

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x7

    if-ge v1, v2, :cond_16

    aget v2, p0, v1

    if-eqz v2, :cond_13

    rsub-int/lit8 v3, v1, 0x6

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v0, v2, v3}, Lm4/d;->w([BII)V

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_16
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static O(II[I)Z
    .registers 7

    const/4 v0, 0x0

    aget v1, p2, v0

    xor-int/2addr p1, v1

    if-eqz p1, :cond_7

    goto :goto_14

    :cond_7
    const/4 v1, 0x1

    move v2, v1

    :goto_9
    if-ge v2, p0, :cond_11

    aget v3, p2, v2

    or-int/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_11
    if-nez p1, :cond_14

    return v1

    :cond_14
    :goto_14
    return v0
.end method

.method public static O0(Lk2/b0;)Lk2/b0;
    .registers 4

    const/4 v0, 0x1

    move-object v1, p0

    :goto_2
    invoke-virtual {p0}, Lk2/b0;->k()I

    move-result v2

    if-ge v0, v2, :cond_13

    invoke-virtual {v1}, Lk2/b0;->F()Lk2/b0;

    move-result-object v1

    invoke-virtual {v1, p0}, Lk2/b0;->a(Lk2/b0;)Lk2/b0;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    return-object v1
.end method

.method public static P(Ljava/io/InputStream;)I
    .registers 6

    instance-of v0, p0, Lm/w1;

    if-eqz v0, :cond_9

    check-cast p0, Lm/w1;

    iget p0, p0, Lm/w1;->d:I

    return p0

    :cond_9
    instance-of v0, p0, Lm/k;

    if-eqz v0, :cond_12

    check-cast p0, Lm/k;

    iget p0, p0, Lm/k;->c:I

    return p0

    :cond_12
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1d

    check-cast p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p0

    return p0

    :cond_1d
    instance-of v0, p0, Ljava/io/FileInputStream;

    const-wide/32 v1, 0x7fffffff

    if-eqz v0, :cond_38

    :try_start_24
    check-cast p0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_30} :catch_38

    goto :goto_32

    :cond_31
    move-wide v3, v1

    :goto_32
    cmp-long p0, v3, v1

    if-gez p0, :cond_38

    long-to-int p0, v3

    return p0

    :catch_38
    :cond_38
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-lez p0, :cond_48

    const p0, 0x7fffffff

    return p0

    :cond_48
    long-to-int p0, v3

    return p0
.end method

.method public static P0(I[I[I)I
    .registers 8

    add-int/lit8 v0, p0, -0x1

    aget v1, p1, v0

    aget v0, p2, v0

    add-int/lit8 v2, p0, -0x2

    shr-int/lit8 v3, v2, 0x1f

    shr-int/lit8 v4, v1, 0x1f

    xor-int/2addr v4, v1

    or-int/2addr v3, v4

    shr-int/lit8 v4, v0, 0x1f

    xor-int/2addr v4, v0

    or-int/2addr v3, v4

    if-nez v3, :cond_24

    aget v3, p1, v2

    shl-int/lit8 v1, v1, 0x1e

    or-int/2addr v1, v3

    aput v1, p1, v2

    aget p1, p2, v2

    shl-int/lit8 v0, v0, 0x1e

    or-int/2addr p1, v0

    aput p1, p2, v2

    add-int/lit8 p0, p0, -0x1

    :cond_24
    return p0
.end method

.method public static Q(Ljava/math/BigInteger;)[I
    .registers 5

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_24

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xa0

    if-gt v0, v1, :cond_24

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_23

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v1, v2

    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_23
    return-object v1

    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static Q0(II[I[I[I[I)V
    .registers 40

    move/from16 v0, p0

    const/4 v1, 0x0

    aget v2, p4, v1

    const/4 v3, 0x1

    aget v4, p4, v3

    const/4 v5, 0x2

    aget v5, p4, v5

    const/4 v6, 0x3

    aget v6, p4, v6

    add-int/lit8 v7, v0, -0x1

    aget v8, p2, v7

    shr-int/lit8 v8, v8, 0x1f

    aget v9, p3, v7

    shr-int/lit8 v9, v9, 0x1f

    and-int v10, v2, v8

    and-int v11, v4, v9

    add-int/2addr v10, v11

    and-int/2addr v8, v5

    and-int/2addr v9, v6

    add-int/2addr v8, v9

    aget v9, p5, v1

    aget v11, p2, v1

    aget v1, p3, v1

    int-to-long v12, v2

    int-to-long v14, v11

    mul-long v16, v12, v14

    int-to-long v3, v4

    move-wide/from16 v18, v3

    int-to-long v2, v1

    mul-long v20, v18, v2

    move-wide/from16 v22, v2

    add-long v1, v20, v16

    int-to-long v3, v5

    mul-long/2addr v14, v3

    int-to-long v5, v6

    mul-long v16, v5, v22

    add-long v14, v16, v14

    long-to-int v11, v1

    mul-int v11, v11, p1

    add-int/2addr v11, v10

    const v16, 0x3fffffff    # 1.9999999f

    and-int v11, v11, v16

    sub-int/2addr v10, v11

    long-to-int v11, v14

    mul-int v11, v11, p1

    add-int/2addr v11, v8

    and-int v11, v11, v16

    sub-int/2addr v8, v11

    move-wide/from16 v20, v1

    int-to-long v1, v9

    int-to-long v9, v10

    mul-long v22, v1, v9

    add-long v22, v22, v20

    move-wide/from16 v20, v1

    int-to-long v1, v8

    mul-long v20, v20, v1

    add-long v20, v20, v14

    const/16 v8, 0x1e

    shr-long v14, v22, v8

    shr-long v20, v20, v8

    move-wide/from16 v28, v14

    move-wide/from16 v30, v20

    const/4 v11, 0x1

    :goto_66
    if-ge v11, v0, :cond_ae

    aget v14, p5, v11

    aget v15, p2, v11

    move/from16 p1, v8

    aget v8, p3, v11

    move-wide/from16 v20, v1

    int-to-long v0, v15

    mul-long v22, v12, v0

    move-wide/from16 v32, v0

    int-to-long v0, v8

    mul-long v24, v18, v0

    add-long v26, v24, v22

    int-to-long v14, v14

    move-wide/from16 v24, v9

    move-wide/from16 v22, v14

    invoke-static/range {v22 .. v29}, Lb/b;->a(JJJJ)J

    move-result-wide v8

    move-wide/from16 v14, v24

    mul-long v24, v3, v32

    mul-long/2addr v0, v5

    add-long v28, v0, v24

    move-wide/from16 v26, v20

    move-wide/from16 v24, v22

    invoke-static/range {v24 .. v31}, Lb/b;->a(JJJJ)J

    move-result-wide v0

    add-int/lit8 v2, v11, -0x1

    long-to-int v10, v8

    and-int v10, v10, v16

    aput v10, p2, v2

    shr-long v28, v8, p1

    long-to-int v8, v0

    and-int v8, v8, v16

    aput v8, p3, v2

    shr-long v30, v0, p1

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p0

    move/from16 v8, p1

    move-wide v9, v14

    move-wide/from16 v1, v26

    goto :goto_66

    :cond_ae
    move-wide/from16 v0, v28

    move-wide/from16 v8, v30

    long-to-int v0, v0

    aput v0, p2, v7

    long-to-int v0, v8

    aput v0, p3, v7

    return-void
.end method

.method public static R(Ljava/math/BigInteger;)[I
    .registers 5

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_24

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xe0

    if-gt v0, v1, :cond_24

    const/4 v0, 0x7

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_23

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v1, v2

    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_23
    return-object v1

    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static R0(I[I[I[I)V
    .registers 32

    move/from16 v0, p0

    const/4 v1, 0x0

    aget v2, p3, v1

    const/4 v3, 0x1

    aget v4, p3, v3

    const/4 v5, 0x2

    aget v5, p3, v5

    const/4 v6, 0x3

    aget v6, p3, v6

    aget v7, p1, v1

    aget v1, p2, v1

    int-to-long v8, v2

    int-to-long v10, v7

    mul-long v12, v8, v10

    int-to-long v14, v4

    int-to-long v1, v1

    mul-long v16, v14, v1

    add-long v16, v16, v12

    int-to-long v4, v5

    mul-long/2addr v10, v4

    int-to-long v6, v6

    mul-long/2addr v1, v6

    add-long/2addr v1, v10

    const/16 v10, 0x1e

    shr-long v11, v16, v10

    shr-long/2addr v1, v10

    move-wide/from16 v24, v1

    move v1, v3

    move-wide/from16 v20, v11

    :goto_2b
    if-ge v1, v0, :cond_61

    aget v2, p1, v1

    aget v11, p2, v1

    int-to-long v12, v2

    mul-long v18, v8, v12

    move v2, v3

    move-wide/from16 v26, v4

    int-to-long v3, v11

    move-wide/from16 v16, v3

    invoke-static/range {v14 .. v21}, Lb/b;->a(JJJJ)J

    move-result-wide v3

    mul-long v22, v26, v12

    move-wide/from16 v18, v6

    move-wide/from16 v20, v16

    invoke-static/range {v18 .. v25}, Lb/b;->a(JJJJ)J

    move-result-wide v5

    add-int/lit8 v7, v1, -0x1

    long-to-int v11, v3

    const v12, 0x3fffffff    # 1.9999999f

    and-int/2addr v11, v12

    aput v11, p1, v7

    shr-long v20, v3, v10

    long-to-int v3, v5

    and-int/2addr v3, v12

    aput v3, p2, v7

    shr-long v24, v5, v10

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move-wide/from16 v6, v18

    move-wide/from16 v4, v26

    goto :goto_2b

    :cond_61
    move v2, v3

    move-wide/from16 v11, v20

    move-wide/from16 v3, v24

    sub-int/2addr v0, v2

    long-to-int v1, v11

    aput v1, p1, v0

    long-to-int v1, v3

    aput v1, p2, v0

    return-void
.end method

.method public static S(Lg3/m;Lg3/f;I[B[B)Lg3/j;
    .registers 14

    if-eqz p4, :cond_17

    array-length v0, p4

    iget v1, p0, Lg3/m;->b:I

    if-lt v0, v1, :cond_17

    const/4 v0, 0x1

    iget v1, p0, Lg3/m;->c:I

    shl-int v7, v0, v1

    new-instance v2, Lg3/j;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lg3/j;-><init>(Lg3/m;Lg3/f;I[BI[B)V

    return-object v2

    :cond_17
    move-object v3, p0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "root seed is less than "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, v3, Lg3/m;->b:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static S0([BI[B)V
    .registers 7

    const/4 v0, 0x0

    :cond_1
    aget-byte v1, p0, v0

    add-int v2, p1, v0

    aget-byte v2, p2, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v1, v0, 0x1

    aget-byte v2, p0, v1

    add-int v3, p1, v1

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, v0, 0x2

    aget-byte v2, p0, v1

    add-int v3, p1, v1

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, v0, 0x3

    aget-byte v2, p0, v1

    add-int v3, p1, v1

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x4

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    return-void
.end method

.method public static T(Lo3/b;IIIZ)[[[S
    .registers 13

    const/4 v0, 0x2

    if-eqz p4, :cond_9

    add-int/lit8 v1, p2, 0x1

    mul-int/2addr v1, p2

    div-int/2addr v1, v0

    mul-int/2addr v1, p1

    goto :goto_c

    :cond_9
    mul-int v1, p1, p2

    mul-int/2addr v1, p3

    :goto_c
    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Lo3/b;->nextBytes([B)V

    const/4 p0, 0x3

    new-array p0, p0, [I

    aput p3, p0, v0

    const/4 v0, 0x1

    aput p2, p0, v0

    const/4 v0, 0x0

    aput p1, p0, v0

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[[S

    move v2, v0

    move v3, v2

    :goto_26
    if-ge v2, p2, :cond_4a

    move v4, v0

    :goto_29
    if-ge v4, p3, :cond_47

    move v5, v0

    :goto_2c
    if-ge v5, p1, :cond_44

    if-eqz p4, :cond_33

    if-le v2, v4, :cond_33

    goto :goto_41

    :cond_33
    aget-object v6, p0, v5

    aget-object v6, v6, v2

    add-int/lit8 v7, v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v6, v4

    move v3, v7

    :goto_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_4a
    return-object p0
.end method

.method public static T0([B[B)V
    .registers 6

    const/4 v0, 0x0

    :cond_1
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v1, v0, 0x1

    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, v0, 0x2

    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, v0, 0x3

    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x4

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    return-void
.end method

.method public static U(Lo3/b;II)[[S
    .registers 9

    mul-int v0, p1, p2

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lo3/b;->nextBytes([B)V

    const/4 p0, 0x2

    new-array p0, p0, [I

    const/4 v1, 0x1

    aput p2, p0, v1

    const/4 v1, 0x0

    aput p1, p0, v1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[S

    move v2, v1

    :goto_19
    if-ge v2, p2, :cond_30

    move v3, v1

    :goto_1c
    if-ge v3, p1, :cond_2d

    aget-object v4, p0, v3

    mul-int v5, v2, p1

    add-int/2addr v5, v3

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aput-short v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_30
    return-object p0
.end method

.method public static V([I)I
    .registers 2

    const/4 v0, 0x0

    aget p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static W([I)I
    .registers 2

    const/4 v0, 0x0

    aget p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static X(Ljava/lang/String;Le1/u;)Lr0/a;
    .registers 4

    new-instance v0, Lr0/a;

    iget-object v1, p1, Le1/u;->d:Le1/r;

    iget-object v1, v1, Le1/r;->g:Lk2/h;

    invoke-static {v1}, Lq4/k;->t(Lk2/h;)I

    invoke-direct {v0, p0, p1}, Lr0/a;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/g;)V

    return-object v0
.end method

.method public static Y(Lm/q;)Lorg/bouncycastle/crypto/v;
    .registers 3

    sget-object v0, Lz/b;->a:Lm/q;

    invoke-virtual {p0, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p0, Ls0/b0;

    invoke-direct {p0}, Ls0/b0;-><init>()V

    return-object p0

    :cond_e
    sget-object v0, Lz/b;->c:Lm/q;

    invoke-virtual {p0, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance p0, Ls0/e0;

    invoke-direct {p0}, Ls0/e0;-><init>()V

    return-object p0

    :cond_1c
    sget-object v0, Lz/b;->k:Lm/q;

    invoke-virtual {p0, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance p0, Ls0/g0;

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Ls0/g0;-><init>(I)V

    return-object p0

    :cond_2c
    sget-object v0, Lz/b;->l:Lm/q;

    invoke-virtual {p0, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_3c

    new-instance p0, Ls0/g0;

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Ls0/g0;-><init>(I)V

    return-object p0

    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unrecognized digest OID: "

    invoke-static {v1, p0}, Lb/b;->j(Ljava/lang/String;Lm/q;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static Z(Ljava/lang/String;)Lm/q;
    .registers 3

    const-string v0, "SHA-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Lz/b;->a:Lm/q;

    return-object p0

    :cond_b
    const-string v0, "SHA-512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p0, Lz/b;->c:Lm/q;

    return-object p0

    :cond_16
    const-string v0, "SHAKE128"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object p0, Lz/b;->k:Lm/q;

    return-object p0

    :cond_21
    const-string v0, "SHAKE256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object p0, Lz/b;->l:Lm/q;

    return-object p0

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unrecognized digest: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a0([[S)[B
    .registers 9

    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int v3, v0, v2

    new-array v3, v3, [B

    move v4, v1

    :goto_a
    if-ge v4, v2, :cond_1f

    move v5, v1

    :goto_d
    if-ge v5, v0, :cond_1c

    mul-int v6, v4, v0

    add-int/2addr v6, v5

    aget-object v7, p0, v5

    aget-short v7, v7, v4

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1f
    return-object v3
.end method

.method public static b0([[[SZ)[B
    .registers 12

    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v3, v2

    aget-object v2, v2, v1

    array-length v2, v2

    if-eqz p1, :cond_11

    add-int/lit8 v4, v3, 0x1

    mul-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    mul-int/2addr v4, v0

    goto :goto_14

    :cond_11
    mul-int v4, v0, v3

    mul-int/2addr v4, v2

    :goto_14
    new-array v4, v4, [B

    move v5, v1

    move v6, v5

    :goto_18
    if-ge v5, v3, :cond_39

    move v7, v1

    :goto_1b
    if-ge v7, v2, :cond_36

    move v8, v1

    :goto_1e
    if-ge v8, v0, :cond_33

    if-eqz p1, :cond_25

    if-le v5, v7, :cond_25

    goto :goto_30

    :cond_25
    aget-object v9, p0, v8

    aget-object v9, v9, v5

    aget-short v9, v9, v7

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    add-int/lit8 v6, v6, 0x1

    :goto_30
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    :cond_33
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_39
    return-object v4
.end method

.method public static c0(Ld2/m;[B)Lorg/bouncycastle/crypto/p0;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lt4/d;->e0()Lorg/bouncycastle/crypto/p0;

    move-result-object v0

    new-instance v1, Le1/o0;

    invoke-static {p0, p1}, Lt4/d;->q0(Ld2/m;[B)[B

    move-result-object p0

    const/16 p1, 0x20

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Le1/o0;-><init>([BII)V

    move-object p0, v0

    check-cast p0, Lv0/y;

    invoke-virtual {p0, v2, v1}, Lv0/y;->init(ZLorg/bouncycastle/crypto/g;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;Lm/u;Ljava/lang/StringBuilder;)V
    .registers 9

    sget-object v0, Lm4/m;->a:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v1, p1, Lm/m;

    if-eqz v1, :cond_12

    const-string p0, "NULL"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_12
    instance-of v1, p1, Lm/x;

    const/4 v2, 0x0

    const-string v3, "    "

    if-eqz v1, :cond_4a

    instance-of v1, p1, Lm/h0;

    if-eqz v1, :cond_23

    const-string v1, "BER Sequence"

    :goto_1f
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    :cond_23
    instance-of v1, p1, Lm/a1;

    if-eqz v1, :cond_2a

    const-string v1, "DER Sequence"

    goto :goto_1f

    :cond_2a
    const-string v1, "Sequence"

    goto :goto_1f

    :goto_2d
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lm/x;

    invoke-static {p0, v3}, Lb/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v0

    :goto_3a
    if-ge v2, v0, :cond_7c

    invoke-virtual {p1, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-interface {v1}, Lm/f;->d()Lm/u;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lt4/d;->d(Ljava/lang/String;Lm/u;Ljava/lang/StringBuilder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_4a
    instance-of v1, p1, Lm/y;

    if-eqz v1, :cond_7d

    instance-of v1, p1, Lm/j0;

    if-eqz v1, :cond_58

    const-string v1, "BER Set"

    :goto_54
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62

    :cond_58
    instance-of v1, p1, Lm/b1;

    if-eqz v1, :cond_5f

    const-string v1, "DER Set"

    goto :goto_54

    :cond_5f
    const-string v1, "Set"

    goto :goto_54

    :goto_62
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lm/y;

    iget-object p1, p1, Lm/y;->c:[Lm/f;

    invoke-static {p0, v3}, Lb/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    array-length v0, p1

    :goto_6e
    if-ge v2, v0, :cond_7c

    aget-object v1, p1, v2

    invoke-interface {v1}, Lm/f;->d()Lm/u;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lt4/d;->d(Ljava/lang/String;Lm/u;Ljava/lang/StringBuilder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    :cond_7c
    return-void

    :cond_7d
    instance-of v1, p1, Lm/a0;

    if-eqz v1, :cond_cb

    instance-of v1, p1, Lm/k0;

    if-eqz v1, :cond_8b

    const-string v1, "BER Tagged "

    :goto_87
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_95

    :cond_8b
    instance-of v1, p1, Lm/d1;

    if-eqz v1, :cond_92

    const-string v1, "DER Tagged "

    goto :goto_87

    :cond_92
    const-string v1, "Tagged "

    goto :goto_87

    :goto_95
    check-cast p1, Lm/a0;

    iget v1, p1, Lm/a0;->d:I

    iget v2, p1, Lm/a0;->q:I

    invoke-static {v1, v2}, Lq4/k;->h0(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lm/a0;->w()Z

    move-result v1

    if-nez v1, :cond_ad

    const-string v1, " IMPLICIT"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ad
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lm/a0;->r()Lm/n;

    move-result-object p1

    invoke-virtual {p1}, Lm/n;->d()Lm/u;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lt4/d;->d(Ljava/lang/String;Lm/u;Ljava/lang/StringBuilder;)V

    return-void

    :cond_cb
    instance-of v1, p1, Lm/q;

    const-string v2, ")"

    if-eqz v1, :cond_ef

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "ObjectIdentifier("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lm/q;

    invoke-virtual {p1}, Lm/q;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_ef
    instance-of v1, p1, Lm/v;

    if-eqz v1, :cond_111

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "RelativeOID("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lm/v;

    invoke-virtual {p1}, Lm/v;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_111
    instance-of v1, p1, Lm/d;

    if-eqz v1, :cond_133

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Boolean("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lm/d;

    invoke-virtual {p1}, Lm/d;->t()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_133
    instance-of v1, p1, Lm/l;

    if-eqz v1, :cond_155

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Integer("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lm/l;

    invoke-virtual {p1}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_155
    instance-of v1, p1, Lm/r;

    const-string v4, "]"

    if-eqz v1, :cond_184

    move-object p0, p1

    check-cast p0, Lm/r;

    iget-object p0, p0, Lm/r;->c:[B

    instance-of p1, p1, Lm/f0;

    if-eqz p1, :cond_16a

    const-string p1, "BER Constructed Octet String["

    :goto_166
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16d

    :cond_16a
    const-string p1, "DER Octet String["

    goto :goto_166

    :goto_16d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_184
    instance-of v1, p1, Lm/b;

    if-eqz v1, :cond_1c5

    check-cast p1, Lm/b;

    instance-of p0, p1, Lm/p0;

    if-eqz p0, :cond_194

    const-string p0, "DER Bit String["

    :goto_190
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19e

    :cond_194
    instance-of p0, p1, Lm/j1;

    if-eqz p0, :cond_19b

    const-string p0, "DL Bit String["

    goto :goto_190

    :cond_19b
    const-string p0, "BER Bit String["

    goto :goto_190

    :goto_19e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lm/b;->c:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lm/b;->f()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1c5
    instance-of v1, p1, Lm/u0;

    const-string v4, ") "

    if-eqz v1, :cond_1eb

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "IA5String("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lm/u0;

    iget-object p1, p1, Lm/u0;->c:[B

    invoke-static {p1}, Lm4/m;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1eb
    instance-of v1, p1, Lm/f1;

    if-eqz v1, :cond_20d

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "UTF8String("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lm/f1;

    invoke-virtual {p1}, Lm/f1;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_20d
    instance-of v1, p1, Lm/w0;

    if-eqz v1, :cond_231

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "NumericString("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lm/w0;

    iget-object p1, p1, Lm/w0;->c:[B

    invoke-static {p1}, Lm4/m;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_231
    instance-of v1, p1, Lm/z0;

    if-eqz v1, :cond_255

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "PrintableString("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lm/z0;

    iget-object p1, p1, Lm/z0;->c:[B

    invoke-static {p1}, Lm4/m;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_255
    instance-of v1, p1, Lm/i1;

    if-eqz v1, :cond_279

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "VisibleString("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lm/i1;

    iget-object p1, p1, Lm/i1;->c:[B

    invoke-static {p1}, Lm4/m;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_279
    instance-of v1, p1, Lm/o0;

    if-eqz v1, :cond_29b

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "BMPString("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lm/o0;

    invoke-virtual {p1}, Lm/o0;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_29b
    instance-of v1, p1, Lm/c1;

    if-eqz v1, :cond_2bf

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "T61String("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lm/c1;

    iget-object p1, p1, Lm/c1;->c:[B

    invoke-static {p1}, Lm4/m;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_2bf
    instance-of v1, p1, Lm/t0;

    if-eqz v1, :cond_2e3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "GraphicString("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lm/t0;

    iget-object p1, p1, Lm/t0;->c:[B

    invoke-static {p1}, Lm4/m;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_2e3
    instance-of v1, p1, Lm/h1;

    if-eqz v1, :cond_307

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "VideotexString("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lm/h1;

    iget-object p1, p1, Lm/h1;->c:[B

    invoke-static {p1}, Lm4/m;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_307
    instance-of v1, p1, Lm/b0;

    if-eqz v1, :cond_329

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "UTCTime("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lm/b0;

    invoke-virtual {p1}, Lm/b0;->r()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_329
    instance-of v1, p1, Lm/j;

    if-eqz v1, :cond_34b

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "GeneralizedTime("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lm/j;

    invoke-virtual {p1}, Lm/j;->v()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_34b
    instance-of v1, p1, Lm/h;

    if-eqz v1, :cond_36d

    check-cast p1, Lm/h;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "DER Enumerated("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lm/h;->t()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_36d
    instance-of v1, p1, Lm/o;

    if-eqz v1, :cond_393

    check-cast p1, Lm/o;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "ObjectDescriptor("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lm/o;->c:Lm/t0;

    iget-object p1, p1, Lm/t0;->c:[B

    invoke-static {p1}, Lm4/m;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_393
    instance-of v1, p1, Lm/q0;

    if-eqz v1, :cond_426

    check-cast p1, Lm/q0;

    iget-object v1, p1, Lm/q0;->d:Lm/l;

    iget-object v2, p1, Lm/q0;->c:Lm/q;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "External "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz v2, :cond_3dd

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Direct Reference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lm/q;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3dd
    if-eqz v1, :cond_3fd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Indirect Reference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lm/l;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3fd
    iget-object v1, p1, Lm/q0;->q:Lm/u;

    if-eqz v1, :cond_404

    invoke-static {p0, v1, p2}, Lt4/d;->d(Ljava/lang/String;Lm/u;Ljava/lang/StringBuilder;)V

    :cond_404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lm/q0;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lm/q0;->y:Lm/u;

    invoke-static {p0, p1, p2}, Lt4/d;->d(Ljava/lang/String;Lm/u;Ljava/lang/StringBuilder;)V

    return-void

    :cond_426
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static d0(Ljava/lang/String;)Li2/c;
    .registers 10

    invoke-static {p0}, Lr/b;->f(Ljava/lang/String;)Lm/q;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    move-object v0, v1

    goto :goto_d

    :cond_9
    invoke-static {v0}, Lr/b;->d(Lm/q;)Lm0/h;

    move-result-object v0

    :goto_d
    if-nez v0, :cond_18

    :try_start_f
    new-instance v0, Lm/q;

    invoke-direct {v0, p0}, Lm/q;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lr/b;->d(Lm/q;)Lm0/h;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_18} :catch_1a

    :cond_18
    if-nez v0, :cond_1b

    :catch_1a
    return-object v1

    :cond_1b
    new-instance v2, Li2/c;

    iget-object v1, v0, Lm0/h;->d:Lm0/g;

    iget-object v4, v1, Lm0/g;->c:Lk2/h;

    iget-object v1, v0, Lm0/h;->q:Lm0/j;

    invoke-virtual {v1}, Lm0/j;->h()Lk2/p;

    move-result-object v5

    iget-object v6, v0, Lm0/h;->x:Ljava/math/BigInteger;

    iget-object v7, v0, Lm0/h;->y:Ljava/math/BigInteger;

    invoke-virtual {v0}, Lm0/h;->i()[B

    move-result-object v8

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Li2/c;-><init>(Ljava/lang/String;Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v2
.end method

.method public static e(Lorg/bouncycastle/crypto/v;)Ljava/lang/String;
    .registers 4

    invoke-interface {p0}, Lorg/bouncycastle/crypto/v;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_2e

    const-string v1, "SHA3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2e
    return-object p0
.end method

.method public static e0()Lorg/bouncycastle/crypto/p0;
    .registers 3

    new-instance v0, Lv0/y;

    new-instance v1, Lv0/a;

    invoke-direct {v1}, Lv0/a;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lv0/y;-><init>(Lorg/bouncycastle/crypto/d;I)V

    return-object v0
.end method

.method public static final f(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1c

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1b

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_18

    return v4

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    return v4

    :cond_1c
    return v0
.end method

.method public static f0([I[I)Z
    .registers 6

    const/4 v0, 0x4

    :goto_1
    if-ltz v0, :cond_15

    aget v1, p0, v0

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    aget v3, p1, v0

    xor-int/2addr v2, v3

    if-ge v1, v2, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    if-le v1, v2, :cond_12

    goto :goto_15

    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public static g([I[I[I)I
    .registers 13

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x4

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v6, v1

    long-to-int p0, v6

    aput p0, p2, v5

    ushr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static g0([I[I)Z
    .registers 6

    const/4 v0, 0x6

    :goto_1
    if-ltz v0, :cond_15

    aget v1, p0, v0

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    aget v3, p1, v0

    xor-int/2addr v2, v3

    if-ge v1, v2, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    if-le v1, v2, :cond_12

    goto :goto_15

    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public static h([J[J[J)V
    .registers 8

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide p0, p1, v0

    xor-long/2addr p0, v1

    aput-wide p0, p2, v0

    return-void
.end method

.method public static h0(JJ)J
    .registers 36

    const-wide v0, 0x1111111111111111L

    and-long v2, p0, v0

    const-wide v4, 0x2222222222222222L

    and-long v6, p0, v4

    const-wide v8, 0x4444444444444444L    # 7.477080264543605E20

    and-long v10, p0, v8

    const-wide v12, -0x7777777777777778L    # -1.48603973805866E-267

    and-long v14, p0, v12

    and-long v16, p2, v0

    and-long v18, p2, v4

    and-long v20, p2, v8

    and-long v22, p2, v12

    mul-long v24, v2, v16

    mul-long v26, v6, v22

    xor-long v24, v24, v26

    mul-long v26, v10, v20

    xor-long v24, v24, v26

    mul-long v26, v14, v18

    xor-long v24, v24, v26

    mul-long v26, v2, v18

    mul-long v28, v6, v16

    xor-long v26, v26, v28

    mul-long v28, v10, v22

    xor-long v26, v26, v28

    mul-long v28, v14, v20

    xor-long v26, v26, v28

    mul-long v28, v2, v20

    mul-long v30, v6, v18

    xor-long v28, v28, v30

    mul-long v30, v10, v16

    xor-long v28, v28, v30

    mul-long v30, v14, v22

    xor-long v28, v28, v30

    mul-long v2, v2, v22

    mul-long v6, v6, v20

    xor-long/2addr v2, v6

    mul-long v10, v10, v18

    xor-long/2addr v2, v10

    mul-long v14, v14, v16

    xor-long/2addr v2, v14

    and-long v0, v24, v0

    and-long v4, v26, v4

    and-long v6, v28, v8

    and-long/2addr v2, v12

    or-long/2addr v0, v4

    or-long/2addr v0, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static i([I[I[I)I
    .registers 13

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x6

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v6, v1

    long-to-int p0, v6

    aput p0, p2, v5

    ushr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static i0(I)I
    .registers 3

    mul-int v0, p0, p0

    rsub-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, p0

    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v1, v0

    mul-int v0, p0, v1

    rsub-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v1

    mul-int/2addr p0, v0

    rsub-int/lit8 p0, p0, 0x2

    mul-int/2addr p0, v0

    return p0
.end method

.method public static j(I[I[I)I
    .registers 7

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v0, p0, :cond_17

    aget v2, p1, v0

    aget v3, p2, v0

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    const v1, 0x3fffffff    # 1.9999999f

    and-int/2addr v1, v2

    aput v1, p1, v0

    shr-int/lit8 v1, v2, 0x1e

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_17
    aget v0, p1, p0

    aget p2, p2, p0

    add-int/2addr v0, p2

    add-int/2addr v0, v1

    aput v0, p1, p0

    shr-int/lit8 p0, v0, 0x1e

    return p0
.end method

.method public static j0([I)Z
    .registers 5

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    return v0

    :cond_7
    move v1, v2

    :goto_8
    const/4 v3, 0x5

    if-ge v1, v3, :cond_13

    aget v3, p0, v1

    if-eqz v3, :cond_10

    return v0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    return v2
.end method

.method public static k([I[I[I)I
    .registers 13

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    aget v5, p2, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x4

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    aget p0, p2, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v6, v1

    long-to-int p0, v6

    aput p0, p2, v5

    ushr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static k0([I)Z
    .registers 5

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    return v0

    :cond_7
    move v1, v2

    :goto_8
    const/4 v3, 0x7

    if-ge v1, v3, :cond_13

    aget v3, p0, v1

    if-eqz v3, :cond_10

    return v0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    return v2
.end method

.method public static l([I[I[I)I
    .registers 13

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    aget v5, p2, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x6

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    aget p0, p2, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v6, v1

    long-to-int p0, v6

    aput p0, p2, v5

    ushr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static l0([I)Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x5

    if-ge v1, v2, :cond_d

    aget v2, p0, v1

    if-eqz v2, :cond_a

    return v0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method public static m(III[I[I)I
    .registers 14

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget p2, p3, p0

    int-to-long v4, p2

    and-long/2addr v4, v2

    aget p2, p4, p1

    int-to-long v6, p2

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    add-long/2addr v4, v0

    long-to-int p2, v4

    aput p2, p4, p1

    const/16 p2, 0x20

    ushr-long v0, v4, p2

    add-int/lit8 v4, p0, 0x1

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p1, 0x1

    aget v7, p4, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v4, v0

    long-to-int v0, v4

    aput v0, p4, v6

    ushr-long v0, v4, p2

    add-int/lit8 v4, p0, 0x2

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p1, 0x2

    aget v7, p4, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v4, v0

    long-to-int v0, v4

    aput v0, p4, v6

    ushr-long v0, v4, p2

    add-int/lit8 v4, p0, 0x3

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p1, 0x3

    aget v7, p4, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v4, v0

    long-to-int v0, v4

    aput v0, p4, v6

    ushr-long v0, v4, p2

    add-int/lit8 v4, p0, 0x4

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p1, 0x4

    aget v7, p4, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v4, v0

    long-to-int v0, v4

    aput v0, p4, v6

    ushr-long v0, v4, p2

    add-int/lit8 v4, p0, 0x5

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p1, 0x5

    aget v7, p4, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v4, v0

    long-to-int v0, v4

    aput v0, p4, v6

    ushr-long v0, v4, p2

    add-int/lit8 p0, p0, 0x6

    aget p0, p3, p0

    int-to-long v4, p0

    and-long/2addr v4, v2

    add-int/lit8 p1, p1, 0x6

    aget p0, p4, p1

    int-to-long v6, p0

    and-long/2addr v2, v6

    add-long/2addr v4, v2

    add-long/2addr v4, v0

    long-to-int p0, v4

    aput p0, p4, p1

    ushr-long p0, v4, p2

    long-to-int p0, p0

    return p0
.end method

.method public static m0([I)Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x7

    if-ge v1, v2, :cond_d

    aget v2, p0, v1

    if-eqz v2, :cond_a

    return v0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method public static n([I[I)I
    .registers 13

    const/4 v0, 0x7

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 v5, 0xe

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p0, v0

    aput v6, p1, v5

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/16 v5, 0x8

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/16 v8, 0xf

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p0, v5

    aput v1, p1, v8

    ushr-long v1, v6, v0

    const/16 v5, 0x9

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/16 v8, 0x10

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p0, v5

    aput v1, p1, v8

    ushr-long v1, v6, v0

    const/16 v5, 0xa

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/16 v8, 0x11

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p0, v5

    aput v1, p1, v8

    ushr-long v1, v6, v0

    const/16 v5, 0xb

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/16 v8, 0x12

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p0, v5

    aput v1, p1, v8

    ushr-long v1, v6, v0

    const/16 v5, 0xc

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/16 v8, 0x13

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p0, v5

    aput v1, p1, v8

    ushr-long v1, v6, v0

    const/16 v5, 0xd

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/16 v8, 0x14

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v3, v9

    add-long/2addr v6, v3

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p0, v5

    aput v1, p1, v8

    ushr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static n0(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "singletonList(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static o(III)I
    .registers 4

    ushr-int v0, p0, p2

    xor-int/2addr v0, p0

    and-int/2addr p1, v0

    shl-int p2, p1, p2

    xor-int/2addr p1, p2

    xor-int/2addr p0, p1

    return p0
.end method

.method public static o0([[S[BI)I
    .registers 10

    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    move v3, v1

    :goto_6
    if-ge v3, v2, :cond_1e

    move v4, v1

    :goto_9
    if-ge v4, v0, :cond_1b

    aget-object v5, p0, v4

    mul-int v6, v3, v0

    add-int/2addr v6, p2

    add-int/2addr v6, v4

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    aput-short v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_1e
    mul-int/2addr v0, v2

    return v0
.end method

.method public static p(IJJ)J
    .registers 7

    ushr-long v0, p1, p0

    xor-long/2addr v0, p1

    and-long/2addr p3, v0

    shl-long v0, p3, p0

    xor-long/2addr p3, v0

    xor-long p0, p3, p1

    return-wide p0
.end method

.method public static p0([[[S[BIZ)I
    .registers 14

    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v3, v2

    aget-object v2, v2, v1

    array-length v2, v2

    move v4, v1

    move v5, v4

    :goto_a
    if-ge v4, v3, :cond_2f

    move v6, v1

    :goto_d
    if-ge v6, v2, :cond_2c

    move v7, v1

    :goto_10
    if-ge v7, v0, :cond_29

    if-eqz p3, :cond_17

    if-le v4, v6, :cond_17

    goto :goto_26

    :cond_17
    aget-object v8, p0, v7

    aget-object v8, v8, v4

    add-int/lit8 v9, v5, 0x1

    add-int/2addr v5, p2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aput-short v5, v8, v6

    move v5, v9

    :goto_26
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_29
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_2f
    return v5
.end method

.method public static q(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4

    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 p2, p0, -0x1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p2

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    if-eqz p2, :cond_23

    sget-object p1, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    :cond_23
    if-eqz v0, :cond_29

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    :cond_29
    return-object p0
.end method

.method public static q0(Ld2/m;[B)[B
    .registers 3

    :try_start_0
    iget-object v0, p0, Ld2/l;->c:Ljava/lang/Object;

    check-cast v0, Ll0/b;

    iget-object p0, p0, Ld2/l;->d:Ljava/lang/Object;

    check-cast p0, [B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    invoke-static {v0, p1, p0}, Lt4/d;->r0(Ll0/b;[B[B)[B

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static r(III)V
    .registers 6

    const-string v0, "fromIndex: "

    if-ltz p0, :cond_15

    if-gt p1, p2, :cond_15

    if-gt p0, p1, :cond_9

    return-void

    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v1, " > toIndex: "

    invoke-static {v0, p0, v1, p1}, Lb/b;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_15
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", toIndex: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", size: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static r0(Ll0/b;[B[B)[B
    .registers 12

    const/16 v0, 0x20

    new-array v1, v0, [B

    iget-object v2, p0, Ll0/b;->d:Lm/f;

    iget-object p0, p0, Ll0/b;->c:Lm/q;

    sget-object v3, Lm0/m;->x1:Lm/q;

    invoke-virtual {v3, p0}, Lm/u;->n(Lm/u;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2c

    invoke-static {v2}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object p0

    new-instance v2, Lx0/o;

    iget-object p0, p0, Ll0/b;->c:Lm/q;

    invoke-static {p0}, Lt4/d;->Y(Lm/q;)Lorg/bouncycastle/crypto/v;

    move-result-object p0

    invoke-direct {v2, p0}, Lx0/o;-><init>(Lorg/bouncycastle/crypto/v;)V

    new-instance p0, Le1/n0;

    invoke-direct {p0, p1, p2}, Le1/n0;-><init>([B[B)V

    invoke-virtual {v2, p0}, Lx0/o;->init(Lorg/bouncycastle/crypto/u;)V

    invoke-virtual {v2, v1, v4, v0}, Lx0/o;->generateBytes([BII)I

    return-object v1

    :cond_2c
    sget-object v3, Lm0/m;->y1:Lm/q;

    invoke-virtual {v3, p0}, Lm/u;->n(Lm/u;)Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-static {v2}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object p0

    new-instance v2, Lq0/a;

    iget-object p0, p0, Ll0/b;->c:Lm/q;

    invoke-static {p0}, Lt4/d;->Y(Lm/q;)Lorg/bouncycastle/crypto/v;

    move-result-object p0

    invoke-direct {v2, p0}, Lq0/a;-><init>(Lorg/bouncycastle/crypto/v;)V

    new-instance p0, Le1/n0;

    invoke-direct {p0, p1, p2}, Le1/n0;-><init>([B[B)V

    invoke-virtual {v2, p0}, Lq0/a;->init(Lorg/bouncycastle/crypto/u;)V

    invoke-virtual {v2, v1, v4, v0}, Lq0/a;->generateBytes([BII)I

    return-object v1

    :cond_4f
    sget-object v3, Ld0/r;->h0:Lm/q;

    invoke-virtual {v3, p0}, Lm/u;->n(Lm/u;)Z

    move-result v3

    const-string v5, "HDKF parameter support not added"

    const/4 v6, 0x0

    if-eqz v3, :cond_78

    if-nez v2, :cond_72

    new-instance p0, Lx0/n;

    new-instance v2, Ls0/b0;

    invoke-direct {v2}, Ls0/b0;-><init>()V

    invoke-direct {p0, v2}, Lx0/n;-><init>(Lorg/bouncycastle/crypto/v;)V

    new-instance v2, Le1/l0;

    invoke-direct {v2, p1, v6, p2}, Le1/l0;-><init>([B[B[B)V

    invoke-virtual {p0, v2}, Lx0/n;->init(Lorg/bouncycastle/crypto/u;)V

    invoke-virtual {p0, v1, v4, v0}, Lx0/n;->generateBytes([BII)I

    return-object v1

    :cond_72
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_78
    sget-object v3, Ld0/r;->i0:Lm/q;

    invoke-virtual {v3, p0}, Lm/u;->n(Lm/u;)Z

    move-result v3

    if-eqz v3, :cond_9e

    if-nez v2, :cond_98

    new-instance p0, Lx0/n;

    new-instance v2, Ls0/c0;

    invoke-direct {v2}, Ls0/c0;-><init>()V

    invoke-direct {p0, v2}, Lx0/n;-><init>(Lorg/bouncycastle/crypto/v;)V

    new-instance v2, Le1/l0;

    invoke-direct {v2, p1, v6, p2}, Le1/l0;-><init>([B[B[B)V

    invoke-virtual {p0, v2}, Lx0/n;->init(Lorg/bouncycastle/crypto/u;)V

    invoke-virtual {p0, v1, v4, v0}, Lx0/n;->generateBytes([BII)I

    return-object v1

    :cond_98
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9e
    sget-object v3, Ld0/r;->j0:Lm/q;

    invoke-virtual {v3, p0}, Lm/u;->n(Lm/u;)Z

    move-result v3

    if-eqz v3, :cond_c4

    if-nez v2, :cond_be

    new-instance p0, Lx0/n;

    new-instance v2, Ls0/e0;

    invoke-direct {v2}, Ls0/e0;-><init>()V

    invoke-direct {p0, v2}, Lx0/n;-><init>(Lorg/bouncycastle/crypto/v;)V

    new-instance v2, Le1/l0;

    invoke-direct {v2, p1, v6, p2}, Le1/l0;-><init>([B[B[B)V

    invoke-virtual {p0, v2}, Lx0/n;->init(Lorg/bouncycastle/crypto/u;)V

    invoke-virtual {p0, v1, v4, v0}, Lx0/n;->generateBytes([BII)I

    return-object v1

    :cond_be
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c4
    sget-object v3, Lz/b;->u:Lm/q;

    invoke-virtual {v3, p0}, Lm/u;->n(Lm/u;)Z

    move-result v3

    const-string v5, "key length must be between 0 and 2040 bits"

    const/4 v6, 0x1

    const/16 v7, 0xff

    if-eqz v3, :cond_104

    new-array p0, v4, [B

    if-eqz v2, :cond_db

    invoke-static {v2}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p0

    iget-object p0, p0, Lm/r;->c:[B

    :cond_db
    new-instance v2, Lz0/e;

    const/16 v3, 0x80

    invoke-direct {v2, v3, p0}, Lz0/e;-><init>(I[B)V

    array-length p0, p1

    new-array v3, p0, [B

    invoke-static {p1, v4, v3, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Lm4/d;->e([B)[B

    move-result-object p0

    iput-object p0, v2, Lz0/e;->j:[B

    array-length p0, p0

    if-gt p0, v7, :cond_fe

    iput-boolean v6, v2, Lz0/e;->k:Z

    invoke-virtual {v2}, Lz0/e;->reset()V

    array-length p0, p2

    invoke-virtual {v2, p2, v4, p0}, Lz0/e;->update([BII)V

    invoke-virtual {v2, v1, v4, v0}, Lz0/e;->b([BII)I

    return-object v1

    :cond_fe
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_104
    sget-object v3, Lz/b;->v:Lm/q;

    invoke-virtual {v3, p0}, Lm/u;->n(Lm/u;)Z

    move-result v3

    const/16 v8, 0x100

    if-eqz v3, :cond_13f

    new-array p0, v4, [B

    if-eqz v2, :cond_118

    invoke-static {v2}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p0

    iget-object p0, p0, Lm/r;->c:[B

    :cond_118
    new-instance v2, Lz0/e;

    invoke-direct {v2, v8, p0}, Lz0/e;-><init>(I[B)V

    array-length p0, p1

    new-array v3, p0, [B

    invoke-static {p1, v4, v3, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Lm4/d;->e([B)[B

    move-result-object p0

    iput-object p0, v2, Lz0/e;->j:[B

    array-length p0, p0

    if-gt p0, v7, :cond_139

    iput-boolean v6, v2, Lz0/e;->k:Z

    invoke-virtual {v2}, Lz0/e;->reset()V

    array-length p0, p2

    invoke-virtual {v2, p2, v4, p0}, Lz0/e;->update([BII)V

    invoke-virtual {v2, v1, v4, v0}, Lz0/e;->b([BII)I

    return-object v1

    :cond_139
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13f
    sget-object v2, Lz/b;->l:Lm/q;

    invoke-virtual {v2, p0}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-eqz v2, :cond_158

    new-instance p0, Ls0/g0;

    invoke-direct {p0, v8}, Ls0/g0;-><init>(I)V

    array-length v2, p1

    invoke-virtual {p0, p1, v4, v2}, Ls0/n;->f([BII)V

    array-length p1, p2

    invoke-virtual {p0, p2, v4, p1}, Ls0/n;->f([BII)V

    invoke-virtual {p0, v1, v4, v0}, Ls0/g0;->b([BII)I

    return-object v1

    :cond_158
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unrecognized KDF: "

    invoke-static {p2, p0}, Lb/b;->j(Ljava/lang/String;Lm/q;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static s([I[I[I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lt4/d;->s0([I[I[I)I

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Inverse does not exist."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static s0([I[I[I)I
    .registers 27

    move-object/from16 v0, p0

    array-length v1, v0

    shl-int/lit8 v2, v1, 0x5

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    sub-int/2addr v2, v1

    add-int/lit8 v1, v2, 0x1d

    const/16 v4, 0x1e

    div-int/lit8 v5, v1, 0x1e

    new-array v7, v5, [I

    new-array v8, v5, [I

    new-array v1, v5, [I

    new-array v11, v5, [I

    new-array v10, v5, [I

    const/4 v12, 0x0

    aput v3, v8, v12

    move-object/from16 v6, p1

    invoke-static {v2, v6, v11}, Lt4/d;->I(I[I[I)V

    invoke-static {v2, v0, v10}, Lt4/d;->I(I[I[I)V

    invoke-static {v10, v12, v1, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget v0, v10, v12

    invoke-static {v0}, Lt4/d;->i0(I)I

    move-result v6

    const-wide/32 p0, 0x24db4

    int-to-long v13, v2

    mul-long v13, v13, p0

    const-wide/32 v15, 0x183ab

    add-long/2addr v13, v15

    const/16 v0, 0x10

    ushr-long/2addr v13, v0

    long-to-int v0, v13

    move v9, v12

    move v13, v9

    :goto_42
    if-ge v13, v0, :cond_ac

    aget v14, v1, v12

    aget v15, v11, v12

    const/high16 v16, 0x40000000    # 2.0f

    move/from16 p0, v14

    move v14, v9

    move/from16 v9, p0

    move/from16 p0, v0

    move/from16 v17, v3

    move/from16 v18, v5

    move/from16 p1, v6

    move v0, v12

    move v5, v0

    move v6, v5

    move/from16 v3, v16

    move v12, v3

    :goto_5d
    if-ge v0, v4, :cond_93

    move/from16 v19, v4

    shr-int/lit8 v4, v14, 0x1f

    move/from16 v20, v0

    and-int/lit8 v0, v15, 0x1

    neg-int v0, v0

    xor-int v21, v9, v4

    xor-int v22, v12, v4

    xor-int v23, v5, v4

    and-int v21, v21, v0

    sub-int v15, v15, v21

    and-int v21, v22, v0

    sub-int v6, v6, v21

    and-int v21, v23, v0

    sub-int v3, v3, v21

    not-int v4, v4

    and-int/2addr v0, v4

    xor-int v4, v14, v0

    add-int/lit8 v14, v4, 0x1

    and-int v4, v15, v0

    add-int/2addr v9, v4

    and-int v4, v6, v0

    add-int/2addr v12, v4

    and-int/2addr v0, v3

    add-int/2addr v5, v0

    shr-int/lit8 v15, v15, 0x1

    shr-int/lit8 v6, v6, 0x1

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v20, 0x1

    move/from16 v4, v19

    goto :goto_5d

    :cond_93
    move/from16 v19, v4

    filled-new-array {v12, v5, v6, v3}, [I

    move-result-object v9

    move/from16 v6, p1

    move/from16 v5, v18

    invoke-static/range {v5 .. v10}, Lt4/d;->Q0(II[I[I[I[I)V

    invoke-static {v5, v1, v11, v9}, Lt4/d;->R0(I[I[I[I)V

    add-int/lit8 v13, v13, 0x1e

    move/from16 v0, p0

    move v9, v14

    move/from16 v3, v17

    const/4 v12, 0x0

    goto :goto_42

    :cond_ac
    move/from16 v17, v3

    move/from16 v19, v4

    add-int/lit8 v0, v5, -0x1

    aget v3, v1, v0

    shr-int/lit8 v3, v3, 0x1f

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_b8
    const v8, 0x3fffffff    # 1.9999999f

    if-ge v4, v0, :cond_cb

    aget v9, v1, v4

    xor-int/2addr v9, v3

    sub-int/2addr v9, v3

    add-int/2addr v9, v6

    and-int v6, v9, v8

    aput v6, v1, v4

    shr-int/lit8 v6, v9, 0x1e

    add-int/lit8 v4, v4, 0x1

    goto :goto_b8

    :cond_cb
    aget v4, v1, v0

    xor-int/2addr v4, v3

    sub-int/2addr v4, v3

    add-int/2addr v4, v6

    aput v4, v1, v0

    aget v4, v7, v0

    shr-int/lit8 v4, v4, 0x1f

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_d8
    if-ge v6, v0, :cond_ec

    aget v12, v7, v6

    aget v13, v10, v6

    and-int/2addr v13, v4

    add-int/2addr v12, v13

    xor-int/2addr v12, v3

    sub-int/2addr v12, v3

    add-int/2addr v12, v9

    and-int v9, v12, v8

    aput v9, v7, v6

    shr-int/lit8 v9, v12, 0x1e

    add-int/lit8 v6, v6, 0x1

    goto :goto_d8

    :cond_ec
    aget v6, v7, v0

    aget v12, v10, v0

    and-int/2addr v4, v12

    add-int/2addr v6, v4

    xor-int v4, v6, v3

    sub-int/2addr v4, v3

    add-int/2addr v4, v9

    aput v4, v7, v0

    shr-int/lit8 v3, v4, 0x1f

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_fc
    if-ge v4, v0, :cond_10e

    aget v9, v7, v4

    aget v12, v10, v4

    and-int/2addr v12, v3

    add-int/2addr v9, v12

    add-int/2addr v9, v6

    and-int v6, v9, v8

    aput v6, v7, v4

    shr-int/lit8 v6, v9, 0x1e

    add-int/lit8 v4, v4, 0x1

    goto :goto_fc

    :cond_10e
    aget v4, v7, v0

    aget v8, v10, v0

    and-int/2addr v3, v8

    add-int/2addr v4, v3

    add-int/2addr v4, v6

    aput v4, v7, v0

    move-object/from16 v0, p2

    invoke-static {v2, v7, v0}, Lt4/d;->D(I[I[I)V

    move/from16 v0, v17

    invoke-static {v5, v0, v1}, Lt4/d;->N(II[I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v5, v1, v11}, Lt4/d;->N(II[I)I

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public static t([[S)[[S
    .registers 4

    array-length v0, p0

    new-array v0, v0, [[S

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    aget-object v2, p0, v1

    invoke-static {v2}, Lm4/d;->i([S)[S

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v0
.end method

.method public static t0([I[I[I)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v0

    shl-int/lit8 v3, v2, 0x5

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    aget v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v5

    sub-int/2addr v3, v5

    add-int/lit8 v5, v3, 0x1d

    div-int/lit8 v6, v5, 0x1e

    :goto_14
    const/4 v5, 0x0

    if-ltz v2, :cond_28

    aget v7, v1, v2

    if-eqz v7, :cond_25

    mul-int/lit8 v2, v2, 0x20

    add-int/lit8 v2, v2, 0x20

    invoke-static {v7}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v7

    sub-int/2addr v2, v7

    goto :goto_29

    :cond_25
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    :cond_28
    move v2, v5

    :goto_29
    sub-int v2, v3, v2

    const/4 v7, 0x4

    new-array v10, v7, [I

    new-array v8, v6, [I

    new-array v9, v6, [I

    new-array v12, v6, [I

    new-array v13, v6, [I

    new-array v11, v6, [I

    aput v4, v9, v5

    invoke-static {v3, v1, v13}, Lt4/d;->I(I[I[I)V

    invoke-static {v3, v0, v11}, Lt4/d;->I(I[I[I)V

    invoke-static {v11, v5, v12, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    neg-int v0, v2

    aget v1, v11, v5

    invoke-static {v1}, Lt4/d;->i0(I)I

    move-result v7

    const-wide/32 p0, 0x2e1e2

    int-to-long v14, v3

    mul-long v14, v14, p0

    const/16 v1, 0x2e

    if-ge v3, v1, :cond_58

    const v1, 0x4b4b5

    goto :goto_5b

    :cond_58
    const v1, 0x2c3c4

    :goto_5b
    int-to-long v4, v1

    add-long/2addr v14, v4

    const/16 v1, 0x10

    ushr-long v4, v14, v1

    long-to-int v1, v4

    move v4, v6

    :goto_63
    const/4 v5, 0x0

    invoke-static {v4, v5, v13}, Lt4/d;->O(II[I)Z

    move-result v14

    if-nez v14, :cond_84

    if-lt v2, v1, :cond_6f

    move/from16 v16, v5

    goto :goto_a8

    :cond_6f
    add-int/lit8 v2, v2, 0x1e

    aget v14, v12, v5

    aget v15, v13, v5

    invoke-static {v0, v14, v15, v10}, Lt4/d;->G(III[I)I

    move-result v0

    invoke-static/range {v6 .. v11}, Lt4/d;->Q0(II[I[I[I[I)V

    invoke-static {v4, v12, v13, v10}, Lt4/d;->R0(I[I[I[I)V

    invoke-static {v4, v12, v13}, Lt4/d;->P0(I[I[I)I

    move-result v4

    goto :goto_63

    :cond_84
    add-int/lit8 v0, v4, -0x1

    aget v0, v12, v0

    shr-int/lit8 v0, v0, 0x1f

    add-int/lit8 v1, v6, -0x1

    aget v1, v8, v1

    shr-int/lit8 v1, v1, 0x1f

    if-gez v1, :cond_96

    invoke-static {v6, v8, v11}, Lt4/d;->j(I[I[I)I

    move-result v1

    :cond_96
    if-gez v0, :cond_9f

    invoke-static {v6, v8}, Lt4/d;->z0(I[I)I

    move-result v1

    invoke-static {v4, v12}, Lt4/d;->z0(I[I)I

    :cond_9f
    const/4 v0, 0x1

    invoke-static {v4, v0, v12}, Lt4/d;->O(II[I)Z

    move-result v2

    if-nez v2, :cond_a9

    const/16 v16, 0x0

    :goto_a8
    return v16

    :cond_a9
    if-gez v1, :cond_ae

    invoke-static {v6, v8, v11}, Lt4/d;->j(I[I[I)I

    :cond_ae
    move-object/from16 v1, p2

    invoke-static {v3, v8, v1}, Lt4/d;->D(I[I[I)V

    return v0
.end method

.method public static u([[[S)[[[S
    .registers 7

    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v0, v3, v1

    const-class v0, [S

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    move v2, v1

    :goto_16
    array-length v3, p0

    if-ge v2, v3, :cond_31

    move v3, v1

    :goto_1a
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_2e

    aget-object v4, v0, v2

    aget-object v5, p0, v2

    aget-object v5, v5, v3

    invoke-static {v5}, Lm4/d;->i([S)[S

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_31
    return-object v0
.end method

.method public static u0([I[I[I)V
    .registers 28

    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    const/4 v14, 0x4

    aget v15, p1, v14

    move/from16 v16, v0

    move-wide/from16 v17, v1

    int-to-long v0, v15

    and-long/2addr v0, v3

    aget v2, p0, v16

    move-wide/from16 v19, v3

    int-to-long v3, v2

    and-long v2, v3, v19

    move v4, v5

    move-wide/from16 v21, v6

    mul-long v5, v2, v17

    long-to-int v7, v5

    aput v7, p2, v16

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    mul-long v15, v2, v21

    add-long/2addr v5, v15

    long-to-int v15, v5

    aput v15, p2, v4

    ushr-long/2addr v5, v7

    mul-long v15, v2, v9

    add-long/2addr v5, v15

    long-to-int v15, v5

    aput v15, p2, v8

    ushr-long/2addr v5, v7

    mul-long v15, v2, v12

    add-long/2addr v5, v15

    long-to-int v8, v5

    aput v8, p2, v11

    ushr-long/2addr v5, v7

    mul-long/2addr v2, v0

    add-long/2addr v2, v5

    long-to-int v5, v2

    aput v5, p2, v14

    ushr-long/2addr v2, v7

    long-to-int v2, v2

    const/4 v3, 0x5

    aput v2, p2, v3

    :goto_53
    move v5, v4

    if-ge v5, v3, :cond_b9

    aget v2, p0, v5

    int-to-long v14, v2

    and-long v14, v14, v19

    mul-long v23, v14, v17

    aget v2, p2, v5

    int-to-long v3, v2

    and-long v2, v3, v19

    add-long v2, v23, v2

    long-to-int v4, v2

    aput v4, p2, v5

    ushr-long/2addr v2, v7

    mul-long v23, v14, v21

    add-int/lit8 v4, v5, 0x1

    aget v6, p2, v4

    move v11, v7

    int-to-long v7, v6

    and-long v6, v7, v19

    add-long v23, v23, v6

    add-long v2, v23, v2

    long-to-int v6, v2

    aput v6, p2, v4

    ushr-long/2addr v2, v11

    mul-long v6, v14, v9

    add-int/lit8 v8, v5, 0x2

    move/from16 v16, v11

    aget v11, p2, v8

    move-wide/from16 v23, v0

    int-to-long v0, v11

    and-long v0, v0, v19

    add-long/2addr v6, v0

    add-long/2addr v6, v2

    long-to-int v0, v6

    aput v0, p2, v8

    ushr-long v0, v6, v16

    mul-long v2, v14, v12

    add-int/lit8 v6, v5, 0x3

    aget v7, p2, v6

    int-to-long v7, v7

    and-long v7, v7, v19

    add-long/2addr v2, v7

    add-long/2addr v2, v0

    long-to-int v0, v2

    aput v0, p2, v6

    ushr-long v0, v2, v16

    mul-long v14, v14, v23

    add-int/lit8 v2, v5, 0x4

    aget v3, p2, v2

    int-to-long v6, v3

    and-long v6, v6, v19

    add-long/2addr v14, v6

    add-long/2addr v14, v0

    long-to-int v0, v14

    aput v0, p2, v2

    ushr-long v0, v14, v16

    add-int/lit8 v5, v5, 0x5

    long-to-int v0, v0

    aput v0, p2, v5

    move/from16 v7, v16

    move-wide/from16 v0, v23

    const/4 v3, 0x5

    goto :goto_53

    :cond_b9
    return-void
.end method

.method public static v(I[I[I)V
    .registers 5

    const/4 v0, 0x0

    aget v0, p1, v0

    aput v0, p2, p0

    add-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    aget v1, p1, v1

    aput v1, p2, v0

    add-int/lit8 v0, p0, 0x2

    const/4 v1, 0x2

    aget v1, p1, v1

    aput v1, p2, v0

    add-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    aget v1, p1, v1

    aput v1, p2, v0

    const/4 v0, 0x4

    add-int/2addr p0, v0

    aget p1, p1, v0

    aput p1, p2, p0

    return-void
.end method

.method public static v0([I[I[I)V
    .registers 33

    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    const/4 v14, 0x4

    aget v15, p1, v14

    move/from16 v16, v0

    move-wide/from16 v17, v1

    int-to-long v0, v15

    and-long/2addr v0, v3

    const/4 v2, 0x5

    aget v15, p1, v2

    move-wide/from16 v19, v3

    move v4, v2

    int-to-long v2, v15

    and-long v2, v2, v19

    const/4 v15, 0x6

    move/from16 v21, v4

    aget v4, p1, v15

    move/from16 v22, v5

    move-wide/from16 v23, v6

    int-to-long v5, v4

    and-long v4, v5, v19

    aget v6, p0, v16

    int-to-long v6, v6

    and-long v6, v6, v19

    move/from16 v25, v8

    move-wide/from16 v26, v9

    mul-long v8, v6, v17

    long-to-int v10, v8

    aput v10, p2, v16

    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    mul-long v28, v6, v23

    add-long v8, v28, v8

    move/from16 p1, v10

    long-to-int v10, v8

    aput v10, p2, v22

    ushr-long v8, v8, p1

    mul-long v28, v6, v26

    add-long v8, v28, v8

    long-to-int v10, v8

    aput v10, p2, v25

    ushr-long v8, v8, p1

    mul-long v28, v6, v12

    add-long v8, v28, v8

    long-to-int v10, v8

    aput v10, p2, v11

    ushr-long v8, v8, p1

    mul-long v10, v6, v0

    add-long/2addr v10, v8

    long-to-int v8, v10

    aput v8, p2, v14

    ushr-long v8, v10, p1

    mul-long v10, v6, v2

    add-long/2addr v10, v8

    long-to-int v8, v10

    aput v8, p2, v21

    ushr-long v8, v10, p1

    mul-long/2addr v6, v4

    add-long/2addr v6, v8

    long-to-int v8, v6

    aput v8, p2, v15

    ushr-long v6, v6, p1

    long-to-int v6, v6

    const/4 v7, 0x7

    aput v6, p2, v7

    move/from16 v6, v22

    :goto_82
    if-ge v6, v7, :cond_102

    aget v8, p0, v6

    int-to-long v8, v8

    and-long v8, v8, v19

    mul-long v10, v8, v17

    aget v14, p2, v6

    int-to-long v14, v14

    and-long v14, v14, v19

    add-long/2addr v10, v14

    long-to-int v14, v10

    aput v14, p2, v6

    ushr-long v10, v10, p1

    mul-long v14, v8, v23

    add-int/lit8 v16, v6, 0x1

    aget v7, p2, v16

    move-wide/from16 v28, v0

    int-to-long v0, v7

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long/2addr v14, v10

    long-to-int v0, v14

    aput v0, p2, v16

    ushr-long v0, v14, p1

    mul-long v10, v8, v26

    add-int/lit8 v7, v6, 0x2

    aget v14, p2, v7

    int-to-long v14, v14

    and-long v14, v14, v19

    add-long/2addr v10, v14

    add-long/2addr v10, v0

    long-to-int v0, v10

    aput v0, p2, v7

    ushr-long v0, v10, p1

    mul-long v10, v8, v12

    add-int/lit8 v7, v6, 0x3

    aget v14, p2, v7

    int-to-long v14, v14

    and-long v14, v14, v19

    add-long/2addr v10, v14

    add-long/2addr v10, v0

    long-to-int v0, v10

    aput v0, p2, v7

    ushr-long v0, v10, p1

    mul-long v10, v8, v28

    add-int/lit8 v7, v6, 0x4

    aget v14, p2, v7

    int-to-long v14, v14

    and-long v14, v14, v19

    add-long/2addr v10, v14

    add-long/2addr v10, v0

    long-to-int v0, v10

    aput v0, p2, v7

    ushr-long v0, v10, p1

    mul-long v10, v8, v2

    add-int/lit8 v7, v6, 0x5

    aget v14, p2, v7

    int-to-long v14, v14

    and-long v14, v14, v19

    add-long/2addr v10, v14

    add-long/2addr v10, v0

    long-to-int v0, v10

    aput v0, p2, v7

    ushr-long v0, v10, p1

    mul-long/2addr v8, v4

    add-int/lit8 v7, v6, 0x6

    aget v10, p2, v7

    int-to-long v10, v10

    and-long v10, v10, v19

    add-long/2addr v8, v10

    add-long/2addr v8, v0

    long-to-int v0, v8

    aput v0, p2, v7

    ushr-long v0, v8, p1

    add-int/lit8 v6, v6, 0x7

    long-to-int v0, v0

    aput v0, p2, v6

    move/from16 v6, v16

    move-wide/from16 v0, v28

    const/4 v7, 0x7

    goto :goto_82

    :cond_102
    return-void
.end method

.method public static w([I[I)V
    .registers 4

    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x3

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x4

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x5

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x6

    aget p0, p0, v0

    aput p0, p1, v0

    return-void
.end method

.method public static w0([I[I[I)I
    .registers 30

    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/4 v7, 0x2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/4 v9, 0x3

    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x4

    aget v11, p1, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    const-wide/16 v13, 0x0

    :goto_20
    const/4 v15, 0x5

    if-ge v0, v15, :cond_a4

    aget v15, p0, v0

    move-wide/from16 v16, v3

    int-to-long v3, v15

    and-long v3, v3, v16

    mul-long v18, v3, v1

    aget v15, p2, v0

    move-wide/from16 v20, v1

    move v2, v0

    int-to-long v0, v15

    and-long v0, v0, v16

    add-long v0, v18, v0

    long-to-int v15, v0

    aput v15, p2, v2

    const/16 v15, 0x20

    ushr-long/2addr v0, v15

    mul-long v18, v3, v5

    add-int/lit8 v22, v2, 0x1

    move/from16 p1, v15

    aget v15, p2, v22

    move-wide/from16 v23, v0

    int-to-long v0, v15

    and-long v0, v0, v16

    add-long v18, v18, v0

    add-long v0, v18, v23

    long-to-int v15, v0

    aput v15, p2, v22

    ushr-long v0, v0, p1

    mul-long v18, v3, v7

    add-int/lit8 v15, v2, 0x2

    move-wide/from16 v23, v0

    aget v0, p2, v15

    int-to-long v0, v0

    and-long v0, v0, v16

    add-long v18, v18, v0

    add-long v0, v18, v23

    move/from16 v18, v2

    long-to-int v2, v0

    aput v2, p2, v15

    ushr-long v0, v0, p1

    mul-long v23, v3, v9

    add-int/lit8 v2, v18, 0x3

    aget v15, p2, v2

    move-wide/from16 v25, v0

    int-to-long v0, v15

    and-long v0, v0, v16

    add-long v23, v23, v0

    add-long v0, v23, v25

    long-to-int v15, v0

    aput v15, p2, v2

    ushr-long v0, v0, p1

    mul-long/2addr v3, v11

    add-int/lit8 v2, v18, 0x4

    aget v15, p2, v2

    move-wide/from16 v23, v0

    int-to-long v0, v15

    and-long v0, v0, v16

    add-long/2addr v3, v0

    add-long v3, v3, v23

    long-to-int v0, v3

    aput v0, p2, v2

    ushr-long v0, v3, p1

    add-int/lit8 v2, v18, 0x5

    aget v3, p2, v2

    int-to-long v3, v3

    and-long v3, v3, v16

    add-long/2addr v0, v3

    add-long/2addr v0, v13

    long-to-int v3, v0

    aput v3, p2, v2

    ushr-long v13, v0, p1

    move-wide/from16 v3, v16

    move-wide/from16 v1, v20

    move/from16 v0, v22

    goto/16 :goto_20

    :cond_a4
    long-to-int v0, v13

    return v0
.end method

.method public static x([J[J)V
    .registers 5

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    return-void
.end method

.method public static x0([I[I[I)I
    .registers 35

    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/4 v7, 0x2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/4 v9, 0x3

    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x4

    aget v11, p1, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/4 v13, 0x5

    aget v13, p1, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    const/4 v15, 0x6

    aget v15, p1, v15

    move-wide/from16 v17, v1

    int-to-long v0, v15

    and-long/2addr v0, v3

    const-wide/16 v19, 0x0

    move-wide/from16 v30, v19

    move-wide/from16 v19, v3

    move-wide/from16 v3, v30

    const/4 v2, 0x0

    :goto_33
    const/4 v15, 0x7

    if-ge v2, v15, :cond_e0

    aget v15, p0, v2

    move-wide/from16 v21, v0

    int-to-long v0, v15

    and-long v0, v0, v19

    mul-long v15, v0, v17

    move-wide/from16 v23, v0

    aget v0, p2, v2

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v0, v15

    long-to-int v15, v0

    aput v15, p2, v2

    const/16 v15, 0x20

    ushr-long/2addr v0, v15

    mul-long v25, v23, v5

    add-int/lit8 v16, v2, 0x1

    move/from16 p1, v15

    aget v15, p2, v16

    move-wide/from16 v27, v0

    int-to-long v0, v15

    and-long v0, v0, v19

    add-long v25, v25, v0

    add-long v0, v25, v27

    long-to-int v15, v0

    aput v15, p2, v16

    ushr-long v0, v0, p1

    mul-long v25, v23, v7

    add-int/lit8 v15, v2, 0x2

    move-wide/from16 v27, v0

    aget v0, p2, v15

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long v25, v25, v0

    add-long v0, v25, v27

    move/from16 v25, v2

    long-to-int v2, v0

    aput v2, p2, v15

    ushr-long v0, v0, p1

    mul-long v26, v23, v9

    add-int/lit8 v2, v25, 0x3

    aget v15, p2, v2

    move-wide/from16 v28, v0

    int-to-long v0, v15

    and-long v0, v0, v19

    add-long v26, v26, v0

    add-long v0, v26, v28

    long-to-int v15, v0

    aput v15, p2, v2

    ushr-long v0, v0, p1

    mul-long v26, v23, v11

    add-int/lit8 v2, v25, 0x4

    aget v15, p2, v2

    move-wide/from16 v28, v0

    int-to-long v0, v15

    and-long v0, v0, v19

    add-long v26, v26, v0

    add-long v0, v26, v28

    long-to-int v15, v0

    aput v15, p2, v2

    ushr-long v0, v0, p1

    mul-long v26, v23, v13

    add-int/lit8 v2, v25, 0x5

    aget v15, p2, v2

    move-wide/from16 v28, v0

    int-to-long v0, v15

    and-long v0, v0, v19

    add-long v26, v26, v0

    add-long v0, v26, v28

    long-to-int v15, v0

    aput v15, p2, v2

    ushr-long v0, v0, p1

    mul-long v23, v23, v21

    add-int/lit8 v2, v25, 0x6

    aget v15, p2, v2

    move-wide/from16 v26, v0

    int-to-long v0, v15

    and-long v0, v0, v19

    add-long v23, v23, v0

    add-long v0, v23, v26

    long-to-int v15, v0

    aput v15, p2, v2

    ushr-long v0, v0, p1

    add-int/lit8 v2, v25, 0x7

    aget v15, p2, v2

    move-wide/from16 v23, v0

    int-to-long v0, v15

    and-long v0, v0, v19

    add-long v0, v23, v0

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p2, v2

    ushr-long v3, v0, p1

    move/from16 v2, v16

    move-wide/from16 v0, v21

    goto/16 :goto_33

    :cond_e0
    long-to-int v0, v3

    return v0
.end method

.method public static y(I[I[I)V
    .registers 5

    const/4 v0, 0x0

    aget v0, p1, v0

    aput v0, p2, p0

    add-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    aget v1, p1, v1

    aput v1, p2, v0

    add-int/lit8 v0, p0, 0x2

    const/4 v1, 0x2

    aget v1, p1, v1

    aput v1, p2, v0

    add-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    aget v1, p1, v1

    aput v1, p2, v0

    add-int/lit8 v0, p0, 0x4

    const/4 v1, 0x4

    aget v1, p1, v1

    aput v1, p2, v0

    add-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    aget v1, p1, v1

    aput v1, p2, v0

    const/4 v0, 0x6

    add-int/2addr p0, v0

    aget p1, p1, v0

    aput p1, p2, p0

    return-void
.end method

.method public static y0([J[J)V
    .registers 31

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    aget-wide v6, p1, v0

    aget-wide v8, p1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->reverse(J)J

    move-result-wide v10

    invoke-static {v4, v5}, Ljava/lang/Long;->reverse(J)J

    move-result-wide v12

    invoke-static {v6, v7}, Ljava/lang/Long;->reverse(J)J

    move-result-wide v14

    move/from16 v16, v3

    move-wide/from16 v17, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->reverse(J)J

    move-result-wide v3

    invoke-static {v10, v11, v14, v15}, Lt4/d;->h0(JJ)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->reverse(J)J

    move-result-wide v19

    invoke-static {v1, v2, v6, v7}, Lt4/d;->h0(JJ)J

    move-result-wide v21

    shl-long v21, v21, v16

    invoke-static {v12, v13, v3, v4}, Lt4/d;->h0(JJ)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->reverse(J)J

    move-result-wide v23

    move v5, v0

    move-wide/from16 v25, v1

    move-wide/from16 v0, v17

    invoke-static {v0, v1, v8, v9}, Lt4/d;->h0(JJ)J

    move-result-wide v17

    shl-long v27, v17, v16

    xor-long/2addr v10, v12

    xor-long v2, v14, v3

    invoke-static {v10, v11, v2, v3}, Lt4/d;->h0(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->reverse(J)J

    move-result-wide v2

    xor-long v0, v25, v0

    xor-long/2addr v6, v8

    invoke-static {v0, v1, v6, v7}, Lt4/d;->h0(JJ)J

    move-result-wide v0

    shl-long v0, v0, v16

    xor-long v6, v21, v19

    xor-long v6, v6, v23

    xor-long/2addr v2, v6

    xor-long v6, v23, v21

    xor-long v6, v6, v27

    xor-long/2addr v0, v6

    ushr-long v6, v27, v16

    xor-long v6, v27, v6

    const/4 v4, 0x2

    ushr-long v8, v27, v4

    xor-long/2addr v6, v8

    const/4 v8, 0x7

    ushr-long v9, v27, v8

    xor-long/2addr v6, v9

    xor-long/2addr v2, v6

    const/16 v6, 0x3f

    shl-long v9, v17, v6

    const/16 v7, 0x3a

    shl-long v11, v17, v7

    xor-long/2addr v9, v11

    xor-long/2addr v0, v9

    ushr-long v9, v0, v16

    xor-long/2addr v9, v0

    ushr-long v11, v0, v4

    xor-long/2addr v9, v11

    ushr-long v7, v0, v8

    xor-long/2addr v7, v9

    xor-long v7, v19, v7

    shl-long v9, v0, v6

    const/16 v4, 0x3e

    shl-long v11, v0, v4

    xor-long/2addr v9, v11

    const/16 v4, 0x39

    shl-long/2addr v0, v4

    xor-long/2addr v0, v9

    xor-long/2addr v0, v2

    aput-wide v7, p0, v5

    aput-wide v0, p0, v16

    return-void
.end method

.method public static z(I[J[J)V
    .registers 6

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    aput-wide v0, p2, p0

    add-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    aget-wide v1, p1, v1

    aput-wide v1, p2, v0

    add-int/lit8 v0, p0, 0x2

    const/4 v1, 0x2

    aget-wide v1, p1, v1

    aput-wide v1, p2, v0

    add-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    aget-wide v1, p1, v1

    aput-wide v1, p2, v0

    const/4 v0, 0x4

    add-int/2addr p0, v0

    aget-wide v0, p1, v0

    aput-wide v0, p2, p0

    return-void
.end method

.method public static z0(I[I)I
    .registers 5

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v0, p0, :cond_14

    aget v2, p1, v0

    sub-int/2addr v1, v2

    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr v2, v1

    aput v2, p1, v0

    shr-int/lit8 v1, v1, 0x1e

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_14
    aget v0, p1, p0

    sub-int/2addr v1, v0

    aput v1, p1, p0

    shr-int/lit8 p0, v1, 0x1e

    return p0
.end method


# virtual methods
.method public H0(Ljava/lang/String;Lm/q;)Lm/f;
    .registers 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_57

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_57

    :try_start_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x2

    new-array v0, p0, [B

    :goto_19
    if-eq v2, p0, :cond_3a

    mul-int/lit8 v1, v2, 0x2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v3}, Lq4/k;->x(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    invoke-static {v1}, Lq4/k;->x(C)I

    move-result v1

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_3a
    invoke-static {v0}, Lm/u;->o([B)Lm/u;

    move-result-object p0
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_3e} :catch_3f

    return-object p0

    :catch_3f
    new-instance p0, Lm/t;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "can\'t recode value for oid "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lm/q;->u()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lm/t;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_69

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_69

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_69
    invoke-virtual {p0, p1, p2}, Lt4/d;->K(Ljava/lang/String;Lm/q;)Lm/f;

    move-result-object p0

    return-object p0
.end method

.method public abstract K(Ljava/lang/String;Lm/q;)Lm/f;
.end method

.method public c(Lj0/c;Lj0/c;)Z
    .registers 10

    iget-object p0, p1, Lj0/c;->x:[Lj0/b;

    array-length p0, p0

    iget-object v0, p2, Lj0/c;->x:[Lj0/b;

    array-length v0, v0

    const/4 v1, 0x0

    if-eq p0, v0, :cond_a

    goto :goto_61

    :cond_a
    invoke-virtual {p1}, Lj0/c;->j()[Lj0/b;

    move-result-object p0

    invoke-virtual {p2}, Lj0/c;->j()[Lj0/b;

    move-result-object p1

    aget-object p2, p0, v1

    invoke-virtual {p2}, Lj0/b;->h()Lj0/a;

    move-result-object p2

    aget-object v0, p1, v1

    invoke-virtual {v0}, Lj0/b;->h()Lj0/a;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz p2, :cond_2d

    if-eqz v0, :cond_2d

    iget-object p2, p2, Lj0/a;->c:Lm/q;

    iget-object v0, v0, Lj0/a;->c:Lm/q;

    invoke-virtual {p2, v0}, Lm/u;->n(Lm/u;)Z

    move-result p2

    xor-int/2addr p2, v2

    goto :goto_2e

    :cond_2d
    move p2, v1

    :goto_2e
    move v0, v1

    :goto_2f
    array-length v3, p0

    if-eq v0, v3, :cond_62

    aget-object v3, p0, v0

    const/4 v4, 0x0

    if-eqz p2, :cond_4b

    array-length v5, p1

    sub-int/2addr v5, v2

    :goto_39
    if-ltz v5, :cond_61

    aget-object v6, p1, v5

    if-eqz v6, :cond_48

    invoke-static {v3, v6}, Lq4/k;->F0(Lj0/b;Lj0/b;)Z

    move-result v6

    if-eqz v6, :cond_48

    aput-object v4, p1, v5

    goto :goto_5b

    :cond_48
    add-int/lit8 v5, v5, -0x1

    goto :goto_39

    :cond_4b
    move v5, v1

    :goto_4c
    array-length v6, p1

    if-eq v5, v6, :cond_61

    aget-object v6, p1, v5

    if-eqz v6, :cond_5e

    invoke-static {v3, v6}, Lq4/k;->F0(Lj0/b;Lj0/b;)Z

    move-result v6

    if-eqz v6, :cond_5e

    aput-object v4, p1, v5

    :goto_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_5e
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    :cond_61
    :goto_61
    return v1

    :cond_62
    return v2
.end method
