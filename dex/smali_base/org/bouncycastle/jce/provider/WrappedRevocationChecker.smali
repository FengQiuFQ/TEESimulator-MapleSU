.class Lorg/bouncycastle/jce/provider/WrappedRevocationChecker;
.super Ljava/lang/Object;

# interfaces
.implements La2/n;


# instance fields
.field private final checker:Ljava/security/cert/PKIXCertPathChecker;


# direct methods
.method public constructor <init>(Ljava/security/cert/PKIXCertPathChecker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/WrappedRevocationChecker;->checker:Ljava/security/cert/PKIXCertPathChecker;

    return-void
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;)V
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/WrappedRevocationChecker;->checker:Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {p0, p1}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;)V

    return-void
.end method

.method public initialize(La2/o;)V
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/WrappedRevocationChecker;->checker:Ljava/security/cert/PKIXCertPathChecker;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method
