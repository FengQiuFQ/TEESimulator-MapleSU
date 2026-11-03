.class public Lorg/bouncycastle/jcajce/provider/symmetric/HKDF$HKDFBase;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;


# instance fields
.field protected algName:Ljava/lang/String;

.field protected hkdf:Lx0/n;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/v;Lm/q;)V
    .registers 4

    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lm/q;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/HKDF$HKDFBase;->algName:Ljava/lang/String;

    new-instance p1, Lx0/n;

    invoke-direct {p1, p2}, Lx0/n;-><init>(Lorg/bouncycastle/crypto/v;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/HKDF$HKDFBase;->hkdf:Lx0/n;

    return-void
.end method


# virtual methods
.method public engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 3

    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "invalid KeySpec: expected HKDFParameterSpec, but got "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
