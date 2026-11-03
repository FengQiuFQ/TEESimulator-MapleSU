.class Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;


# instance fields
.field private final encoding:[B

.field private final exception:Ljava/security/cert/CRLException;


# direct methods
.method public constructor <init>(Le2/b;Ll0/n;Ljava/lang/String;[BZ[BLjava/security/cert/CRLException;)V
    .registers 8

    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;-><init>(Le2/b;Ll0/n;Ljava/lang/String;[BZ)V

    iput-object p6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->encoding:[B

    iput-object p7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->exception:Ljava/security/cert/CRLException;

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->exception:Ljava/security/cert/CRLException;

    if-nez v0, :cond_f

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->encoding:[B

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    new-instance p0, Ljava/security/cert/CRLException;

    invoke-direct {p0}, Ljava/security/cert/CRLException;-><init>()V

    throw p0

    :cond_f
    throw v0
.end method
