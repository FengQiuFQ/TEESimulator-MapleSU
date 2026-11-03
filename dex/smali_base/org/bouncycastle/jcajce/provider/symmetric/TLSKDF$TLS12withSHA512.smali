.class public final Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS12withSHA512;
.super Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS12;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lz0/d;

    new-instance v1, Ls0/e0;

    invoke-direct {v1}, Ls0/e0;-><init>()V

    invoke-direct {v0, v1}, Lz0/d;-><init>(Lorg/bouncycastle/crypto/v;)V

    const-string v1, "TLS12withSHA512KDF"

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS12;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/b0;)V

    return-void
.end method
