.class Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;
.super Ljavax/crypto/CipherSpi;


# instance fields
.field private final algorithmName:Ljava/lang/String;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private kemGen:Lj3/b;

.field private kemParameterSpec:Ld2/m;

.field private mlkemParamters:Lj3/f;

.field private unwrapKey:Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;

.field private wrapKey:Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;


# direct methods
.method public constructor <init>(Lj3/f;)V
    .registers 2

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->mlkemParamters:Lj3/f;

    iget-object p1, p1, Lj3/f;->c:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->algorithmName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->algorithmName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->mlkemParamters:Lj3/f;

    return-void
.end method


# virtual methods
.method public engineDoFinal([BII[BI)I
    .registers 6

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not supported in a wrapping mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineDoFinal([BII)[B
    .registers 4

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not supported in a wrapping mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
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

    const/16 p0, 0x800

    return p0
.end method

.method public engineGetOutputSize(I)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_1f

    :try_start_4
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->algorithmName:Ljava/lang/String;

    const-string v1, "BCPQC"

    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->kemParameterSpec:Ld2/m;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_14

    goto :goto_1f

    :catch_14
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1f
    :goto_1f
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    return-object p0
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 6

    if-eqz p3, :cond_21

    :try_start_2
    const-class v0, Ld2/m;

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_22

    :catch_9
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "can\'t handle parameter "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    const/4 p3, 0x0

    :goto_22
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 8

    if-nez p3, :cond_1b

    new-instance p3, Ll0/b;

    sget-object v0, Lm0/m;->y1:Lm/q;

    new-instance v1, Ll0/b;

    sget-object v2, Lz/b;->a:Lm/q;

    invoke-direct {v1, v2}, Ll0/b;-><init>(Lm/q;)V

    invoke-direct {p3, v0, v1}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    new-instance v1, Ld2/m;

    invoke-direct {v1, p3, v0}, Ld2/l;-><init>(Ll0/b;[B)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->kemParameterSpec:Ld2/m;

    goto :goto_23

    :cond_1b
    instance-of v0, p3, Ld2/m;

    if-eqz v0, :cond_a0

    check-cast p3, Ld2/m;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->kemParameterSpec:Ld2/m;

    :goto_23
    const/4 p3, 0x3

    const-string v0, "Only a "

    if-ne p1, p3, :cond_55

    instance-of p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;

    if-eqz p1, :cond_42

    move-object p1, p2

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->wrapKey:Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;

    new-instance p1, Lj3/b;

    if-nez p4, :cond_3a

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object p4

    goto :goto_3c

    :cond_3a
    sget-object p3, Lorg/bouncycastle/crypto/o;->a:Ljava/lang/ThreadLocal;

    :goto_3c
    invoke-direct {p1, p4}, Lj3/b;-><init>(Ljava/security/SecureRandom;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->kemGen:Lj3/b;

    goto :goto_61

    :cond_42
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->algorithmName:Ljava/lang/String;

    const-string p3, " public key can be used for wrapping"

    invoke-static {p2, p0, p3}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_55
    const/4 p3, 0x4

    if-ne p1, p3, :cond_98

    instance-of p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;

    if-eqz p1, :cond_85

    move-object p1, p2

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->unwrapKey:Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;

    :goto_61
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->mlkemParamters:Lj3/f;

    if-eqz p0, :cond_84

    iget-object p0, p0, Lj3/f;->c:Ljava/lang/String;

    invoke-static {p0}, Ld2/q;->a(Ljava/lang/String;)Ld2/q;

    move-result-object p0

    iget-object p0, p0, Ld2/q;->c:Ljava/lang/String;

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_78

    goto :goto_84

    :cond_78
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "cipher locked to "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_84
    :goto_84
    return-void

    :cond_85
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->algorithmName:Ljava/lang/String;

    const-string p3, " private key can be used for unwrapping"

    invoke-static {p2, p0, p3}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_98
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "Cipher only valid for wrapping/unwrapping"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->algorithmName:Ljava/lang/String;

    const-string p3, " can only accept KTSParameterSpec"

    invoke-static {p2, p0, p3}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .registers 3

    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string v0, "Cannot support mode "

    invoke-static {v0, p1}, Lb/b;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .registers 4

    new-instance p0, Ljavax/crypto/NoSuchPaddingException;

    const-string v0, "Padding "

    const-string v1, " unknown"

    invoke-static {v0, p1, v1}, Lb/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 9

    const-string v0, "unable to extract KTS secret: "

    const/4 v1, 0x3

    if-ne p3, v1, :cond_75

    const/4 p3, 0x0

    const/4 v1, 0x0

    :try_start_7
    new-instance v2, Lb1/b;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->unwrapKey:Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPrivateKey;->getKeyParams()Lj3/g;

    move-result-object v3

    invoke-direct {v2, v3}, Lb1/b;-><init>(Lj3/g;)V

    iget-object v3, v2, Lb1/b;->i:Ljava/lang/Object;

    check-cast v3, Lj3/a;

    iget v4, v3, Lj3/a;->n:I

    invoke-static {p1, p3, v4}, Lm4/d;->q([BII)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lb1/b;->f([B)[B

    move-result-object v1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->kemParameterSpec:Ld2/m;

    invoke-static {p0, v1}, Lt4/d;->c0(Ld2/m;[B)Lorg/bouncycastle/crypto/p0;

    move-result-object p0

    iget v2, v3, Lj3/a;->n:I

    array-length v3, p1

    invoke-static {p1, v2, v3}, Lm4/d;->q([BII)[B

    move-result-object p1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    array-length v3, p1

    check-cast p0, Lv0/y;

    invoke-virtual {p0, v3, p1}, Lv0/y;->a(I[B)[B

    move-result-object p0

    invoke-direct {v2, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_39} :catch_41
    .catch Lorg/bouncycastle/crypto/x; {:try_start_7 .. :try_end_39} :catch_3f
    .catchall {:try_start_7 .. :try_end_39} :catchall_3d

    invoke-static {v1, p3}, Ljava/util/Arrays;->fill([BB)V

    return-object v2

    :catchall_3d
    move-exception p0

    goto :goto_6f

    :catch_3f
    move-exception p0

    goto :goto_43

    :catch_41
    move-exception p0

    goto :goto_59

    :goto_43
    :try_start_43
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_59
    new-instance p1, Ljava/security/NoSuchAlgorithmException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6f
    .catchall {:try_start_43 .. :try_end_6f} :catchall_3d

    :goto_6f
    if-eqz v1, :cond_74

    invoke-static {v1, p3}, Ljava/util/Arrays;->fill([BB)V

    :cond_74
    throw p0

    :cond_75
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "only SECRET_KEY supported"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineUpdate([BII[BI)I
    .registers 6

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not supported in a wrapping mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineUpdate([BII)[B
    .registers 4

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not supported in a wrapping mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineWrap(Ljava/security/Key;)[B
    .registers 9

    const-string v0, "unable to destroy interim values: "

    const-string v1, "unable to generate KTS secret: "

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    if-eqz v2, :cond_9f

    const/4 v2, 0x0

    :try_start_b
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->kemGen:Lj3/b;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->wrapKey:Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/BCMLKEMPublicKey;->getKeyParams()Lj3/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lj3/b;->a(Lj3/h;)Lu3/c;

    move-result-object v2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMCipherSpi;->kemParameterSpec:Ld2/m;

    invoke-virtual {v2}, Lu3/c;->b()[B

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lt4/d;->e0()Lorg/bouncycastle/crypto/p0;

    move-result-object v4

    new-instance v5, Le1/o0;

    invoke-static {p0, v3}, Lt4/d;->q0(Ld2/m;[B)[B

    move-result-object p0

    const/16 v3, 0x20

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6, v3}, Le1/o0;-><init>([BII)V

    move-object p0, v4

    check-cast p0, Lv0/y;

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v5}, Lv0/y;->init(ZLorg/bouncycastle/crypto/g;)V

    invoke-virtual {v2}, Lu3/c;->a()[B

    move-result-object p0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    array-length v3, p1

    check-cast v4, Lv0/y;

    invoke-virtual {v4, v3, p1}, Lv0/y;->d(I[B)[B

    move-result-object v3

    invoke-static {p0, v3}, Lm4/d;->j([B[B)[B

    move-result-object p0

    invoke-static {p1, v6}, Ljava/util/Arrays;->fill([BB)V
    :try_end_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_4d} :catch_6a
    .catchall {:try_start_b .. :try_end_4d} :catchall_68

    :try_start_4d
    invoke-virtual {v2}, Lu3/c;->destroy()V
    :try_end_50
    .catch Ljavax/security/auth/DestroyFailedException; {:try_start_4d .. :try_end_50} :catch_51

    return-object p0

    :catch_51
    move-exception p0

    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_68
    move-exception p0

    goto :goto_81

    :catch_6a
    move-exception p0

    :try_start_6b
    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_81
    .catchall {:try_start_6b .. :try_end_81} :catchall_68

    :goto_81
    if-eqz v2, :cond_9e

    :try_start_83
    invoke-virtual {v2}, Lu3/c;->destroy()V
    :try_end_86
    .catch Ljavax/security/auth/DestroyFailedException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_9e

    :catch_87
    move-exception p0

    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9e
    :goto_9e
    throw p0

    :cond_9f
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Cannot wrap key, null encoding."

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
