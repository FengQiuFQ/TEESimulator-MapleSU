.class public Lorg/bouncycastle/crypto/f;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/security/SecureRandom;

.field public b:I


# virtual methods
.method public a()[B
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/f;->b:I

    new-array v0, v0, [B

    iget-object p0, p0, Lorg/bouncycastle/crypto/f;->a:Ljava/security/SecureRandom;

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public b(Lorg/bouncycastle/crypto/z;)V
    .registers 3

    iget-object v0, p1, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast v0, Ljava/security/SecureRandom;

    iput-object v0, p0, Lorg/bouncycastle/crypto/f;->a:Ljava/security/SecureRandom;

    iget p1, p1, Lorg/bouncycastle/crypto/z;->g:I

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/bouncycastle/crypto/f;->b:I

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
