.class public Lorg/bouncycastle/jcajce/provider/digest/SHA3$DigestParallelHash;
.super Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>(II)V
    .registers 4

    new-instance v0, Ls0/u;

    invoke-direct {v0, p1, p2}, Ls0/u;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;

    new-instance v1, Ls0/u;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lorg/bouncycastle/crypto/v;

    check-cast p0, Ls0/u;

    invoke-direct {v1, p0}, Ls0/u;-><init>(Ls0/u;)V

    iput-object v1, v0, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lorg/bouncycastle/crypto/v;

    return-object v0
.end method
