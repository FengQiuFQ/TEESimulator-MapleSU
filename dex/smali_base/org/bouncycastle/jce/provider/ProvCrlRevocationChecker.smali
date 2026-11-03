.class Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;
.super Ljava/lang/Object;

# interfaces
.implements La2/n;


# instance fields
.field private currentDate:Ljava/util/Date;

.field private final helper:Le2/b;

.field private params:La2/o;


# direct methods
.method public constructor <init>(Le2/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->currentDate:Ljava/util/Date;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->helper:Le2/b;

    return-void
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;)V
    .registers 11

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:La2/o;

    iget-object v1, v0, La2/o;->a:La2/u;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->currentDate:Ljava/util/Date;

    invoke-virtual {v0}, La2/o;->a()Ljava/util/Date;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Ljava/security/cert/X509Certificate;

    iget-object p1, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:La2/o;

    iget-object v5, p1, La2/o;->e:Ljava/security/cert/X509Certificate;

    iget-object v6, p1, La2/o;->f:Ljava/security/PublicKey;

    iget-object p1, p1, La2/o;->c:Ljava/security/cert/CertPath;

    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->helper:Le2/b;

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRLs(La2/o;La2/u;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Le2/b;)V
    :try_end_1e
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception v0

    move-object p1, v0

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_2d

    :cond_2c
    move-object v0, p1

    :goto_2d
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:La2/o;

    iget-object v2, p0, La2/o;->c:Ljava/security/cert/CertPath;

    iget p0, p0, La2/o;->d:I

    invoke-direct {v1, p1, v0, v2, p0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method public init(Z)V
    .registers 2

    if-nez p1, :cond_d

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:La2/o;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->currentDate:Ljava/util/Date;

    return-void

    :cond_d
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p1, "forward checking not supported"

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initialize(La2/o;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:La2/o;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->currentDate:Ljava/util/Date;

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method
