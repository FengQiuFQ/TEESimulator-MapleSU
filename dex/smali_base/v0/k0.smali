.class public Lv0/k0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/o0;


# instance fields
.field public g:B

.field public h:[B

.field public i:B

.field public j:[B

.field public k:[B


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lv0/k0;->g:B

    const/4 v1, 0x0

    iput-object v1, p0, Lv0/k0;->h:[B

    iput-byte v0, p0, Lv0/k0;->i:B

    return-void
.end method


# virtual methods
.method public a([B[B)V
    .registers 10

    const/4 v0, 0x0

    iput-byte v0, p0, Lv0/k0;->i:B

    const/16 v1, 0x100

    new-array v2, v1, [B

    iput-object v2, p0, Lv0/k0;->h:[B

    move v2, v0

    :goto_a
    if-ge v2, v1, :cond_14

    iget-object v3, p0, Lv0/k0;->h:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_14
    move v1, v0

    :goto_15
    const/16 v2, 0x300

    if-ge v1, v2, :cond_3b

    iget-object v2, p0, Lv0/k0;->h:[B

    iget-byte v3, p0, Lv0/k0;->i:B

    and-int/lit16 v4, v1, 0xff

    aget-byte v5, v2, v4

    add-int/2addr v3, v5

    array-length v6, p1

    rem-int v6, v1, v6

    aget-byte v6, p1, v6

    add-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v2, v3

    iput-byte v3, p0, Lv0/k0;->i:B

    and-int/lit16 v6, v3, 0xff

    aget-byte v6, v2, v6

    aput-byte v6, v2, v4

    and-int/lit16 v3, v3, 0xff

    aput-byte v5, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_3b
    move p1, v0

    :goto_3c
    if-ge p1, v2, :cond_60

    iget-object v1, p0, Lv0/k0;->h:[B

    iget-byte v3, p0, Lv0/k0;->i:B

    and-int/lit16 v4, p1, 0xff

    aget-byte v5, v1, v4

    add-int/2addr v3, v5

    array-length v6, p2

    rem-int v6, p1, v6

    aget-byte v6, p2, v6

    add-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v1, v3

    iput-byte v3, p0, Lv0/k0;->i:B

    and-int/lit16 v6, v3, 0xff

    aget-byte v6, v1, v6

    aput-byte v6, v1, v4

    and-int/lit16 v3, v3, 0xff

    aput-byte v5, v1, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_3c

    :cond_60
    iput-byte v0, p0, Lv0/k0;->g:B

    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "VMPC"

    return-object p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 6

    instance-of p1, p2, Le1/s0;

    if-eqz p1, :cond_50

    move-object p1, p2

    check-cast p1, Le1/s0;

    iget-object v0, p1, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    instance-of v1, v0, Le1/o0;

    if-eqz v1, :cond_48

    check-cast v0, Le1/o0;

    iget-object p1, p1, Le1/s0;->c:[B

    iput-object p1, p0, Lv0/k0;->j:[B

    if-eqz p1, :cond_40

    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_40

    array-length v1, p1

    const/16 v2, 0x300

    if-gt v1, v2, :cond_40

    iget-object v0, v0, Le1/o0;->c:[B

    iput-object v0, p0, Lv0/k0;->k:[B

    invoke-virtual {p0, v0, p1}, Lv0/k0;->a([B[B)V

    iget-object p0, p0, Lv0/k0;->k:[B

    array-length p0, p0

    instance-of p0, p2, Lorg/bouncycastle/crypto/j;

    if-nez p0, :cond_38

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params should not be CryptoServicePurpose"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "VMPC requires 1 to 768 bytes of IV"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "VMPC init parameters must include a key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_50
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "VMPC init parameters must include an IV"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final processBytes([BII[BI)I
    .registers 14

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4d

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_45

    const/4 v0, 0x0

    :goto_b
    if-ge v0, p3, :cond_44

    iget-object v1, p0, Lv0/k0;->h:[B

    iget-byte v2, p0, Lv0/k0;->i:B

    iget-byte v3, p0, Lv0/k0;->g:B

    and-int/lit16 v4, v3, 0xff

    aget-byte v5, v1, v4

    add-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v1, v2

    iput-byte v2, p0, Lv0/k0;->i:B

    and-int/lit16 v2, v2, 0xff

    aget-byte v6, v1, v2

    and-int/lit16 v7, v6, 0xff

    aget-byte v7, v1, v7

    add-int/lit8 v7, v7, 0x1

    and-int/lit16 v7, v7, 0xff

    aget-byte v7, v1, v7

    aput-byte v6, v1, v4

    aput-byte v5, v1, v2

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    iput-byte v1, p0, Lv0/k0;->g:B

    add-int v1, v0, p5

    add-int v2, v0, p2

    aget-byte v2, p1, v2

    xor-int/2addr v2, v7

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_44
    return p3

    :cond_45
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4d
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reset()V
    .registers 3

    iget-object v0, p0, Lv0/k0;->k:[B

    iget-object v1, p0, Lv0/k0;->j:[B

    invoke-virtual {p0, v0, v1}, Lv0/k0;->a([B[B)V

    return-void
.end method
