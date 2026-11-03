.class public Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SignatureSpi;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;


# instance fields
.field private final bOut:Ljava/io/ByteArrayOutputStream;

.field private final signer:Lq3/o;


# direct methods
.method public constructor <init>(Lq3/o;)V
    .registers 3

    const-string v0, "SLH-DSA"

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SignatureSpi;->signer:Lq3/o;

    return-void
.end method


# virtual methods
.method public engineSign()[B
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->keyParams:Le1/b;

    instance-of v0, v0, Lq3/m;

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    :try_start_7
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SignatureSpi;->signer:Lq3/o;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lq3/o;->a([B)[B

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_1d
    .catchall {:try_start_7 .. :try_end_13} :catchall_1b

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->isInitState:Z

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-object v1

    :catchall_1b
    move-exception v1

    goto :goto_28

    :catch_1d
    move-exception v1

    :try_start_1e
    new-instance v2, Ljava/security/SignatureException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_1b

    :goto_28
    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->isInitState:Z

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    throw v1

    :cond_30
    new-instance p0, Ljava/security/SignatureException;

    const-string v0, "engine initialized for verification"

    invoke-direct {p0, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineVerify([B)Z
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->keyParams:Le1/b;

    instance-of v0, v0, Lq3/n;

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :try_start_7
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SignatureSpi;->signer:Lq3/o;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lq3/o;->b([B[B)Z

    move-result p1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1b

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->isInitState:Z

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return p1

    :catchall_1b
    move-exception p1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->isInitState:Z

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    throw p1

    :cond_24
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "engine initialized for signing"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reInitialize(ZLorg/bouncycastle/crypto/g;)V
    .registers 10

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SignatureSpi;->signer:Lq3/o;

    instance-of v1, p2, Le1/r0;

    if-eqz v1, :cond_3a

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Le1/r0;

    iget-object v1, p2, Le1/r0;->c:Lorg/bouncycastle/crypto/g;

    iget-object p2, p2, Le1/r0;->d:[B

    array-length v2, p2

    const/16 v3, 0xff

    if-gt v2, v3, :cond_32

    add-int/lit8 v3, v2, 0x2

    new-array v3, v3, [B

    iput-object v3, v0, Lq3/o;->a:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v4

    const/4 v5, 0x1

    int-to-byte v6, v2

    aput-byte v6, v3, v5

    array-length v5, p2

    if-ne v5, v2, :cond_2a

    const/4 v5, 0x2

    invoke-static {p2, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v1

    goto :goto_3e

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "len"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context too long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    sget-object v1, Lq3/o;->e:[B

    iput-object v1, v0, Lq3/o;->a:[B

    :goto_3e
    const/4 v1, 0x0

    if-eqz p1, :cond_61

    iput-object v1, v0, Lq3/o;->b:Lq3/n;

    instance-of p1, p2, Le1/t0;

    if-eqz p1, :cond_54

    check-cast p2, Le1/t0;

    iget-object p1, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    check-cast p1, Lq3/m;

    iput-object p1, v0, Lq3/o;->c:Lq3/m;

    iget-object p1, p2, Le1/t0;->c:Ljava/security/SecureRandom;

    iput-object p1, v0, Lq3/o;->d:Ljava/security/SecureRandom;

    goto :goto_5a

    :cond_54
    check-cast p2, Lq3/m;

    iput-object p2, v0, Lq3/o;->c:Lq3/m;

    iput-object v1, v0, Lq3/o;->d:Ljava/security/SecureRandom;

    :goto_5a
    iget-object p1, v0, Lq3/o;->c:Lq3/m;

    iget-object p1, p1, La3/a;->d:Ljava/lang/Object;

    :goto_5e
    check-cast p1, Lq3/l;

    goto :goto_6c

    :cond_61
    check-cast p2, Lq3/n;

    iput-object p2, v0, Lq3/o;->b:Lq3/n;

    iput-object v1, v0, Lq3/o;->c:Lq3/m;

    iput-object v1, v0, Lq3/o;->d:Ljava/security/SecureRandom;

    iget-object p1, p2, La3/a;->d:Ljava/lang/Object;

    goto :goto_5e

    :goto_6c
    iget p1, p1, Lq3/l;->c:I

    if-nez p1, :cond_76

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void

    :cond_76
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\"pure\" slh-dsa must use non pre-hash parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public signInit(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 3

    iput-object p2, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    instance-of p2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/BCSLHDSAPrivateKey;

    if-eqz p2, :cond_f

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/BCSLHDSAPrivateKey;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/BCSLHDSAPrivateKey;->getKeyParams()Lq3/m;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->keyParams:Le1/b;

    return-void

    :cond_f
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "unknown private key passed to SLH-DSA"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateEngine(B)V
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public updateEngine([BII)V
    .registers 4

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public verifyInit(Ljava/security/PublicKey;)V
    .registers 3

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/BCSLHDSAPublicKey;

    if-eqz v0, :cond_d

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/BCSLHDSAPublicKey;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/BCSLHDSAPublicKey;->getKeyParams()Lq3/n;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->keyParams:Le1/b;

    return-void

    :cond_d
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "unknown public key passed to SLH-DSA"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
