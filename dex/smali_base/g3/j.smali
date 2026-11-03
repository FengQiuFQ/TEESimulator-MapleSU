.class public final Lg3/j;
.super Lg3/h;


# static fields
.field public static final F1:Lg3/i;

.field public static final G1:[Lg3/i;


# instance fields
.field public final A1:Ljava/util/WeakHashMap;

.field public final B1:I

.field public final C1:Lorg/bouncycastle/crypto/v;

.field public D1:I

.field public E1:Lg3/k;

.field public final d:[B

.field public final q:Lg3/m;

.field public final x:Lg3/f;

.field public final y:I

.field public final z1:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lg3/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg3/i;-><init>(I)V

    sput-object v0, Lg3/j;->F1:Lg3/i;

    const/16 v2, 0x81

    new-array v2, v2, [Lg3/i;

    sput-object v2, Lg3/j;->G1:[Lg3/i;

    aput-object v0, v2, v1

    const/4 v0, 0x2

    :goto_11
    sget-object v1, Lg3/j;->G1:[Lg3/i;

    array-length v2, v1

    if-ge v0, v2, :cond_20

    new-instance v2, Lg3/i;

    invoke-direct {v2, v0}, Lg3/i;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_20
    return-void
.end method

.method public constructor <init>(Lg3/m;Lg3/f;I[BI[B)V
    .registers 8

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Le1/b;-><init>(Z)V

    iput-object p1, p0, Lg3/j;->q:Lg3/m;

    iput-object p2, p0, Lg3/j;->x:Lg3/f;

    iput p3, p0, Lg3/j;->D1:I

    invoke-static {p4}, Lm4/d;->e([B)[B

    move-result-object p2

    iput-object p2, p0, Lg3/j;->d:[B

    iput p5, p0, Lg3/j;->y:I

    invoke-static {p6}, Lm4/d;->e([B)[B

    move-result-object p2

    iput-object p2, p0, Lg3/j;->z1:[B

    iget p2, p1, Lg3/m;->c:I

    add-int/2addr p2, v0

    shl-int p2, v0, p2

    iput p2, p0, Lg3/j;->B1:I

    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lg3/j;->A1:Ljava/util/WeakHashMap;

    iget-object p2, p1, Lg3/m;->d:Lm/q;

    iget p1, p1, Lg3/m;->b:I

    invoke-static {p1, p2}, Lq4/k;->G(ILm/q;)Lorg/bouncycastle/crypto/v;

    move-result-object p1

    iput-object p1, p0, Lg3/j;->C1:Lorg/bouncycastle/crypto/v;

    return-void
.end method

.method public static e(Ljava/lang/Object;)Lg3/j;
    .registers 9

    instance-of v0, p0, Lg3/j;

    if-eqz v0, :cond_7

    check-cast p0, Lg3/j;

    return-object p0

    :cond_7
    instance-of v0, p0, Ljava/io/DataInputStream;

    if-eqz v0, :cond_83

    check-cast p0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-nez v0, :cond_7b

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    sget-object v1, Lg3/m;->e:Lg3/e;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lg3/m;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    sget-object v1, Lg3/f;->g:Lg3/e;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lg3/f;

    const/16 v0, 0x10

    new-array v5, v0, [B

    invoke-virtual {p0, v5}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_73

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    if-gt v0, v1, :cond_5b

    new-array v7, v0, [B

    invoke-virtual {p0, v7}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v1, Lg3/j;

    invoke-direct/range {v1 .. v7}, Lg3/j;-><init>(Lg3/m;Lg3/f;I[BI[B)V

    return-object v1

    :cond_5b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "secret length exceeded "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "secret length less than zero"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "expected version 0 lms private key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_83
    instance-of v0, p0, [B

    if-eqz v0, :cond_a8

    const/4 v1, 0x0

    :try_start_88
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    check-cast p0, [B

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_94
    .catchall {:try_start_88 .. :try_end_94} :catchall_a0

    :try_start_94
    invoke-static {v2}, Lg3/j;->e(Ljava/lang/Object;)Lg3/j;

    move-result-object p0
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_9c

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_9c
    move-exception v0

    move-object p0, v0

    move-object v1, v2

    goto :goto_a2

    :catchall_a0
    move-exception v0

    move-object p0, v0

    :goto_a2
    if-eqz v1, :cond_a7

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_a7
    throw p0

    :cond_a8
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_b7

    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0}, Lq4/k;->G0(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lg3/j;->e(Ljava/lang/Object;)Lg3/j;

    move-result-object p0

    return-object p0

    :cond_b7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot parse "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(I)[B
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lg3/j;->q:Lg3/m;

    iget v2, v2, Lg3/m;->c:I

    const/4 v3, 0x1

    shl-int v2, v3, v2

    iget-object v4, v0, Lg3/j;->d:[B

    const/4 v5, 0x0

    iget-object v6, v0, Lg3/j;->C1:Lorg/bouncycastle/crypto/v;

    if-lt v1, v2, :cond_121

    invoke-static {v4}, Lm4/d;->e([B)[B

    move-result-object v7

    array-length v8, v7

    invoke-interface {v6, v7, v5, v8}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-static {v1, v6}, Lq4/k;->a1(ILorg/bouncycastle/crypto/v;)V

    const v7, 0xffff82

    int-to-byte v7, v7

    invoke-interface {v6, v7}, Lorg/bouncycastle/crypto/v;->update(B)V

    const/16 v7, -0x7d7e

    int-to-byte v7, v7

    invoke-interface {v6, v7}, Lorg/bouncycastle/crypto/v;->update(B)V

    invoke-static {v4}, Lm4/d;->e([B)[B

    move-result-object v4

    sub-int/2addr v1, v2

    iget-object v2, v0, Lg3/j;->z1:[B

    invoke-static {v2}, Lm4/d;->e([B)[B

    move-result-object v2

    iget-object v0, v0, Lg3/j;->x:Lg3/f;

    invoke-static {v0}, Lq4/k;->a0(Lg3/f;)Lorg/bouncycastle/crypto/v;

    move-result-object v7

    iget-object v8, v0, Lg3/f;->f:Lm/q;

    iget v9, v0, Lg3/f;->b:I

    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_44
    invoke-virtual {v10, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_116

    ushr-int/lit8 v11, v1, 0x18

    int-to-byte v11, v11

    invoke-virtual {v10, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v12, v1, 0x10

    int-to-byte v12, v12

    invoke-virtual {v10, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v13, v1, 0x8

    int-to-byte v13, v13

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v14, v1

    invoke-virtual {v10, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v15, 0x80

    int-to-byte v15, v15

    invoke-virtual {v10, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const v15, 0x8080

    int-to-byte v15, v15

    invoke-virtual {v10, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_6a
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v15

    move/from16 v16, v3

    const/16 v3, 0x16

    if-ge v15, v3, :cond_7a

    invoke-virtual {v10, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move/from16 v3, v16

    goto :goto_6a

    :cond_7a
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    array-length v15, v10

    invoke-interface {v7, v10, v5, v15}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-static {v9, v8}, Lq4/k;->G(ILm/q;)Lorg/bouncycastle/crypto/v;

    move-result-object v10

    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_8b
    invoke-virtual {v15, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_10b

    invoke-virtual {v15, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v15, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v15, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v15, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-interface {v10}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v11

    const/16 v12, 0x17

    add-int/2addr v11, v12

    :goto_a1
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v13

    if-ge v13, v11, :cond_ab

    invoke-virtual {v15, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_a1

    :cond_ab
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    new-instance v13, Lg3/n;

    invoke-static {v9, v8}, Lq4/k;->G(ILm/q;)Lorg/bouncycastle/crypto/v;

    move-result-object v8

    invoke-direct {v13, v4, v2, v8}, Lg3/n;-><init>([B[BLorg/bouncycastle/crypto/v;)V

    iput v1, v13, Lg3/n;->i:I

    iput v5, v13, Lg3/n;->j:I

    iget v1, v0, Lg3/f;->d:I

    iget v0, v0, Lg3/f;->c:I

    shl-int v0, v16, v0

    add-int/lit8 v0, v0, -0x1

    move v2, v5

    :goto_c5
    if-ge v2, v1, :cond_f5

    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_ce

    move/from16 v4, v16

    goto :goto_cf

    :cond_ce
    move v4, v5

    :goto_cf
    invoke-virtual {v13, v12, v4, v11}, Lg3/n;->a(IZ[B)V

    int-to-short v4, v2

    ushr-int/lit8 v8, v4, 0x8

    int-to-byte v8, v8

    const/16 v14, 0x14

    aput-byte v8, v11, v14

    const/16 v8, 0x15

    int-to-byte v4, v4

    aput-byte v4, v11, v8

    move v4, v5

    :goto_e0
    if-ge v4, v0, :cond_ef

    int-to-byte v8, v4

    aput-byte v8, v11, v3

    array-length v8, v11

    invoke-interface {v10, v11, v5, v8}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v10, v11, v12}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_e0

    :cond_ef
    invoke-interface {v7, v11, v12, v9}, Lorg/bouncycastle/crypto/v;->update([BII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c5

    :cond_f5
    invoke-interface {v7}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v0

    new-array v1, v0, [B

    invoke-interface {v7, v1, v5}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    invoke-interface {v6, v1, v5, v0}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v6}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-interface {v6, v0, v5}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    return-object v0

    :catch_10b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_116
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_121
    move/from16 v16, v3

    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {v0, v2}, Lg3/j;->b(I)[B

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lg3/j;->b(I)[B

    move-result-object v0

    invoke-static {v4}, Lm4/d;->e([B)[B

    move-result-object v2

    array-length v4, v2

    invoke-interface {v6, v2, v5, v4}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-static {v1, v6}, Lq4/k;->a1(ILorg/bouncycastle/crypto/v;)V

    const v1, 0xffff83

    int-to-byte v1, v1

    invoke-interface {v6, v1}, Lorg/bouncycastle/crypto/v;->update(B)V

    const/16 v1, -0x7c7d

    int-to-byte v1, v1

    invoke-interface {v6, v1}, Lorg/bouncycastle/crypto/v;->update(B)V

    array-length v1, v3

    invoke-interface {v6, v3, v5, v1}, Lorg/bouncycastle/crypto/v;->update([BII)V

    array-length v1, v0

    invoke-interface {v6, v0, v5, v1}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v6}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-interface {v6, v0, v5}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    return-object v0
.end method

.method public final b(I)[B
    .registers 3

    iget v0, p0, Lg3/j;->B1:I

    if-ge p1, v0, :cond_18

    const/16 v0, 0x81

    if-ge p1, v0, :cond_d

    sget-object v0, Lg3/j;->G1:[Lg3/i;

    aget-object p1, v0, p1

    goto :goto_13

    :cond_d
    new-instance v0, Lg3/i;

    invoke-direct {v0, p1}, Lg3/i;-><init>(I)V

    move-object p1, v0

    :goto_13
    invoke-virtual {p0, p1}, Lg3/j;->c(Lg3/i;)[B

    move-result-object p0

    return-object p0

    :cond_18
    invoke-virtual {p0, p1}, Lg3/j;->a(I)[B

    move-result-object p0

    return-object p0
.end method

.method public final c(Lg3/i;)[B
    .registers 4

    iget-object v0, p0, Lg3/j;->A1:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lg3/j;->A1:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_11

    monitor-exit v0

    return-object v1

    :catchall_f
    move-exception p0

    goto :goto_1e

    :cond_11
    iget v1, p1, Lg3/i;->a:I

    invoke-virtual {p0, v1}, Lg3/j;->a(I)[B

    move-result-object v1

    iget-object p0, p0, Lg3/j;->A1:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_f

    throw p0
.end method

.method public final declared-synchronized d()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lg3/j;->D1:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_57

    const-class v2, Lg3/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_57

    :cond_10
    check-cast p1, Lg3/j;

    iget-object v2, p1, Lg3/j;->x:Lg3/f;

    iget-object v3, p1, Lg3/j;->q:Lg3/m;

    iget v4, p0, Lg3/j;->D1:I

    iget v5, p1, Lg3/j;->D1:I

    if-eq v4, v5, :cond_1d

    return v1

    :cond_1d
    iget v4, p0, Lg3/j;->y:I

    iget v5, p1, Lg3/j;->y:I

    if-eq v4, v5, :cond_24

    return v1

    :cond_24
    iget-object v4, p0, Lg3/j;->d:[B

    iget-object v5, p1, Lg3/j;->d:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_2f

    return v1

    :cond_2f
    iget-object v4, p0, Lg3/j;->q:Lg3/m;

    if-eqz v4, :cond_3a

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto :goto_3c

    :cond_3a
    if-eqz v3, :cond_3d

    :goto_3c
    return v1

    :cond_3d
    iget-object v3, p0, Lg3/j;->x:Lg3/f;

    if-eqz v3, :cond_48

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    goto :goto_4a

    :cond_48
    if-eqz v2, :cond_4b

    :goto_4a
    return v1

    :cond_4b
    iget-object p0, p0, Lg3/j;->z1:[B

    iget-object p1, p1, Lg3/j;->z1:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_56

    return v1

    :cond_56
    return v0

    :cond_57
    :goto_57
    return v1
.end method

.method public final f()Lg3/k;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lg3/j;->E1:Lg3/k;

    if-nez v0, :cond_1b

    new-instance v0, Lg3/k;

    iget-object v1, p0, Lg3/j;->q:Lg3/m;

    iget-object v2, p0, Lg3/j;->x:Lg3/f;

    sget-object v3, Lg3/j;->F1:Lg3/i;

    invoke-virtual {p0, v3}, Lg3/j;->c(Lg3/i;)[B

    move-result-object v3

    iget-object v4, p0, Lg3/j;->d:[B

    invoke-direct {v0, v1, v2, v3, v4}, Lg3/k;-><init>(Lg3/m;Lg3/f;[B[B)V

    iput-object v0, p0, Lg3/j;->E1:Lg3/k;

    goto :goto_1b

    :catchall_19
    move-exception v0

    goto :goto_1f

    :cond_1b
    :goto_1b
    iget-object v0, p0, Lg3/j;->E1:Lg3/k;

    monitor-exit p0

    return-object v0

    :goto_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_19

    throw v0
.end method

.method public final getEncoded()[B
    .registers 3

    new-instance v0, Lg3/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg3/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lg3/a;->d(I)V

    iget-object v1, p0, Lg3/j;->q:Lg3/m;

    iget v1, v1, Lg3/m;->a:I

    invoke-virtual {v0, v1}, Lg3/a;->d(I)V

    iget-object v1, p0, Lg3/j;->x:Lg3/f;

    iget v1, v1, Lg3/f;->a:I

    invoke-virtual {v0, v1}, Lg3/a;->d(I)V

    iget-object v1, p0, Lg3/j;->d:[B

    invoke-virtual {v0, v1}, Lg3/a;->b([B)V

    iget v1, p0, Lg3/j;->D1:I

    invoke-virtual {v0, v1}, Lg3/a;->d(I)V

    iget v1, p0, Lg3/j;->y:I

    invoke-virtual {v0, v1}, Lg3/a;->d(I)V

    iget-object p0, p0, Lg3/j;->z1:[B

    array-length v1, p0

    invoke-virtual {v0, v1}, Lg3/a;->d(I)V

    invoke-virtual {v0, p0}, Lg3/a;->b([B)V

    iget-object p0, v0, Lg3/a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .registers 4

    iget v0, p0, Lg3/j;->D1:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg3/j;->d:[B

    invoke-static {v1}, Lm4/d;->u([B)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    const/4 v0, 0x0

    iget-object v2, p0, Lg3/j;->q:Lg3/m;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_18

    :cond_17
    move v2, v0

    :goto_18
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lg3/j;->x:Lg3/f;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :cond_23
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lg3/j;->y:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lg3/j;->z1:[B

    invoke-static {p0}, Lm4/d;->u([B)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method
