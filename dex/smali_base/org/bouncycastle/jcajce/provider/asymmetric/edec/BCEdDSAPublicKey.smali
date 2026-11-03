.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;
.super Ljava/lang/Object;

# interfaces
.implements Lb2/c;
.implements Lb2/a;


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field transient eddsaPublicKey:Le1/b;


# direct methods
.method public constructor <init>(Le1/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->eddsaPublicKey:Le1/b;

    return-void
.end method

.method public constructor <init>(Ll0/p0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->populateFromPubKeyInfo(Ll0/p0;)V

    return-void
.end method

.method public constructor <init>([B[B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/Utils;->isValidPrefix([B[B)Z

    move-result p1

    const-string v1, "raw key data not recognised"

    if-eqz p1, :cond_2c

    array-length p1, p2

    sub-int/2addr p1, v0

    const/16 v2, 0x39

    if-ne p1, v2, :cond_1a

    new-instance p1, Le1/b0;

    invoke-direct {p1, p2, v0}, Le1/b0;-><init>([BI)V

    :goto_17
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->eddsaPublicKey:Le1/b;

    return-void

    :cond_1a
    array-length p1, p2

    sub-int/2addr p1, v0

    const/16 v2, 0x20

    if-ne p1, v2, :cond_26

    new-instance p1, Le1/z;

    invoke-direct {p1, p2, v0}, Le1/z;-><init>([BI)V

    goto :goto_17

    :cond_26
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private populateFromPubKeyInfo(Ll0/p0;)V
    .registers 4

    iget-object v0, p1, Ll0/p0;->d:Lm/b;

    invoke-virtual {v0}, Lm/b;->u()[B

    move-result-object v0

    sget-object v1, Lo1/a;->d:Lm/q;

    iget-object p1, p1, Ll0/p0;->c:Ll0/b;

    iget-object p1, p1, Ll0/b;->c:Lm/q;

    invoke-virtual {v1, p1}, Lm/u;->n(Lm/u;)Z

    move-result p1

    if-eqz p1, :cond_1a

    new-instance p1, Le1/b0;

    invoke-direct {p1, v0}, Le1/b0;-><init>([B)V

    :goto_17
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->eddsaPublicKey:Le1/b;

    return-void

    :cond_1a
    new-instance p1, Le1/z;

    invoke-direct {p1, v0}, Le1/z;-><init>([B)V

    goto :goto_17
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Ll0/p0;->h(Ljava/lang/Object;)Ll0/p0;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->populateFromPubKeyInfo(Ll0/p0;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public engineGetKeyParameters()Le1/b;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->eddsaPublicKey:Le1/b;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Ljava/security/PublicKey;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Ljava/security/PublicKey;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    const-string v0, "org.bouncycastle.emulate.oracle"

    invoke-static {v0}, Lm4/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "EdDSA"

    return-object p0

    :cond_b
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->eddsaPublicKey:Le1/b;

    instance-of p0, p0, Le1/b0;

    if-eqz p0, :cond_14

    const-string p0, "Ed448"

    return-object p0

    :cond_14
    const-string p0, "Ed25519"

    return-object p0
.end method

.method public getEncoded()[B
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->eddsaPublicKey:Le1/b;

    instance-of v0, v0, Le1/b0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->Ed448Prefix:[B

    array-length v2, v0

    add-int/lit8 v2, v2, 0x39

    new-array v2, v2, [B

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->eddsaPublicKey:Le1/b;

    check-cast p0, Le1/b0;

    array-length v0, v0

    iget-object p0, p0, Le1/b0;->d:Lq2/e;

    invoke-static {p0, v2, v0}, Lq2/f;->o(Lq2/e;[BI)V

    return-object v2

    :cond_1d
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->Ed25519Prefix:[B

    array-length v2, v0

    add-int/lit8 v2, v2, 0x20

    new-array v2, v2, [B

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->eddsaPublicKey:Le1/b;

    check-cast p0, Le1/z;

    array-length v0, v0

    iget-object p0, p0, Le1/z;->d:Lq2/e;

    invoke-static {p0, v2, v0}, Lq2/f;->n(Lq2/e;[BI)V

    return-object v2
.end method

.method public getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "X.509"

    return-object p0
.end method

.method public getPointEncoding()[B
    .registers 3

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->eddsaPublicKey:Le1/b;

    instance-of v0, p0, Le1/b0;

    if-eqz v0, :cond_13

    check-cast p0, Le1/b0;

    const/16 v0, 0x39

    new-array v0, v0, [B

    const/4 v1, 0x0

    iget-object p0, p0, Le1/b0;->d:Lq2/e;

    invoke-static {p0, v0, v1}, Lq2/f;->o(Lq2/e;[BI)V

    return-object v0

    :cond_13
    check-cast p0, Le1/z;

    invoke-virtual {p0}, Le1/z;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lm4/d;->u([B)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->eddsaPublicKey:Le1/b;

    const-string v1, "Public Key"

    invoke-static {v1, v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/Utils;->keyToString(Ljava/lang/String;Ljava/lang/String;Le1/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
