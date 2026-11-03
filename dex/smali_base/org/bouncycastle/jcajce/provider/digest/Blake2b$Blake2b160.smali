.class public Lorg/bouncycastle/jcajce/provider/digest/Blake2b$Blake2b160;
.super Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Ls0/a;

    const/16 v1, 0xa0

    invoke-direct {v0, v1}, Ls0/a;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/provider/digest/Blake2b$Blake2b160;

    new-instance v1, Ls0/a;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lorg/bouncycastle/crypto/v;

    check-cast p0, Ls0/a;

    invoke-direct {v1, p0}, Ls0/a;-><init>(Ls0/a;)V

    iput-object v1, v0, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lorg/bouncycastle/crypto/v;

    return-object v0
.end method
