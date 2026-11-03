.class public abstract Lt4/j;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final a:La/f;

.field public static final b:Lt4/i;

.field public static final c:Lt4/i;

.field public static final d:Lt4/i;

.field public static final e:Lt4/i;

.field public static final f:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final g:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final h:La/f;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lt4/j;->a:La/f;

    new-instance v0, Lt4/i;

    const-string v1, "TEESimulator_RsaAttestCheck"

    const-string v2, "RSA"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lt4/i;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lt4/j;->b:Lt4/i;

    new-instance v0, Lt4/i;

    const-string v1, "TEESimulator_RsaAttestCheckSb"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v1, v4}, Lt4/i;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lt4/j;->c:Lt4/i;

    new-instance v0, Lt4/i;

    const-string v1, "TEESimulator_EcAttestCheck"

    const-string v2, "EC"

    invoke-direct {v0, v2, v1, v3}, Lt4/i;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lt4/j;->d:Lt4/i;

    new-instance v0, Lt4/i;

    const-string v1, "TEESimulator_EcAttestCheckSb"

    invoke-direct {v0, v2, v1, v4}, Lt4/i;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lt4/j;->e:Lt4/i;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lt4/j;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lt4/j;->g:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lt4/j;->h:La/f;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "Failed to delete attestation probe key."

    invoke-static {v0, p0}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b()Lt4/h;
    .registers 1

    sget-object v0, Lt4/j;->h:La/f;

    invoke-virtual {v0}, La/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt4/h;

    return-object v0
.end method

.method public static c(Lt4/i;)Z
    .registers 7

    iget-object v0, p0, Lt4/i;->c:Ljava/lang/String;

    sget-object v1, Lt4/j;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_11
    new-instance v2, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v3, Lorg/matrix/TEESimulator/interception/keystore/shim/b;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4}, Lorg/matrix/TEESimulator/interception/keystore/shim/b;-><init>(Lh/l;I)V

    sget-object v2, Lt4/j;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "computeIfAbsent(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_47

    :try_start_33
    invoke-static {p0}, Lt4/j;->d(Lt4/i;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_3f

    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_3d

    goto :goto_3f

    :catchall_3d
    move-exception p0

    goto :goto_43

    :cond_3f
    :goto_3f
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_47

    :goto_43
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p0

    :cond_47
    :goto_47
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_54

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_54
    return v4
.end method

.method public static d(Lt4/i;)Ljava/lang/Boolean;
    .registers 8

    iget-object v0, p0, Lt4/i;->a:Ljava/lang/String;

    iget-object v1, p0, Lt4/i;->c:Ljava/lang/String;

    iget-boolean p0, p0, Lt4/i;->b:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " attestation (strongBox="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Performing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " capability check..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lx4/b;->c(Ljava/lang/String;)V

    :try_start_37
    const-string v3, "AndroidKeyStore"

    invoke-static {v0, v3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v3

    const/16 v4, 0x10

    new-array v4, v4, [B

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v5, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v5, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v6, 0x4

    invoke-direct {v5, v1, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v6, "SHA-256"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p0

    const-string v4, "setIsStrongBoxBacked(...)"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "RSA"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    new-instance v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    sget-object v4, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    const/16 v5, 0x800

    invoke-direct {v0, v5, v4}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const-string v4, "PKCS1"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    goto :goto_94

    :catchall_85
    move-exception p0

    goto/16 :goto_10c

    :catch_88
    move-exception p0

    goto :goto_b8

    :cond_8a
    new-instance v0, Ljava/security/spec/ECGenParameterSpec;

    const-string v4, "secp256r1"

    invoke-direct {v0, v4}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :goto_94
    invoke-virtual {p0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v3}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " capability check successful."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->c(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_b4} :catch_88
    .catchall {:try_start_37 .. :try_end_b4} :catchall_85

    invoke-static {v1}, Lt4/j;->a(Ljava/lang/String;)V

    return-object p0

    :goto_b8
    move-object v0, p0

    :goto_b9
    const/4 v3, 0x0

    if-eqz v0, :cond_d6

    :try_start_bc
    invoke-static {v0}, Lt4/g;->c(Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_c7

    invoke-static {v0}, Lt4/g;->a(Ljava/lang/Throwable;)Landroid/security/KeyStoreException;

    move-result-object v4

    goto :goto_c8

    :cond_c7
    move-object v4, v3

    :goto_c8
    if-eqz v4, :cond_d1

    invoke-static {v4}, Lt4/g;->b(Landroid/security/KeyStoreException;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_d7

    :cond_d1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_b9

    :cond_d6
    const/4 v0, 0x0

    :goto_d7
    if-eqz v0, :cond_f2

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " unsupported by hardware; AUTO will forge attestation."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->c(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_108

    :cond_f2
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " capability check failed transiently; treating as capable."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_108
    .catchall {:try_start_bc .. :try_end_108} :catchall_85

    :goto_108
    invoke-static {v1}, Lt4/j;->a(Ljava/lang/String;)V

    return-object v3

    :goto_10c
    invoke-static {v1}, Lt4/j;->a(Ljava/lang/String;)V

    throw p0
.end method
