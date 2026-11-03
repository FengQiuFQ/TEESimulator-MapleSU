.class public Lorg/bouncycastle/jcajce/provider/digest/SHA3$DigestParallelHash256_512;
.super Lorg/bouncycastle/jcajce/provider/digest/SHA3$DigestParallelHash;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/16 v0, 0x100

    const/16 v1, 0x200

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/digest/SHA3$DigestParallelHash;-><init>(II)V

    return-void
.end method
