.class public Lorg/bouncycastle/jcajce/provider/digest/SHA3$KeyFactoryKMAC256;
.super Lorg/bouncycastle/jcajce/provider/digest/SHA3$KeyFactoryKMAC;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/16 v0, 0x100

    sget-object v1, Lz/b;->t:Lm/q;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/digest/SHA3$KeyFactoryKMAC;-><init>(ILm/q;)V

    return-void
.end method
