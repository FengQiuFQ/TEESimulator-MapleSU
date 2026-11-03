.class public Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;
.super Ljava/lang/Object;

# interfaces
.implements Lh2/i;
.implements Lh2/k;


# static fields
.field static final serialVersionUID:J = 0x77182fb116c68338L


# instance fields
.field private transient attrCarrier:Lh2/k;

.field private transient gost3410Spec:Lh2/h;

.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->attrCarrier:Lh2/k;

    return-void
.end method

.method public constructor <init>(Ld0/t;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->attrCarrier:Lh2/k;

    iget-object v0, p1, Ld0/t;->d:Ll0/b;

    iget-object v0, v0, Ll0/b;->d:Lm/f;

    invoke-static {v0}, Lr/f;->h(Ljava/lang/Object;)Lr/f;

    move-result-object v0

    invoke-virtual {p1}, Ld0/t;->j()Lm/u;

    move-result-object v1

    instance-of v2, v1, Lm/l;

    if-eqz v2, :cond_25

    invoke-static {v1}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object p1

    invoke-virtual {p1}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object p1

    :goto_22
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->x:Ljava/math/BigInteger;

    goto :goto_47

    :cond_25
    invoke-virtual {p1}, Ld0/t;->j()Lm/u;

    move-result-object p1

    invoke-static {p1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p1

    iget-object p1, p1, Lm/r;->c:[B

    array-length v1, p1

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_33
    array-length v3, p1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_41

    array-length v3, p1

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_41
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    goto :goto_22

    :goto_47
    invoke-static {v0}, Li2/l;->a(Lr/f;)Li2/l;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->gost3410Spec:Lh2/h;

    return-void
.end method

.method public constructor <init>(Le1/j0;Li2/l;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->attrCarrier:Lh2/k;

    iget-object p1, p1, Le1/j0;->q:Ljava/math/BigInteger;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->x:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->gost3410Spec:Lh2/h;

    if-eqz p2, :cond_13

    return-void

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "spec is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lh2/i;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->attrCarrier:Lh2/k;

    invoke-interface {p1}, Lh2/i;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->x:Ljava/math/BigInteger;

    invoke-interface {p1}, Lh2/g;->getParameters()Lh2/h;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->gost3410Spec:Lh2/h;

    return-void
.end method

.method public constructor <init>(Li2/m;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->attrCarrier:Lh2/k;

    iget-object v0, p1, Li2/m;->c:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->x:Ljava/math/BigInteger;

    new-instance v0, Li2/l;

    new-instance v1, Li2/n;

    iget-object v2, p1, Li2/m;->d:Ljava/math/BigInteger;

    iget-object v3, p1, Li2/m;->q:Ljava/math/BigInteger;

    iget-object p1, p1, Li2/m;->x:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3, p1}, Li2/n;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1}, Li2/l;-><init>(Li2/n;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->gost3410Spec:Lh2/h;

    return-void
.end method

.method private compareObj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
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

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->gost3410Spec:Lh2/h;

    goto :goto_43

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

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->gost3410Spec:Lh2/h;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    :goto_43
    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->attrCarrier:Lh2/k;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->gost3410Spec:Lh2/h;

    move-object v1, v0

    check-cast v1, Li2/l;

    iget-object v1, v1, Li2/l;->d:Ljava/lang/String;

    if-eqz v1, :cond_26

    check-cast v0, Li2/l;

    iget-object v0, v0, Li2/l;->d:Ljava/lang/String;

    :goto_10
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->gost3410Spec:Lh2/h;

    check-cast v0, Li2/l;

    iget-object v0, v0, Li2/l;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->gost3410Spec:Lh2/h;

    check-cast p0, Li2/l;

    iget-object p0, p0, Li2/l;->x:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void

    :cond_26
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->gost3410Spec:Lh2/h;

    check-cast v0, Li2/l;

    iget-object v0, v0, Li2/l;->c:Li2/n;

    iget-object v0, v0, Li2/n;->a:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->gost3410Spec:Lh2/h;

    check-cast v0, Li2/l;

    iget-object v0, v0, Li2/l;->c:Li2/n;

    iget-object v0, v0, Li2/n;->b:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->gost3410Spec:Lh2/h;

    check-cast v0, Li2/l;

    iget-object v0, v0, Li2/l;->c:Li2/n;

    iget-object v0, v0, Li2/n;->c:Ljava/math/BigInteger;

    goto :goto_10
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lh2/i;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lh2/i;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Lh2/i;->getX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->getParameters()Lh2/h;

    move-result-object v0

    check-cast v0, Li2/l;

    iget-object v0, v0, Li2/l;->c:Li2/n;

    invoke-interface {p1}, Lh2/g;->getParameters()Lh2/h;

    move-result-object v2

    check-cast v2, Li2/l;

    iget-object v2, v2, Li2/l;->c:Li2/n;

    invoke-virtual {v0, v2}, Li2/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->getParameters()Lh2/h;

    move-result-object v0

    check-cast v0, Li2/l;

    iget-object v0, v0, Li2/l;->q:Ljava/lang/String;

    invoke-interface {p1}, Lh2/g;->getParameters()Lh2/h;

    move-result-object v2

    check-cast v2, Li2/l;

    iget-object v2, v2, Li2/l;->q:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->compareObj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->getParameters()Lh2/h;

    move-result-object v0

    check-cast v0, Li2/l;

    iget-object v0, v0, Li2/l;->x:Ljava/lang/String;

    invoke-interface {p1}, Lh2/g;->getParameters()Lh2/h;

    move-result-object p1

    check-cast p1, Li2/l;

    iget-object p1, p1, Li2/l;->x:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->compareObj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5a

    const/4 p0, 0x1

    return p0

    :cond_5a
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 1

    const-string p0, "GOST3410"

    return-object p0
.end method

.method public getBagAttribute(Lm/q;)Lm/f;
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->attrCarrier:Lh2/k;

    invoke-interface {p0, p1}, Lh2/k;->getBagAttribute(Lm/q;)Lm/f;

    move-result-object p0

    return-object p0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->attrCarrier:Lh2/k;

    invoke-interface {p0}, Lh2/k;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getEncoded()[B
    .registers 9

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->getX()Ljava/math/BigInteger;

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
    const/4 v0, 0x0

    :try_start_24
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->gost3410Spec:Lh2/h;

    instance-of v1, v1, Li2/l;

    if-eqz v1, :cond_57

    new-instance v1, Ld0/t;

    new-instance v3, Ll0/b;

    sget-object v4, Lr/a;->k:Lm/q;

    new-instance v5, Lr/f;

    new-instance v6, Lm/q;

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->gost3410Spec:Lh2/h;

    check-cast v7, Li2/l;

    iget-object v7, v7, Li2/l;->d:Ljava/lang/String;

    invoke-direct {v6, v7}, Lm/q;-><init>(Ljava/lang/String;)V

    new-instance v7, Lm/q;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->gost3410Spec:Lh2/h;

    check-cast p0, Li2/l;

    iget-object p0, p0, Li2/l;->q:Ljava/lang/String;

    invoke-direct {v7, p0}, Lm/q;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Lr/f;-><init>(Lm/q;Lm/q;)V

    invoke-direct {v3, v4, v5}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance p0, Lm/x0;

    invoke-direct {p0, v2}, Lm/r;-><init>([B)V

    invoke-direct {v1, v3, p0, v0, v0}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    goto :goto_68

    :cond_57
    new-instance v1, Ld0/t;

    new-instance p0, Ll0/b;

    sget-object v3, Lr/a;->k:Lm/q;

    invoke-direct {p0, v3}, Ll0/b;-><init>(Lm/q;)V

    new-instance v3, Lm/x0;

    invoke-direct {v3, v2}, Lm/r;-><init>([B)V

    invoke-direct {v1, p0, v3, v0, v0}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    :goto_68
    invoke-virtual {v1}, Lm/n;->g()[B

    move-result-object p0
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_6c} :catch_6d

    return-object p0

    :catch_6d
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public getParameters()Lh2/h;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->gost3410Spec:Lh2/h;

    return-object p0
.end method

.method public getX()Ljava/math/BigInteger;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->x:Ljava/math/BigInteger;

    return-object p0
.end method

.method public hasFriendlyName()Z
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->attrCarrier:Lh2/k;

    invoke-interface {p0}, Lh2/k;->hasFriendlyName()Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->gost3410Spec:Lh2/h;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public setBagAttribute(Lm/q;Lm/f;)V
    .registers 3

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->attrCarrier:Lh2/k;

    invoke-interface {p0, p1, p2}, Lh2/k;->setBagAttribute(Lm/q;Lm/f;)V

    return-void
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->attrCarrier:Lh2/k;

    invoke-interface {p0, p1}, Lh2/k;->setFriendlyName(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "GOST3410"

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->x:Ljava/math/BigInteger;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/GOST3410Util;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Le1/b;

    move-result-object p0

    check-cast p0, Le1/j0;

    iget-object p0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, Le1/i0;

    invoke-static {v0, v1, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/GOSTUtil;->privateKeyToString(Ljava/lang/String;Ljava/math/BigInteger;Le1/i0;)Ljava/lang/String;

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
