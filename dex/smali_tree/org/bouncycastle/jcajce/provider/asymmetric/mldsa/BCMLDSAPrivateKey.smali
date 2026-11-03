.class public Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;
.super Ljava/lang/Object;

# interfaces
.implements Lb2/d;
.implements Lb2/a;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient algorithm:Ljava/lang/String;

.field private transient attributes:Lm/y;

.field private transient encoding:[B

.field private transient params:Li3/f;


# direct methods
.method public constructor <init>(Ld0/t;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->init(Ld0/t;)V

    return-void
.end method

.method public constructor <init>(Li3/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Li3/f;

    iget-object p1, p1, La3/a;->d:Ljava/lang/Object;

    check-cast p1, Li3/e;

    iget-object p1, p1, Li3/e;->b:Ljava/lang/String;

    invoke-static {p1}, Ld2/n;->a(Ljava/lang/String;)Ld2/n;

    move-result-object p1

    iget-object p1, p1, Ld2/n;->c:Ljava/lang/String;

    invoke-static {p1}, Lm4/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->algorithm:Ljava/lang/String;

    return-void
.end method

.method private init(Ld0/t;)V
    .registers 3

    invoke-virtual {p1}, Lm/n;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->encoding:[B

    invoke-static {p1}, Ls2/b;->o(Ld0/t;)Le1/b;

    move-result-object v0

    check-cast v0, Li3/f;

    iget-object p1, p1, Ld0/t;->x:Lm/y;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->init(Li3/f;Lm/y;)V

    return-void
.end method

.method private init(Li3/f;Lm/y;)V
    .registers 3

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->attributes:Lm/y;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Li3/f;

    iget-object p1, p1, La3/a;->d:Ljava/lang/Object;

    check-cast p1, Li3/e;

    iget-object p1, p1, Li3/e;->b:Ljava/lang/String;

    invoke-static {p1}, Ld2/n;->a(Ljava/lang/String;)Ld2/n;

    move-result-object p1

    iget-object p1, p1, Ld2/n;->c:Ljava/lang/String;

    invoke-static {p1}, Lm4/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->algorithm:Ljava/lang/String;

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

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->init(Ld0/t;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    if-eqz v0, :cond_1b

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Li3/f;

    invoke-virtual {p0}, Li3/f;->getEncoded()[B

    move-result-object p0

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Li3/f;

    invoke-virtual {p1}, Li3/f;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method public getEncoded()[B
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->encoding:[B

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Li3/f;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->attributes:Lm/y;

    invoke-static {v0, v1}, Lq4/k;->b0(Le1/b;Lm/y;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->encoding:[B

    :cond_e
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->encoding:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public getKeyParams()Li3/f;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Li3/f;

    return-object p0
.end method

.method public getParameterSpec()Ld2/n;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Li3/f;

    iget-object p0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, Li3/e;

    iget-object p0, p0, Li3/e;->b:Ljava/lang/String;

    invoke-static {p0}, Ld2/n;->a(Ljava/lang/String;)Ld2/n;

    move-result-object p0

    return-object p0
.end method

.method public getPrivateData()[B
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Li3/f;

    invoke-virtual {p0}, Li3/f;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public getPrivateKey(Z)Lb2/d;
    .registers 3

    if-eqz p1, :cond_19

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Li3/f;

    iget-object p1, p1, Li3/f;->D1:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    if-eqz p1, :cond_19

    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Li3/f;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li3/f;->d(I)Li3/f;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;-><init>(Li3/f;)V

    return-object p1

    :cond_19
    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Li3/f;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Li3/f;->d(I)Li3/f;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;-><init>(Li3/f;)V

    return-object p1
.end method

.method public getPublicKey()Lb2/e;
    .registers 5

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Li3/f;

    iget-object v0, p0, Li3/f;->C1:[B

    const/4 v1, 0x0

    if-nez v0, :cond_9

    move-object v2, v1

    goto :goto_14

    :cond_9
    new-instance v2, Li3/g;

    iget-object v3, p0, La3/a;->d:Ljava/lang/Object;

    check-cast v3, Li3/e;

    iget-object p0, p0, Li3/f;->q:[B

    invoke-direct {v2, v3, p0, v0}, Li3/g;-><init>(Li3/e;[B[B)V

    :goto_14
    if-nez v2, :cond_17

    return-object v1

    :cond_17
    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;

    invoke-direct {p0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;-><init>(Li3/g;)V

    return-object p0
.end method

.method public getSeed()[B
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Li3/f;

    iget-object p0, p0, Li3/f;->D1:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Li3/f;

    invoke-virtual {p0}, Li3/f;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lm4/d;->u([B)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lm4/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->params:Li3/f;

    iget-object v3, v2, Li3/f;->q:[B

    iget-object v2, v2, Li3/f;->C1:[B

    invoke-static {v3, v2}, Lm4/d;->j([B[B)[B

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Private Key ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ls0/g0;

    const/16 v3, 0x100

    invoke-direct {p0, v3}, Ls0/g0;-><init>(I)V

    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ls0/n;->f([BII)V

    const/16 v3, 0x14

    new-array v5, v3, [B

    invoke-virtual {p0, v5, v4, v3}, Ls0/g0;->b([BII)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v4

    :goto_36
    if-eq v6, v3, :cond_58

    if-lez v6, :cond_3f

    const-string v7, ":"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3f
    aget-byte v7, v5, v6

    ushr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    sget-object v8, Lm4/d;->a:[C

    aget-char v7, v8, v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v7, v5, v6

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v8, v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    :cond_58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "    public data: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, v2

    invoke-static {v2, v4, p0}, Ln4/c;->e([BII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
