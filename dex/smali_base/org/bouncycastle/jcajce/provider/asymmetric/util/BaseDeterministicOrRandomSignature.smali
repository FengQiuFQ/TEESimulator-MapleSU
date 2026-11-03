.class public abstract Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;
.super Ljava/security/SignatureSpi;


# instance fields
.field protected engineParams:Ljava/security/AlgorithmParameters;

.field private final helper:Le2/b;

.field protected isInitState:Z

.field protected keyParams:Le1/b;

.field private final originalSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field protected paramSpec:Ld2/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    new-instance p1, Le2/a;

    invoke-direct {p1}, Le2/a;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->helper:Le2/b;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->isInitState:Z

    sget-object p1, Ld2/b;->d:Ld2/b;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->originalSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-void
.end method

.method private reInit()V
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->keyParams:Le1/b;

    iget-boolean v1, v0, Le1/b;->c:Z

    if-eqz v1, :cond_25

    iget-object v1, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    if-eqz v1, :cond_10

    new-instance v2, Le1/t0;

    invoke-direct {v2, v0, v1}, Le1/t0;-><init>(Lorg/bouncycastle/crypto/g;Ljava/security/SecureRandom;)V

    move-object v0, v2

    :cond_10
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->paramSpec:Ld2/b;

    if-eqz v1, :cond_20

    new-instance v2, Le1/r0;

    iget-object v1, v1, Ld2/b;->c:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v1

    invoke-direct {v2, v0, v1}, Le1/r0;-><init>(Lorg/bouncycastle/crypto/g;[B)V

    move-object v0, v2

    :cond_20
    const/4 v1, 0x1

    :goto_21
    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->reInitialize(ZLorg/bouncycastle/crypto/g;)V

    return-void

    :cond_25
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->paramSpec:Ld2/b;

    if-eqz v1, :cond_35

    new-instance v2, Le1/r0;

    iget-object v1, v1, Ld2/b;->c:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v1

    invoke-direct {v2, v0, v1}, Le1/r0;-><init>(Lorg/bouncycastle/crypto/g;[B)V

    move-object v0, v2

    :cond_35
    const/4 v1, 0x0

    goto :goto_21
.end method


# virtual methods
.method public final engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "GetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_27

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->paramSpec:Ld2/b;

    if-eqz v0, :cond_27

    sget-object v1, Ld2/b;->d:Ld2/b;

    if-eq v0, v1, :cond_27

    :try_start_c
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->helper:Le2/b;

    const-string v1, "CONTEXT"

    invoke-interface {v0, v1}, Le2/b;->h(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->paramSpec:Ld2/b;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_1c

    goto :goto_27

    :catch_1c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_27
    :goto_27
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->engineParams:Ljava/security/AlgorithmParameters;

    return-object p0
.end method

.method public final engineInitSign(Ljava/security/PrivateKey;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->signInit(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    sget-object p1, Ld2/b;->d:Ld2/b;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->paramSpec:Ld2/b;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->isInitState:Z

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->reInit()V

    return-void
.end method

.method public final engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->signInit(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    sget-object p1, Ld2/b;->d:Ld2/b;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->paramSpec:Ld2/b;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->isInitState:Z

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->reInit()V

    return-void
.end method

.method public final engineInitVerify(Ljava/security/PublicKey;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->verifyInit(Ljava/security/PublicKey;)V

    sget-object p1, Ld2/b;->d:Ld2/b;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->paramSpec:Ld2/b;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->isInitState:Z

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->reInit()V

    return-void
.end method

.method public final engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "SetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->originalSpec:Ljava/security/spec/AlgorithmParameterSpec;

    if-eqz p1, :cond_7

    goto :goto_8

    :cond_7
    return-void

    :cond_8
    :goto_8
    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->isInitState:Z

    if-eqz v0, :cond_39

    instance-of v0, p1, Ld2/b;

    if-eqz v0, :cond_18

    check-cast p1, Ld2/b;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->paramSpec:Ld2/b;

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->reInit()V

    return-void

    :cond_18
    new-instance v0, Le2/d;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Le2/d;-><init>(Ljava/security/spec/AlgorithmParameterSpec;I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_31

    new-instance v0, Ld2/b;

    invoke-direct {v0, p1}, Ld2/b;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->paramSpec:Ld2/b;

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->reInit()V

    return-void

    :cond_31
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "unknown AlgorithmParameterSpec in signature"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    new-instance p0, Ljava/security/ProviderException;

    const-string p1, "cannot call setParameter in the middle of update"

    invoke-direct {p0, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final engineUpdate(B)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->isInitState:Z

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->updateEngine(B)V

    return-void
.end method

.method public final engineUpdate([BII)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->isInitState:Z

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;->updateEngine([BII)V

    return-void
.end method

.method public abstract reInitialize(ZLorg/bouncycastle/crypto/g;)V
.end method

.method public abstract signInit(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
.end method

.method public abstract updateEngine(B)V
.end method

.method public abstract updateEngine([BII)V
.end method

.method public abstract verifyInit(Ljava/security/PublicKey;)V
.end method
