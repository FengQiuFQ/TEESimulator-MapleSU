.class public final Lv0/z;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/a;


# static fields
.field public static final d:Ljava/math/BigInteger;


# instance fields
.field public final a:Lv0/t;

.field public b:Le1/z0;

.field public c:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lv0/z;->d:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv0/t;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lv0/t;-><init>(IZ)V

    iput-object v0, p0, Lv0/z;->a:Lv0/t;

    return-void
.end method


# virtual methods
.method public final getInputBlockSize()I
    .registers 1

    iget-object p0, p0, Lv0/z;->a:Lv0/t;

    invoke-virtual {p0}, Lv0/t;->i()I

    move-result p0

    return p0
.end method

.method public final getOutputBlockSize()I
    .registers 1

    iget-object p0, p0, Lv0/z;->a:Lv0/t;

    invoke-virtual {p0}, Lv0/t;->j()I

    move-result p0

    return p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 7

    instance-of v0, p2, Le1/t0;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    check-cast p2, Le1/t0;

    iget-object v0, p2, Le1/t0;->c:Ljava/security/SecureRandom;

    iget-object p2, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    instance-of v2, p2, Le1/t0;

    iget-object v3, p0, Lv0/z;->a:Lv0/t;

    if-eqz v2, :cond_1c

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p2

    check-cast v2, Le1/t0;

    iget-object v2, v2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    goto :goto_1d

    :cond_1c
    move-object v2, p2

    :goto_1d
    iput-boolean p1, v3, Lv0/t;->i:Z

    check-cast v2, Le1/z0;

    iput-object v2, v3, Lv0/t;->h:Ljava/lang/Object;

    iget-object v2, v2, Le1/z0;->d:Ljava/math/BigInteger;

    invoke-static {v2}, Lq4/k;->s(Ljava/math/BigInteger;)I

    iget-object v2, v3, Lv0/t;->h:Ljava/lang/Object;

    check-cast v2, Le1/z0;

    iget-boolean v2, v2, Le1/b;->c:Z

    sget-object p1, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Le1/z0;

    iput-object p2, p0, Lv0/z;->b:Le1/z0;

    instance-of p1, p2, Le1/a1;

    if-eqz p1, :cond_49

    if-nez v0, :cond_48

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v1

    goto :goto_49

    :cond_48
    move-object v1, v0

    :cond_49
    :goto_49
    iput-object v1, p0, Lv0/z;->c:Ljava/security/SecureRandom;

    return-void
.end method

.method public final processBlock([BII)[B
    .registers 9

    iget-object v0, p0, Lv0/z;->b:Le1/z0;

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lv0/z;->a:Lv0/t;

    invoke-virtual {v0}, Lv0/t;->i()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const-string v3, "input too large for RSA cipher."

    if-gt p3, v1, :cond_c9

    invoke-virtual {v0}, Lv0/t;->i()I

    move-result v1

    add-int/2addr v1, v2

    if-ne p3, v1, :cond_22

    iget-boolean v1, v0, Lv0/t;->i:Z

    if-eqz v1, :cond_1c

    goto :goto_22

    :cond_1c
    new-instance p0, Lorg/bouncycastle/crypto/q;

    invoke-direct {p0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    :goto_22
    const/4 v1, 0x0

    if-nez p2, :cond_28

    array-length v4, p1

    if-eq p3, v4, :cond_2e

    :cond_28
    new-array v4, p3, [B

    invoke-static {p1, p2, v4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v4

    :cond_2e
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object p1, v0, Lv0/t;->h:Ljava/lang/Object;

    check-cast p1, Le1/z0;

    iget-object p1, p1, Le1/z0;->d:Ljava/math/BigInteger;

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gez p1, :cond_c3

    iget-object p1, p0, Lv0/z;->b:Le1/z0;

    instance-of p3, p1, Le1/a1;

    if-eqz p3, :cond_76

    check-cast p1, Le1/a1;

    iget-object p3, p1, Le1/a1;->z1:Ljava/math/BigInteger;

    if-eqz p3, :cond_76

    iget-object p1, p1, Le1/z0;->d:Ljava/math/BigInteger;

    sget-object v3, Lv0/z;->d:Ljava/math/BigInteger;

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    iget-object p0, p0, Lv0/z;->c:Ljava/security/SecureRandom;

    invoke-static {v3, v4, p0}, Lm4/a;->d(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p3, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-static {p1, p0}, Lm4/a;->i(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p3, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v0, p2}, Lv0/t;->l(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_7a

    :cond_76
    invoke-virtual {v0, p2}, Lv0/t;->l(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    :goto_7a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    iget-boolean p1, v0, Lv0/t;->i:Z

    if-eqz p1, :cond_ad

    aget-byte p1, p0, v1

    if-nez p1, :cond_98

    array-length p1, p0

    invoke-virtual {v0}, Lv0/t;->j()I

    move-result p2

    if-le p1, p2, :cond_98

    array-length p1, p0

    sub-int/2addr p1, v2

    new-array p2, p1, [B

    invoke-static {p0, v2, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_98
    array-length p1, p0

    invoke-virtual {v0}, Lv0/t;->j()I

    move-result p2

    if-ge p1, p2, :cond_ac

    invoke-virtual {v0}, Lv0/t;->j()I

    move-result p1

    new-array p2, p1, [B

    array-length p3, p0

    sub-int/2addr p1, p3

    array-length p3, p0

    invoke-static {p0, v1, p2, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_ac
    return-object p0

    :cond_ad
    aget-byte p1, p0, v1

    if-nez p1, :cond_b9

    array-length p1, p0

    sub-int/2addr p1, v2

    new-array p2, p1, [B

    invoke-static {p0, v2, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_bf

    :cond_b9
    array-length p1, p0

    new-array p2, p1, [B

    invoke-static {p0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_bf
    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-object p2

    :cond_c3
    new-instance p0, Lorg/bouncycastle/crypto/q;

    invoke-direct {p0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c9
    new-instance p0, Lorg/bouncycastle/crypto/q;

    invoke-direct {p0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_cf
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RSA engine not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
