.class public final Lz0/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b0;


# static fields
.field public static final n:Ljava/util/Hashtable;


# instance fields
.field public final g:Lorg/bouncycastle/crypto/v;

.field public final h:I

.field public final i:I

.field public j:Lm4/e;

.field public k:Lm4/e;

.field public final l:[B

.field public final m:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lz0/d;->n:Ljava/util/Hashtable;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GOST3411"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MD2"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MD4"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "MD5"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "RIPEMD128"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "RIPEMD160"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA-1"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA-224"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA-256"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SHA-384"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "SHA-512"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Tiger"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Whirlpool"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/v;)V
    .registers 4

    instance-of v0, p1, Lorg/bouncycastle/crypto/w;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/w;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/w;->getByteLength()I

    move-result v0

    goto :goto_1e

    :cond_c
    sget-object v0, Lz0/d;->n:Ljava/util/Hashtable;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/v;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/d;->g:Lorg/bouncycastle/crypto/v;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result p1

    iput p1, p0, Lz0/d;->h:I

    iput v0, p0, Lz0/d;->i:I

    new-array v1, v0, [B

    iput-object v1, p0, Lz0/d;->l:[B

    add-int/2addr v0, p1

    new-array p1, v0, [B

    iput-object p1, p0, Lz0/d;->m:[B

    return-void

    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown digest passed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/v;->getAlgorithmName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final doFinal([BI)I
    .registers 8

    iget-object p2, p0, Lz0/d;->g:Lorg/bouncycastle/crypto/v;

    iget-object v0, p0, Lz0/d;->m:[B

    iget v1, p0, Lz0/d;->i:I

    invoke-interface {p2, v0, v1}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    iget-object v2, p0, Lz0/d;->k:Lm4/e;

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    move-object v4, p2

    check-cast v4, Lm4/e;

    invoke-interface {v4, v2}, Lm4/e;->c(Lm4/e;)V

    invoke-interface {p2}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v2

    invoke-interface {p2, v0, v1, v2}, Lorg/bouncycastle/crypto/v;->update([BII)V

    goto :goto_20

    :cond_1c
    array-length v2, v0

    invoke-interface {p2, v0, v3, v2}, Lorg/bouncycastle/crypto/v;->update([BII)V

    :goto_20
    invoke-interface {p2, p1, v3}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    move-result p1

    :goto_24
    array-length v2, v0

    if-ge v1, v2, :cond_2c

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_2c
    iget-object v0, p0, Lz0/d;->j:Lm4/e;

    if-eqz v0, :cond_36

    check-cast p2, Lm4/e;

    invoke-interface {p2, v0}, Lm4/e;->c(Lm4/e;)V

    return p1

    :cond_36
    iget-object p0, p0, Lz0/d;->l:[B

    array-length v0, p0

    invoke-interface {p2, p0, v3, v0}, Lorg/bouncycastle/crypto/v;->update([BII)V

    return p1
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lz0/d;->g:Lorg/bouncycastle/crypto/v;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/v;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/HMAC"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMacSize()I
    .registers 1

    iget p0, p0, Lz0/d;->h:I

    return p0
.end method

.method public final init(Lorg/bouncycastle/crypto/g;)V
    .registers 8

    iget-object v0, p0, Lz0/d;->g:Lorg/bouncycastle/crypto/v;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->reset()V

    check-cast p1, Le1/o0;

    iget-object p1, p1, Le1/o0;->c:[B

    array-length v1, p1

    iget-object v2, p0, Lz0/d;->l:[B

    const/4 v3, 0x0

    iget v4, p0, Lz0/d;->i:I

    if-le v1, v4, :cond_1a

    invoke-interface {v0, p1, v3, v1}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v0, v2, v3}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    iget v1, p0, Lz0/d;->h:I

    goto :goto_1d

    :cond_1a
    invoke-static {p1, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1d
    array-length p1, v2

    if-ge v1, p1, :cond_25

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_25
    iget-object p1, p0, Lz0/d;->m:[B

    invoke-static {v2, v3, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v3

    :goto_2b
    if-ge v1, v4, :cond_37

    aget-byte v5, v2, v1

    xor-int/lit8 v5, v5, 0x36

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_37
    move v1, v3

    :goto_38
    if-ge v1, v4, :cond_44

    aget-byte v5, p1, v1

    xor-int/lit8 v5, v5, 0x5c

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_44
    instance-of v1, v0, Lm4/e;

    if-eqz v1, :cond_56

    move-object v5, v0

    check-cast v5, Lm4/e;

    invoke-interface {v5}, Lm4/e;->a()Lm4/e;

    move-result-object v5

    iput-object v5, p0, Lz0/d;->k:Lm4/e;

    check-cast v5, Lorg/bouncycastle/crypto/v;

    invoke-interface {v5, p1, v3, v4}, Lorg/bouncycastle/crypto/v;->update([BII)V

    :cond_56
    array-length p1, v2

    invoke-interface {v0, v2, v3, p1}, Lorg/bouncycastle/crypto/v;->update([BII)V

    if-eqz v1, :cond_64

    check-cast v0, Lm4/e;

    invoke-interface {v0}, Lm4/e;->a()Lm4/e;

    move-result-object p1

    iput-object p1, p0, Lz0/d;->j:Lm4/e;

    :cond_64
    return-void
.end method

.method public final reset()V
    .registers 4

    iget-object v0, p0, Lz0/d;->j:Lm4/e;

    iget-object v1, p0, Lz0/d;->g:Lorg/bouncycastle/crypto/v;

    if-eqz v0, :cond_c

    check-cast v1, Lm4/e;

    invoke-interface {v1, v0}, Lm4/e;->c(Lm4/e;)V

    return-void

    :cond_c
    invoke-interface {v1}, Lorg/bouncycastle/crypto/v;->reset()V

    const/4 v0, 0x0

    iget-object p0, p0, Lz0/d;->l:[B

    array-length v2, p0

    invoke-interface {v1, p0, v0, v2}, Lorg/bouncycastle/crypto/v;->update([BII)V

    return-void
.end method

.method public final update(B)V
    .registers 2

    iget-object p0, p0, Lz0/d;->g:Lorg/bouncycastle/crypto/v;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/v;->update(B)V

    return-void
.end method

.method public final update([BII)V
    .registers 4

    iget-object p0, p0, Lz0/d;->g:Lorg/bouncycastle/crypto/v;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/v;->update([BII)V

    return-void
.end method
