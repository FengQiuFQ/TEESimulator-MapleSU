.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;


# static fields
.field private static final converter:Lm0/l;


# instance fields
.field private final agreement:Lp0/d;

.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private dhaesMode:Z

.field private engine:Lv0/r;

.field private engineParam:Ljava/security/AlgorithmParameters;

.field private engineSpec:Ld2/i;

.field private final hMac:Lorg/bouncycastle/crypto/b0;

.field private final helper:Le2/b;

.field private ivLength:I

.field private final kdf:Lx0/o;

.field private key:Le1/b;

.field private final macKeyLength:I

.field private final macLength:I

.field private otherKeyParameter:Le1/b;

.field private random:Ljava/security/SecureRandom;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lm0/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->converter:Lm0/l;

    return-void
.end method

.method public constructor <init>(Lp0/d;Lx0/o;Lorg/bouncycastle/crypto/b0;II)V
    .registers 8

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    new-instance v0, Le2/a;

    invoke-direct {v0}, Le2/a;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->helper:Le2/b;

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->state:I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engineParam:Ljava/security/AlgorithmParameters;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->dhaesMode:Z

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->otherKeyParameter:Le1/b;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->agreement:Lp0/d;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->kdf:Lx0/o;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->hMac:Lorg/bouncycastle/crypto/b0;

    iput p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->macKeyLength:I

    iput p5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->macLength:I

    return-void
.end method


