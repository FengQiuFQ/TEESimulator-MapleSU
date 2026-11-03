.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA3_224withRSAandSHAKE128;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;


# direct methods
.method public constructor <init>()V
    .registers 8

    new-instance v0, Lv0/z;

    invoke-direct {v0}, Lv0/z;-><init>()V

    new-instance v1, Ljava/security/spec/PSSParameterSpec;

    const/16 v5, 0x1c

    const/4 v6, 0x1

    const-string v2, "SHA3-224"

    const-string v3, "SHAKE128"

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;-><init>(Lorg/bouncycastle/crypto/a;Ljava/security/spec/PSSParameterSpec;)V

    return-void
.end method
