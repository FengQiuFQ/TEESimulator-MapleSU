.class public final Lg1/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/p;
.implements Lk2/a;


# instance fields
.field public final synthetic g:I

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    iput p1, p0, Lg1/d;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    packed-switch p1, :pswitch_data_18

    new-instance p1, Li1/l;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/d;->j:Ljava/lang/Object;

    return-void

    :pswitch_10
    new-instance p1, Li1/l;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/d;->j:Ljava/lang/Object;

    return-void

    :pswitch_data_18
    .packed-switch 0x3
        :pswitch_10
    .end packed-switch
.end method

.method public constructor <init>(IIIIII[B)V
    .registers 15

    const/4 v0, 0x5

    iput v0, p0, Lg1/d;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lg1/d;->h:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p7, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, p2, [Lq3/e;

    iput-object v0, p0, Lg1/d;->j:Ljava/lang/Object;

    move v2, p1

    move v0, v1

    :goto_14
    if-eq v0, p2, :cond_3a

    new-array v3, p1, [B

    invoke-static {p7, v2, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p1

    new-array v4, p3, [[B

    move v5, v1

    :goto_1f
    if-eq v5, p3, :cond_2c

    new-array v6, p1, [B

    aput-object v6, v4, v5

    invoke-static {p7, v2, v6, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_2c
    iget-object v5, p0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v5, [Lq3/e;

    new-instance v6, Lq3/e;

    invoke-direct {v6, v3, v4}, Lq3/e;-><init>([B[[B)V

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_3a
    new-array p2, p4, [Lq3/e;

    iput-object p2, p0, Lg1/d;->i:Ljava/lang/Object;

    move p2, v1

    :goto_3f
    if-eq p2, p4, :cond_67

    mul-int p3, p6, p1

    new-array v0, p3, [B

    invoke-static {p7, v2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p3

    new-array p3, p5, [[B

    move v3, v1

    :goto_4c
    if-eq v3, p5, :cond_59

    new-array v4, p1, [B

    aput-object v4, p3, v3

    invoke-static {p7, v2, v4, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_59
    iget-object v3, p0, Lg1/d;->i:Ljava/lang/Object;

    check-cast v3, [Lq3/e;

    new-instance v4, Lq3/e;

    invoke-direct {v4, v0, p3}, Lq3/e;-><init>([B[[B)V

    aput-object v4, v3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3f

    :cond_67
    array-length p0, p7

    if-ne v2, p0, :cond_6b

    return-void

    :cond_6b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "signature wrong length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Li1/g;I)V
    .registers 3

    iput p2, p0, Lg1/d;->g:I

    iput-object p1, p0, Lg1/d;->j:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Li3/b;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lg1/d;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lg1/d;->j:Ljava/lang/Object;

    iput-object p1, p0, Lg1/d;->h:Ljava/lang/Object;

    iget-object p1, p1, Li3/b;->r:Lb1/b;

    iput-object p1, p0, Lg1/d;->i:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;[B[BI)V
    .registers 5

    iput p4, p0, Lg1/d;->g:I

    iput-object p1, p0, Lg1/d;->j:Ljava/lang/Object;

    iput-object p2, p0, Lg1/d;->h:Ljava/lang/Object;

    iput-object p3, p0, Lg1/d;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/security/Signature;Ll0/b;)V
    .registers 4

    const/4 v0, 0x6

    iput v0, p0, Lg1/d;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/d;->h:Ljava/lang/Object;

    iput-object p2, p0, Lg1/d;->i:Ljava/lang/Object;

    new-instance p2, Lc2/c;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lc2/c;-><init>(I)V

    iput-object p1, p2, Lc2/c;->d:Ljava/lang/Object;

    iput-object p2, p0, Lg1/d;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lw2/a;Ljava/io/OutputStream;[Ljava/security/Signature;)V
    .registers 5

    const/4 v0, 0x7

    iput v0, p0, Lg1/d;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lg1/d;->h:Ljava/lang/Object;

    iput-object p1, p0, Lg1/d;->i:Ljava/lang/Object;

    iput-object p2, p0, Lg1/d;->j:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .registers 5

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    if-lt v0, v1, :cond_10

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0

    :cond_10
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    new-array v0, p0, [B

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static n(Lg1/d;II[BII)I
    .registers 14

    const/4 v0, 0x0

    move v1, v0

    :cond_2
    :goto_2
    if-ge v0, p2, :cond_62

    if-ge v1, p4, :cond_62

    aget-byte v2, p3, v1

    and-int/lit8 v3, v2, 0xf

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v2, v2, 0xff

    const/4 v4, 0x4

    shr-int/2addr v2, v4

    const/4 v5, 0x2

    if-ne p5, v5, :cond_41

    const/16 v4, 0xf

    if-ge v3, v4, :cond_2a

    mul-int/lit16 v6, v3, 0xcd

    shr-int/lit8 v6, v6, 0xa

    mul-int/lit8 v6, v6, 0x5

    sub-int/2addr v3, v6

    add-int v6, p1, v0

    rsub-int/lit8 v3, v3, 0x2

    iget-object v7, p0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v7, [I

    aput v3, v7, v6

    add-int/lit8 v0, v0, 0x1

    :cond_2a
    if-ge v2, v4, :cond_2

    if-ge v0, p2, :cond_2

    mul-int/lit16 v3, v2, 0xcd

    shr-int/lit8 v3, v3, 0xa

    mul-int/lit8 v3, v3, 0x5

    sub-int/2addr v2, v3

    add-int v3, p1, v0

    sub-int/2addr v5, v2

    iget-object v2, p0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v2, [I

    aput v5, v2, v3

    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_41
    if-ne p5, v4, :cond_2

    const/16 v4, 0x9

    if-ge v3, v4, :cond_53

    add-int v5, p1, v0

    rsub-int/lit8 v3, v3, 0x4

    iget-object v6, p0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v6, [I

    aput v3, v6, v5

    add-int/lit8 v0, v0, 0x1

    :cond_53
    if-ge v2, v4, :cond_2

    if-ge v0, p2, :cond_2

    add-int v3, p1, v0

    rsub-int/lit8 v2, v2, 0x4

    iget-object v4, p0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v4, [I

    aput v2, v4, v3

    goto :goto_3e

    :cond_62
    return v0
.end method

.method public static o(Lg1/d;II[BI)I
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p2, :cond_33

    add-int/lit8 v2, v1, 0x3

    if-gt v2, p4, :cond_33

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p3, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v1, 0x2

    aget-byte v3, p3, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v3

    const v3, 0x7fffff

    and-int/2addr v1, v3

    const v3, 0x7fe001

    if-ge v1, v3, :cond_31

    add-int v3, p1, v0

    iget-object v4, p0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v4, [I

    aput v1, v4, v3

    add-int/lit8 v0, v0, 0x1

    :cond_31
    move v1, v2

    goto :goto_2

    :cond_33
    return v0
.end method


# virtual methods
.method public b([B)[Ljava/math/BigInteger;
    .registers 10

    iget v0, p0, Lg1/d;->g:I

    packed-switch v0, :pswitch_data_fe

    iget-object v0, p0, Lg1/d;->h:Ljava/lang/Object;

    check-cast v0, Le1/u;

    iget-object v0, v0, Le1/u;->d:Le1/r;

    iget-object v1, v0, Le1/r;->j:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x8

    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    if-ge v2, v3, :cond_21

    sub-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    :cond_21
    iget-object v2, p0, Lg1/d;->h:Ljava/lang/Object;

    check-cast v2, Le1/u;

    check-cast v2, Le1/w;

    iget-object v2, v2, Le1/w;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v3, Li1/b;

    invoke-interface {v3}, Li1/b;->c()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v3, v1, v2, p1}, Li1/b;->d(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_3e

    :cond_37
    iget-object p0, p0, Lg1/d;->i:Ljava/lang/Object;

    check-cast p0, Ljava/security/SecureRandom;

    invoke-interface {v3, v1, p0}, Li1/b;->b(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    :goto_3e
    new-instance v5, Lk2/q;

    const/4 p0, 0x0

    invoke-direct {v5, p0}, Lk2/q;-><init>(I)V

    :cond_44
    invoke-interface {v3}, Li1/b;->a()Ljava/math/BigInteger;

    move-result-object p0

    iget-object p1, v0, Le1/r;->i:Lk2/p;

    invoke-virtual {v5, p1, p0}, Lk2/b0;->w(Lk2/p;Ljava/math/BigInteger;)Lk2/p;

    move-result-object p1

    invoke-virtual {p1}, Lk2/p;->p()Lk2/p;

    move-result-object p1

    invoke-virtual {p1}, Lk2/p;->b()V

    iget-object p1, p1, Lk2/p;->b:Lk2/b0;

    invoke-virtual {p1}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    sget-object v6, Lk2/a;->a:Ljava/math/BigInteger;

    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_44

    invoke-static {v1, p0}, Lm4/a;->i(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_44

    filled-new-array {p1, p0}, [Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_86
    iget-object v0, p0, Lg1/d;->h:Ljava/lang/Object;

    check-cast v0, La3/a;

    iget-object v0, v0, La3/a;->d:Ljava/lang/Object;

    check-cast v0, Le1/m;

    iget-object v1, v0, Le1/m;->d:Ljava/math/BigInteger;

    invoke-static {v1, p1}, Lg1/d;->a(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lg1/d;->h:Ljava/lang/Object;

    check-cast v3, La3/a;

    check-cast v3, Le1/n;

    iget-object v3, v3, Le1/n;->q:Ljava/math/BigInteger;

    iget-object v4, p0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v4, Li1/b;

    invoke-interface {v4}, Li1/b;->c()Z

    move-result v5

    if-eqz v5, :cond_aa

    invoke-interface {v4, v1, v3, p1}, Li1/b;->d(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_b1

    :cond_aa
    iget-object p1, p0, Lg1/d;->i:Ljava/lang/Object;

    check-cast p1, Ljava/security/SecureRandom;

    invoke-interface {v4, v1, p1}, Li1/b;->b(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    :goto_b1
    invoke-interface {v4}, Li1/b;->a()Ljava/math/BigInteger;

    move-result-object p1

    iget-object v4, v0, Le1/m;->c:Ljava/math/BigInteger;

    iget-object p0, p0, Lg1/d;->i:Ljava/lang/Object;

    check-cast p0, Ljava/security/SecureRandom;

    if-nez p0, :cond_c2

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object p0

    goto :goto_c4

    :cond_c2
    sget-object v5, Lorg/bouncycastle/crypto/o;->a:Ljava/lang/ThreadLocal;

    :goto_c4
    const/4 v5, 0x7

    invoke-static {v5, p0}, Lm4/a;->c(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    const-wide/16 v5, 0x80

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    iget-object v0, v0, Le1/m;->q:Ljava/math/BigInteger;

    invoke-virtual {v4, p0, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {v1, p1}, Lm4/a;->i(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_data_fe
    .packed-switch 0x2
        :pswitch_86
    .end packed-switch
.end method

.method public c(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)Z
    .registers 10

    iget v0, p0, Lg1/d;->g:I

    packed-switch v0, :pswitch_data_140

    iget-object v0, p0, Lg1/d;->h:Ljava/lang/Object;

    check-cast v0, Le1/u;

    iget-object v0, v0, Le1/u;->d:Le1/r;

    iget-object v1, v0, Le1/r;->j:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    array-length v3, p3

    mul-int/lit8 v3, v3, 0x8

    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p3}, Ljava/math/BigInteger;-><init>(I[B)V

    if-ge v2, v3, :cond_21

    sub-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    :cond_21
    sget-object p3, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_d5

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_31

    goto/16 :goto_d5

    :cond_31
    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p3

    if-ltz p3, :cond_d5

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p3

    if-ltz p3, :cond_3f

    goto/16 :goto_d5

    :cond_3f
    invoke-static {v1, p2}, Lm4/a;->j(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    iget-object v0, v0, Le1/r;->i:Lk2/p;

    iget-object p0, p0, Lg1/d;->h:Ljava/lang/Object;

    check-cast p0, Le1/u;

    check-cast p0, Le1/x;

    iget-object p0, p0, Le1/x;->q:Lk2/p;

    invoke-static {v0, p3, p0, p2}, Lk2/b0;->J(Lk2/p;Ljava/math/BigInteger;Lk2/p;Ljava/math/BigInteger;)Lk2/p;

    move-result-object p0

    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result p2

    if-eqz p2, :cond_69

    goto/16 :goto_d5

    :cond_69
    iget-object p2, p0, Lk2/p;->a:Lk2/h;

    if-eqz p2, :cond_bf

    iget-object p3, p2, Lk2/h;->e:Ljava/math/BigInteger;

    if-eqz p3, :cond_bf

    sget-object v0, Lk2/a;->f:Ljava/math/BigInteger;

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p3

    if-gtz p3, :cond_bf

    iget p3, p2, Lk2/h;->f:I

    if-eq p3, v5, :cond_97

    const/4 v0, 0x2

    if-eq p3, v0, :cond_8e

    const/4 v0, 0x3

    if-eq p3, v0, :cond_8e

    const/4 v0, 0x4

    if-eq p3, v0, :cond_8e

    const/4 v0, 0x6

    if-eq p3, v0, :cond_97

    const/4 v0, 0x7

    if-eq p3, v0, :cond_97

    const/4 p3, 0x0

    goto :goto_9b

    :cond_8e
    invoke-virtual {p0}, Lk2/p;->j()Lk2/b0;

    move-result-object p3

    invoke-virtual {p3}, Lk2/b0;->F()Lk2/b0;

    move-result-object p3

    goto :goto_9b

    :cond_97
    invoke-virtual {p0}, Lk2/p;->j()Lk2/b0;

    move-result-object p3

    :goto_9b
    if-eqz p3, :cond_bf

    invoke-virtual {p3}, Lk2/b0;->t()Z

    move-result v0

    if-nez v0, :cond_bf

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    :goto_a5
    invoke-virtual {p2, p1}, Lk2/h;->o(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-virtual {p2, p1}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object v0

    invoke-virtual {v0, p3}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    goto :goto_d6

    :cond_ba
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_a5

    :cond_bf
    invoke-virtual {p0}, Lk2/p;->p()Lk2/p;

    move-result-object p0

    invoke-virtual {p0}, Lk2/p;->b()V

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-virtual {p0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_d6

    :cond_d5
    :goto_d5
    const/4 v5, 0x0

    :goto_d6
    return v5

    :pswitch_d7
    iget-object v0, p0, Lg1/d;->h:Ljava/lang/Object;

    check-cast v0, La3/a;

    iget-object v0, v0, La3/a;->d:Ljava/lang/Object;

    check-cast v0, Le1/m;

    iget-object v1, v0, Le1/m;->d:Ljava/math/BigInteger;

    invoke-static {v1, p3}, Lg1/d;->a(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object p3

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_13e

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_f8

    goto :goto_13e

    :cond_f8
    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_13e

    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_105

    goto :goto_13e

    :cond_105
    invoke-static {v1, p2}, Lm4/a;->j(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    iget-object v2, v0, Le1/m;->q:Ljava/math/BigInteger;

    iget-object v0, v0, Le1/m;->c:Ljava/math/BigInteger;

    invoke-virtual {v0, p3, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    iget-object p0, p0, Lg1/d;->h:Ljava/lang/Object;

    check-cast p0, La3/a;

    check-cast p0, Le1/o;

    iget-object p0, p0, Le1/o;->q:Ljava/math/BigInteger;

    invoke-virtual {p0, p2, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_13f

    :cond_13e
    :goto_13e
    const/4 p0, 0x0

    :goto_13f
    return p0

    :pswitch_data_140
    .packed-switch 0x2
        :pswitch_d7
    .end packed-switch
.end method

.method public d(I[B)V
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lg1/d;->i:Ljava/lang/Object;

    check-cast v1, Lb1/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x88

    new-array v2, v1, [B

    new-instance v3, Ls0/g0;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ls0/g0;-><init>(I)V

    const/4 v5, 0x0

    move/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual {v3, v7, v5, v6}, Ls0/n;->f([BII)V

    invoke-virtual {v3, v2, v5, v1}, Ls0/g0;->m([BII)I

    const-wide/16 v6, 0x0

    move v8, v5

    :goto_22
    const/16 v9, 0x8

    if-ge v8, v9, :cond_32

    aget-byte v9, v2, v8

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    mul-int/lit8 v11, v8, 0x8

    shl-long/2addr v9, v11

    or-long/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    :cond_32
    move v8, v5

    :goto_33
    if-ge v8, v4, :cond_3e

    iget-object v10, v0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v10, [I

    aput v5, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_33

    :cond_3e
    iget-object v8, v0, Lg1/d;->h:Ljava/lang/Object;

    check-cast v8, Li3/b;

    iget v8, v8, Li3/b;->i:I

    rsub-int v8, v8, 0x100

    :goto_46
    if-ge v8, v4, :cond_73

    :goto_48
    if-lt v9, v1, :cond_4e

    invoke-virtual {v3, v2, v5, v1}, Ls0/g0;->m([BII)I

    move v9, v5

    :cond_4e
    add-int/lit8 v10, v9, 0x1

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    if-gt v9, v8, :cond_71

    iget-object v11, v0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v11, [I

    aget v12, v11, v9

    aput v12, v11, v8

    const-wide/16 v12, 0x2

    const-wide/16 v14, 0x1

    and-long v16, v6, v14

    mul-long v16, v16, v12

    sub-long v14, v14, v16

    long-to-int v12, v14

    aput v12, v11, v9

    const/4 v9, 0x1

    shr-long/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    move v9, v10

    goto :goto_46

    :cond_71
    move v9, v10

    goto :goto_48

    :cond_73
    return-void
.end method

.method public e(I)Z
    .registers 8

    const v0, 0xffc00

    const/4 v1, 0x1

    if-le p1, v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    move v2, v0

    :goto_9
    const/16 v3, 0x100

    if-ge v2, v3, :cond_1f

    iget-object v3, p0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v2

    shr-int/lit8 v4, v3, 0x1f

    mul-int/lit8 v5, v3, 0x2

    and-int/2addr v4, v5

    sub-int/2addr v3, v4

    if-lt v3, p1, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1f
    return v0
.end method

.method public f(Lg1/a;)Lh1/c;
    .registers 16

    iget v0, p0, Lg1/d;->g:I

    const-string v1, "Requested security strength is not supported by the derivation function"

    const-string v2, "Not enough entropy for security strength required"

    const-string v3, "Insufficient entropy provided by entropy source"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x100

    packed-switch v0, :pswitch_data_f8

    new-instance v0, Lh1/b;

    iget-object v9, p0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v9, Ls0/e0;

    iget-object v10, p0, Lg1/d;->i:Ljava/lang/Object;

    check-cast v10, [B

    iget-object p0, p0, Lg1/d;->h:Ljava/lang/Object;

    check-cast p0, [B

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v11, Lh1/d;->a:Ljava/util/Hashtable;

    const-string v12, "SHA-512"

    invoke-virtual {v11, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v8, v11, :cond_7e

    invoke-interface {p1}, Lg1/a;->entropySize()I

    move-result v1

    if-lt v1, v8, :cond_78

    iput-object v9, v0, Lh1/b;->a:Ls0/e0;

    iput-object p1, v0, Lh1/b;->e:Lg1/a;

    iput v8, v0, Lh1/b;->f:I

    sget-object v1, Lh1/b;->i:Ljava/util/Hashtable;

    invoke-virtual {v1, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lh1/b;->g:I

    invoke-interface {p1}, Lg1/a;->getEntropy()[B

    move-result-object p1

    array-length v2, p1

    add-int/lit8 v8, v8, 0x7

    div-int/lit8 v8, v8, 0x8

    if-lt v2, v8, :cond_72

    invoke-static {p1, p0, v10}, Lm4/d;->k([B[B[B)[B

    move-result-object p0

    invoke-static {v9, p0, v1}, Lh1/d;->a(Ls0/e0;[BI)[B

    move-result-object p0

    iput-object p0, v0, Lh1/b;->b:[B

    array-length p1, p0

    add-int/2addr p1, v7

    new-array p1, p1, [B

    array-length v2, p0

    invoke-static {p0, v6, p1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v9, p1, v1}, Lh1/d;->a(Ls0/e0;[BI)[B

    move-result-object p0

    iput-object p0, v0, Lh1/b;->c:[B

    iput-wide v4, v0, Lh1/b;->d:J

    return-object v0

    :cond_72
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_78
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_84
    new-instance v0, Lh1/a;

    iget-object v9, p0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v9, Lz0/d;

    iget-object v10, p0, Lg1/d;->i:Ljava/lang/Object;

    check-cast v10, [B

    iget-object p0, p0, Lg1/d;->h:Ljava/lang/Object;

    check-cast p0, [B

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v11, Lh1/d;->a:Ljava/util/Hashtable;

    invoke-virtual {v9}, Lz0/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lh1/d;->a:Ljava/util/Hashtable;

    const-string v13, "/"

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v8, v11, :cond_f2

    invoke-interface {p1}, Lg1/a;->entropySize()I

    move-result v1

    if-lt v1, v8, :cond_ec

    iput v8, v0, Lh1/a;->f:I

    iput-object p1, v0, Lh1/a;->d:Lg1/a;

    iput-object v9, v0, Lh1/a;->e:Lz0/d;

    invoke-interface {p1}, Lg1/a;->getEntropy()[B

    move-result-object p1

    array-length v1, p1

    add-int/lit8 v8, v8, 0x7

    div-int/lit8 v8, v8, 0x8

    if-lt v1, v8, :cond_e6

    invoke-static {p1, p0, v10}, Lm4/d;->k([B[B[B)[B

    move-result-object p0

    iget p1, v9, Lz0/d;->h:I

    new-array v1, p1, [B

    iput-object v1, v0, Lh1/a;->a:[B

    new-array p1, p1, [B

    iput-object p1, v0, Lh1/a;->b:[B

    invoke-static {p1, v7}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual {v0, p0, v6}, Lh1/a;->c([BB)V

    if-eqz p0, :cond_e3

    invoke-virtual {v0, p0, v7}, Lh1/a;->c([BB)V

    :cond_e3
    iput-wide v4, v0, Lh1/a;->c:J

    return-object v0

    :cond_e6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ec
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_84
    .end packed-switch
.end method

.method public g()[B
    .registers 6

    iget v0, p0, Lg1/d;->g:I

    packed-switch v0, :pswitch_data_7e

    :try_start_5
    new-instance v0, Lm/g;

    invoke-direct {v0}, Lm/g;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    iget-object v3, p0, Lg1/d;->h:Ljava/lang/Object;

    check-cast v3, [Ljava/security/Signature;

    array-length v4, v3

    if-eq v2, v4, :cond_24

    new-instance v4, Lm/p0;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B

    move-result-object v3

    invoke-direct {v4, v3, v1}, Lm/b;-><init>([BI)V

    invoke-virtual {v0, v4}, Lm/g;->a(Lm/f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_24
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_30} :catch_4a
    .catch Ljava/security/SignatureException; {:try_start_5 .. :try_end_30} :catch_31

    return-object p0

    :catch_31
    move-exception p0

    new-instance v0, Lv2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception obtaining signature: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lv2/c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_4a
    move-exception p0

    new-instance v0, Lv2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception encoding signature: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lv2/c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :pswitch_5c
    :try_start_5c
    iget-object p0, p0, Lg1/d;->h:Ljava/lang/Object;

    check-cast p0, Ljava/security/Signature;

    invoke-virtual {p0}, Ljava/security/Signature;->sign()[B

    move-result-object p0
    :try_end_64
    .catch Ljava/security/SignatureException; {:try_start_5c .. :try_end_64} :catch_65

    return-object p0

    :catch_65
    move-exception p0

    new-instance v0, Lv2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception obtaining signature: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lv2/c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :pswitch_data_7e
    .packed-switch 0x6
        :pswitch_5c
    .end packed-switch
.end method

.method public getOrder()Ljava/math/BigInteger;
    .registers 2

    iget v0, p0, Lg1/d;->g:I

    iget-object p0, p0, Lg1/d;->h:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_18

    check-cast p0, Le1/u;

    iget-object p0, p0, Le1/u;->d:Le1/r;

    iget-object p0, p0, Le1/r;->j:Ljava/math/BigInteger;

    return-object p0

    :pswitch_e
    check-cast p0, La3/a;

    iget-object p0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, Le1/m;

    iget-object p0, p0, Le1/m;->d:Ljava/math/BigInteger;

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_e
    .end packed-switch
.end method

.method public h()V
    .registers 15

    iget-object v0, p0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v0, [I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Lm4/d;->r(II[I)[I

    move-result-object v0

    const/16 v1, 0x100

    const/4 v3, 0x1

    move v4, v1

    :goto_e
    if-ge v3, v1, :cond_40

    move v5, v2

    :goto_11
    if-ge v5, v1, :cond_3d

    add-int/lit8 v4, v4, -0x1

    sget-object v6, Li3/i;->a:[I

    aget v6, v6, v4

    mul-int/lit8 v6, v6, -0x1

    move v7, v5

    :goto_1c
    add-int v8, v5, v3

    if-ge v7, v8, :cond_3a

    aget v8, v0, v7

    add-int v9, v7, v3

    aget v10, v0, v9

    add-int/2addr v10, v8

    aput v10, v0, v7

    aget v10, v0, v9

    sub-int/2addr v8, v10

    aput v8, v0, v9

    int-to-long v10, v6

    int-to-long v12, v8

    mul-long/2addr v10, v12

    invoke-static {v10, v11}, Li3/i;->b(J)I

    move-result v8

    aput v8, v0, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    :cond_3a
    add-int v5, v7, v3

    goto :goto_11

    :cond_3d
    shl-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_40
    :goto_40
    if-ge v2, v1, :cond_52

    aget v3, v0, v2

    int-to-long v3, v3

    const-wide/32 v5, 0xa3fa

    mul-long/2addr v3, v5

    invoke-static {v3, v4}, Li3/i;->b(J)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_52
    iput-object v0, p0, Lg1/d;->j:Ljava/lang/Object;

    return-void
.end method

.method public i(Lg1/d;Lg1/d;)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x100

    if-ge v0, v1, :cond_21

    iget-object v1, p1, Lg1/d;->j:Ljava/lang/Object;

    check-cast v1, [I

    aget v1, v1, v0

    int-to-long v1, v1

    iget-object v3, p2, Lg1/d;->j:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v0

    int-to-long v3, v3

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Li3/i;->b(J)I

    move-result v1

    iget-object v2, p0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v2, [I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    return-void
.end method

.method public init(ZLorg/bouncycastle/crypto/g;)V
    .registers 6

    iget v0, p0, Lg1/d;->g:I

    packed-switch v0, :pswitch_data_8e

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    instance-of v1, p2, Le1/t0;

    if-eqz v1, :cond_17

    check-cast p2, Le1/t0;

    iget-object v1, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    check-cast v1, Le1/w;

    iput-object v1, p0, Lg1/d;->h:Ljava/lang/Object;

    iget-object p2, p2, Le1/t0;->c:Ljava/security/SecureRandom;

    goto :goto_20

    :cond_17
    check-cast p2, Le1/w;

    :goto_19
    iput-object p2, p0, Lg1/d;->h:Ljava/lang/Object;

    goto :goto_1f

    :cond_1c
    check-cast p2, Le1/x;

    goto :goto_19

    :goto_1f
    move-object p2, v0

    :goto_20
    iget-object v1, p0, Lg1/d;->h:Ljava/lang/Object;

    check-cast v1, Le1/u;

    const-string v2, "ECDSA"

    invoke-static {v2, v1, p1}, Lq4/k;->Z(Ljava/lang/String;Le1/u;Z)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    if-eqz p1, :cond_40

    iget-object p1, p0, Lg1/d;->j:Ljava/lang/Object;

    check-cast p1, Li1/b;

    invoke-interface {p1}, Li1/b;->c()Z

    move-result p1

    if-nez p1, :cond_40

    if-nez p2, :cond_3f

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v0

    goto :goto_40

    :cond_3f
    move-object v0, p2

    :cond_40
    :goto_40
    iput-object v0, p0, Lg1/d;->i:Ljava/lang/Object;

    return-void

    :pswitch_43
    const/4 v0, 0x0

    if-eqz p1, :cond_5a

    instance-of v1, p2, Le1/t0;

    if-eqz v1, :cond_55

    check-cast p2, Le1/t0;

    iget-object v1, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    check-cast v1, Le1/n;

    iput-object v1, p0, Lg1/d;->h:Ljava/lang/Object;

    iget-object p2, p2, Le1/t0;->c:Ljava/security/SecureRandom;

    goto :goto_5e

    :cond_55
    check-cast p2, Le1/n;

    :goto_57
    iput-object p2, p0, Lg1/d;->h:Ljava/lang/Object;

    goto :goto_5d

    :cond_5a
    check-cast p2, Le1/o;

    goto :goto_57

    :goto_5d
    move-object p2, v0

    :goto_5e
    iget-object v1, p0, Lg1/d;->h:Ljava/lang/Object;

    check-cast v1, La3/a;

    iget-object v1, v1, La3/a;->d:Ljava/lang/Object;

    check-cast v1, Le1/m;

    iget-object v1, v1, Le1/m;->q:Ljava/math/BigInteger;

    invoke-static {v1}, Lq4/k;->s(Ljava/math/BigInteger;)I

    sget-object v1, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_8a

    iget-object p1, p0, Lg1/d;->j:Ljava/lang/Object;

    check-cast p1, Li1/b;

    invoke-interface {p1}, Li1/b;->c()Z

    move-result p1

    if-nez p1, :cond_8a

    if-nez p2, :cond_89

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v0

    goto :goto_8a

    :cond_89
    move-object v0, p2

    :cond_8a
    :goto_8a
    iput-object v0, p0, Lg1/d;->i:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_8e
    .packed-switch 0x2
        :pswitch_43
    .end packed-switch
.end method

.method public j(I[B)V
    .registers 20

    move-object/from16 v0, p0

    const/16 v1, 0x8

    new-array v1, v1, [B

    iget-object v2, v0, Lg1/d;->h:Ljava/lang/Object;

    check-cast v2, Li3/b;

    iget v2, v2, Li3/b;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v2, v6, :cond_9b

    move v7, v3

    :goto_13
    const/16 v8, 0x20

    if-ge v7, v8, :cond_c1

    mul-int/lit8 v8, v7, 0x8

    iget-object v9, v0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v9, [I

    aget v10, v9, v8

    sub-int v10, v2, v10

    int-to-byte v10, v10

    aput-byte v10, v1, v3

    add-int/lit8 v11, v8, 0x1

    aget v11, v9, v11

    sub-int v11, v2, v11

    int-to-byte v11, v11

    aput-byte v11, v1, v5

    add-int/lit8 v12, v8, 0x2

    aget v12, v9, v12

    sub-int v12, v2, v12

    int-to-byte v12, v12

    aput-byte v12, v1, v6

    add-int/lit8 v13, v8, 0x3

    aget v13, v9, v13

    sub-int v13, v2, v13

    int-to-byte v13, v13

    const/4 v14, 0x3

    aput-byte v13, v1, v14

    add-int/lit8 v13, v8, 0x4

    aget v13, v9, v13

    sub-int v13, v2, v13

    int-to-byte v13, v13

    aput-byte v13, v1, v4

    add-int/lit8 v13, v8, 0x5

    aget v13, v9, v13

    sub-int v13, v2, v13

    int-to-byte v13, v13

    const/4 v15, 0x5

    aput-byte v13, v1, v15

    add-int/lit8 v13, v8, 0x6

    aget v13, v9, v13

    sub-int v13, v2, v13

    int-to-byte v13, v13

    const/16 v16, 0x6

    aput-byte v13, v1, v16

    const/4 v13, 0x7

    add-int/2addr v8, v13

    aget v8, v9, v8

    sub-int v8, v2, v8

    int-to-byte v8, v8

    aput-byte v8, v1, v13

    mul-int/lit8 v8, v7, 0x3

    add-int v8, v8, p1

    shl-int/lit8 v9, v11, 0x3

    or-int/2addr v9, v10

    shl-int/lit8 v10, v12, 0x6

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p2, v8

    add-int/lit8 v9, v8, 0x1

    aget-byte v10, v1, v6

    shr-int/2addr v10, v6

    aget-byte v11, v1, v14

    shl-int/2addr v11, v5

    or-int/2addr v10, v11

    aget-byte v11, v1, v4

    shl-int/2addr v11, v4

    or-int/2addr v10, v11

    aget-byte v11, v1, v15

    shl-int/2addr v11, v13

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p2, v9

    add-int/2addr v8, v6

    aget-byte v9, v1, v15

    shr-int/2addr v9, v5

    aget-byte v10, v1, v16

    shl-int/2addr v10, v6

    or-int/2addr v9, v10

    aget-byte v10, v1, v13

    shl-int/2addr v10, v15

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p2, v8

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_13

    :cond_9b
    if-ne v2, v4, :cond_c2

    move v6, v3

    :goto_9e
    const/16 v7, 0x80

    if-ge v6, v7, :cond_c1

    mul-int/lit8 v7, v6, 0x2

    iget-object v8, v0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v8, [I

    aget v9, v8, v7

    sub-int v9, v2, v9

    int-to-byte v9, v9

    aput-byte v9, v1, v3

    add-int/2addr v7, v5

    aget v7, v8, v7

    sub-int v7, v2, v7

    int-to-byte v7, v7

    aput-byte v7, v1, v5

    add-int v8, p1, v6

    shl-int/2addr v7, v4

    or-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, p2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_9e

    :cond_c1
    return-void

    :cond_c2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Eta needs to be 2 or 4!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k(I[B)V
    .registers 16

    iget-object v0, p0, Lg1/d;->h:Ljava/lang/Object;

    check-cast v0, Li3/b;

    iget v0, v0, Li3/b;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9c

    :goto_a
    const/16 v3, 0x20

    if-ge v1, v3, :cond_c7

    mul-int/lit8 v3, v1, 0x3

    add-int/2addr v3, p1

    mul-int/lit8 v4, v1, 0x8

    aget-byte v5, p2, v3

    and-int/lit8 v6, v5, 0x7

    iget-object v7, p0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v7, [I

    aput v6, v7, v4

    add-int/lit8 v6, v4, 0x1

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v8, v5, 0x3

    and-int/lit8 v8, v8, 0x7

    aput v8, v7, v6

    add-int/lit8 v8, v4, 0x2

    shr-int/lit8 v5, v5, 0x6

    add-int/lit8 v9, v3, 0x1

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v10, v9, 0x2

    and-int/lit8 v10, v10, 0x7

    or-int/2addr v5, v10

    aput v5, v7, v8

    add-int/lit8 v5, v4, 0x3

    shr-int/lit8 v10, v9, 0x1

    and-int/lit8 v10, v10, 0x7

    aput v10, v7, v5

    add-int/lit8 v10, v4, 0x4

    shr-int/lit8 v11, v9, 0x4

    and-int/lit8 v11, v11, 0x7

    aput v11, v7, v10

    add-int/lit8 v11, v4, 0x5

    shr-int/lit8 v9, v9, 0x7

    add-int/2addr v3, v2

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v12, v3, 0x1

    and-int/lit8 v12, v12, 0x7

    or-int/2addr v9, v12

    aput v9, v7, v11

    add-int/lit8 v9, v4, 0x6

    shr-int/lit8 v12, v3, 0x2

    and-int/lit8 v12, v12, 0x7

    aput v12, v7, v9

    add-int/lit8 v12, v4, 0x7

    shr-int/lit8 v3, v3, 0x5

    and-int/lit8 v3, v3, 0x7

    aput v3, v7, v12

    aget v3, v7, v4

    sub-int v3, v0, v3

    aput v3, v7, v4

    aget v3, v7, v6

    sub-int v3, v0, v3

    aput v3, v7, v6

    aget v3, v7, v8

    sub-int v3, v0, v3

    aput v3, v7, v8

    aget v3, v7, v5

    sub-int v3, v0, v3

    aput v3, v7, v5

    aget v3, v7, v10

    sub-int v3, v0, v3

    aput v3, v7, v10

    aget v3, v7, v11

    sub-int v3, v0, v3

    aput v3, v7, v11

    aget v3, v7, v9

    sub-int v3, v0, v3

    aput v3, v7, v9

    aget v3, v7, v12

    sub-int v3, v0, v3

    aput v3, v7, v12

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    :cond_9c
    const/4 v2, 0x4

    if-ne v0, v2, :cond_c7

    :goto_9f
    const/16 v3, 0x80

    if-ge v1, v3, :cond_c7

    mul-int/lit8 v3, v1, 0x2

    add-int v4, p1, v1

    aget-byte v4, p2, v4

    and-int/lit8 v5, v4, 0xf

    iget-object v6, p0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v6, [I

    aput v5, v6, v3

    add-int/lit8 v5, v3, 0x1

    and-int/lit16 v4, v4, 0xff

    shr-int/2addr v4, v2

    aput v4, v6, v5

    aget v4, v6, v3

    sub-int v4, v0, v4

    aput v4, v6, v3

    aget v3, v6, v5

    sub-int v3, v0, v3

    aput v3, v6, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_9f

    :cond_c7
    return-void
.end method

.method public l()V
    .registers 13

    iget-object v0, p0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v0, [I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Lm4/d;->r(II[I)[I

    move-result-object v0

    const/16 v1, 0x80

    move v3, v2

    :goto_d
    if-lez v1, :cond_3d

    move v4, v2

    :goto_10
    const/16 v5, 0x100

    if-ge v4, v5, :cond_3a

    add-int/lit8 v3, v3, 0x1

    sget-object v5, Li3/i;->a:[I

    aget v5, v5, v3

    move v6, v4

    :goto_1b
    add-int v7, v4, v1

    if-ge v6, v7, :cond_37

    int-to-long v7, v5

    add-int v9, v6, v1

    aget v10, v0, v9

    int-to-long v10, v10

    mul-long/2addr v7, v10

    invoke-static {v7, v8}, Li3/i;->b(J)I

    move-result v7

    aget v8, v0, v6

    sub-int/2addr v8, v7

    aput v8, v0, v9

    aget v8, v0, v6

    add-int/2addr v8, v7

    aput v8, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_37
    add-int v4, v6, v1

    goto :goto_10

    :cond_3a
    ushr-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_3d
    iput-object v0, p0, Lg1/d;->j:Ljava/lang/Object;

    return-void
.end method

.method public m()V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x100

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v1, [I

    aget v2, v1, v0

    const/high16 v3, 0x400000

    add-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x17

    const v4, 0x7fe001

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    return-void
.end method

.method public p([BS)V
    .registers 13

    iget-object v0, p0, Lg1/d;->i:Ljava/lang/Object;

    check-cast v0, Lb1/b;

    iget-object v1, p0, Lg1/d;->h:Ljava/lang/Object;

    check-cast v1, Li3/b;

    iget v7, v1, Li3/b;->h:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v7, v2, :cond_13

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v3, v1

    goto :goto_1a

    :cond_13
    const/4 v3, 0x4

    if-ne v7, v3, :cond_5a

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v3, v2

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lb1/b;->i:Ljava/lang/Object;

    check-cast v0, Ls0/g0;

    const/16 v8, 0x88

    mul-int/lit16 v6, v3, 0x88

    new-array v5, v6, [B

    invoke-virtual {v0}, Ls0/n;->reset()V

    int-to-byte v3, p2

    shr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    new-array v4, v2, [B

    const/4 v9, 0x0

    aput-byte v3, v4, v9

    aput-byte p2, v4, v1

    array-length p2, p1

    invoke-virtual {v0, p1, v9, p2}, Ls0/n;->f([BII)V

    invoke-virtual {v0, v4, v9, v2}, Ls0/n;->f([BII)V

    invoke-virtual {v0, v5, v9, v6}, Ls0/g0;->m([BII)I

    const/4 v3, 0x0

    const/16 v4, 0x100

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lg1/d;->n(Lg1/d;II[BII)I

    move-result p0

    move v3, p0

    :goto_48
    const/16 p0, 0x100

    if-ge v3, p0, :cond_59

    invoke-virtual {v0, v5, v9, v8}, Ls0/g0;->m([BII)I

    rsub-int v4, v3, 0x100

    const/16 v6, 0x88

    invoke-static/range {v2 .. v7}, Lg1/d;->n(Lg1/d;II[BII)I

    move-result p0

    add-int/2addr v3, p0

    goto :goto_48

    :cond_59
    return-void

    :cond_5a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Wrong Dilithium Eta!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lg1/d;->g:I

    packed-switch v0, :pswitch_data_3a

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_12
    iget-object v2, p0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v2, [I

    array-length v3, v2

    if-ge v1, v3, :cond_2f

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg1/d;->j:Ljava/lang/Object;

    check-cast v2, [I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2c

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2f
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_3a
    .packed-switch 0x4
        :pswitch_a
    .end packed-switch
.end method
