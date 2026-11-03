.class public Lx0/a;
.super Lorg/bouncycastle/crypto/f;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lx0/a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .registers 4

    iget v0, p0, Lx0/a;->c:I

    packed-switch v0, :pswitch_data_64

    invoke-super {p0}, Lorg/bouncycastle/crypto/f;->a()[B

    move-result-object p0

    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_47

    const/4 v0, 0x3

    aget-byte v1, p0, v0

    const/16 v2, 0xf

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x7

    aget-byte v1, p0, v0

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/16 v0, 0xb

    aget-byte v1, p0, v0

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    aget-byte v0, p0, v2

    and-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    const/4 v0, 0x4

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, -0x4

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/16 v0, 0x8

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, -0x4

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/16 v0, 0xc

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, -0x4

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-object p0

    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Poly1305 key must be 256 bits."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4f
    const/16 v0, 0x8

    new-array v0, v0, [B

    :cond_53
    iget-object v1, p0, Lorg/bouncycastle/crypto/f;->a:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0}, Le1/c;->c([B)V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Le1/c;->b(I[B)Z

    move-result v1

    if-nez v1, :cond_53

    return-object v0

    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_4f
    .end packed-switch
.end method

.method public b(Lorg/bouncycastle/crypto/z;)V
    .registers 4

    iget v0, p0, Lx0/a;->c:I

    packed-switch v0, :pswitch_data_3a

    new-instance v0, Lorg/bouncycastle/crypto/z;

    iget-object p1, p1, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast p1, Ljava/security/SecureRandom;

    const/16 v1, 0x100

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/crypto/z;-><init>(ILjava/security/SecureRandom;)V

    invoke-super {p0, v0}, Lorg/bouncycastle/crypto/f;->b(Lorg/bouncycastle/crypto/z;)V

    return-void

    :pswitch_14
    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/f;->b(Lorg/bouncycastle/crypto/z;)V

    iget p1, p0, Lorg/bouncycastle/crypto/f;->b:I

    const/16 v0, 0x8

    if-eqz p1, :cond_2c

    const/4 v1, 0x7

    if-ne p1, v1, :cond_21

    goto :goto_2c

    :cond_21
    if-ne p1, v0, :cond_24

    goto :goto_2e

    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DES key must be 64 bits long."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    :goto_2c
    iput v0, p0, Lorg/bouncycastle/crypto/f;->b:I

    :goto_2e
    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_14
    .end packed-switch
.end method
