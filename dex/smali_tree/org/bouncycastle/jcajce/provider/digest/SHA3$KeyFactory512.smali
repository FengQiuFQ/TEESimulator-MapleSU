.class public Lorg/bouncycastle/jcajce/provider/digest/SHA3$KeyFactory512;
.super Lorg/bouncycastle/jcajce/provider/digest/SHA3$KeyFactorySHA3;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/16 v0, 0x200

    sget-object v1, Lz/b;->p:Lm/q;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/digest/SHA3$KeyFactorySHA3;-><init>(ILm/q;)V

    return-void
.end method
