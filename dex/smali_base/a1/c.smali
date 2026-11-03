.class public final La1/c;
.super Lorg/bouncycastle/crypto/s;


# instance fields
.field public final g:[B

.field public h:[B

.field public i:[B

.field public final j:I

.field public final k:Lorg/bouncycastle/crypto/d;

.field public l:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p1

    iput p1, p0, La1/c;->j:I

    new-array v0, p1, [B

    iput-object v0, p0, La1/c;->g:[B

    new-array v0, p1, [B

    iput-object v0, p0, La1/c;->h:[B

    new-array p1, p1, [B

    iput-object p1, p0, La1/c;->i:[B

    return-void
.end method


# virtual methods
.method public final b(II[B[B)I
    .registers 12

    iget-boolean v0, p0, La1/c;->l:Z

    const-string v1, "input buffer too short"

    iget-object v2, p0, La1/c;->k:Lorg/bouncycastle/crypto/d;

    iget v3, p0, La1/c;->j:I

    const/4 v4, 0x0

    if-eqz v0, :cond_35

    add-int v0, p1, v3

    array-length v5, p3

    if-gt v0, v5, :cond_2f

    move v0, v4

    :goto_11
    if-ge v0, v3, :cond_22

    iget-object v1, p0, La1/c;->h:[B

    aget-byte v5, v1, v0

    add-int v6, p1, v0

    aget-byte v6, p3, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_22
    iget-object p1, p0, La1/c;->h:[B

    invoke-interface {v2, v4, p2, p1, p4}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move-result p1

    iget-object p0, p0, La1/c;->h:[B

    array-length p3, p0

    invoke-static {p4, p2, p0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p1

    :cond_2f
    new-instance p0, Lorg/bouncycastle/crypto/q;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    add-int v0, p1, v3

    array-length v5, p3

    if-gt v0, v5, :cond_5d

    iget-object v0, p0, La1/c;->i:[B

    invoke-static {p3, p1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    move-result p1

    :goto_43
    if-ge v4, v3, :cond_54

    add-int p3, p2, v4

    aget-byte v0, p4, p3

    iget-object v1, p0, La1/c;->h:[B

    aget-byte v1, v1, v4

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p4, p3

    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    :cond_54
    iget-object p2, p0, La1/c;->h:[B

    iget-object p3, p0, La1/c;->i:[B

    iput-object p3, p0, La1/c;->h:[B

    iput-object p2, p0, La1/c;->i:[B

    return p1

    :cond_5d
    new-instance p0, Lorg/bouncycastle/crypto/q;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()I
    .registers 1

    iget-object p0, p0, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p0

    return p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/CBC"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 9

    iget-boolean v0, p0, La1/c;->l:Z

    iput-boolean p1, p0, La1/c;->l:Z

    instance-of v1, p2, Le1/s0;

    iget-object v2, p0, La1/c;->g:[B

    const/4 v3, 0x0

    if-eqz v1, :cond_23

    check-cast p2, Le1/s0;

    iget-object v1, p2, Le1/s0;->c:[B

    array-length v4, v1

    iget v5, p0, La1/c;->j:I

    if-ne v4, v5, :cond_1b

    array-length v4, v1

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    goto :goto_26

    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "initialisation vector must be the same length as block size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    :goto_26
    invoke-virtual {p0}, La1/c;->reset()V

    if-eqz p2, :cond_31

    iget-object p0, p0, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void

    :cond_31
    if-ne v0, p1, :cond_34

    return-void

    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot change encrypting state without providing key."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reset()V
    .registers 5

    iget-object v0, p0, La1/c;->h:[B

    iget-object v1, p0, La1/c;->g:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, La1/c;->i:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    iget-object p0, p0, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->reset()V

    return-void
.end method
