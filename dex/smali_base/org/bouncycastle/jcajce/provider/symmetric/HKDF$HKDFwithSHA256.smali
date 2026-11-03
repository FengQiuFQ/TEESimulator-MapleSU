.class public Lorg/bouncycastle/jcajce/provider/symmetric/HKDF$HKDFwithSHA256;
.super Lorg/bouncycastle/jcajce/provider/symmetric/HKDF$HKDFBase;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Ls0/b0;

    invoke-direct {v0}, Ls0/b0;-><init>()V

    sget-object v1, Ld0/r;->h0:Lm/q;

    const-string v2, "HKDF-SHA256"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/HKDF$HKDFBase;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/v;Lm/q;)V

    return-void
.end method
