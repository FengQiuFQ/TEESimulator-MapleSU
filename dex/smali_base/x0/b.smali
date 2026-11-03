.class public final Lx0/b;
.super Lx0/a;


# virtual methods
.method public final a()[B
    .registers 7

    iget v0, p0, Lorg/bouncycastle/crypto/f;->b:I

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :cond_6
    :goto_6
    iget-object v4, p0, Lorg/bouncycastle/crypto/f;->a:Ljava/security/SecureRandom;

    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v1}, Le1/c;->c([B)V

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x14

    if-ge v3, v4, :cond_27

    move v4, v2

    :goto_15
    if-ge v4, v0, :cond_21

    invoke-static {v4, v1}, Le1/c;->b(I[B)Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_6

    :cond_1e
    add-int/lit8 v4, v4, 0x8

    goto :goto_15

    :cond_21
    invoke-static {v1}, Le1/c;->a([B)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_27
    :goto_27
    if-ge v2, v0, :cond_32

    invoke-static {v2, v1}, Le1/c;->b(I[B)Z

    move-result p0

    if-nez p0, :cond_39

    add-int/lit8 v2, v2, 0x8

    goto :goto_27

    :cond_32
    invoke-static {v1}, Le1/c;->a([B)Z

    move-result p0

    if-eqz p0, :cond_39

    return-object v1

    :cond_39
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to generate DES-EDE key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Lorg/bouncycastle/crypto/z;)V
    .registers 5

    iget-object v0, p1, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast v0, Ljava/security/SecureRandom;

    iput-object v0, p0, Lorg/bouncycastle/crypto/f;->a:Ljava/security/SecureRandom;

    iget p1, p1, Lorg/bouncycastle/crypto/z;->g:I

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/bouncycastle/crypto/f;->b:I

    const/16 v0, 0x18

    if-eqz p1, :cond_2d

    const/16 v1, 0x15

    if-ne p1, v1, :cond_17

    goto :goto_2d

    :cond_17
    const/16 v1, 0xe

    const/16 v2, 0x10

    if-ne p1, v1, :cond_20

    iput v2, p0, Lorg/bouncycastle/crypto/f;->b:I

    goto :goto_2f

    :cond_20
    if-eq p1, v0, :cond_2f

    if-ne p1, v2, :cond_25

    goto :goto_2f

    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DESede key must be 192 or 128 bits long."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    :goto_2d
    iput v0, p0, Lorg/bouncycastle/crypto/f;->b:I

    :cond_2f
    :goto_2f
    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
