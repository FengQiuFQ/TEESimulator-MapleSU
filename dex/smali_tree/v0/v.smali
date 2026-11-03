.class public final Lv0/v;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/o0;


# instance fields
.field public g:[B

.field public h:I

.field public i:I

.field public j:[B


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lv0/v;->g:[B

    const/4 v1, 0x0

    iput v1, p0, Lv0/v;->h:I

    iput v1, p0, Lv0/v;->i:I

    iput-object v0, p0, Lv0/v;->j:[B

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a([B)V
    .registers 9

    iput-object p1, p0, Lv0/v;->j:[B

    const/4 v0, 0x0

    iput v0, p0, Lv0/v;->h:I

    iput v0, p0, Lv0/v;->i:I

    iget-object v1, p0, Lv0/v;->g:[B

    const/16 v2, 0x100

    if-nez v1, :cond_11

    new-array v1, v2, [B

    iput-object v1, p0, Lv0/v;->g:[B

    :cond_11
    move v1, v0

    :goto_12
    if-ge v1, v2, :cond_1c

    iget-object v3, p0, Lv0/v;->g:[B

    int-to-byte v4, v1

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1c
    move v1, v0

    move v3, v1

    :goto_1e
    if-ge v0, v2, :cond_39

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lv0/v;->g:[B

    aget-byte v6, v5, v0

    add-int/2addr v4, v6

    add-int/2addr v4, v3

    and-int/lit16 v3, v4, 0xff

    aget-byte v4, v5, v3

    aput-byte v4, v5, v0

    aput-byte v6, v5, v3

    add-int/lit8 v1, v1, 0x1

    array-length v4, p1

    rem-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_39
    return-void
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "RC4"

    return-object p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 3

    instance-of p1, p2, Le1/o0;

    if-eqz p1, :cond_26

    move-object p1, p2

    check-cast p1, Le1/o0;

    iget-object p1, p1, Le1/o0;->c:[B

    iput-object p1, p0, Lv0/v;->j:[B

    invoke-virtual {p0, p1}, Lv0/v;->a([B)V

    instance-of p0, p2, Lorg/bouncycastle/crypto/j;

    if-nez p0, :cond_1e

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params should not be CryptoServicePurpose"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameter passed to RC4 init - "

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->c(Ljava/lang/String;Lorg/bouncycastle/crypto/g;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final processBytes([BII[BI)I
    .registers 12

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_43

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_3b

    const/4 v0, 0x0

    :goto_b
    if-ge v0, p3, :cond_3a

    iget v1, p0, Lv0/v;->h:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lv0/v;->h:I

    iget-object v2, p0, Lv0/v;->g:[B

    aget-byte v3, v2, v1

    iget v4, p0, Lv0/v;->i:I

    add-int/2addr v4, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lv0/v;->i:I

    aget-byte v5, v2, v4

    aput-byte v5, v2, v1

    aput-byte v3, v2, v4

    add-int v4, v0, p5

    add-int v5, v0, p2

    aget-byte v5, p1, v5

    aget-byte v1, v2, v1

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v2, v1

    xor-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, p4, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_3a
    return p3

    :cond_3b
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_43
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reset()V
    .registers 2

    iget-object v0, p0, Lv0/v;->j:[B

    invoke-virtual {p0, v0}, Lv0/v;->a([B)V

    return-void
.end method
