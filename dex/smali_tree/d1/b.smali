.class public final Ld1/b;
.super Ljava/lang/Object;

# interfaces
.implements Ld1/a;
.implements Lorg/bouncycastle/crypto/b;


# instance fields
.field public final synthetic g:I

.field public h:Ljava/security/SecureRandom;


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Ld1/b;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e([B)I
    .registers 3

    iget p0, p0, Ld1/b;->g:I

    packed-switch p0, :pswitch_data_38

    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    array-length p1, p1

    sub-int/2addr p1, p0

    add-int/lit8 v0, p0, -0x1

    or-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x1f

    if-nez p1, :cond_16

    return p0

    :cond_16
    new-instance p0, Lorg/bouncycastle/crypto/x;

    const-string p1, "pad block corrupted"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1e
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    array-length p1, p1

    sub-int/2addr p1, p0

    add-int/lit8 v0, p0, -0x1

    or-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x1f

    if-nez p1, :cond_2f

    return p0

    :cond_2f
    new-instance p0, Lorg/bouncycastle/crypto/x;

    const-string p1, "pad block corrupted"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_1e
    .end packed-switch
.end method

.method public g()Lorg/bouncycastle/crypto/m;
    .registers 3

    iget v0, p0, Ld1/b;->g:I

    packed-switch v0, :pswitch_data_4a

    new-instance v0, Le1/e1;

    iget-object p0, p0, Ld1/b;->h:Ljava/security/SecureRandom;

    invoke-direct {v0, p0}, Le1/e1;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Le1/e1;->a()Le1/f1;

    move-result-object p0

    new-instance v1, Lorg/bouncycastle/crypto/m;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/crypto/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :pswitch_16
    new-instance v0, Le1/c1;

    iget-object p0, p0, Ld1/b;->h:Ljava/security/SecureRandom;

    invoke-direct {v0, p0}, Le1/c1;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Le1/c1;->a()Le1/d1;

    move-result-object p0

    new-instance v1, Lorg/bouncycastle/crypto/m;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/crypto/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :pswitch_27
    new-instance v0, Le1/a0;

    iget-object p0, p0, Ld1/b;->h:Ljava/security/SecureRandom;

    invoke-direct {v0, p0}, Le1/a0;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Le1/a0;->a()Le1/b0;

    move-result-object p0

    new-instance v1, Lorg/bouncycastle/crypto/m;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/crypto/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :pswitch_38
    new-instance v0, Le1/y;

    iget-object p0, p0, Ld1/b;->h:Ljava/security/SecureRandom;

    invoke-direct {v0, p0}, Le1/y;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Le1/y;->a()Le1/z;

    move-result-object p0

    new-instance v1, Lorg/bouncycastle/crypto/m;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/crypto/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    nop

    :pswitch_data_4a
    .packed-switch 0x2
        :pswitch_38
        :pswitch_27
        :pswitch_16
    .end packed-switch
.end method

.method public i(Ljava/security/SecureRandom;)V
    .registers 3

    iget v0, p0, Ld1/b;->g:I

    packed-switch v0, :pswitch_data_14

    iput-object p1, p0, Ld1/b;->h:Ljava/security/SecureRandom;

    return-void

    :pswitch_8
    if-nez p1, :cond_f

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object p1

    goto :goto_11

    :cond_f
    sget-object v0, Lorg/bouncycastle/crypto/o;->a:Ljava/lang/ThreadLocal;

    :goto_11
    iput-object p1, p0, Ld1/b;->h:Ljava/security/SecureRandom;

    return-void

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public k(I[B)I
    .registers 5

    iget v0, p0, Ld1/b;->g:I

    packed-switch v0, :pswitch_data_3a

    array-length v0, p2

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    :goto_8
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_1f

    iget-object v1, p0, Ld1/b;->h:Ljava/security/SecureRandom;

    if-nez v1, :cond_15

    const/4 v1, 0x0

    aput-byte v1, p2, p1

    goto :goto_1c

    :cond_15
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p2, p1

    :goto_1c
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_1f
    aput-byte v0, p2, p1

    return v0

    :pswitch_22
    array-length v0, p2

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    :goto_25
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_36

    iget-object v1, p0, Ld1/b;->h:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_25

    :cond_36
    aput-byte v0, p2, p1

    return v0

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_22
    .end packed-switch
.end method

.method public m(Lorg/bouncycastle/crypto/z;)V
    .registers 3

    iget v0, p0, Ld1/b;->g:I

    packed-switch v0, :pswitch_data_4e

    iget-object p1, p1, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast p1, Ljava/security/SecureRandom;

    iput-object p1, p0, Ld1/b;->h:Ljava/security/SecureRandom;

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_17
    iget-object p1, p1, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast p1, Ljava/security/SecureRandom;

    iput-object p1, p0, Ld1/b;->h:Ljava/security/SecureRandom;

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_29
    iget-object p1, p1, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast p1, Ljava/security/SecureRandom;

    iput-object p1, p0, Ld1/b;->h:Ljava/security/SecureRandom;

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_3b
    iget-object p1, p1, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast p1, Ljava/security/SecureRandom;

    iput-object p1, p0, Ld1/b;->h:Ljava/security/SecureRandom;

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x2
        :pswitch_3b
        :pswitch_29
        :pswitch_17
    .end packed-switch
.end method
