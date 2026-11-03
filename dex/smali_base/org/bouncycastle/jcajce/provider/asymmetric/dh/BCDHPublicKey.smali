.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/crypto/interfaces/DHPublicKey;


# static fields
.field static final serialVersionUID:J = -0x301d7d6f0dc1b04L


# instance fields
.field private transient dhPublicKey:Le1/i;

.field private transient dhSpec:Ljavax/crypto/spec/DHParameterSpec;

.field private transient info:Ll0/p0;

.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Le1/i;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Le1/i;->q:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    new-instance v0, Ld2/c;

    iget-object v1, p1, Le1/e;->d:Le1/g;

    invoke-direct {v0, v1}, Ld2/c;-><init>(Le1/g;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Le1/i;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    instance-of v0, p2, Ld2/c;

    if-eqz v0, :cond_19

    new-instance v0, Le1/i;

    check-cast p2, Ld2/c;

    invoke-virtual {p2}, Ld2/c;->a()Le1/g;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Le1/i;-><init>(Ljava/math/BigInteger;Le1/g;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Le1/i;

    return-void

    :cond_19
    new-instance v0, Le1/i;

    new-instance v1, Le1/g;

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, p2}, Le1/g;-><init>(ILjava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, p1, v1}, Le1/i;-><init>(Ljava/math/BigInteger;Le1/g;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Le1/i;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/interfaces/DHPublicKey;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    instance-of v0, p1, Ld2/c;

    if-eqz v0, :cond_23

    check-cast p1, Ld2/c;

    new-instance v0, Le1/i;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ld2/c;->a()Le1/g;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Le1/i;-><init>(Ljava/math/BigInteger;Le1/g;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Le1/i;

    return-void

    :cond_23
    new-instance p1, Le1/i;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    new-instance v1, Le1/g;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Le1/g;-><init>(ILjava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p1, v0, v1}, Le1/i;-><init>(Ljava/math/BigInteger;Le1/g;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Le1/i;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/spec/DHPublicKeySpec;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    new-instance v0, Le1/i;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    new-instance v2, Le1/g;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, p1}, Le1/g;-><init>(ILjava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Le1/i;-><init>(Ljava/math/BigInteger;Le1/g;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Le1/i;

    return-void
.end method

.method public constructor <init>(Ll0/p0;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->info:Ll0/p0;

    :try_start_5
    invoke-virtual {p1}, Ll0/p0;->i()Lm/u;

    move-result-object v0

    iget-object p1, p1, Ll0/p0;->c:Ll0/b;

    check-cast v0, Lm/l;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_123

    invoke-virtual {v0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    iget-object v0, p1, Ll0/b;->d:Lm/f;

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    iget-object p1, p1, Ll0/b;->c:Lm/q;

    sget-object v1, Ld0/r;->s:Lm/q;

    invoke-virtual {p1, v1}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-nez v1, :cond_b2

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->isPKCSParam(Lm/x;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto/16 :goto_b2

    :cond_2b
    sget-object v1, Lm0/m;->w1:Lm/q;

    invoke-virtual {p1, v1}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_a6

    invoke-static {v0}, Lm0/b;->h(Ljava/lang/Object;)Lm0/b;

    move-result-object p1

    iget-object v0, p1, Lm0/b;->y:Lm0/c;

    iget-object v1, p1, Lm0/b;->q:Lm/l;

    iget-object v2, p1, Lm0/b;->d:Lm/l;

    iget-object v3, p1, Lm0/b;->c:Lm/l;

    if-eqz v0, :cond_78

    new-instance v4, Le1/i;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    new-instance v6, Le1/g;

    invoke-virtual {v3}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {p1}, Lm0/b;->i()Ljava/math/BigInteger;

    move-result-object v12

    new-instance v13, Le1/j;

    iget-object p1, v0, Lm0/c;->c:Lm/b;

    invoke-virtual {p1}, Lm/b;->s()[B

    move-result-object p1

    iget-object v0, v0, Lm0/c;->d:Lm/l;

    invoke-virtual {v0}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {v13, p1, v0}, Le1/j;-><init>([BI)V

    const/16 v10, 0xa0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v13}, Le1/g;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Le1/j;)V

    invoke-direct {v4, v5, v6}, Le1/i;-><init>(Ljava/math/BigInteger;Le1/g;)V

    iput-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Le1/i;

    goto :goto_9a

    :cond_78
    new-instance v0, Le1/i;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    new-instance v5, Le1/g;

    invoke-virtual {v3}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p1}, Lm0/b;->i()Ljava/math/BigInteger;

    move-result-object v11

    const/16 v9, 0xa0

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Le1/g;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Le1/j;)V

    invoke-direct {v0, v4, v5}, Le1/i;-><init>(Ljava/math/BigInteger;Le1/g;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Le1/i;

    :goto_9a
    new-instance p1, Ld2/c;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Le1/i;

    iget-object v0, v0, Le1/e;->d:Le1/g;

    invoke-direct {p1, v0}, Ld2/c;-><init>(Le1/g;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-void

    :cond_a6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown algorithm type: "

    invoke-static {v0, p1}, Lb/b;->j(Ljava/lang/String;Lm/q;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b2
    :goto_b2
    invoke-static {v0}, Ld0/g;->h(Ljava/lang/Object;)Ld0/g;

    move-result-object p1

    invoke-virtual {p1}, Ld0/g;->i()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p1, Ld0/g;->d:Lm/l;

    iget-object v2, p1, Ld0/g;->c:Lm/l;

    if-eqz v0, :cond_f8

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v2}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ld0/g;->i()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {v0, v2, v1, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    new-instance p1, Le1/i;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    new-instance v1, Le1/g;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v4

    invoke-direct {v1, v4, v2, v3}, Le1/g;-><init>(ILjava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p1, v0, v1}, Le1/i;-><init>(Ljava/math/BigInteger;Le1/g;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Le1/i;

    return-void

    :cond_f8
    new-instance p1, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v2}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    new-instance p1, Le1/i;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    new-instance v1, Le1/g;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Le1/g;-><init>(ILjava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p1, v0, v1}, Le1/i;-><init>(Ljava/math/BigInteger;Le1/g;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Le1/i;

    return-void

    :catch_123
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid info structure in DH public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isPKCSParam(Lm/x;)Z
    .registers 6

    invoke-virtual {p1}, Lm/x;->size()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_9

    return v0

    :cond_9
    invoke-virtual {p1}, Lm/x;->size()I

    move-result p0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-le p0, v2, :cond_12

    return v3

    :cond_12
    invoke-virtual {p1, v1}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    invoke-static {p0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object p0

    invoke-virtual {p1, v3}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    invoke-static {p1}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object p1

    invoke-virtual {p0}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-lez p0, :cond_3a

    return v3

    :cond_3a
    return v0
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

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->info:Ll0/p0;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public engineGetKeyParameters()Le1/i;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhPublicKey:Le1/i;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

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

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

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

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

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

.method public getEncoded()[B
    .registers 10

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->info:Ll0/p0;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Ll0/p0;)[B

    move-result-object p0

    return-object p0

    :cond_9
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    instance-of v1, v0, Ld2/c;

    if-eqz v1, :cond_a0

    move-object v1, v0

    check-cast v1, Ld2/c;

    iget-object v1, v1, Ld2/c;->c:Ljava/math/BigInteger;

    if-eqz v1, :cond_a0

    check-cast v0, Ld2/c;

    invoke-virtual {v0}, Ld2/c;->a()Le1/g;

    move-result-object v0

    iget-object v1, v0, Le1/g;->A1:Le1/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    new-instance v3, Lm0/c;

    iget-object v4, v1, Le1/j;->a:[B

    invoke-static {v4}, Lm4/d;->e([B)[B

    move-result-object v4

    iget v1, v1, Le1/j;->b:I

    invoke-direct {v3, v4, v1}, Lm0/c;-><init>([BI)V

    goto :goto_30

    :cond_2f
    move-object v3, v2

    :goto_30
    new-instance v1, Ll0/b;

    sget-object v4, Lm0/m;->w1:Lm/q;

    iget-object v5, v0, Le1/g;->d:Ljava/math/BigInteger;

    iget-object v6, v0, Le1/g;->c:Ljava/math/BigInteger;

    iget-object v7, v0, Le1/g;->q:Ljava/math/BigInteger;

    iget-object v0, v0, Le1/g;->x:Ljava/math/BigInteger;

    if-eqz v5, :cond_98

    if-eqz v6, :cond_90

    if-eqz v7, :cond_88

    new-instance v8, Lm/l;

    invoke-direct {v8, v5}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    new-instance v5, Lm/l;

    invoke-direct {v5, v6}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    new-instance v6, Lm/l;

    invoke-direct {v6, v7}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    if-eqz v0, :cond_58

    new-instance v2, Lm/l;

    invoke-direct {v2, v0}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    :cond_58
    new-instance v0, Lm/g;

    const/4 v7, 0x5

    invoke-direct {v0, v7}, Lm/g;-><init>(I)V

    invoke-virtual {v0, v8}, Lm/g;->a(Lm/f;)V

    invoke-virtual {v0, v5}, Lm/g;->a(Lm/f;)V

    invoke-virtual {v0, v6}, Lm/g;->a(Lm/f;)V

    if-eqz v2, :cond_6c

    invoke-virtual {v0, v2}, Lm/g;->a(Lm/f;)V

    :cond_6c
    if-eqz v3, :cond_71

    invoke-virtual {v0, v3}, Lm/g;->a(Lm/f;)V

    :cond_71
    new-instance v2, Lm/a1;

    invoke-direct {v2, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, v2, Lm/a1;->q:I

    invoke-direct {v1, v4, v2}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v0, Lm/l;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    :goto_83
    invoke-static {v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Ll0/b;Lm/f;)[B

    move-result-object p0

    return-object p0

    :cond_88
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'q\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_90
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'g\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_98
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'p\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a0
    new-instance v1, Ll0/b;

    sget-object v2, Ld0/r;->s:Lm/q;

    new-instance v3, Ld0/g;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v5

    invoke-direct {v3, v5, v0, v4}, Ld0/g;-><init>(ILjava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3}, Ld0/g;->d()Lm/u;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v0, Lm/l;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    goto :goto_83
.end method

.method public getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "X.509"

    return-object p0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-object p0
.end method

.method public getY()Ljava/math/BigInteger;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->y:Ljava/math/BigInteger;

    new-instance v1, Le1/g;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, p0}, Le1/g;-><init>(ILjava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string p0, "DH"

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/DHUtil;->publicKeyToString(Ljava/lang/String;Ljava/math/BigInteger;Le1/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
