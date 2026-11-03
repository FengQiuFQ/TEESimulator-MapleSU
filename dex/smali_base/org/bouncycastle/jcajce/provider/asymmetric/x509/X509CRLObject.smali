.class Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;


# instance fields
.field private final cacheLock:Ljava/lang/Object;

.field private volatile hashValue:I

.field private volatile hashValueSet:Z

.field private internalCRLValue:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;


# direct methods
.method public constructor <init>(Le2/b;Ll0/n;)V
    .registers 9

    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->createSigAlgName(Ll0/n;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->createSigAlgParams(Ll0/n;)[B

    move-result-object v4

    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->isIndirectCRL(Ll0/n;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;-><init>(Le2/b;Ll0/n;Ljava/lang/String;[BZ)V

    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->cacheLock:Ljava/lang/Object;

    return-void
.end method

.method private static createSigAlgName(Ll0/n;)Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object p0, p0, Ll0/n;->d:Ll0/b;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Ll0/b;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CRL contents invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static createSigAlgParams(Ll0/n;)[B
    .registers 4

    :try_start_0
    iget-object p0, p0, Ll0/n;->d:Ll0/b;

    iget-object p0, p0, Ll0/b;->d:Lm/f;

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-interface {p0}, Lm/f;->d()Lm/u;

    move-result-object p0

    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    new-instance v0, Ljava/security/cert/CRLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CRL contents invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getInternalCRL()Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;
    .registers 12

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    if-eqz v0, :cond_c

    monitor-exit v1

    return-object v0

    :catchall_9
    move-exception v0

    move-object p0, v0

    goto :goto_41

    :cond_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_9

    const/4 v1, 0x0

    :try_start_e
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    invoke-virtual {v0}, Lm/n;->g()[B

    move-result-object v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_14} :catch_17

    move-object v9, v0

    move-object v10, v1

    goto :goto_1f

    :catch_17
    move-exception v0

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;-><init>(Ljava/lang/Throwable;)V

    move-object v9, v1

    move-object v10, v2

    :goto_1f
    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->bcHelper:Le2/b;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->sigAlgParams:[B

    iget-boolean v8, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->isIndirect:Z

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;-><init>(Le2/b;Ll0/n;Ljava/lang/String;[BZ[BLjava/security/cert/CRLException;)V

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_31
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    if-nez v0, :cond_3b

    iput-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    goto :goto_3b

    :catchall_38
    move-exception v0

    move-object p0, v0

    goto :goto_3f

    :cond_3b
    :goto_3b
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    monitor-exit v2

    return-object p0

    :goto_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_31 .. :try_end_40} :catchall_38

    throw p0

    :goto_41
    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_9

    throw p0
.end method

.method private static isIndirectCRL(Ll0/n;)Z
    .registers 3

    :try_start_0
    sget-object v0, Ll0/v;->F1:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getExtensionOctets(Ll0/n;Lm/q;)[B

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    invoke-static {p0}, Ll0/d0;->i(Ljava/lang/Object;)Ll0/d0;

    move-result-object p0

    iget-boolean p0, p0, Ll0/d0;->y:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception p0

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/ExtCRLException;

    const-string v1, "Exception reading IssuingDistributionPoint"

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/ExtCRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;

    if-eqz v0, :cond_40

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValueSet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-boolean v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValueSet:Z

    if-eqz v0, :cond_1a

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValue:I

    iget v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValue:I

    if-eq v0, v2, :cond_33

    return v1

    :cond_1a
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    if-eqz v0, :cond_22

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->internalCRLValue:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    if-nez v0, :cond_33

    :cond_22
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object v0, v0, Ll0/n;->q:Lm/b;

    if-eqz v0, :cond_33

    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Ll0/n;

    iget-object v2, v2, Ll0/n;->q:Lm/b;

    invoke-virtual {v0, v2}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-nez v0, :cond_33

    return v1

    :cond_33
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getInternalCRL()Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    move-result-object p0

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getInternalCRL()Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    move-result-object p1

    :goto_3b
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_40
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getInternalCRL()Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    move-result-object p0

    goto :goto_3b
.end method

.method public getEncoded()[B
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getInternalCRL()Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValueSet:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getInternalCRL()Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValue:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValueSet:Z

    :cond_11
    iget p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashValue:I

    return p0
.end method
