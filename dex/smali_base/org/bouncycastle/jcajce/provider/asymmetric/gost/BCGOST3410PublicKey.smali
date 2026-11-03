.class public Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;
.super Ljava/lang/Object;

# interfaces
.implements Lh2/j;


# static fields
.field static final serialVersionUID:J = -0x56c0189c9719fcd6L


# instance fields
.field private transient gost3410Spec:Lh2/h;

.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Le1/k0;Li2/l;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Le1/k0;->q:Ljava/math/BigInteger;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lh2/h;

    return-void
.end method

.method public constructor <init>(Lh2/j;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lh2/j;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    invoke-interface {p1}, Lh2/g;->getParameters()Lh2/h;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lh2/h;

    return-void
.end method

.method public constructor <init>(Li2/o;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Li2/o;->c:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    new-instance v0, Li2/l;

    new-instance v1, Li2/n;

    iget-object v2, p1, Li2/o;->d:Ljava/math/BigInteger;

    iget-object v3, p1, Li2/o;->q:Ljava/math/BigInteger;

    iget-object p1, p1, Li2/o;->x:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3, p1}, Li2/n;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1}, Li2/l;-><init>(Li2/n;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lh2/h;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Li2/l;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lh2/h;

    return-void
.end method

.method public constructor <init>(Ll0/p0;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Ll0/p0;->c:Ll0/b;

    iget-object v0, v0, Ll0/b;->d:Lm/f;

    invoke-static {v0}, Lr/f;->h(Ljava/lang/Object;)Lr/f;

    move-result-object v0

    :try_start_b
    invoke-virtual {p1}, Ll0/p0;->i()Lm/u;

    move-result-object p1

    check-cast p1, Lm/x0;

    iget-object p1, p1, Lm/r;->c:[B

    array-length v1, p1

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_17
    array-length v3, p1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_25

    array-length v3, p1

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_25
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_2c} :catch_33

    invoke-static {v0}, Li2/l;->a(Lr/f;)Li2/l;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lh2/h;

    return-void

    :catch_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid info structure in GOST3410 public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1f

    new-instance v1, Li2/l;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, v0, v2, p1}, Li2/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lh2/h;

    return-void

    :cond_1f
    new-instance v0, Li2/l;

    new-instance v1, Li2/n;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3, v4}, Li2/n;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1}, Li2/l;-><init>(Li2/n;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lh2/h;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lh2/h;

    move-object v1, v0

    check-cast v1, Li2/l;

    iget-object v1, v1, Li2/l;->d:Ljava/lang/String;

    if-eqz v1, :cond_26

    check-cast v0, Li2/l;

    iget-object v0, v0, Li2/l;->d:Ljava/lang/String;

    :goto_10
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lh2/h;

    check-cast v0, Li2/l;

    iget-object v0, v0, Li2/l;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lh2/h;

    check-cast p0, Li2/l;

    iget-object p0, p0, Li2/l;->x:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void

    :cond_26
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lh2/h;

    check-cast v0, Li2/l;

    iget-object v0, v0, Li2/l;->c:Li2/n;

    iget-object v0, v0, Li2/n;->a:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lh2/h;

    check-cast v0, Li2/l;

    iget-object v0, v0, Li2/l;->c:Li2/n;

    iget-object v0, v0, Li2/n;->b:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lh2/h;

    check-cast v0, Li2/l;

    iget-object v0, v0, Li2/l;->c:Li2/n;

    iget-object v0, v0, Li2/n;->c:Ljava/math/BigInteger;

    goto :goto_10
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lh2/h;

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lh2/h;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 1

    const-string p0, "GOST3410"

    return-object p0
.end method

.method public getEncoded()[B
    .registers 9

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    if-nez v2, :cond_13

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_10
    new-array v2, v2, [B

    goto :goto_15

    :cond_13
    array-length v2, v0

    goto :goto_10

    :goto_15
    array-length v3, v2

    if-eq v1, v3, :cond_23

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    aget-byte v3, v0, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_23
    :try_start_23
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lh2/h;

    instance-of v1, v0, Li2/l;

    if-eqz v1, :cond_94

    check-cast v0, Li2/l;

    iget-object v0, v0, Li2/l;->x:Ljava/lang/String;

    if-eqz v0, :cond_67

    new-instance v0, Ll0/p0;

    new-instance v1, Ll0/b;

    sget-object v3, Lr/a;->k:Lm/q;

    new-instance v4, Lr/f;

    new-instance v5, Lm/q;

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lh2/h;

    check-cast v6, Li2/l;

    iget-object v6, v6, Li2/l;->d:Ljava/lang/String;

    invoke-direct {v5, v6}, Lm/q;-><init>(Ljava/lang/String;)V

    new-instance v6, Lm/q;

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lh2/h;

    check-cast v7, Li2/l;

    iget-object v7, v7, Li2/l;->q:Ljava/lang/String;

    invoke-direct {v6, v7}, Lm/q;-><init>(Ljava/lang/String;)V

    new-instance v7, Lm/q;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lh2/h;

    check-cast p0, Li2/l;

    iget-object p0, p0, Li2/l;->x:Ljava/lang/String;

    invoke-direct {v7, p0}, Lm/q;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6, v7}, Lr/f;-><init>(Lm/q;Lm/q;Lm/q;)V

    invoke-direct {v1, v3, v4}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance p0, Lm/x0;

    invoke-direct {p0, v2}, Lm/r;-><init>([B)V

    invoke-direct {v0, v1, p0}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V

    goto :goto_a5

    :cond_67
    new-instance v0, Ll0/p0;

    new-instance v1, Ll0/b;

    sget-object v3, Lr/a;->k:Lm/q;

    new-instance v4, Lr/f;

    new-instance v5, Lm/q;

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lh2/h;

    check-cast v6, Li2/l;

    iget-object v6, v6, Li2/l;->d:Ljava/lang/String;

    invoke-direct {v5, v6}, Lm/q;-><init>(Ljava/lang/String;)V

    new-instance v6, Lm/q;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lh2/h;

    check-cast p0, Li2/l;

    iget-object p0, p0, Li2/l;->q:Ljava/lang/String;

    invoke-direct {v6, p0}, Lm/q;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lr/f;-><init>(Lm/q;Lm/q;)V

    invoke-direct {v1, v3, v4}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance p0, Lm/x0;

    invoke-direct {p0, v2}, Lm/r;-><init>([B)V

    invoke-direct {v0, v1, p0}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V

    goto :goto_a5

    :cond_94
    new-instance v0, Ll0/p0;

    new-instance p0, Ll0/b;

    sget-object v1, Lr/a;->k:Lm/q;

    invoke-direct {p0, v1}, Ll0/b;-><init>(Lm/q;)V

    new-instance v1, Lm/x0;

    invoke-direct {v1, v2}, Lm/r;-><init>([B)V

    invoke-direct {v0, p0, v1}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V

    :goto_a5
    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Ll0/p0;)[B

    move-result-object p0
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_a9} :catch_aa

    return-object p0

    :catch_aa
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "X.509"

    return-object p0
.end method

.method public getParameters()Lh2/h;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lh2/h;

    return-object p0
.end method

.method public getY()Ljava/math/BigInteger;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->gost3410Spec:Lh2/h;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "GOST3410"

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->y:Ljava/math/BigInteger;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/GOST3410Util;->generatePublicKeyParameter(Ljava/security/PublicKey;)Le1/b;

    move-result-object p0

    check-cast p0, Le1/k0;

    iget-object p0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, Le1/i0;

    invoke-static {v0, v1, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/GOSTUtil;->publicKeyToString(Ljava/lang/String;Ljava/math/BigInteger;Le1/i0;)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
