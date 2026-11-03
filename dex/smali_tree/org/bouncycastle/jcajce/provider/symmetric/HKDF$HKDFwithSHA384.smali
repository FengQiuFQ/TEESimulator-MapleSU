.class public Lorg/bouncycastle/jcajce/provider/symmetric/HKDF$HKDFwithSHA384;
.super Lorg/bouncycastle/jcajce/provider/symmetric/HKDF$HKDFBase;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Ls0/c0;

    invoke-direct {v0}, Ls0/c0;-><init>()V

    sget-object v1, Ld0/r;->i0:Lm/q;

    const-string v2, "HKDF-SHA384"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/HKDF$HKDFBase;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/v;Lm/q;)V

    return-void
.end method
