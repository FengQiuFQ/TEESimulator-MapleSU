.class public final Lv0/u;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/p0;


# static fields
.field public static final o:[B


# instance fields
.field public g:La1/c;

.field public h:Lorg/bouncycastle/crypto/g;

.field public i:Le1/s0;

.field public j:[B

.field public k:Z

.field public l:Ljava/security/SecureRandom;

.field public m:Ls0/z;

.field public n:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lv0/u;->o:[B

    return-void

    :array_a
    .array-data 1
        0x4at
        -0x23t
        -0x5et
        0x2ct
        0x79t
        -0x18t
        0x21t
        0x5t
    .end array-data
.end method


# virtual methods
.method public final a(I[B)[B
    .registers 9

    iget-boolean v0, p0, Lv0/u;->k:Z

    if-nez v0, :cond_113

    if-eqz p2, :cond_10b

    iget-object v0, p0, Lv0/u;->g:La1/c;

    iget-object v0, v0, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    rem-int v0, p1, v0

    if-nez v0, :cond_ef

    new-instance v0, Le1/s0;

    iget-object v1, p0, Lv0/u;->h:Lorg/bouncycastle/crypto/g;

    sget-object v2, Lv0/u;->o:[B

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[BII)V

    iget-object v1, p0, Lv0/u;->g:La1/c;

    invoke-virtual {v1, v3, v0}, La1/c;->init(ZLorg/bouncycastle/crypto/g;)V

    new-array v0, p1, [B

    invoke-static {p2, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p2, v3

    :goto_29
    iget-object v1, p0, Lv0/u;->g:La1/c;

    iget-object v1, v1, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v1

    div-int v1, p1, v1

    if-ge p2, v1, :cond_46

    iget-object v1, p0, Lv0/u;->g:La1/c;

    iget-object v1, v1, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v1

    mul-int/2addr v1, p2

    iget-object v2, p0, Lv0/u;->g:La1/c;

    invoke-virtual {v2, v1, v1, v0, v0}, La1/c;->b(II[B[B)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_29

    :cond_46
    new-array p2, p1, [B

    move v1, v3

    :goto_49
    if-ge v1, p1, :cond_55

    add-int/lit8 v2, v1, 0x1

    sub-int v5, p1, v2

    aget-byte v5, v0, v5

    aput-byte v5, p2, v1

    move v1, v2

    goto :goto_49

    :cond_55
    new-array v0, v4, [B

    iput-object v0, p0, Lv0/u;->j:[B

    add-int/lit8 v1, p1, -0x8

    new-array v2, v1, [B

    invoke-static {p2, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p2, Le1/s0;

    iget-object v0, p0, Lv0/u;->h:Lorg/bouncycastle/crypto/g;

    iget-object v5, p0, Lv0/u;->j:[B

    invoke-direct {p2, v0, v5}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[B)V

    iput-object p2, p0, Lv0/u;->i:Le1/s0;

    iget-object v0, p0, Lv0/u;->g:La1/c;

    invoke-virtual {v0, v3, p2}, La1/c;->init(ZLorg/bouncycastle/crypto/g;)V

    new-array p2, v1, [B

    invoke-static {v2, v3, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v3

    :goto_79
    iget-object v2, p0, Lv0/u;->g:La1/c;

    iget-object v2, v2, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v2

    div-int v2, v1, v2

    if-ge v0, v2, :cond_96

    iget-object v2, p0, Lv0/u;->g:La1/c;

    iget-object v2, v2, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v5, p0, Lv0/u;->g:La1/c;

    invoke-virtual {v5, v2, v2, p2, p2}, La1/c;->b(II[B[B)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    :cond_96
    add-int/lit8 p1, p1, -0x10

    new-array v0, p1, [B

    new-array v1, v4, [B

    invoke-static {p2, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p2, v4, [B

    iget-object v2, p0, Lv0/u;->m:Ls0/z;

    invoke-virtual {v2, v0, v3, p1}, Ls0/j;->update([BII)V

    iget-object p0, p0, Lv0/u;->n:[B

    invoke-virtual {v2, p0, v3}, Ls0/z;->doFinal([BI)I

    invoke-static {p0, v3, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v1}, Lm4/d;->o([B[B)Z

    move-result p0

    if-eqz p0, :cond_e7

    aget-byte p0, v0, v3

    and-int/lit16 p2, p0, 0xff

    const/4 v1, 0x1

    add-int/2addr p2, v1

    sub-int p2, p1, p2

    const/4 v2, 0x7

    if-gt p2, v2, :cond_c8

    new-array p1, p0, [B

    invoke-static {v0, v1, p1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_c8
    new-instance p0, Lorg/bouncycastle/crypto/x;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "too many pad bytes ("

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e7
    new-instance p0, Lorg/bouncycastle/crypto/x;

    const-string p1, "Checksum inside ciphertext is corrupted"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ef
    new-instance p1, Lorg/bouncycastle/crypto/x;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Ciphertext not multiple of "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lv0/u;->g:La1/c;

    iget-object p0, p0, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10b
    new-instance p0, Lorg/bouncycastle/crypto/x;

    const-string p1, "Null pointer as ciphertext"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_113
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not set for unwrapping"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(I[B)[B
    .registers 11

    iget-boolean v0, p0, Lv0/u;->k:Z

    if-eqz v0, :cond_c4

    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    if-eqz v1, :cond_10

    rsub-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v0

    goto :goto_11

    :cond_10
    move v1, v0

    :goto_11
    new-array v3, v1, [B

    int-to-byte v4, p1

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    const/4 v4, 0x1

    invoke-static {p2, v5, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int p1, v1, p1

    sub-int/2addr p1, v4

    new-array p2, p1, [B

    if-lez p1, :cond_2a

    iget-object v6, p0, Lv0/u;->l:Ljava/security/SecureRandom;

    invoke-virtual {v6, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p2, v5, v3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2a
    new-array p1, v2, [B

    iget-object p2, p0, Lv0/u;->m:Ls0/z;

    invoke-virtual {p2, v3, v5, v1}, Ls0/j;->update([BII)V

    iget-object v0, p0, Lv0/u;->n:[B

    invoke-virtual {p2, v0, v5}, Ls0/z;->doFinal([BI)I

    invoke-static {v0, v5, p1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, v1, 0x8

    new-array v0, p2, [B

    invoke-static {v3, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, p2, [B

    invoke-static {v0, v5, p1, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lv0/u;->g:La1/c;

    iget-object v0, v0, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v0

    div-int v0, p2, v0

    iget-object v1, p0, Lv0/u;->g:La1/c;

    iget-object v1, v1, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v1

    rem-int v1, p2, v1

    if-nez v1, :cond_bc

    iget-object v1, p0, Lv0/u;->g:La1/c;

    iget-object v3, p0, Lv0/u;->i:Le1/s0;

    invoke-virtual {v1, v4, v3}, La1/c;->init(ZLorg/bouncycastle/crypto/g;)V

    move v1, v5

    :goto_66
    if-ge v1, v0, :cond_79

    iget-object v3, p0, Lv0/u;->g:La1/c;

    iget-object v3, v3, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v3

    mul-int/2addr v3, v1

    iget-object v6, p0, Lv0/u;->g:La1/c;

    invoke-virtual {v6, v3, v3, p1, p1}, La1/c;->b(II[B[B)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    :cond_79
    iget-object v1, p0, Lv0/u;->j:[B

    array-length v3, v1

    add-int/2addr v3, p2

    new-array v6, v3, [B

    array-length v7, v1

    invoke-static {v1, v5, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lv0/u;->j:[B

    array-length v1, v1

    invoke-static {p1, v5, v6, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v3, [B

    move p2, v5

    :goto_8c
    if-ge p2, v3, :cond_98

    add-int/lit8 v1, p2, 0x1

    sub-int v7, v3, v1

    aget-byte v7, v6, v7

    aput-byte v7, p1, p2

    move p2, v1

    goto :goto_8c

    :cond_98
    new-instance p2, Le1/s0;

    iget-object v1, p0, Lv0/u;->h:Lorg/bouncycastle/crypto/g;

    sget-object v3, Lv0/u;->o:[B

    invoke-direct {p2, v1, v3, v5, v2}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[BII)V

    iget-object v1, p0, Lv0/u;->g:La1/c;

    invoke-virtual {v1, v4, p2}, La1/c;->init(ZLorg/bouncycastle/crypto/g;)V

    :goto_a6
    add-int/lit8 p2, v0, 0x1

    if-ge v5, p2, :cond_bb

    iget-object p2, p0, Lv0/u;->g:La1/c;

    iget-object p2, p2, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p2

    mul-int/2addr p2, v5

    iget-object v1, p0, Lv0/u;->g:La1/c;

    invoke-virtual {v1, p2, p2, p1, p1}, La1/c;->b(II[B[B)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_a6

    :cond_bb
    return-object p1

    :cond_bc
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not multiple of block length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not initialized for wrapping"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "RC2"

    return-object p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 6

    iput-boolean p1, p0, Lv0/u;->k:Z

    new-instance p1, La1/c;

    new-instance v0, Lv0/t;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lv0/t;-><init>(IZ)V

    invoke-direct {p1, v0}, La1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    iput-object p1, p0, Lv0/u;->g:La1/c;

    instance-of p1, p2, Le1/t0;

    if-eqz p1, :cond_1d

    check-cast p2, Le1/t0;

    iget-object p1, p2, Le1/t0;->c:Ljava/security/SecureRandom;

    iput-object p1, p0, Lv0/u;->l:Ljava/security/SecureRandom;

    iget-object p2, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    goto :goto_23

    :cond_1d
    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lv0/u;->l:Ljava/security/SecureRandom;

    :goto_23
    instance-of p1, p2, Le1/s0;

    const/16 v0, 0x8

    if-eqz p1, :cond_4f

    check-cast p2, Le1/s0;

    iput-object p2, p0, Lv0/u;->i:Le1/s0;

    iget-object p1, p2, Le1/s0;->c:[B

    iput-object p1, p0, Lv0/u;->j:[B

    iget-object p2, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    iput-object p2, p0, Lv0/u;->h:Lorg/bouncycastle/crypto/g;

    iget-boolean p0, p0, Lv0/u;->k:Z

    if-eqz p0, :cond_47

    if-eqz p1, :cond_3f

    array-length p0, p1

    if-ne p0, v0, :cond_3f

    goto :goto_69

    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IV is not 8 octets"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You should not supply an IV for unwrapping"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4f
    iput-object p2, p0, Lv0/u;->h:Lorg/bouncycastle/crypto/g;

    iget-boolean p1, p0, Lv0/u;->k:Z

    if-eqz p1, :cond_69

    new-array p1, v0, [B

    iput-object p1, p0, Lv0/u;->j:[B

    iget-object p2, p0, Lv0/u;->l:Ljava/security/SecureRandom;

    invoke-virtual {p2, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance p1, Le1/s0;

    iget-object p2, p0, Lv0/u;->h:Lorg/bouncycastle/crypto/g;

    iget-object v0, p0, Lv0/u;->j:[B

    invoke-direct {p1, p2, v0}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[B)V

    iput-object p1, p0, Lv0/u;->i:Le1/s0;

    :cond_69
    :goto_69
    return-void
.end method
