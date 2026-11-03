.class public Lorg/bouncycastle/jcajce/provider/digest/SHA3$DigestParallelHash128_256;
.super Lorg/bouncycastle/jcajce/provider/digest/SHA3$DigestParallelHash;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/16 v0, 0x80

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/digest/SHA3$DigestParallelHash;-><init>(II)V

    return-void
.end method
