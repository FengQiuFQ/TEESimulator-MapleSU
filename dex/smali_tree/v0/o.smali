.class public final Lv0/o;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/a;


# static fields
.field public static final e:Ljava/math/BigInteger;

.field public static final f:Ljava/math/BigInteger;

.field public static final g:Ljava/math/BigInteger;


# instance fields
.field public a:Le1/d0;

.field public b:Ljava/security/SecureRandom;

.field public c:Z

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lv0/o;->e:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lv0/o;->f:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lv0/o;->g:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final getInputBlockSize()I
    .registers 2

    iget-boolean v0, p0, Lv0/o;->c:Z

    iget p0, p0, Lv0/o;->d:I

    if-eqz v0, :cond_b

    add-int/lit8 p0, p0, -0x1

    div-int/lit8 p0, p0, 0x8

    return p0

    :cond_b
    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    mul-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public final getOutputBlockSize()I
    .registers 2

    iget-boolean v0, p0, Lv0/o;->c:Z

    iget p0, p0, Lv0/o;->d:I

    if-eqz v0, :cond_d

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    mul-int/lit8 p0, p0, 0x2

    return p0

    :cond_d
    add-int/lit8 p0, p0, -0x1

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 4

    instance-of v0, p2, Le1/t0;

    if-eqz v0, :cond_11

    check-cast p2, Le1/t0;

    iget-object v0, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    check-cast v0, Le1/d0;

    iput-object v0, p0, Lv0/o;->a:Le1/d0;

    iget-object p2, p2, Le1/t0;->c:Ljava/security/SecureRandom;

    :goto_e
    iput-object p2, p0, Lv0/o;->b:Ljava/security/SecureRandom;

    goto :goto_1a

    :cond_11
    check-cast p2, Le1/d0;

    iput-object p2, p0, Lv0/o;->a:Le1/d0;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object p2

    goto :goto_e

    :goto_1a
    iput-boolean p1, p0, Lv0/o;->c:Z

    iget-object p2, p0, Lv0/o;->a:Le1/d0;

    iget-object p2, p2, Le1/d0;->d:Le1/e0;

    iget-object p2, p2, Le1/e0;->d:Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result p2

    iput p2, p0, Lv0/o;->d:I

    if-eqz p1, :cond_39

    iget-object p1, p0, Lv0/o;->a:Le1/d0;

    instance-of p1, p1, Le1/g0;

    if-eqz p1, :cond_31

    goto :goto_3f

    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ElGamalPublicKeyParameters are required for encryption."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    iget-object p1, p0, Lv0/o;->a:Le1/d0;

    instance-of p1, p1, Le1/f0;

    if-eqz p1, :cond_54

    :goto_3f
    iget-object p0, p0, Lv0/o;->a:Le1/d0;

    iget-object p0, p0, Le1/d0;->d:Le1/e0;

    iget-object p0, p0, Le1/e0;->d:Ljava/math/BigInteger;

    invoke-static {p0}, Lq4/k;->s(Ljava/math/BigInteger;)I

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_54
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ElGamalPrivateKeyParameters are required for decryption."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final processBlock([BII)[B
    .registers 9

    iget-object v0, p0, Lv0/o;->a:Le1/d0;

    if-eqz v0, :cond_100

    iget-boolean v0, p0, Lv0/o;->c:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lv0/o;->d:I

    add-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x8

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Lv0/o;->getInputBlockSize()I

    move-result v0

    :goto_13
    const-string v1, "input too large for ElGamal cipher.\n"

    if-gt p3, v0, :cond_fa

    iget-object v0, p0, Lv0/o;->a:Le1/d0;

    iget-object v2, v0, Le1/d0;->d:Le1/e0;

    iget-object v2, v2, Le1/e0;->d:Ljava/math/BigInteger;

    instance-of v0, v0, Le1/f0;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_6c

    div-int/lit8 p3, p3, 0x2

    new-array v0, p3, [B

    new-array v1, p3, [B

    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, p3

    invoke-static {p1, p2, v1, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object p0, p0, Lv0/o;->a:Le1/d0;

    check-cast p0, Le1/f0;

    sget-object p3, Lv0/o;->f:Ljava/math/BigInteger;

    invoke-virtual {v2, p3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    iget-object p0, p0, Le1/f0;->q:Ljava/math/BigInteger;

    invoke-virtual {p3, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    aget-byte p1, p0, v3

    if-nez p1, :cond_6b

    array-length p1, p0

    if-eq p1, v4, :cond_6b

    array-length p1, p0

    sub-int/2addr p1, v4

    new-array p2, p1, [B

    invoke-static {p0, v4, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_6b
    return-object p0

    :cond_6c
    if-nez p2, :cond_71

    array-length v0, p1

    if-eq p3, v0, :cond_77

    :cond_71
    new-array v0, p3, [B

    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_77
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gez p1, :cond_f4

    iget-object p1, p0, Lv0/o;->a:Le1/d0;

    check-cast p1, Le1/g0;

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result p3

    :cond_8a
    :goto_8a
    iget-object v0, p0, Lv0/o;->b:Ljava/security/SecureRandom;

    invoke-static {p3, v0}, Lm4/a;->c(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lv0/o;->e:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    sget-object v1, Lv0/o;->g:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_a5

    goto :goto_8a

    :cond_a5
    iget-object p3, p0, Lv0/o;->a:Le1/d0;

    iget-object p3, p3, Le1/d0;->d:Le1/e0;

    iget-object p3, p3, Le1/e0;->c:Ljava/math/BigInteger;

    invoke-virtual {p3, v0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    iget-object p1, p1, Le1/g0;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0}, Lv0/o;->getOutputBlockSize()I

    move-result p0

    new-array p3, p0, [B

    array-length v0, p2

    div-int/lit8 v1, p0, 0x2

    if-le v0, v1, :cond_da

    array-length v0, p2

    sub-int/2addr v0, v4

    sub-int v0, v1, v0

    array-length v2, p2

    sub-int/2addr v2, v4

    invoke-static {p2, v4, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e1

    :cond_da
    array-length v0, p2

    sub-int v0, v1, v0

    array-length v2, p2

    invoke-static {p2, v3, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_e1
    array-length p2, p1

    if-le p2, v1, :cond_ed

    array-length p2, p1

    sub-int/2addr p2, v4

    sub-int/2addr p0, p2

    array-length p2, p1

    sub-int/2addr p2, v4

    invoke-static {p1, v4, p3, p0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p3

    :cond_ed
    array-length p2, p1

    sub-int/2addr p0, p2

    array-length p2, p1

    invoke-static {p1, v3, p3, p0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p3

    :cond_f4
    new-instance p0, Lorg/bouncycastle/crypto/q;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_fa
    new-instance p0, Lorg/bouncycastle/crypto/q;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_100
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ElGamal engine not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