# virtual methods
.method public engineDoFinal([BII[BI)I
    .registers 6

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engineDoFinal([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    array-length p2, p0

    invoke-static {p0, p1, p4, p5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    return p0
.end method

.method public engineDoFinal([BII)[B
    .registers 13

    if-eqz p3, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->key:Le1/b;

    move-object v1, v0

    check-cast v1, Le1/u;

    iget-object v1, v1, Le1/u;->d:Le1/r;

    iget v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->state:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_79

    const/4 v5, 0x3

    if-eq v2, v5, :cond_79

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-eq v2, v6, :cond_30

    if-ne v2, v5, :cond_28

    goto :goto_30

    :cond_28
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cipher not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_30
    :goto_30
    check-cast v0, Le1/w;

    iget-object v2, v0, Le1/u;->d:Le1/r;

    iget-object v2, v2, Le1/r;->g:Lk2/h;

    invoke-virtual {v2}, Lk2/h;->l()I

    move-result v7

    add-int/lit8 v7, v7, 0x7

    div-int/lit8 v7, v7, 0x8

    aget-byte v8, p1, p2

    if-ne v8, v5, :cond_43

    mul-int/2addr v7, v6

    :cond_43
    add-int/2addr v7, v4

    iget v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->macLength:I

    add-int/2addr v4, v7

    sub-int/2addr p3, v4

    add-int/2addr v7, p2

    invoke-static {p1, p2, v7}, Lm4/d;->q([BII)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lk2/h;->g([B)Lk2/p;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->agreement:Lp0/d;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->key:Le1/b;

    invoke-virtual {p2, v2}, Lp0/d;->init(Lorg/bouncycastle/crypto/g;)V

    sget-object p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->converter:Lm0/l;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->agreement:Lp0/d;

    new-instance v4, Le1/x;

    iget-object v0, v0, Le1/u;->d:Le1/r;

    invoke-direct {v4, p1, v0}, Le1/x;-><init>(Lk2/p;Le1/r;)V

    invoke-virtual {v2, v4}, Lp0/d;->a(Lorg/bouncycastle/crypto/g;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, v1, Le1/r;->g:Lk2/h;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lk2/h;->k()I

    move-result p2

    invoke-static {p2, p1}, Lm0/l;->a(ILjava/math/BigInteger;)[B

    iget p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->macKeyLength:I

    add-int/2addr p3, p0

    new-array p0, p3, [B

    throw v3

    :cond_79
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->random:Ljava/security/SecureRandom;

    iget-object p1, v1, Le1/r;->j:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    if-nez p0, :cond_86

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    goto :goto_88

    :cond_86
    sget-object p0, Lorg/bouncycastle/crypto/o;->a:Ljava/lang/ThreadLocal;

    :goto_88
    iget-object p0, v1, Le1/r;->g:Lk2/h;

    invoke-static {p0}, Lq4/k;->t(Lk2/h;)I

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v3
.end method

.method public engineGetBlockSize()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public engineGetIV()[B
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .registers 2

    instance-of p0, p1, Lh2/a;

    if-eqz p0, :cond_11

    check-cast p1, Lh2/a;

    invoke-interface {p1}, Lh2/a;->getParameters()Li2/e;

    move-result-object p0

    iget-object p0, p0, Li2/e;->c:Lk2/h;

    invoke-virtual {p0}, Lk2/h;->l()I

    move-result p0

    return p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "not an EC key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineGetOutputSize(I)I
    .registers 11

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->key:Le1/b;

    const-string v1, "cipher not initialised"

    if-eqz v0, :cond_61

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engine:Lv0/r;

    iget-object v2, v2, Lv0/r;->c:Lz0/d;

    iget v2, v2, Lz0/d;->h:I

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->otherKeyParameter:Le1/b;

    const/4 v4, 0x2

    if-nez v3, :cond_21

    check-cast v0, Le1/u;

    iget-object v0, v0, Le1/u;->d:Le1/r;

    iget-object v0, v0, Le1/r;->g:Lk2/h;

    invoke-virtual {v0}, Lk2/h;->l()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/2addr v0, v4

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, p1

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engine:Lv0/r;

    iget-object p1, p1, Lv0/r;->d:Ld1/c;

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-nez p1, :cond_33

    goto :goto_4b

    :cond_33
    iget v8, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->state:I

    if-eq v8, v7, :cond_47

    if-ne v8, v6, :cond_3a

    goto :goto_47

    :cond_3a
    if-eq v8, v4, :cond_45

    if-ne v8, v5, :cond_3f

    goto :goto_45

    :cond_3f
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    :goto_45
    sub-int/2addr v3, v2

    sub-int/2addr v3, v0

    :cond_47
    :goto_47
    invoke-virtual {p1, v3}, Ld1/c;->c(I)I

    move-result v3

    :goto_4b
    iget p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->state:I

    if-eq p0, v7, :cond_5e

    if-ne p0, v6, :cond_52

    goto :goto_5e

    :cond_52
    if-eq p0, v4, :cond_5d

    if-ne p0, v5, :cond_57

    goto :goto_5d

    :cond_57
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5d
    :goto_5d
    return v3

    :cond_5e
    :goto_5e
    add-int/2addr v2, v0

    add-int/2addr v2, v3

    return v2

    :cond_61
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engineParam:Ljava/security/AlgorithmParameters;

    return-object p0
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 6

    if-eqz p3, :cond_1b

    :try_start_2
    const-class v0, Li2/p;

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_1c

    :catch_9
    move-exception p0

    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "cannot recognise parameters: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engineParam:Ljava/security/AlgorithmParameters;

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "cannot handle supplied parameter spec: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 6

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->otherKeyParameter:Le1/b;

    if-nez p3, :cond_4d

    const/4 p3, 0x1

    if-eq p1, p3, :cond_30

    const/4 p3, 0x3

    if-ne p1, p3, :cond_c

    goto :goto_30

    :cond_c
    const/4 p3, 0x2

    if-eq p1, p3, :cond_1b

    const/4 p3, 0x4

    if-ne p1, p3, :cond_13

    goto :goto_1b

    :cond_13
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "must be passed EC key"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    :goto_1b
    instance-of p3, p2, Ljava/security/PrivateKey;

    if-eqz p3, :cond_28

    check-cast p2, Ljava/security/PrivateKey;

    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Le1/b;

    move-result-object p2

    :goto_25
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->key:Le1/b;

    goto :goto_3b

    :cond_28
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "must be passed recipient\'s private EC key for decryption"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_30
    :goto_30
    instance-of p3, p2, Ljava/security/PublicKey;

    if-eqz p3, :cond_45

    check-cast p2, Ljava/security/PublicKey;

    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->generatePublicKeyParameter(Ljava/security/PublicKey;)Le1/b;

    move-result-object p2

    goto :goto_25

    :goto_3b
    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->random:Ljava/security/SecureRandom;

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->state:I

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void

    :cond_45
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "must be passed recipient\'s public EC key for encryption"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4d
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .registers 3

    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string v0, "can\'t support mode "

    invoke-static {v0, p1}, Lb/b;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .registers 2

    new-instance p0, Ljavax/crypto/NoSuchPaddingException;

    const-string p1, "padding not available with IESCipher"

    invoke-direct {p0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineUpdate([BII[BI)I
    .registers 6

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p0, 0x0

    return p0
.end method

.method public engineUpdate([BII)[B
    .registers 4

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p0, 0x0

    return-object p0
.end method
