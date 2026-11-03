.class public final La1/s;
.super Ljava/lang/Object;

# interfaces
.implements La1/a;


# instance fields
.field public final a:Lorg/bouncycastle/crypto/d;

.field public b:I

.field public c:Z

.field public d:[B

.field public e:[B

.field public final f:[B

.field public g:[B

.field public final h:[B

.field public final i:[B

.field public final j:[B

.field public final k:[B

.field public final l:La1/d;

.field public final m:La1/d;

.field public final n:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/d;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La1/d;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, La1/d;-><init>(BI)V

    iput-object v0, p0, La1/s;->l:La1/d;

    new-instance v0, La1/d;

    invoke-direct {v0, v2, v1}, La1/d;-><init>(BI)V

    iput-object v0, p0, La1/s;->m:La1/d;

    const/4 v0, 0x4

    iput v0, p0, La1/s;->n:I

    iput-object p1, p0, La1/s;->a:Lorg/bouncycastle/crypto/d;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v1

    iput v1, p0, La1/s;->b:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, La1/s;->g:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, La1/s;->d:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, La1/s;->e:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, La1/s;->f:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, La1/s;->h:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, La1/s;->i:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, La1/s;->j:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, La1/s;->k:[B

    iput v0, p0, La1/s;->n:I

    return-void
.end method

.method public static e(I[B)V
    .registers 4

    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p1, v1

    shr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p1, v1

    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p1, v1

    int-to-byte p0, p0

    const/4 v0, 0x0

    aput-byte p0, p1, v0

    return-void
.end method


# virtual methods
.method public final a([BII)V
    .registers 4

    iget-object p0, p0, La1/s;->l:La1/d;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public final b()[B
    .registers 1

    iget-object p0, p0, La1/s;->e:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final c(I[B)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-lez p1, :cond_2a

    move v2, v0

    :goto_5
    iget-object v3, p0, La1/s;->a:Lorg/bouncycastle/crypto/d;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v4

    iget-object v5, p0, La1/s;->f:[B

    if-ge v2, v4, :cond_1c

    aget-byte v3, v5, v2

    add-int v4, v1, v2

    aget-byte v4, p2, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1c
    invoke-interface {v3, v0, v0, v5, v5}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    invoke-interface {v3}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-interface {v3}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2

    :cond_2a
    return-void
.end method

.method public final d(II[B[B)V
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, La1/s;->k:[B

    array-length v3, v2

    iget-object v4, p0, La1/s;->j:[B

    if-ge v1, v3, :cond_14

    aget-byte v3, v4, v1

    aget-byte v2, v2, v1

    add-int/2addr v3, v2

    int-to-byte v2, v3

    aput-byte v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    iget-object v1, p0, La1/s;->a:Lorg/bouncycastle/crypto/d;

    iget-object p0, p0, La1/s;->i:[B

    invoke-interface {v1, v0, v0, v4, p0}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    :goto_1b
    invoke-interface {v1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v2

    if-ge v0, v2, :cond_30

    add-int v2, p2, v0

    aget-byte v3, p0, v0

    add-int v4, p1, v0

    aget-byte v4, p3, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_30
    return-void
.end method

.method public final doFinal([BI)I
    .registers 16

    iget-object v0, p0, La1/s;->m:La1/d;

    invoke-virtual {v0}, La1/d;->d()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    array-length v3, v1

    if-lt v3, v2, :cond_156

    array-length v3, p1

    sub-int/2addr v3, p2

    if-lt v3, v2, :cond_14e

    iget-object v3, p0, La1/s;->l:La1/d;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    if-lez v4, :cond_3f

    iget-boolean v4, p0, La1/s;->c:Z

    if-eqz v4, :cond_2d

    invoke-virtual {v3}, La1/d;->d()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p0, v4, v3, v0}, La1/s;->f([BII)V

    goto :goto_3f

    :cond_2d
    invoke-virtual {v3}, La1/d;->d()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v5, p0, La1/s;->b:I

    sub-int/2addr v0, v5

    invoke-virtual {p0, v4, v3, v0}, La1/s;->f([BII)V

    :cond_3f
    :goto_3f
    iget-boolean v0, p0, La1/s;->c:Z

    const/4 v3, 0x0

    const-string v4, "partial blocks not supported"

    iget-object v5, p0, La1/s;->f:[B

    iget-object v6, p0, La1/s;->k:[B

    iget-object v7, p0, La1/s;->i:[B

    iget-object v8, p0, La1/s;->j:[B

    iget-object v9, p0, La1/s;->a:Lorg/bouncycastle/crypto/d;

    if-eqz v0, :cond_ae

    invoke-interface {v9}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    rem-int v0, v2, v0

    if-nez v0, :cond_a8

    invoke-virtual {p0, v2, v1}, La1/s;->c(I[B)V

    iget-object v0, p0, La1/s;->g:[B

    invoke-interface {v9, v3, v3, v0, v8}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move v0, v2

    move v4, v3

    :goto_62
    if-lez v0, :cond_77

    invoke-virtual {p0, v4, p2, v1, p1}, La1/s;->d(II[B[B)V

    invoke-interface {v9}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v10

    sub-int/2addr v0, v10

    invoke-interface {v9}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v10

    add-int/2addr v4, v10

    invoke-interface {v9}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v10

    add-int/2addr p2, v10

    goto :goto_62

    :cond_77
    move v0, v3

    :goto_78
    array-length v1, v6

    if-ge v0, v1, :cond_86

    aget-byte v1, v8, v0

    aget-byte v4, v6, v0

    add-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    :cond_86
    invoke-interface {v9, v3, v3, v8, v7}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move v0, v3

    :goto_8a
    iget v1, p0, La1/s;->b:I

    if-ge v0, v1, :cond_9b

    add-int v1, p2, v0

    aget-byte v4, v7, v0

    aget-byte v6, v5, v0

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    :cond_9b
    iget-object p1, p0, La1/s;->e:[B

    invoke-static {v5, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, La1/s;->g()V

    iget p1, p0, La1/s;->b:I

    add-int/2addr v2, p1

    goto/16 :goto_13c

    :cond_a8
    new-instance p0, Lorg/bouncycastle/crypto/q;

    invoke-direct {p0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ae
    iget v0, p0, La1/s;->b:I

    sub-int v0, v2, v0

    invoke-interface {v9}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v10

    rem-int/2addr v0, v10

    if-nez v0, :cond_148

    iget-object v0, p0, La1/s;->g:[B

    invoke-interface {v9, v3, v3, v0, v8}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    invoke-interface {v9}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    div-int v0, v2, v0

    move v4, v3

    move v10, v4

    :goto_c6
    if-ge v4, v0, :cond_d8

    invoke-virtual {p0, v10, p2, v1, p1}, La1/s;->d(II[B[B)V

    invoke-interface {v9}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v11

    add-int/2addr v10, v11

    invoke-interface {v9}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v11

    add-int/2addr p2, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_c6

    :cond_d8
    if-le v2, v10, :cond_101

    move v0, v3

    :goto_db
    array-length v4, v6

    if-ge v0, v4, :cond_e9

    aget-byte v4, v8, v0

    aget-byte v11, v6, v0

    add-int/2addr v4, v11

    int-to-byte v4, v4

    aput-byte v4, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_db

    :cond_e9
    invoke-interface {v9, v3, v3, v8, v7}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move v0, v3

    :goto_ed
    iget v4, p0, La1/s;->b:I

    if-ge v0, v4, :cond_100

    add-int v4, p2, v0

    aget-byte v11, v7, v0

    add-int v12, v10, v0

    aget-byte v12, v1, v12

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, p1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_ed

    :cond_100
    add-int/2addr p2, v4

    :cond_101
    move v0, v3

    :goto_102
    array-length v1, v6

    if-ge v0, v1, :cond_110

    aget-byte v1, v8, v0

    aget-byte v4, v6, v0

    add-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_102

    :cond_110
    invoke-interface {v9, v3, v3, v8, v7}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    iget v0, p0, La1/s;->b:I

    sub-int v1, p2, v0

    invoke-static {p1, v1, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, La1/s;->b:I

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2, p1}, La1/s;->c(I[B)V

    iget-object p1, p0, La1/s;->e:[B

    iget p2, p0, La1/s;->b:I

    invoke-static {v5, v3, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, La1/s;->b:I

    new-array p2, p1, [B

    invoke-static {v7, v3, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, La1/s;->e:[B

    invoke-static {p1, p2}, Lm4/d;->o([B[B)Z

    move-result p1

    if-eqz p1, :cond_140

    invoke-virtual {p0}, La1/s;->g()V

    iget p1, p0, La1/s;->b:I

    sub-int/2addr v2, p1

    :goto_13c
    invoke-virtual {p0}, La1/s;->g()V

    return v2

    :cond_140
    new-instance p0, Lorg/bouncycastle/crypto/x;

    const-string p1, "mac check failed"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_148
    new-instance p0, Lorg/bouncycastle/crypto/q;

    invoke-direct {p0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14e
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_156
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f([BII)V
    .registers 12

    iget-object v0, p0, La1/s;->a:Lorg/bouncycastle/crypto/d;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v1

    if-lt p2, v1, :cond_10a

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v1

    rem-int v1, p2, v1

    if-nez v1, :cond_102

    iget-object v1, p0, La1/s;->g:[B

    array-length v2, v1

    iget v3, p0, La1/s;->n:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    iget-object v4, p0, La1/s;->h:[B

    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, La1/s;->i:[B

    invoke-static {p3, v1}, La1/s;->e(I[B)V

    iget-object p3, p0, La1/s;->g:[B

    array-length p3, p3

    iget v2, p0, La1/s;->n:I

    sub-int/2addr p3, v2

    add-int/lit8 p3, p3, -0x1

    const/4 v2, 0x4

    invoke-static {v1, v3, v4, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, v4

    add-int/lit8 p3, p3, -0x1

    iget v5, p0, La1/s;->b:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "1"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x8

    if-eq v5, v7, :cond_5f

    const/16 v7, 0x10

    if-eq v5, v7, :cond_5c

    const/16 v7, 0x20

    if-eq v5, v7, :cond_59

    const/16 v7, 0x30

    if-eq v5, v7, :cond_56

    const/16 v7, 0x40

    if-eq v5, v7, :cond_50

    goto :goto_62

    :cond_50
    const-string v5, "110"

    :goto_52
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62

    :cond_56
    const-string v5, "101"

    goto :goto_52

    :cond_59
    const-string v5, "100"

    goto :goto_52

    :cond_5c
    const-string v5, "011"

    goto :goto_52

    :cond_5f
    const-string v5, "010"

    goto :goto_52

    :goto_62
    iget v5, p0, La1/s;->n:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    :goto_6a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v2, :cond_80

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "0"

    invoke-virtual {v7, v3, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6a

    :cond_80
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v4, p3

    iget-object p3, p0, La1/s;->f:[B

    invoke-interface {v0, v3, v3, v4, p3}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    invoke-static {p2, v1}, La1/s;->e(I[B)V

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v2

    iget v4, p0, La1/s;->n:I

    sub-int/2addr v2, v4

    if-gt p2, v2, :cond_c7

    move v2, v3

    :goto_a1
    if-ge v2, p2, :cond_b1

    iget v4, p0, La1/s;->n:I

    add-int/2addr v4, v2

    aget-byte v5, v1, v4

    aget-byte v6, p1, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_a1

    :cond_b1
    move p0, v3

    :goto_b2
    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p1

    if-ge p0, p1, :cond_c3

    aget-byte p1, p3, p0

    aget-byte p2, v1, p0

    xor-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, p3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_b2

    :cond_c3
    invoke-interface {v0, v3, v3, p3, p3}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    return-void

    :cond_c7
    move p0, v3

    :goto_c8
    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v2

    if-ge p0, v2, :cond_d9

    aget-byte v2, p3, p0

    aget-byte v4, v1, p0

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_c8

    :cond_d9
    invoke-interface {v0, v3, v3, p3, p3}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move p0, v3

    :goto_dd
    if-eqz p2, :cond_101

    move v1, v3

    :goto_e0
    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v2

    if-ge v1, v2, :cond_f3

    aget-byte v2, p3, v1

    add-int v4, v1, p0

    aget-byte v4, p1, v4

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e0

    :cond_f3
    invoke-interface {v0, v3, v3, p3, p3}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v1

    add-int/2addr p0, v1

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v1

    sub-int/2addr p2, v1

    goto :goto_dd

    :cond_101
    return-void

    :cond_102
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "padding not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "authText buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()V
    .registers 4

    iget-object v0, p0, La1/s;->h:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, La1/s;->i:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, La1/s;->k:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object v2, p0, La1/s;->f:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    iget-object v0, p0, La1/s;->m:La1/d;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, La1/s;->l:La1/d;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, La1/s;->d:[B

    if-eqz v0, :cond_2a

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, La1/s;->a([BII)V

    :cond_2a
    return-void
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, La1/s;->a:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/KCCM"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOutputSize(I)I
    .registers 2

    iget p0, p0, La1/s;->b:I

    add-int/2addr p1, p0

    return p1
.end method

.method public final getUnderlyingCipher()Lorg/bouncycastle/crypto/d;
    .registers 1

    iget-object p0, p0, La1/s;->a:Lorg/bouncycastle/crypto/d;

    return-object p0
.end method

.method public final getUpdateOutputSize(I)I
    .registers 2

    return p1
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 6

    instance-of v0, p2, Le1/a;

    iget-object v1, p0, La1/s;->a:Lorg/bouncycastle/crypto/d;

    if-eqz v0, :cond_35

    check-cast p2, Le1/a;

    iget v0, p2, Le1/a;->x:I

    const/16 v2, 0x200

    if-gt v0, v2, :cond_2d

    const/16 v2, 0x40

    if-lt v0, v2, :cond_2d

    rem-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_2d

    iget-object v2, p2, Le1/a;->d:[B

    invoke-static {v2}, Lm4/d;->e([B)[B

    move-result-object v2

    iput-object v2, p0, La1/s;->g:[B

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, La1/s;->b:I

    iget-object v0, p2, Le1/a;->c:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iput-object v0, p0, La1/s;->d:[B

    iget-object p2, p2, Le1/a;->q:Le1/o0;

    goto :goto_4a

    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid mac size specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    instance-of v0, p2, Le1/s0;

    if-eqz v0, :cond_64

    check-cast p2, Le1/s0;

    iget-object v0, p2, Le1/s0;->c:[B

    iput-object v0, p0, La1/s;->g:[B

    invoke-interface {v1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    iput v0, p0, La1/s;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, La1/s;->d:[B

    iget-object p2, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    :goto_4a
    iget v0, p0, La1/s;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, La1/s;->e:[B

    iput-boolean p1, p0, La1/s;->c:Z

    const/4 p1, 0x1

    invoke-interface {v1, p1, p2}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    iget-object p2, p0, La1/s;->k:[B

    const/4 v0, 0x0

    aput-byte p1, p2, v0

    iget-object p1, p0, La1/s;->d:[B

    if-eqz p1, :cond_63

    array-length p2, p1

    invoke-virtual {p0, p1, v0, p2}, La1/s;->a([BII)V

    :cond_63
    return-void

    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid parameters specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final processByte(B[BI)I
    .registers 4

    iget-object p0, p0, La1/s;->m:La1/d;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final processBytes([BII[BI)I
    .registers 6

    array-length p4, p1

    add-int p5, p2, p3

    if-lt p4, p5, :cond_c

    iget-object p0, p0, La1/s;->m:La1/d;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    const/4 p0, 0x0

    return p0

    :cond_c
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
