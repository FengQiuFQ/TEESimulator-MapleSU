.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/crypto/interfaces/DHPrivateKey;
.implements Lh2/k;


# static fields
.field static final serialVersionUID:J = 0x4511a58411962b4L


# instance fields
.field private transient attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

.field private transient dhPrivateKey:Le1/h;

.field private transient dhSpec:Ljavax/crypto/spec/DHParameterSpec;

.field private transient info:Ld0/t;

.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    return-void
.end method

.method public constructor <init>(Ld0/t;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v2, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    iget-object v2, v1, Ld0/t;->d:Ll0/b;

    iget-object v2, v2, Ll0/b;->d:Lm/f;

    invoke-static {v2}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v2

    invoke-virtual {v1}, Ld0/t;->j()Lm/u;

    move-result-object v3

    check-cast v3, Lm/l;

    iget-object v4, v1, Ld0/t;->d:Ll0/b;

    iget-object v4, v4, Ll0/b;->c:Lm/q;

    iput-object v1, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->info:Ld0/t;

    invoke-virtual {v3}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    sget-object v1, Ld0/r;->s:Lm/q;

    invoke-virtual {v4, v1}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-static {v2}, Ld0/g;->h(Ljava/lang/Object;)Ld0/g;

    move-result-object v1

    invoke-virtual {v1}, Ld0/g;->i()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, v1, Ld0/g;->d:Lm/l;

    iget-object v4, v1, Ld0/g;->c:Lm/l;

    if-eqz v2, :cond_74

    new-instance v2, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v4}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1}, Ld0/g;->i()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-direct {v2, v5, v6, v7}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v2, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    new-instance v2, Le1/h;

    iget-object v5, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v6, Le1/g;

    invoke-virtual {v4}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Ld0/g;->i()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-direct {v6, v1, v4, v3}, Le1/g;-><init>(ILjava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, v5, v6}, Le1/h;-><init>(Ljava/math/BigInteger;Le1/g;)V

    iput-object v2, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhPrivateKey:Le1/h;

    return-void

    :cond_74
    new-instance v1, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v4}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v3}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v1, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    new-instance v1, Le1/h;

    iget-object v2, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v5, Le1/g;

    invoke-virtual {v4}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct {v5, v6, v4, v3}, Le1/g;-><init>(ILjava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v5}, Le1/h;-><init>(Ljava/math/BigInteger;Le1/g;)V

    iput-object v1, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhPrivateKey:Le1/h;

    return-void

    :cond_9b
    sget-object v1, Lm0/m;->w1:Lm/q;

    invoke-virtual {v4, v1}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_ed

    invoke-static {v2}, Lm0/b;->h(Ljava/lang/Object;)Lm0/b;

    move-result-object v1

    new-instance v2, Ld2/c;

    iget-object v3, v1, Lm0/b;->c:Lm/l;

    iget-object v9, v1, Lm0/b;->d:Lm/l;

    iget-object v10, v1, Lm0/b;->q:Lm/l;

    invoke-virtual {v3}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v10}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v9}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lm0/b;->i()Ljava/math/BigInteger;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v2 .. v8}, Ld2/c;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v2, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    new-instance v2, Le1/h;

    iget-object v3, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v11, Le1/g;

    iget-object v4, v1, Lm0/b;->c:Lm/l;

    invoke-virtual {v4}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v9}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v10}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v1}, Lm0/b;->i()Ljava/math/BigInteger;

    move-result-object v17

    const/16 v15, 0xa0

    const/16 v16, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v11 .. v18}, Le1/g;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Le1/j;)V

    invoke-direct {v2, v3, v11}, Le1/h;-><init>(Ljava/math/BigInteger;Le1/g;)V

    iput-object v2, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhPrivateKey:Le1/h;

    return-void

    :cond_ed
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown algorithm type: "

    invoke-static {v1, v4}, Lb/b;->j(Ljava/lang/String;Lm/q;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Le1/h;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    iget-object v0, p1, Le1/h;->q:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v0, Ld2/c;

    iget-object p1, p1, Le1/e;->d:Le1/g;

    invoke-direct {v0, p1}, Ld2/c;-><init>(Le1/g;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/interfaces/DHPrivateKey;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/spec/DHPrivateKeySpec;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->info:Ld0/t;

    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public engineGetKeyParameters()Le1/h;
    .registers 6

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhPrivateKey:Le1/h;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    instance-of v1, v0, Ld2/c;

    if-eqz v1, :cond_19

    new-instance v1, Le1/h;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    check-cast v0, Ld2/c;

    invoke-virtual {v0}, Ld2/c;->a()Le1/g;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Le1/h;-><init>(Ljava/math/BigInteger;Le1/g;)V

    return-object v1

    :cond_19
    new-instance v1, Le1/h;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v3, Le1/g;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p0

    invoke-direct {v3, p0, v0, v4}, Le1/g;-><init>(ILjava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Le1/h;-><init>(Ljava/math/BigInteger;Le1/g;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p1

    if-ne p0, p1, :cond_56

    const/4 p0, 0x1

    return p0

    :cond_56
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 1

    const-string p0, "DH"

    return-object p0
.end method

.method public getBagAttribute(Lm/q;)Lm/f;
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttribute(Lm/q;)Lm/f;

    move-result-object p0

    return-object p0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getEncoded()[B
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->info:Ld0/t;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lm/n;->g()[B

    move-result-object p0

    return-object p0

    :cond_a
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    instance-of v2, v1, Ld2/c;

    if-eqz v2, :cond_a5

    move-object v2, v1

    check-cast v2, Ld2/c;

    iget-object v2, v2, Ld2/c;->c:Ljava/math/BigInteger;

    if-eqz v2, :cond_a5

    check-cast v1, Ld2/c;

    invoke-virtual {v1}, Ld2/c;->a()Le1/g;

    move-result-object v1

    iget-object v2, v1, Le1/g;->A1:Le1/j;

    if-eqz v2, :cond_2f

    new-instance v3, Lm0/c;

    iget-object v4, v2, Le1/j;->a:[B

    invoke-static {v4}, Lm4/d;->e([B)[B

    move-result-object v4

    iget v2, v2, Le1/j;->b:I

    invoke-direct {v3, v4, v2}, Lm0/c;-><init>([BI)V

    goto :goto_30

    :cond_2f
    move-object v3, v0

    :goto_30
    new-instance v2, Ld0/t;

    new-instance v4, Ll0/b;

    sget-object v5, Lm0/m;->w1:Lm/q;

    iget-object v6, v1, Le1/g;->d:Ljava/math/BigInteger;

    iget-object v7, v1, Le1/g;->c:Ljava/math/BigInteger;

    iget-object v8, v1, Le1/g;->q:Ljava/math/BigInteger;

    iget-object v1, v1, Le1/g;->x:Ljava/math/BigInteger;

    if-eqz v6, :cond_9d

    if-eqz v7, :cond_95

    if-eqz v8, :cond_8d

    new-instance v9, Lm/l;

    invoke-direct {v9, v6}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    new-instance v6, Lm/l;

    invoke-direct {v6, v7}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    new-instance v7, Lm/l;

    invoke-direct {v7, v8}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    if-eqz v1, :cond_5b

    new-instance v8, Lm/l;

    invoke-direct {v8, v1}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    goto :goto_5c

    :cond_5b
    move-object v8, v0

    :goto_5c
    new-instance v1, Lm/g;

    const/4 v10, 0x5

    invoke-direct {v1, v10}, Lm/g;-><init>(I)V

    invoke-virtual {v1, v9}, Lm/g;->a(Lm/f;)V

    invoke-virtual {v1, v6}, Lm/g;->a(Lm/f;)V

    invoke-virtual {v1, v7}, Lm/g;->a(Lm/f;)V

    if-eqz v8, :cond_70

    invoke-virtual {v1, v8}, Lm/g;->a(Lm/f;)V

    :cond_70
    if-eqz v3, :cond_75

    invoke-virtual {v1, v3}, Lm/g;->a(Lm/f;)V

    :cond_75
    new-instance v3, Lm/a1;

    invoke-direct {v3, v1}, Lm/x;-><init>(Lm/g;)V

    const/4 v1, -0x1

    iput v1, v3, Lm/a1;->q:I

    invoke-direct {v4, v5, v3}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v1, Lm/l;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v1, p0}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v2, v4, v1, v0, v0}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    goto :goto_d3

    :cond_8d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'q\' cannot be null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_95
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'g\' cannot be null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'p\' cannot be null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a5
    new-instance v2, Ld0/t;

    new-instance v3, Ll0/b;

    sget-object v4, Ld0/r;->s:Lm/q;

    new-instance v5, Ld0/g;

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v6}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v7}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v7

    invoke-direct {v5, v7, v1, v6}, Ld0/g;-><init>(ILjava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v5}, Ld0/g;->d()Lm/u;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v1, Lm/l;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v1, p0}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v2, v3, v1, v0, v0}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    :goto_d3
    invoke-virtual {v2}, Lm/n;->g()[B

    move-result-object p0
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d7} :catch_d8

    return-object p0

    :catch_d8
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-object p0
.end method

.method public getX()Ljava/math/BigInteger;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    return-object p0
.end method

.method public hasFriendlyName()Z
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->hasFriendlyName()Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public setBagAttribute(Lm/q;Lm/f;)V
    .registers 3

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lm/q;Lm/f;)V

    return-void
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->setFriendlyName(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v1, Le1/g;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, p0}, Le1/g;-><init>(ILjava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string p0, "DH"

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/DHUtil;->privateKeyToString(Ljava/lang/String;Ljava/math/BigInteger;Le1/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
