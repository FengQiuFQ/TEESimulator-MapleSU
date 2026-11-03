.class public Lorg/bouncycastle/jcajce/provider/symmetric/Grainv1$Base;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lv0/q;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lv0/q;-><init>(I)V

    const/4 v1, 0x2

    iput v1, v0, Lv0/q;->n:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lv0/q;->o:Z

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;-><init>(Lorg/bouncycastle/crypto/o0;I)V

    return-void
.end method
