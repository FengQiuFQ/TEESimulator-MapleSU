.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/Key;
.implements Ljava/security/PrivateKey;
.implements Lb2/a;


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private final attributes:[B

.field transient eddsaPrivateKey:Le1/b;

.field transient eddsaPublicKey:Le1/b;

.field private final hasPublicKey:Z

.field transient hashCode:I


# direct methods
.method public constructor <init>(Ld0/t;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Ld0/t;->y:Lm/b;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->hasPublicKey:Z

    iget-object v0, p1, Ld0/t;->x:Lm/y;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lm/n;->getEncoded()[B

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->attributes:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->populateFromPrivateKeyInfo(Ld0/t;)V

    return-void
.end method

.method public constructor <init>(Le1/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->hasPublicKey:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->attributes:[B

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->eddsaPrivateKey:Le1/b;

    instance-of v0, p1, Le1/a0;

    if-eqz v0, :cond_18

    check-cast p1, Le1/a0;

    invoke-virtual {p1}, Le1/a0;->a()Le1/b0;

    move-result-object p1

    :goto_15
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->eddsaPublicKey:Le1/b;

    goto :goto_1f

    :cond_18
    check-cast p1, Le1/y;

    invoke-virtual {p1}, Le1/y;->a()Le1/z;

    move-result-object p1

    goto :goto_15

    :goto_1f
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->calculateHashCode()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->hashCode:I

    return-void
.end method

.method private calculateHashCode()I
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->eddsaPublicKey:Le1/b;

    instance-of v1, v0, Le1/b0;

    if-eqz v1, :cond_13

    check-cast v0, Le1/b0;

    const/16 v1, 0x39

    new-array v1, v1, [B

    const/4 v2, 0x0

    iget-object v0, v0, Le1/b0;->d:Lq2/e;

    invoke-static {v0, v1, v2}, Lq2/f;->o(Lq2/e;[BI)V

    goto :goto_19

    :cond_13
    check-cast v0, Le1/z;

    invoke-virtual {v0}, Le1/z;->getEncoded()[B

    move-result-object v1

    :goto_19
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {v1}, Lm4/d;->u([B)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method private getPrivateKeyInfo()Ld0/t;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->attributes:[B

    invoke-static {v1}, Lm/y;->s(Ljava/lang/Object;)Lm/y;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->eddsaPrivateKey:Le1/b;

    invoke-static {v2, v1}, Lj1/d;->a(Le1/b;Lm/y;)Ld0/t;

    move-result-object v2

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->hasPublicKey:Z

    if-eqz p0, :cond_1a

    const-string p0, "org.bouncycastle.pkcs8.v1_info_only"

    invoke-static {p0}, Lm4/h;->c(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1a

    return-object v2

    :cond_1a
    new-instance p0, Ld0/t;

    iget-object v3, v2, Ld0/t;->d:Ll0/b;

    invoke-virtual {v2}, Ld0/t;->j()Lm/u;

    move-result-object v2

    invoke-direct {p0, v3, v2, v1, v0}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_25} :catch_26

    return-object p0

    :catch_26
    return-object v0
.end method

.method private populateFromPrivateKeyInfo(Ld0/t;)V
    .registers 4

    invoke-virtual {p1}, Ld0/t;->j()Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    sget-object v1, Lo1/a;->d:Lm/q;

    iget-object p1, p1, Ld0/t;->d:Ll0/b;

    iget-object p1, p1, Ll0/b;->c:Lm/q;

    invoke-virtual {v1, p1}, Lm/u;->n(Lm/u;)Z

    move-result p1

    if-eqz p1, :cond_24

    new-instance p1, Le1/a0;

    invoke-direct {p1, v0}, Le1/a0;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->eddsaPrivateKey:Le1/b;

    invoke-virtual {p1}, Le1/a0;->a()Le1/b0;

    move-result-object p1

    :goto_21
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->eddsaPublicKey:Le1/b;

    goto :goto_30

    :cond_24
    new-instance p1, Le1/y;

    invoke-direct {p1, v0}, Le1/y;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->eddsaPrivateKey:Le1/b;

    invoke-virtual {p1}, Le1/y;->a()Le1/z;

    move-result-object p1

    goto :goto_21

    :goto_30
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->calculateHashCode()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->hashCode:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Ld0/t;->h(Ljava/lang/Object;)Ld0/t;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->populateFromPrivateKeyInfo(Ld0/t;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public engineGetKeyParameters()Le1/b;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->eddsaPrivateKey:Le1/b;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-nez v0, :cond_9

    goto :goto_4d

    :cond_9
    check-cast p1, Ljava/security/PrivateKey;

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->getPrivateKeyInfo()Ld0/t;

    move-result-object p0

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;

    if-eqz v0, :cond_1a

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->getPrivateKeyInfo()Ld0/t;

    move-result-object p1

    goto :goto_22

    :cond_1a
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Ld0/t;->h(Ljava/lang/Object;)Ld0/t;

    move-result-object p1

    :goto_22
    if-eqz p0, :cond_4d

    if-nez p1, :cond_27

    goto :goto_4d

    :cond_27
    :try_start_27
    iget-object v0, p0, Ld0/t;->d:Ll0/b;

    invoke-virtual {v0}, Lm/n;->getEncoded()[B

    move-result-object v0

    iget-object v1, p1, Ld0/t;->d:Ll0/b;

    invoke-virtual {v1}, Lm/n;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Lm4/d;->o([B[B)Z

    move-result v0

    invoke-virtual {p0}, Ld0/t;->i()Lm/x0;

    move-result-object p0

    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1}, Ld0/t;->i()Lm/x0;

    move-result-object p1

    invoke-virtual {p1}, Lm/n;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Lm4/d;->o([B[B)Z

    move-result p0
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_4b} :catch_4d

    and-int/2addr p0, v0

    return p0

    :catch_4d
    :cond_4d
    :goto_4d
    const/4 p0, 0x0

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
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->eddsaPrivateKey:Le1/b;

    instance-of p0, p0, Le1/a0;

    if-eqz p0, :cond_14

    const-string p0, "Ed448"

    return-object p0

    :cond_14
    const-string p0, "Ed25519"

    return-object p0
.end method

.method public getEncoded()[B
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->getPrivateKeyInfo()Ld0/t;

    move-result-object p0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public getPublicKey()Lb2/c;
    .registers 2

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->eddsaPublicKey:Le1/b;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;-><init>(Le1/b;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 1

    iget p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->hashCode:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->eddsaPublicKey:Le1/b;

    const-string v1, "Private Key"

    invoke-static {v1, v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/Utils;->keyToString(Ljava/lang/String;Ljava/lang/String;Le1/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
