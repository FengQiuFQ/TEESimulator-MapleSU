.class public Lorg/bouncycastle/jcajce/provider/symmetric/RC2$PBEWithSHAAnd40BitKeyFactory;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;


# direct methods
.method public constructor <init>()V
    .registers 9

    sget-object v2, Ld0/r;->t0:Lm/q;

    const/16 v6, 0x28

    const/16 v7, 0x40

    const-string v1, "PBEwithSHAand40BitRC2-CBC"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lm/q;ZIIII)V

    return-void
.end method
